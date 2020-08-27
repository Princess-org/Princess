import subprocess, sys, os, uuid
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
    return ast.Identifier("_" + str(uuid.uuid4())[:8])

class Scope:
    def __init__(self, parent = None):
        self.parent = parent
        self.dict = {}

    def type_lookup(self, node):
        pass

class AstWalker(NodeWalker):
    def walk(self, node, *args, **kwargs):
        old_node = node
        try:
            return super().walk(node, *args, **kwargs)
        except CompileAssert as e:
            node = e.node or node
            info = node.parseinfo or old_node.parseinfo
            lexer = info.buffer
            raise CompileError(lexer.format_error(str(e), info))

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
        self.scope = Scope()

    def enter_function(self, function):
        self.function_stack.append(function)
    
    def exit_function(self):
        self.function_stack.pop()

    @property
    def current_function(self):
        return self.function_stack[-1]

    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns)

        node.identifier = "_".join(node.name.ast)
        if node.identifier != "main":
            node.identifier = create_unique_identifier() + "_" + node.identifier

        function = types.Function(
            tuple(self.scope.type_lookup(n) for n in node.returns) 
                if node.returns else types.void, 
            tuple(self.scope.type_lookup(n.type) for n in node.args or []))

        self.enter_function(function)
        self.walk_child(node, node.body)
        self.exit_function()

        if isinstance(function.return_t, tuple):
            identifier = create_unique_identifier()
            struct = ast.TypeDecl(
                share = ast.Share.No,
                name = [identifier],
                value = [ast.Struct(
                    *[ast.IdDeclStruct(name = "_" + str(n), type = node.returns[n])
                        for n in range(len(node.returns))]
                )]
            )
            node.returns = identifier
            struct = self.walk(struct)
            return (struct, node)
        else:
            node.returns = function.return_t
    
            return node

    def walk_Program(self, node: model.Program):
        code = []
        main_code = []
        for n in node.ast:
            if isinstance(n, (model.Def, model.TypeDecl)):
                code.append(n)
            elif isinstance(n, model.VarDecl):
                var_decl = ast.VarDecl(
                    left = n.left,
                    right = []
                )
                code.append(var_decl)
                assignment = ast.Assign(
                    left = map(
                        lambda n: n.name if isinstance(n, model.IdDecl) 
                            else n.ast, n.left),
                    right = n.right
                )
                main_code.append(assignment)
            else:
                main_code.append(n)

        main_function = ast.Def(
            name = ast.Identifier("main"),
            body = ast.Body(*main_code)
        )
        code.append(main_function)

        self.walk_children(code)
        return ast.Program(*code)

                
def compile(p_ast):
    p_ast = Compiler().walk(p_ast)
    csrc = CCodeGen().render(p_ast)
    return csrc
    

def eval(csrc, filename):
    if not os.path.exists("bin"):
        os.mkdir("bin")

    os.chdir("bin")

    with open(filename + ".c", "w") as fp:
        fp.write(csrc)

    p = subprocess.Popen(
        ["gcc", "-I" + os.getcwd() + "/..", "-shared", "-o", filename + ".so", "-fPIC", filename + ".c"], 
    )
    status = p.wait()
    if status:
        raise CompileError("GCC Compilation failed")

    lib = cdll.LoadLibrary(os.getcwd() + "/" + filename + ".so")
    return lib.main()