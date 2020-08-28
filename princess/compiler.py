import subprocess, sys, os, uuid
import ctypes
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
            return v
        elif isinstance(t, model.PtrT):
            return ctypes.POINTER(self.type_lookup(t.type))
        elif isinstance(t, model.Struct):
            fields = []
            for id_decl in t.body.ast:
                fields.append((id_decl.name, self.type_lookup(id_decl.type)))
            if t.pragma and "#union" in t.pragma:
                return types.Union(fields)
            else:
                return types.Struct(fields)
        elif isinstance(t, model.ArrayT):
            assert_error(t.n, "Dynamic arrays not implemented")
            n = t.n.value
            tpe = self.type_lookup(t.type)
            return tpe * n
        
        error("Type not implemented")

    def create_variable(self, modifier: Modifier, name, tpe, share = ast.Share.No, value = None, identifier = None):
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
        node.type = types.string
        return node
    def walk_Char(self, node: model.Char):
        node.type = types.char
        return node
    def walk_Boolean(self, node: model.Boolean):
        node.type = types.bool
        return node
    def walk_Null(self, node: model.Null):
        node.type = None
        return node

    def walk_Identifier(self, node: model.Identifier):
        node.name = "_".join(node.ast)

        if node in self.scope:
            value = self.scope[node]
            
            node.modifier = value.modifier
            node.identifier = value.identifier
            node.type = value.type

        return node

    def walk_TypeDecl(self, node: model.TypeDecl):
        self.walk_children(node)
        assert_error(len(node.name) == len(node.value) == 1,
            "Multiple type assignments not implemented")

        node.name = node.name[0]
        node.type = self.scope.type_lookup(node.value[0])
        self.scope.create_type(node.name, node.type)

        return node

    def walk_VarDecl(self, node: model.VarDecl):
        self.walk_children(node)
    
        assert_error(len(node.left) == 1 >= len(node.right), 
            "Multiple assignment not implemented")

        modifier = Modifier(node.keyword)
        id_decl = node.left[0]

        if id_decl.type:
            tpe = self.scope.type_lookup(id_decl.type)
        else:
            tpe = node.right[0].type # Type inference
        self.scope.create_variable(modifier, id_decl.name.name, tpe)
        
        node.type = tpe
        node.name = "_".join(id_decl.name.ast)
        return node

    def walk_Return(self, node: model.Return):
        self.walk_children(node)

        function = self.current_function
        function.return_t = tuple(self.scope.type_lookup(n.type) for n in node.ast)

        if len(function.return_t) > 1:
            node.struct_identifier = function.struct_identifier
        
        return node

    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns)

        name = node.name.ast[-1]
        node.identifier = "_".join(node.name.ast)
        if node.identifier != "main":
            node.identifier = create_unique_identifier() + "_" + node.identifier

        struct_identifier = create_unique_identifier()

        function = types.Function(
            tuple(self.scope.type_lookup(n) for n in node.returns) 
                if node.returns else types.void, 
            tuple(self.scope.type_lookup(n.type) for n in node.args or []),
            struct_identifier)
        
        self.scope.create_function(name, function, ast.Share.No, node.identifier)

        self.enter_function(function)
        self.walk_child(node, node.body)
        self.exit_function()

        if len(function.return_t) > 1:
            struct = ast.TypeDecl(
                share = ast.Share.No,
                name = [struct_identifier],
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
        for n in node.ast:
            if isinstance(n, (model.Def, model.TypeDecl)):
                code.append(n)
            elif isinstance(n, model.VarDecl):
                assert_error(len(n.left) == 1 >= len(n.right), "Multiple assignment not implemented")

                # Type inference
                right = self.walk(n.right[0])
                n.left[0].type = right.type
                var_decl = ast.VarDecl(
                    left = n.left,
                    right = [],
                    keyword = n.keyword
                )
                code.append(var_decl)
                assignment = ast.Assign(
                    left = [n.name if isinstance(n, model.IdDecl) 
                            else n.ast for n in n.left],
                    right = n.right
                )
                main_code.append(assignment)
            else:
                main_code.append(n)

        main_function = ast.Def(
            name = ast.Identifier("main"),
            body = ast.Body(*main_code),
        )
        code.append(main_function)

        self.walk_children(code)
        return ast.Program(*code), main_function.type # pylint: disable=no-member

                
def compile(p_ast):
    p_ast, main_type = Compiler().walk(p_ast)
    csrc = CCodeGen().render(p_ast)
    return csrc, main_type
    

def eval(csrc, filename, main_type = None):
    if not os.path.exists("bin"):
        os.mkdir("bin")

    with open("bin/" + filename + ".c", "w") as fp:
        fp.write(csrc)

    p = subprocess.Popen(
        ["gcc", "-I" + os.getcwd(), "-shared", "-o", 
        "bin/" + filename + ".so", "-fPIC", "bin/" + filename + ".c"], 
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")

    lib = cdll.LoadLibrary(os.getcwd() + "/bin/" + filename + ".so")
    lib.main.restype = main_type
    val = lib.main()
    if issubclass(main_type, ctypes.Structure):
        val = tuple(getattr(val, "_" + str(n)) for n in range(len(main_type._fields_)))
    return val

builtins = Scope()
for n in dir(types):
    v = getattr(types, n)
    if n.islower() and isinstance(v, type):
        builtins.create_type(n, v)
