import sys

from tatsu.walkers import DepthFirstWalker
from tatsu.codegen import ModelRenderer, CodeGenerator
from princess import model
from princess import ast
from princess.node import Node

class Compiler(DepthFirstWalker):
    def walk_UMinus(self, node: model.UMinus, *args):
        # UMinus(Integer(n)) -> Integer(-n)

        right = node.right
        if type(right) == model.Integer:
            return ast.Integer(-right.ast)
        elif type(right) == model.Float:
            return ast.Float(-right.ast)
        return node

    def walk_default(self, node, *args):
        return node

class PythonCodeGen(CodeGenerator):
    def __init__(self):
        super().__init__(modules = [sys.modules[__name__]])

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if isinstance(self.node.ast, list) or self.node._count_keys() == 0:
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class LiteralRenderer(Renderer):
    def _render_fields(self, fields):
        fields["value"] = repr(fields["value"])

class Integer(LiteralRenderer):
    template = "c_int({value})"

class Float(LiteralRenderer):
    template = "c_double({value})"

class String(LiteralRenderer):
    template = "create_unicode_buffer({value})"

class Char(LiteralRenderer):
    template = "c_wchar({value})"

class UMinus(Renderer):
    template = "-({right})"

class Program(Renderer):
    template = '''\
        {value::\\n:}
    '''

_compiler = Compiler()
_codegen = PythonCodeGen()
def compile(ast):
    return _codegen.render(_compiler.walk(ast))