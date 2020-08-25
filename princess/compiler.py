from princess import ast, model
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
            node[:] = [self.walk(e) for e in iter(node)]
        elif isinstance(node, Node):
            node.map(self.walk)

    def walk_child(self, node, *children):
        assert isinstance(node, Node)
        node.map(self.walk, lambda n: n in children) 

class Compiler(AstWalker):
    def __init__(self):
        self._walker_cache = {} # Tatsu walkaround FIXME

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

        return ast.Program(*self.walk_children(code))

                
def compile(p_ast):
    p_ast = Compiler().walk(p_ast)
    csrc = CCodeGen().render(p_ast)
    return csrc
    

def eval(csrc):
    pass