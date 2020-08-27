from princess import ast, model, types

from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST

class Formatter(DelegatingRenderingFormatter):
    def render(self, item, join='', **fields):
        if types.is_type(item):
            return item.to_typestring("")

        return super().render(item, join = join, **fields)

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if not ("value" in fields or isinstance(self.node.ast, AST)):
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class CCodeGen(CodeGenerator):

    def __init__(self):
        super().__init__(modules = [CCodeGen])
        self.formatter = Formatter(self)

    class Body(Renderer):
        template = """\
            {value::\\n:}\
        """


    class DefArg(Renderer):
        template = "{identifier}"
    class Def(Renderer):
        def _render_fields(self, fields):
            if not "args" in fields or fields["args"] is None:
                fields.update(args = [])

        template = """\
            {returns} {identifier}({args::, :}) {{
            {body:1::}
            }}\
        """
    
    class Program(Renderer): 
        def _render_fields(self, fields):
            fields.update(code = ast.Body(*fields["value"]))

        template = """\
            /* This file was compiled by the grace
               of your highness Princess Vic Nightfall
            */
            #include "princess.h"
            {code}
        """