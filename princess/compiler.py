import subprocess, sys, os, uuid
import ctypes, copy
from pathlib import Path
from enum import Enum
from ctypes import cdll
from princess import ast, model, types
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
    types.uint32, types.uint64])
signed_t = set([types.int8, types.int16, types.int32, types.int64])
float_t = set([types.double, types.float])
int_t = unsigned_t | signed_t | set([types.size_t])

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
            v.name = t.ast[-1]
            return v
        elif isinstance(t, model.PtrT):
            return types.PointerT(self.type_lookup(t.type))
        elif isinstance(t, model.Struct):
            fields = []
            for id_decl in t.body.ast or []:
                if id_decl:
                    if isinstance(id_decl.name, model.Identifier): # TODO This is ugly
                        name = id_decl.name.ast[-1]
                    else: name = id_decl.name
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
        
        error("Type not implemented")

    def create_variable(self, modifier: Modifier, name, tpe, share = ast.Share.No, value = None, identifier = None):
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
    def __init__(self):
        self._walker_cache = {} # Tatsu walkaround FIXME
        self.function_stack = []
        self.scope = Scope(builtins)

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
        node.name = "_".join(node.ast)

        if node in self.scope:
            value = self.scope[node]
            
            node.modifier = value.modifier
            node.identifier = value.identifier
            node.type = value.type

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
                    ast.CallArg(node.left[0]),
                    ast.CallArg(node.right[0]),
                    ast.CallArg(ast.Integer(n))
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

        node.type = self.scope.type_lookup(node.value[0])
        node.typename = node.name[0].ast[-1]
        self.scope.create_type(node.typename, node.type)

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
        if node.share is ast.Share.Export:
            identifier = name
        else:
            identifier = create_unique_identifier() + "_" + name
        self.scope.create_variable(modifier, name, tpe, identifier = identifier)
        
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
        node.identifier = "_".join(node.name.ast)
        if node.identifier != "main":
            node.identifier = create_unique_identifier() + "_" + node.identifier

        struct_identifier = create_unique_identifier()

        function = types.FunctionT(
            tuple(self.scope.type_lookup(n) for n in node.returns) 
                if node.returns else (types.void,), 
            tuple(self.scope.type_lookup(n.type) for n in node.args or []),
            struct_identifier)
            
        self.scope.create_function(name, function, ast.Share.No, node.identifier)

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

        function.return_t = [   # decay arrays to pointers
            types.PointerT(i.type) if types.is_array(i) else i for i in function.return_t] # pylint: disable=no-member

        if len(function.return_t) > 1:
            struct = ast.TypeDecl(
                share = ast.Share.No,
                name = [ast.Identifier(struct_identifier)],
                value = [ast.Struct(
                    body = ast.StructBody(
                        *[ast.IdDeclStruct(name = "_" + str(n), type = function.return_t[n])
                        for n in range(len(function.return_t))]
                    )
                )]
            )
            struct = self.walk(struct)
            node.returns = struct_identifier
            node.type = self.scope.type_lookup(ast.Identifier(node.returns))
            return (struct, node)
        else:
            node.returns = function.return_t[0]
            node.type = self.scope.type_lookup(node.returns)
    
            return node

    def walk_Program(self, node: model.Program):
        code = []
        main_code = []

        self.enter_scope()
        for n in node.ast:
            if isinstance(n, model.Def):
                code.append(n)  # TODO Walking this shouldn't have an impact
            elif isinstance(n, model.TypeDecl):
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
                    type = tpe
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

                
def compile(p_ast):
    p_ast, main_type = Compiler().walk(p_ast)
    csrc = CCodeGen().render(p_ast)
    return csrc, main_type
    

def eval(csrc, filename, main_type):
    if not os.path.exists("bin"):
        os.mkdir("bin")

    basepath = Path("bin").absolute()
    cfile = basepath / (filename + ".c")
    cfile.parent.mkdir(exist_ok = True)
    libfile = basepath / (filename + ".so")

    with open(cfile, "w") as fp:
        fp.write(csrc)

    p = subprocess.Popen(
        ["gcc", "-I" + os.getcwd(), "-shared", "-o", 
        libfile, "-fPIC", cfile], 
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")

    lib = cdll.LoadLibrary(libfile.absolute())
    main_type = main_type.c_type

    lib.main.restype = main_type
    val = lib.main()
    del lib
    
    if main_type and issubclass(main_type, ctypes.Structure):
        val = tuple(getattr(val, "_" + str(n)) for n in range(len(main_type._fields_)))
    return val

builtins = Scope()
for n in dir(types):
    v = getattr(types, n)
    if isinstance(v, types.Type):
        builtins.create_type(n, v)

def _allocate(function, node, compiler: Compiler):
    arg = node.args[0].value
    if compiler.scope.type_lookup(arg.type) in int_t:
        function.return_t = (types.void_p,)
        function.parameter_t = (types.size_t,)
    else:
        function.return_t = (types.PointerT(compiler.scope.type_lookup(arg)),)
        if len(node.args) == 2:
            n = node.args[1].value
            assert_error(n.type in int_t, "Invalid argument")
            node.args[:] = [ast.CallArg(ast.Mul(left = ast.SizeOf(arg), right = n))]
        else:
            node.args[0].value = ast.SizeOf(arg)

    node.left = ast.Identifier("malloc")
    return node

def to_c_format_specifier(tpe):
    if types.is_array(tpe) and tpe.type is types.char:
        return "%s"
    elif types.is_pointer(tpe):
        return "%p"
    else:
        return {
            types.size_t: "%zu",
            types.byte: "%hhd",
            types.ubyte: "%hhu",
            types.char: "%c",
            types.short: "%hd",
            types.ushort: "%hu",
            types.int: "%d",
            types.uint: "%u",
            types.long: "%ld",
            types.ulong: "%lu",
            types.float: "%f",
            types.double: "%f"
        }[tpe]

# TODO Do proper paremeter and return types

def _print(function, node, compiler: Compiler):
    node.args[:] = [ast.CallArg(ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args)))] + node.args

    node.left = ast.Identifier("printf")
    return node

def _concat(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args[1:])))] + node.args[1:]

    node.left = ast.Identifier("sprintf")
    return node

def _open(function, node, compiler: Compiler):
    node.left = ast.Identifier("fopen")
    return node

def _close(function, node, compiler: Compiler):
    node.left = ast.Identifier("fclose")
    return node

def read_write(function, node, compiler: Compiler):
    buffer = node.args[1].value
    if len(node.args) == 3:
        size = node.args[2].value
    else:
        if types.is_array(buffer.type):
            size = ast.Integer(buffer.type.n)
        else:
            assert_error(types.is_pointer(buffer.type), "Illegal argument")
            size = ast.Integer(1)
    node.args[:] = [node.args[1], ast.CallArg(ast.SizeOf(buffer.type.type)), ast.CallArg(size), node.args[0]]
    return node

def _write(function, node, compiler: Compiler):
    node = read_write(function, node, compiler)
    node.left = ast.Identifier("fwrite")
    return node

def _read(function, node, compiler: Compiler):
    node = read_write(function, node, compiler)
    node.left = ast.Identifier("fread")
    return node

def _write_string(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args[1:])))] + node.args[1:]

    node.left = ast.Identifier("fprintf")
    return node

def _read_line(function, node, compiler: Compiler):
    buffer = node.args[1].value
    if types.is_array(buffer.type):
        size = ast.Integer(buffer.type.n)
    if len(node.args) == 3:
        size = node.args[2].value
    node.args[:] = [node.args[1], ast.CallArg(size), node.args[0]]

    node.left = ast.Identifier("fgets")
    return node

def _scan(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type.type)) for a in node.args[1:])))] + node.args[1:]
    
    node.left = ast.Identifier("fscanf")
    return node

def _flush(function, node, compiler: Compiler):
    node.left = ast.Identifier("fflush")
    return node

def _seek(function, node, compiler: Compiler):
    node.args.append(ast.CallArg(ast.Identifier("SEEK_SET")))
    node.left = ast.Identifier("fseek")
    return node

builtins.create_function("allocate", types.FunctionT(macro = _allocate))
builtins.create_function("free", types.FunctionT(parameter_t = (types.void_p,)))
builtins.create_function("print", types.FunctionT(return_t = (types.int,), macro = _print))
#builtins.create_function("print_format", types.FunctionT(return_t = (types.int,)))
builtins.create_function("concat", types.FunctionT(return_t = (types.int,), macro = _concat))
builtins.create_function("open", types.FunctionT(return_t = (types.FILE_T,), parameter_t = (types.string, types.string), macro = _open))
builtins.create_function("close", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _close))
builtins.create_function("write", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _write))
builtins.create_function("read", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _read))
builtins.create_function("rewind", types.FunctionT(return_t = (types.void,), parameter_t = (types.void_p,)))
builtins.create_function("write_string", types.FunctionT(return_t = (types.void,), macro = _write_string))
builtins.create_function("read_line", types.FunctionT(return_t = (types.string,), macro = _read_line))
builtins.create_function("scan", types.FunctionT(return_t = (types.int,), macro = _scan))
builtins.create_function("flush", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _flush))
builtins.create_function("seek", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.long, types.int), macro = _seek))

builtins.create_variable(Modifier.Let, "stdout", types.FILE_T)
builtins.create_variable(Modifier.Let, "stderr", types.FILE_T)
builtins.create_variable(Modifier.Let, "stdin", types.FILE_T)