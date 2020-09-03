import subprocess, sys, os, uuid
import ctypes, copy
from pathlib import Path
from enum import Enum
from ctypes import cdll
from princess import ast, model, types, parse
from princess.node import Node
from princess.codegen import CCodeGen
from tatsu.model import NodeWalker 

def error(s, node = None):
    raise CompileAssert(s, node)
def assert_error(cond, s, node = None):
    if not cond: raise CompileAssert(s, node)

class CompileAssert(Exception):
    def __init__(self, message, node):
        super().__init__(message)
        self.node = node
class CompileError(Exception): pass

def create_unique_identifier():
    return "_" + str(uuid.uuid4())[:8]

class Modifier(str, Enum):
    Const = "const"
    Var = "var"
    Let = "let"
    Type = "type"

unsigned_t = set([types.uint8, types.uint16, 
    types.uint32, types.uint64, types.size_t])
signed_t = set([types.int8, types.int16, types.int32, types.int64])
float_t = set([types.double, types.float])
int_t = unsigned_t | signed_t

def to_signed(t):
    if t in unsigned_t:
        return {types.uint8: types.int8, 
            types.uint16: types.int16, 
            types.uint32: types.int32, 
            types.uint64: types.int64}[t]
    return t

def cast_to(a, node, b):
    """ wraps node in a cast to b if a != b """
    if a is b:
        return node
    
    return ast.Cast(left = node, type = b)

def common_type(a, b, sign_convert = False):
    """ Finds the common type of a and b, implicit up conversion """
    if a == b: return a
    elif a in int_t and b in int_t:
        # integer <-> integer conversion
        result = b if ctypes.sizeof(a.c_type) < ctypes.sizeof(b.c_type) else a
        # check sign, unsigned -> signed if signs differ
        if sign_convert and (a in unsigned_t) != (b in unsigned_t):
            result = to_signed(result)
    elif a in float_t and b in float_t:
        result = b if ctypes.sizeof(a.c_type) < ctypes.sizeof(b.c_type) else a
    elif a in float_t and b in int_t:
        result = a
    elif a in int_t and b in float_t:
        result = b
    else: # Sanity check TODO: Raise proper exception
        error("Incompatible types %s %s" % (a, b))

    return result

class Value:
    def __init__(self, modifier: Modifier, name: str, tpe, 
        share = ast.Share.No, identifier = None, value = None):

        self.name = name    # real name, used by the source code
        self.modifier = modifier
        self.type = tpe
        self.share = share
        self.identifier = identifier or name   # C identifier
        self.value = value

class Scope:
    def __init__(self, parent = None):
        self.parent = parent
        self.dict = {}

    def __contains__(self, identifier):
        if len(identifier.ast) == 1:
            if identifier.ast[0] in self.dict:
                return True
            elif self.parent:
                return identifier in self.parent
        else:
            try:
                namespace = self[ast.Identifier(identifier.ast[0])]
                if isinstance(namespace.value, Scope):
                    return ast.Identifier(*identifier.ast[1:]) in namespace.value
                else: return False
            except KeyError:
                return False

    def __getitem__(self, identifier):
        if len(identifier.ast) == 1:
            if identifier.ast[0] in self.dict:
                return self.dict[identifier.ast[0]]
            elif self.parent:
                return self.parent[identifier]
            else: raise KeyError()
        else:
            namespace = self[ast.Identifier(identifier.ast[0])]
            if isinstance(namespace.value, Scope):
                return namespace.value[ast.Identifier(*identifier.ast[1:])]
            else:
                raise KeyError()

    def __setitem__(self, name, value):
        if name in self.parent:
            self.parent[name] = value
            return

        assert isinstance(value, Value)
        self.dict[name] = value

    def enter_namespace(self, namespace: str, share = ast.Share.No):
        if namespace in self.dict:
            return self.dict[namespace].value
        else:
            ns = Scope(self)
            self.create_variable(Modifier.Const, namespace, None, share, value = ns)
            return ns

    def get_const_value(self, v: model.Identifier):
        assert isinstance(v, model.Identifier)
        try:
            value = self[v]
        except KeyError:
            error("Unknown identifier", v)

        assert (value.modifier == Modifier.Const 
            or value.modifier == Modifier.Type)
        v = value.value

        return v

    def type_lookup(self, t):
        if t is None:
            return None
        elif types.is_type(t): # TODO This shouldnt be needed
            return t
        elif isinstance(t, model.Identifier):
            v = self.get_const_value(t)
            if hasattr(t, "identifier"):
                v.name = t.identifier
            else:
                v.name = t.ast[-1]
            return v
        elif isinstance(t, model.PtrT):
            return types.PointerT(self.type_lookup(t.type))
        elif isinstance(t, model.Struct):
            fields = []
            for id_decl in t.body.ast or []:
                if id_decl:
                    name = id_decl.name.ast[-1]
                    fields.append((name, self.type_lookup(id_decl.type)))
            if t.pragma and "#union" in t.pragma:
                return types.Union(fields)
            else:
                return types.Struct(fields)
        elif isinstance(t, model.ArrayT):
            assert_error(t.n, "Dynamic arrays not implemented")
            n = t.n.ast
            tpe = self.type_lookup(t.type)
            return types.ArrayT(tpe, n)
        elif isinstance(t, model.TEnum):
            tpe = types.int
            if t.type:
                tpe = self.type_lookup(t.type)
            fields = []
            value = 0
            for id_decl in t.body.ast or []:
                if id_decl:
                    name = id_decl.name.identifier
                    if id_decl.value:
                        value = id_decl.value.ast
                    fields.append((name, value))
                    value += 1

            return types.Enum(tpe, fields)
        
        error("Type not implemented")

    def create_variable(self, modifier: Modifier, name: str, tpe, share = ast.Share.No, value = None, identifier: str = None):
        # print(name, identifier)
        assert_error(isinstance(name, str), "Illegal declaration")
        if identifier: 
            assert_error(isinstance(identifier, str), "Illegal declaration")
        assert_error(name not in self.dict, "Redeclaration of %s" % name)
        
        v = Value(
            modifier = modifier,
            name = name,
            tpe = tpe,
            share = share,
            identifier = identifier,
            value = value
        )

        self.dict[name] = v

        return v

    def create_type(self, name, value, share = ast.Share.No, identifier = None):
        return self.create_variable(modifier = Modifier.Type, name = name, 
            tpe = None, share = share, value = value, identifier = identifier)

    def create_function(self, name, tpe, share = ast.Share.No, identifier = None):
        return self.create_variable(modifier = Modifier.Const, name = name, 
            tpe = tpe, share = share, identifier = identifier)

    def enter_scope(self):
        child = Scope(self)
        return child
    
    def exit_scope(self):
        return self.parent


class AstWalker(NodeWalker):
    def walk(self, node, *args, **kwargs):
        old_node = node
        try:
            return super().walk(node, *args, **kwargs)
        except CompileAssert as e:
            node = e.node or node
            info = node.parseinfo or old_node.parseinfo
            if info:
                lexer = info.buffer
                raise CompileError(lexer.format_error(str(e), info))
            else: raise CompileError(str(e))

    def walk_children(self, node):
        if isinstance(node, list):
            def flatten(iterable):  # Allows returing tuples from walk
                for el in iterable:
                    if isinstance(el, tuple): yield from el
                    else: yield el

            node[:] = [self.walk(e) for e in iter(node)]
            node[:] = flatten(node)
        elif isinstance(node, Node):
            node.map(self.walk)

    def walk_child(self, node, *children):
        assert isinstance(node, Node)
        node.map(self.walk, lambda n: n in children)

    def walk_default(self, node):
        self.walk_children(node)
        return node

class Compiler(AstWalker):
    def __init__(self, scope: Scope, filename, base_path, include_path):
        self._walker_cache = {} # Tatsu walkaround FIXME
        self.base_path = base_path
        self.include_path = include_path
        self.filename = filename
        self.function_stack = []
        self.scope = scope

    def enter_function(self, function):
        self.function_stack.append(function)
    def exit_function(self):
        self.function_stack.pop()

    def enter_scope(self):
        self.scope = self.scope.enter_scope()
    def exit_scope(self):
        self.scope = self.scope.exit_scope()

    @property
    def current_function(self):
        return self.function_stack[-1]

    def prefix_name(self, share, name):
        share = share or ast.Share.No
        if share & ast.Share.Export:
            identifier = self.filename + "_" + name
        elif len(self.function_stack) > 0:
            identifier = name
        else:
            identifier = create_unique_identifier() + "_" + name
        return identifier
    
    def walk_Body(self, node: model.Body):
        self.enter_scope()
        self.walk_children(node)
        self.exit_scope()

        return node

    # Literals
    
    def walk_Integer(self, node: model.Integer):
        node.type = types.int
        return node
    def walk_Float(self, node: model.Float):
        node.type = types.double
        return node
    def walk_String(self, node: model.String):
        node.type = types.ArrayT(types.char, len(node.ast) + 1)
        return node
    def walk_Char(self, node: model.Char):
        node.type = types.char
        return node
    def walk_Boolean(self, node: model.Boolean):
        node.type = types.bool
        return node
    def walk_Null(self, node: model.Null):
        node.type = types.void_p
        return node

    def walk_Identifier(self, node: model.Identifier):
        node.name = "_".join(node.ast) # TODO
        #print(node.name, self.scope.dict)

        if node in self.scope:
            value = self.scope[node]
            
            node.modifier = value.modifier
            node.identifier = value.identifier
            node.type = value.type

        return node

    def walk_Import(self, node: model.Import):
        self.walk_children(node)
        assert_error(len(node.modules) == 1, "Use multiple import statements")

        module = node.modules[0]
        name = module.name.ast[-1]
        alias = (module.alias or module.name).ast[-1]
        scope = compile_module(name, self.base_path, self.include_path)
        exports = {name:var for name, var in scope.dict.items() if var.share & ast.Share.Export}
        ns = self.scope.enter_namespace(alias)
        ns.dict.update(exports)
        #print(ns.dict)
        return node

    def walk_For(self, node: model.For):
        self.walk_child(node, node.iterator)
        in_stmt = node.iterator

        range_ = in_stmt.right[0]
        identifier = in_stmt.left[0].name

        self.enter_scope()
        if isinstance(range_, model.Range):
            var_decl = ast.VarDecl(
                keyword = in_stmt.keyword,
                left = in_stmt.left,
                right = [range_.from_]
            )
            node.init_expr = var_decl
            node.test_expr = ast.Compare(identifier, ast.CompareOp("<"), range_.to)
            if range_.step:
                step = range_.step
            elif range_.from_.ast > range_.to.ast:
                step = ast.Integer(-1)
            else:
                step = ast.Integer(1)
            node.update_expr = ast.AssignAndOp(
                left = identifier,
                op = ast.AssignOp("+="),
                right = step
            )
        else:
            array = range_
            identifier2 = ast.Identifier("iter")
            var_decl = ast.VarDecl(
                keyword = Modifier.Var,
                left = [ast.IdDecl(name = identifier2)],
                right = [ast.Integer(0)]
            )
            node.init_expr = var_decl
            node.body.ast.insert(0, ast.VarDecl(
                keyword = in_stmt.keyword,
                left = [ast.IdDecl(name = identifier)],
                right = [ast.ArrayIndex(left = array, right = identifier2)]
            ))

            tpe = self.scope.type_lookup(array.type)
            assert_error(types.is_array(tpe), "Invalid iterator")
            node.test_expr = ast.Compare(identifier2, ast.CompareOp("<"), ast.Integer(tpe.n))
            node.update_expr = ast.AssignAndOp(
                left = identifier2,
                op = ast.AssignOp("+="),
                right = ast.Integer(1)
            )

    
        self.walk_child(node, node.init_expr, node.test_expr, node.update_expr)
        
        self.walk_child(node, node.body)
        self.exit_scope() 
        return node
    
    def walk_MemberAccess(self, node: model.MemberAccess):
        self.walk_children(node)

        tpe_l = node.left.type
        tpe_r = getattr(node.right, "type", None)

        if types.is_struct(tpe_l):
            node.type = dict(tpe_l.fields)[node.right.name]
        elif types.is_function(tpe_r):
            error("Universal call syntax not implemented")
        else:
            error("Member access on incompatible type")
        
        return node
    
    def walk_Assign(self, node: model.Assign):
        assert_error(len(node.left) == len(node.right) == 1,
            "Parallel assignment not implemented")
        
        self.walk_child(node, node.left)

        left = node.left[0]
        right = node.right[0]

        if isinstance(left, model.Identifier) and not hasattr(node, "first_assign"):
            value = self.scope[left]
            assert_error(value.modifier is Modifier.Var, "Can't assign let or const")
        
        tpe = left.type
        if  types.is_struct(tpe) and isinstance(node.right[0], model.StructInit):
            right.type = tpe
        
        self.walk_child(node, node.right)

        tpe2 = right.type
        if (types.is_array(tpe) or types.is_pointer(tpe)) and types.is_array(tpe2):
            if types.is_array(tpe):
                n = tpe.n
            else:
                n = tpe2.n

            call = ast.Call(
                left = ast.Identifier("memcpy"),
                args = [
                    ast.CallArg(value = node.left[0]),
                    ast.CallArg(value = node.right[0]),
                    ast.CallArg(value = ast.Mul(left = ast.SizeOf(tpe.type), right = ast.Integer(n)))
                ]
            )
            call.left.type = types.FunctionT(
                return_t = (types.void_p,), 
                parameter_t = (types.void_p, types.void_p, types.size_t)
            )
            call = self.walk(call)
            return call
        else:
            return node

    def walk_Ptr(self, node: model.Ptr):
        self.walk_children(node)
        
        if isinstance(node.right, model.Identifier) and node.right.modifier == Modifier.Type:
            return self.walk(ast.PtrT(type = node.right))

        node.type = types.PointerT(node.right.type)
        return node
    
    def walk_Deref(self, node: model.Deref):
        self.walk_children(node)

        tpe = node.right.type
        assert_error(types.is_pointer(tpe), "Must be a pointer type")

        node.type = tpe.type
        return node

    def walk_Array(self, node: model.Array):
        self.walk_children(node)

        node.length = len(node.ast)

        if node.ast:
            tpe = node.ast[0].type
            for v in node.ast[1:]:
                tpe = common_type(tpe, v.type)

            node.value_type = tpe
            node.type = types.ArrayT(tpe, node.length)
        else:
            node.value_type = None
            node.type = None

        return node

    def walk_ArrayIndex(self, node: model.ArrayIndex):
        self.walk_children(node)

        t = node.left.type
        assert_error(types.is_array(t) or 
            types.is_pointer(t) or 
            t is types.string, "Can only index arrays")

        node.array_type = t
        if t is types.string:
            node.type = types.char
        else:
            node.type = t.type
        return node

    def walk_SizeOf(self, node: model.SizeOf):
        self.walk_children(node)
        
        if isinstance(node.ast, model.Type):
            tpe = self.scope.type_lookup(node.ast)
        else:
            tpe = node.ast

        node.type = types.size_t
        node.value = tpe
        return node
        

    def walk_BinaryOp(self, node: model.BinaryOp):
        self.walk_children(node)

        l = node.left.type
        r = node.right.type
        
        if isinstance(node, (model.Shl, model.Shr)):
            # Shift operators
            assert l in int_t and r in int_t
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.BAnd, model.BOr, model.Xor)):
            # Bitwise, only works on ints
            assert l in int_t and r in int_t
            node.type = common_type(l, r, sign_convert = False)
        elif isinstance(node, (model.PAdd, model.PSub)):
            # TODO pointer - pointer
            assert types.is_pointer(l) and r in int_t
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.And, model.Or)):
            assert_error(node.right.type is node.left.type is types.bool, "incompatible type")
            node.type = types.bool
        else:
            # Arithmetic
            node.type = common_type(l, r, sign_convert = True)

        node.left = cast_to(l, node.left, node.type)
        node.right = cast_to(r, node.right, node.type)

        return node
    
    def walk_UnaryPreOp(self, node: model.UnaryPreOp):
        self.walk_children(node)
        node.type = node.right.type
        return node

    def walk_Compare(self, node: model.Compare):
        self.walk_children(node)
        node.type = types.bool
        return node

    def walk_TypeDecl(self, node: model.TypeDecl):
        self.walk_children(node)
        assert_error(len(node.name) == len(node.value) == 1,
            "Parallel type assignments not implemented")

        val = node.value[0]
        name = node.name[0].ast[-1]
        if hasattr(node, "typename"):
            typename = node.typename
        else:
            typename = self.prefix_name(node.share, name)

        if isinstance(val, model.TEnum):
            tpe = val.type or types.int
            ns = self.scope.enter_namespace(name)

            value = -1
            for nme in val.body.ast:
                if nme.value:
                    value = nme.value.ast
                else:
                    value += 1
                
                name = nme.name.name
                identifier = typename + "_" + name
                nme.name.identifier = identifier
                ns.create_variable(
                    modifier = Modifier.Let, name = name, tpe = self.scope.type_lookup(tpe), 
                    value = value, identifier = identifier)
            
            node.type = self.scope.type_lookup(val)
            node.typename = typename
        else:
            # Create dummy for self reference
            tpe = types.Type(ctypes.c_void_p)
            self.scope.create_type(name, tpe, share = node.share, identifier = typename)

            tpe2 = self.scope.type_lookup(val)
            tpe2.name = typename
            print(tpe2.name) 

            def resolve_types(tpe2):
                if types.is_struct(tpe2):
                    for i in range(len(tpe2.fields)):
                        k, v = tpe2.fields[i]
                        if types.is_struct(v):
                            resolve_types(v)
                        elif types.is_pointer(v) and v.type == tpe:
                            v = types.PointerT(tpe2)
                        tpe2.fields[i] = (k, v)

            resolve_types(tpe2)  

            node.type = tpe2
            node.typename = typename

            del self.scope.dict[name] # Remove dummy again
            self.scope.create_type(name, node.type, share = node.share, identifier = typename)

        return node

    def walk_VarDecl(self, node: model.VarDecl):
        self.walk_child(node, node.left)
        assert_error(len(node.left) == 1 >= len(node.right), 
            "Parallel assignment not implemented")

        modifier = Modifier(node.keyword)
        id_decl = node.left[0]

        if hasattr(node, "type") and node.type:
            tpe = node.type # for already walked declarations
            self.walk_child(node, node.right)
        elif id_decl.type:
            tpe = self.scope.type_lookup(id_decl.type)

            if (len(node.right) == 1 and types.is_struct(tpe) 
                and isinstance(node.right[0], model.StructInit)):
                node.right[0].type = tpe
            self.walk_child(node, node.right)
        else:
            self.walk_child(node, node.right)
            tpe = node.right[0].type # Type inference
        
        name = id_decl.name.name
        identifier = self.prefix_name(node.share, name)
        self.scope.create_variable(modifier, name, tpe, node.share, identifier = identifier)
        
        node.type = tpe
        node.name = name
        node.identifier = identifier
        return node

    def walk_Cast(self, node: model.Cast):
        self.walk_child(node, node.right)

        # Simplify cast if casting a literal
        if hasattr(node, "type"):
            tpe = node.type
        else:
            tpe = self.scope.type_lookup(node.right)

        if isinstance(node.left, (model.Integer, model.Float, model.StructInit)):
            node.left.type = tpe
            if isinstance(node.left, model.StructInit):
                return self.walk(node.left)
            return node.left

        self.walk_child(node, node.left)
        node.type = tpe # TODO rewrite cast_to
        return node

    #def walk_CallArg(self, node: model.CallArg):
    #    node.value = node.ast
    #    return node

    def walk_Call(self, node: model.Call):
        self.walk_child(node, node.left)
        tpe = copy.deepcopy(node.left.type)
        assert_error(types.is_function(tpe), "Can only call functions")
        
        for i in range(len(node.args)):
            n = node.args[i].value
            if isinstance(n, model.StructInit):
                n.type = tpe.parameter_t[i]


        self.walk_child(node, node.args)
        if tpe.macro:
            node = tpe.macro(tpe, node, self)
            # In case the macro changed something
            self.walk_child(node, node.left, node.args)
            # This is so that we don't run the same code again
            tpe.macro = None
        node.type = tpe.return_t[0]
        node.left.type = tpe

        return node

    def walk_Return(self, node: model.Return):
        self.walk_children(node)

        function = self.current_function
        function.return_t = tuple(self.scope.type_lookup(n.type) for n in node.ast)
        function.return_t = function.return_t or (types.void, )

        if len(function.return_t) > 1:
            node.struct_identifier = function.struct_identifier
        
        return node

    def walk_StructInit(self, node: model.StructInit):
        self.walk_children(node)

        if node.type and not types.is_type(node.type):
            node.type = self.scope.type_lookup(node.type)
        assert_error(node.type is not None, "Unknown struct type")

        return node

    def walk_DefArg(self, node: model.DefArg):
        self.walk_children(node)
        node.type = self.scope.type_lookup(node.type)
        node.identifier = node.name.ast[-1]
        return node

    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns)

        name = node.name.ast[-1]
        node.identifier = self.prefix_name(node.share, name)

        struct_identifier = create_unique_identifier()

        function = types.FunctionT(
            tuple(self.scope.type_lookup(n) for n in node.returns) 
                if node.returns else (types.void,), 
            tuple(self.scope.type_lookup(n.type) for n in node.args or []),
            struct_identifier)
        
        self.scope.create_function(name, function, node.share, node.identifier)

        if node.body:
            self.enter_scope()
            for arg in node.args or []:
                # Create argument variables
                v = self.scope.create_variable(Modifier.Var, arg.name.ast[-1], self.scope.type_lookup(arg.type))
                arg.identifier = v.identifier

            self.enter_function(function)
            self.walk_child(node, node.body)
            self.exit_function()
            
            self.exit_scope()

        function.return_t = tuple(   # decay arrays to pointers
            types.PointerT(i.type) if types.is_array(i) else i for i in function.return_t) # pylint: disable=no-member

        if len(function.return_t) > 1:
            struct = ast.TypeDecl(
                share = ast.Share.No,
                name = [ast.Identifier(struct_identifier)],
                typename = struct_identifier,
                value = [ast.Struct(
                    body = ast.StructBody(
                        *[ast.IdDeclStruct(name = ast.Identifier("_" + str(n)), type = function.return_t[n])
                        for n in range(len(function.return_t))]
                    )
                )]
            )
            struct = self.walk(struct)
            node.return_type = struct_identifier
            node.type = self.scope.type_lookup(ast.Identifier(node.return_type))
            return (struct, node)
        else:
            node.return_type = function.return_t[0]
            node.type = self.scope.type_lookup(node.return_type)
    
            return node

    def walk_Program(self, node: model.Program):
        code = []
        main_code = []

        self.enter_scope()
        for n in node.ast:
            if isinstance(n, model.Import):
                module = n.modules[0]
                name = module.name.ast[-1]

                call = ast.Call(left = ast.Identifier(name, "main"), args = [])
                if not name in _modules:
                    main_code.append(call) 
                    n = self.walk(n)
                    code.append(n)
            elif isinstance(n, (model.TypeDecl, model.Def)):
                n = self.walk(n)
                code.append(n)
            elif isinstance(n, model.VarDecl):
                if n.right:
                    assert_error(len(n.left) == 1 >= len(n.right), "Parallel assignment not implemented")
                    n = self.walk(n)
                
                tpe = n.type if hasattr(n, "type") else None
                var_decl = ast.VarDecl(
                    left = n.left,
                    right = [],
                    keyword = n.keyword,
                    type = tpe,
                    share = n.share
                )
                code.append(var_decl)

                if n.right:
                    assignment = ast.Assign(
                        left = [n.name if isinstance(n, model.IdDecl) 
                                else n.ast for n in n.left],
                        right = n.right,
                        first_assign = True
                    )
                    main_code.append(assignment)
            else:
                main_code.append(n)
        self.exit_scope()

        main_function = ast.Def(
            name = ast.Identifier("main"),
            body = ast.Body(*main_code),
            share = ast.Share.Export
        )
        code.append(main_function)

        self.walk_children(code)
        return ast.Program(*code), main_function.type # pylint: disable=no-member

builtins = Scope()
for n in dir(types):
    v = getattr(types, n)
    if isinstance(v, types.Type):
        builtins.create_type(n, v)
        
import princess.builtins

def compile(p_ast, scope = None, filename = None, base_path = Path(""), include_path = Path("")):
    if not filename:
        filename = create_unique_identifier()
    if not scope:
        scope = Scope(builtins)
    p_ast, main_type = Compiler(scope, filename, base_path, include_path).walk(p_ast)
    csrc = CCodeGen().render(p_ast)
    return csrc, main_type

_modules = {} # compiled modules
def compile_module(module, base_path, include_path):
    if module in _modules:
        return _modules[module]

    file_path = include_path / Path(module + ".pr")
    with open(file_path) as fp:
        src = fp.read()
    p_ast = parse(src)
    scope = Scope(builtins)
    csrc, main_type = compile(p_ast, scope, module, base_path, include_path)
    _modules[module] = scope
    
    c_file_path = base_path / (file_path.stem + ".c")
    with open(c_file_path, "w") as fp:
        fp.write(csrc)
    
    return scope


def eval(csrc, main_fun, filename, main_type):
    main_fun = main_fun + "_main"

    base_path = Path("bin").absolute()
    c_file = base_path / (filename + ".c")
    c_file.parent.mkdir(parents = True, exist_ok = True)

    if os.name == "nt":
        libfile = base_path / (filename + ".dll")
    else:
        libfile = base_path / (filename + ".so")

    with open(c_file, "w") as fp:
        fp.write(csrc)

    p = subprocess.Popen(
        ["gcc", "-I" + os.getcwd(), "-I" + str(c_file.parent), "-shared", "-o", 
        str(libfile), "-fPIC", str(c_file)], 
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")

    lib = cdll.LoadLibrary(str(libfile.absolute()))
    main_type = main_type.c_type

    getattr(lib, main_fun).restype = main_type
    val = getattr(lib, main_fun)()
    del lib
    
    if main_type and issubclass(main_type, ctypes.Structure):
        val = tuple(getattr(val, "_" + str(n)) for n in range(len(main_type._fields_)))
    return val