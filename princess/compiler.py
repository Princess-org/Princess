import subprocess, sys, os, uuid, pickle
import ctypes, copy
from datetime import datetime
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

unsigned_t = set([types.char, types.uint8, types.uint16, 
    types.uint32, types.uint64, types.size_t, types.ushort, types.uint, types.ulong])
signed_t = set([types.int8, types.int16, types.int32, types.int64, types.short, types.int, types.long, types.char])
float_t = set([types.double, types.float, types.float64, types.float32])
int_t = unsigned_t | signed_t

def to_signed(t):
    if t in unsigned_t:
        return {types.uint8: types.int8, 
            types.uint16: types.int16, 
            types.uint32: types.int32, 
            types.uint64: types.int64,
            types.size_t: types.int64,
            types.ubyte: types.byte,
            types.uint: types.int,
            types.ushort: types.short,
            types.ulong: types.long}[t]
    return t

def cast_to(a, node, b):
    """ wraps node in a cast to b if a != b """
    if a is b:
        return node
    
    return ast.Cast(left = node, type = b)

def common_type(a, b, sign_convert = False, node = None):
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
        error("Incompatible types %s %s" % (a, b), node = node)

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
        self.value = None
        self.parent = parent
        self.dict = {}
        self.imports = []

    def __contains__(self, identifier):
        try:
            _ = self[identifier]
            return True
        except KeyError:
            return False

    def __getitem__(self, identifier):
        if len(identifier.ast) == 1:
            if identifier.ast[0] in self.dict:
                val = self.dict[identifier.ast[0]]
                return val
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
            if isinstance(value.value, Scope):
                value = value.value.value
        except KeyError:
            error("Unknown identifier \"%s\"" % v.name, v)

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
            #else:  # TODO Figure out why this is here
            #    print(v, t.ast[-1])
            #    v.name = t.ast[-1]
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
            n = t.n.ast if hasattr(t, "n") and t.n is not None else None
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
        #print("create_variable", name, identifier, self)
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

    def create_function(self, name, tpe, share = ast.Share.No, identifier = None, forward_declare = False):
        if not forward_declare and name in self.dict:
            del self.dict[name]
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
        except CompileError as e:
            raise e
        except Exception as e:
            if isinstance(e, CompileAssert):
                node = e.node   # pylint: disable=no-member
            else:
                node = old_node
            info = node.parseinfo if node else None
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
        node.map(self.walk, lambda n: n in children)    # TODO Use more efficient operator than in

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
        if len(self.function_stack) > 0:
            return self.function_stack[-1]
        return None

    def prefix_name(self, share, name):
        share = share or ast.Share.No
        if name == "main":
            identifier = name
        elif share & ast.Share.Export:
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
        node.length = len(node.ast) + 1
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

        if node in self.scope:
            value = self.scope[node]
            if isinstance(value.value, Scope):
                value = value.value.value
            if not value: return node

            node.modifier = value.modifier
            node.identifier = value.identifier
            node.type = value.type

        return node

    def walk_Import(self, node: model.Import):
        self.walk_children(node)
        assert_error(len(node.modules) == 1, "Use multiple import statements")

        module = node.modules[0]
        name = module.name.ast[-1]
        self.scope.imports.append(name)
        alias = (module.alias or module.name).ast[-1]
        scope = compile_module(name, self.base_path, self.include_path)
        exports = {name:var for name, var in scope.dict.items() if var.share & ast.Share.Export}
        #print("Import", name, scope, scope.dict)
        ns = self.scope.enter_namespace(alias)
        ns.dict.update(exports)
        #print(ns.dict)
        return node

    def walk_Case(self, node: model.Case):
        self.walk_children(node)
        if node.value:
            assert_error(len(node.value) == 1, "Switch statement with multiple values not implemented")
        return node

    def walk_Switch(self, node: model.Switch):
        self.walk_children(node)
        tpe = node.value.type
        assert_error(tpe in int_t or tpe is types.char, "Switch statement on %s not implemented" % tpe)
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
        self.walk_child(node, node.left)

        tpe_l = node.left.type

        node.right.name = node.right.ast[-1]
        if types.is_struct_or_union(tpe_l):
            node.type = dict(tpe_l.fields)[node.right.name]
        #elif types.is_function(tpe_r):
        #    error("Universal call syntax not implemented")
        elif types.is_array(tpe_l):
            name = node.right.name
            if name == "value":
                node.type = types.PointerT(tpe_l.type)
            elif name == "size":
                node.type = types.size_t
            else:
                error("Illegal access")
        else:
            error("Member access on incompatible type", node)
        
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
        if types.is_struct_or_union(tpe) and isinstance(node.right[0], model.StructInit):
            right.type = tpe
        
        self.walk_child(node, node.right)
        right = node.right[0]

        tpe2 = right.type
        if types.is_array(tpe) and types.is_array(tpe2) and tpe.n == tpe2.n != None and hasattr(node, "first_assign"):
            call = ast.Call(
                left = ast.Identifier("memcpy"),
                args = [
                    ast.CallArg(value = ast.MemberAccess(left = left, right = ast.Identifier("value"))),
                    ast.CallArg(value = ast.MemberAccess(left = right, right = ast.Identifier("value"))),
                    ast.CallArg(value = ast.Mul(left = ast.SizeOf(tpe.type), 
                        right = ast.MemberAccess(left = left, right = ast.Identifier("size"))
                    ))
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

        if types.is_function(node.right.type):
            node.type = node.right.type
        else: 
            node.type = types.PointerT(node.right.type)
        return node
    
    def walk_Deref(self, node: model.Deref):
        self.walk_children(node)

        tpe = node.right.type
        assert_error(types.is_pointer(tpe), "Must be a pointer type", node = node)

        node.type = tpe.type
        return node

    def walk_Array(self, node: model.Array):
        self.walk_children(node)

        node.length = len(node.ast)

        if node.ast:
            tpe = node.ast[0].type
            #for v in node.ast[1:]: TODO This should be working
            #    tpe = common_type(tpe, v.type)

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
            assert_error(l in int_t and r in int_t, "Illegal argument %s %s" % (l, r))
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.BAnd, model.BOr, model.Xor)):
            # Bitwise, only works on ints
            assert_error(l in int_t and r in int_t, "Illegal argument %s %s" % (l, r))
            node.type = common_type(l, r, sign_convert = False, node = node)
        elif isinstance(node, (model.PAdd, model.PSub)):
            # TODO pointer - pointer
            assert_error((types.is_pointer(l) or l == types.string or l == types.void_p) 
                and r in int_t,  "Illegal argument %s %s" % (l, r))
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.And, model.Or)):
            # TODO implement this porperly and support pointers
            #assert_error(node.right.type == node.left.type == types.bool, "incompatible type")
            node.type = types.bool
        else:
            # Arithmetic
            node.type = common_type(l, r, sign_convert = True, node = node)

        node.left = cast_to(l, node.left, node.type)
        node.right = cast_to(r, node.right, node.type)

        return node
    
    def walk_UnaryPreOp(self, node: model.UnaryPreOp):
        self.walk_children(node)
        node.type = node.right.type
        return node

    def walk_Compare(self, node: model.Compare):
        self.walk_children(node)
        assert_error(len(node.ast) == 3, "Mutliple comparisons not supported")

        left = node.ast[0]
        op = node.ast[1]
        right = node.ast[2]

        if op == ast.CompareOp("==") or op == ast.CompareOp("!="):
            if types.is_string(left.type) and types.is_string(right.type):
                call = ast.Call(
                    left = ast.Identifier("strcmp"),
                    args = [ast.CallArg(value = left), ast.CallArg(value = right)]
                )
                call.left.type = types.FunctionT(c = True, return_t = (types.int,), parameter_t = (types.string, types.string))
                node = ast.Compare(
                    call,
                    op,
                    ast.Integer(0)
                )
                self.walk_children(node)

        node.type = types.bool
        return node

    def walk_TypeDecl(self, node: model.TypeDecl):
        self.walk_children(node)
        assert_error(1 == len(node.name) >= len(node.value or []),
            "Parallel type assignments not implemented")

        val = node.value[0] if node.value else None
        name = node.name[0].ast[-1]
        if hasattr(node, "typename"):
            typename = node.typename
        elif len(node.name[0].ast) == 1:
            typename = self.prefix_name(node.share, name)
        else:
            typename = name

        if val:
            node.forward_declare = False

            if name in self.scope.dict:
                tpe = self.scope.dict[name].value
                typename = tpe.name
                if isinstance(tpe, types.TypeWrapper):
                    tpe2 = self.scope.type_lookup(val)
                    tpe2.name = typename
                    assert_error(types.is_struct_or_union(tpe2), 
                        "Can only forward declare structs or unions")
                    tpe.set_base_type(tpe2)
                else: error("Redeclaration of %s" % name)
                
                node.type = tpe2
                node.typename = typename

            elif isinstance(val, model.TEnum):
                tpe = self.scope.type_lookup(val.type) or types.int
                ns = self.scope.enter_namespace(name, share = node.share)

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
                        modifier = Modifier.Let, name = name, tpe = tpe, 
                        value = value, identifier = identifier)

                enum_type = self.scope.type_lookup(val)
                ns.value = Value(Modifier.Type, name, None, node.share, typename, enum_type)
                
                node.type = enum_type
                node.typename = typename
            else:
                # Create dummy for self reference
                tpe = types.Type(c_type = None, name = typename)
                self.scope.create_type(name, tpe, share = node.share, identifier = typename)

                tpe2 = self.scope.type_lookup(val)
                tpe2.name = typename

                def resolve_types(tpe2):
                    if types.is_struct_or_union(tpe2):
                        for i in range(len(tpe2.fields)):
                            k, v = tpe2.fields[i]
                            if types.is_struct_or_union(v):
                                resolve_types(v)
                            elif types.is_pointer(v) and v.type == tpe:
                                v = types.PointerT(tpe2)
                            tpe2.fields[i] = (k, v)

                resolve_types(tpe2)  

                node.type = tpe2
                node.typename = typename

                del self.scope.dict[name] # Remove dummy again
                self.scope.create_type(name, tpe2, share = node.share, identifier = typename)

                set_base_type(self.filename, name, tpe2, self.base_path)
        else:
            node.forward_declare = True

            if len(node.name[0].ast) == 2:
                scope = self.scope.enter_namespace(node.name[0].ast[0])
                typename = "_".join(node.name[0].ast)
            else: scope = self.scope

            tpe = types.TypeWrapper(name = typename)
            scope.create_type(name, tpe, share = node.share, identifier = typename)

            if len(node.name[0].ast) == 2:
                set_incomplete_type(node.name[0].ast[0], name, tpe, self.filename)

            node.type = tpe
            node.typename = typename

        return node

    def walk_VarDecl(self, node: model.VarDecl):
        self.walk_child(node, node.left)

        if not node.right:
            node.right = []

        assert_error(len(node.left) == 1 >= len(node.right), 
            "Parallel assignment not implemented")
        modifier = Modifier(node.keyword)
        id_decl = node.left[0]
        
        if id_decl.type:
            tpe = self.scope.type_lookup(id_decl.type)

            if (len(node.right) == 1 and types.is_struct_or_union(tpe) 
                and isinstance(node.right[0], model.StructInit)):
                node.right[0].type = tpe
            self.walk_child(node, node.right)
        else:
            self.walk_child(node, node.right)
            tpe = node.right[0].type # Type inference
        
        name = id_decl.name.name
        identifier = self.prefix_name(node.share, name)
        self.scope.create_variable(modifier, name, tpe, node.share, identifier = identifier)
        
        if not self.current_function:
            # Top level variables are assigned inside the main function
            node.right = []
        
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
        tpe = node.left.type
        assert_error(types.is_function(tpe), "Can only call functions")
        
        for i in range(len(node.args)):
            n = node.args[i].value
            if isinstance(n, model.StructInit):
                n.type = tpe.parameter_t[i]


        self.walk_child(node, node.args)

        if tpe.macro:
            tpe = copy.copy(tpe)
            node = tpe.macro(tpe, node, self)
            tpe.macro = None
            self.walk_children(node)

        if isinstance(node, model.Call):
            if tpe.c:
                for arg in node.args:
                    if types.is_array(arg.value.type):
                        arg.value = self.walk(ast.MemberAccess(left = arg.value, right = ast.Identifier("value")))

            node.type = tpe.return_t[0]
            node.left.type = tpe

        return node

    def walk_Return(self, node: model.Return):
        self.walk_children(node)

        function = self.current_function
        if function.fun_name == "p_main":
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
        if name in self.scope.dict:
            node.identifier = self.scope.dict[name].identifier
        else:
            node.identifier = self.prefix_name(node.share, name)

        struct_identifier = create_unique_identifier()

        function = types.FunctionT(
            tuple(self.scope.type_lookup(n) for n in node.returns) 
                if node.returns else (types.void,), 
            tuple(self.scope.type_lookup(n.type) for n in node.args or []),
            struct_identifier, name)
        
        self.scope.create_function(name, function, node.share, node.identifier, not node.body)

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

        #function.return_t = tuple(   # decay arrays to pointers
        #    types.PointerT(i.type) if types.is_array(i) else i for i in function.return_t) # pylint: disable=no-member

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
            
            #print("Function:", name, "returns:", node.return_type)

            return node

    def walk_Program(self, node: model.Program):
        code = []
        main_code = []

        #self.enter_scope()
        for n in node.ast:
            if isinstance(n, model.Import):
                module = n.modules[0]
                name = module.name.ast[-1]

                call = ast.Call(left = ast.Identifier(name, "p_main"), args = [
                    ast.CallArg(value = ast.Identifier("args"))
                ])
                if not name in _modules:
                    main_code.append(call) 
                
                code.append(n)
            elif isinstance(n, (model.TypeDecl, model.Def)):
                code.append(n)
            elif isinstance(n, model.VarDecl):
                if n.right:
                    assert_error(len(n.left) == 1 >= len(n.right), "Parallel assignment not implemented")
                
                code.append(n)

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
        #self.exit_scope()

        main_function = ast.Def(
            name = ast.Identifier("p_main"),
            body = ast.Body(*main_code),
            share = ast.Share.Export,
            args = [
                ast.DefArg(name = ast.Identifier("args"), type = ast.ArrayT(type = ast.Identifier("string")))
            ]
        )
        code.append(main_function)

        #if self.filename == "main":
        #    c_main = ast.Def(
        #        name = ast.Identifier("main"),
        #        body = ast.Body(
        #            ast.Call(left = ast.Identifier("p_main"), args = [
        #                ast.CallArg(value = ast.Identifier("args"))
        #            ])
        #        ),
        #        share = ast.Share.No,
        #        args = [
        #            ast.DefArg(name = ast.Identifier("args"), type = ast.ArrayT(type = ast.Identifier("string"))),
        #        ],
        #        returns = [ast.Identifier("int")]
        #    )
        #    code.append(c_main)

        self.walk_children(code)
        program = ast.Program(*code)
        program.file = self.filename
        return program, main_function.type # pylint: disable=no-member

builtins = Scope()
for n in dir(types):
    v = getattr(types, n)
    if isinstance(v, types.Type):
        builtins.create_type(n, v)
        
import princess.builtins

class IncompleteType:
    def __init__(self, tpe, dependant):
        self.tpe = tpe
        self.dependants = [dependant]

_incomplete_types = {}

def set_base_type(filename, typename, tpe, base_path):
    incomplete_type = get_incomplete_type(filename, typename)
    if incomplete_type:
        incomplete_type.tpe.set_base_type(tpe)
        for dependant in incomplete_type.dependants:
            cache_module(dependant, base_path)

def get_incomplete_type(filename, typename):
    types = _incomplete_types.setdefault(filename, {})
    if typename in types:
        return types[typename]

def set_incomplete_type(filename, typename, tpe, dependant):
    types = _incomplete_types.setdefault(filename, {})
    if typename in types:
        types[typename].dependants.append(dependant)
    else:
        types[typename] = IncompleteType(tpe, dependant)

def cache_module(module, base_path):
    cache_file = base_path / (module + ".pc")
    scope = _modules[module]

    with open(cache_file, "wb") as fp:
        pickle.dump(scope, fp)

# TODO Rewrite these functions to use more sensible arguments
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
        #print("Returning compiled module", module)
        return _modules[module]

    cache_file = base_path / (module + ".pc")
    file_path = include_path / (module + ".pr")

    recompile = True
    if cache_file.exists():
        last_compiled = datetime.fromtimestamp(os.path.getmtime(cache_file))
        last_modified = datetime.fromtimestamp(os.path.getmtime(file_path))
        if last_modified < last_compiled:
            recompile = False

    if recompile:
        with open(file_path) as fp:
            src = fp.read()
        p_ast = parse(src)
        scope = Scope(builtins)

        _modules[module] = scope
        #print("Compiling module", module, scope)
        csrc, _ = compile(p_ast, scope, module, base_path, include_path)
        
        c_file_path = base_path / (file_path.stem + ".c")
        with open(c_file_path, "w") as fp:
            fp.write(csrc)
        
        with open(cache_file, "wb") as fp:
            pickle.dump(scope, fp)
    else:
        with open(cache_file, "rb") as fp:
            scope = pickle.load(fp)
        _modules[module] = scope
        for module in scope.imports:
            compile_module(module, base_path, include_path)
    
    return scope

def compile_file(file, base_path = Path(""), include_path = Path("")):
    file = Path(file)
    filename = file.stem

    include_path.mkdir(parents = True, exist_ok = True)
    base_path.mkdir(parents = True, exist_ok = True)

    c_file = base_path / (filename + ".c")
    include_dir = Path(__file__).parent.parent

    with open(file) as fp:
        src = fp.read()
    p_ast = parse(src)
    csrc, _ = compile(p_ast, filename = filename, base_path = base_path, include_path = include_path)

    with open(c_file, "w") as fp:
        fp.write(csrc)

    if os.name == "nt":
        exefile = base_path / (filename + ".exe")
    else:
        exefile = base_path / filename
    
    p = subprocess.Popen(
        ["gcc", "-g", "-I" + str(include_dir), "-o", str(exefile), str(c_file), "-lm"]
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")


def eval(csrc, p_filename, c_filename, main_type, args = []):
    p_filename += "_p_main"

    include_dir = Path(__file__).parent.parent

    base_path = (include_dir / "bin").absolute()
    c_file = base_path / (c_filename + ".c")
    c_file.parent.mkdir(parents = True, exist_ok = True)

    if os.name == "nt":
        libfile = base_path / (c_filename + ".dll")
    else:
        libfile = base_path / (c_filename + ".so")

    with open(c_file, "w") as fp:
        fp.write(csrc)

    p = subprocess.Popen(
        ["gcc", "-g", "-I" + str(include_dir), "-shared", "-o", 
        str(libfile), "-fPIC", str(c_file), "-lm"], 
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")

    lib = cdll.LoadLibrary(str(libfile.absolute()))
    c_type = main_type.c_type

    function = getattr(lib, p_filename)
    function.restype = c_type
    val = function(types.Array(
        size = len(args),
        value = ctypes.cast((types.Array * len(args))(*[
            types.Array(size = len(v), value = ctypes.cast(ctypes.c_char_p(v), 
            ctypes.c_void_p)) for v in args]), ctypes.c_void_p)
    ))
    del lib
    
    if not c_type:
        return NotImplemented
    elif types.is_array(main_type):
        if main_type.type == types.char:
            val = ctypes.cast(val.value, ctypes.c_char_p).value
        return val
    elif issubclass(c_type, ctypes.Structure):
        res = []
        for n in range(len(c_type._fields_)):
            v = getattr(val, "_" + str(n))
            tpe = main_type.fields[n][1]
            if types.is_array(tpe) and tpe.type == types.char:
                v = ctypes.cast(v.value, ctypes.c_char_p).value
            res.append(v)
        res = tuple(res)
        return res
    else:
        return val
 