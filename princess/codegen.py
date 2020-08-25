from princess import ast, model

from tatsu.codegen import ModelRenderer, CodeGenerator
from tatsu.ast import AST

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if not ("value" in fields or isinstance(self.node.ast, AST)):
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class CCodeGen(CodeGenerator):

    class Body(Renderer):
        def _render_fields(self, fields):
            body = fields["value"]
            if len(body) == 1 and body[0] == None:
                fields.update(value = "pass")

        template = """\
            {value::\\n:}\
        """
    
    class Program(Renderer): 
        def _render_fields(self, fields):
            fields.update(code = ast.Body(*fields["value"]))

        template = """\
            /* This file was compiled by the grace
               of your highness Princess Vic Nightfall
            */
            #include <stdio.h>
            {code}
        """