from princess import ast, model, types

from enum import Enum
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST

class Formatter(DelegatingRenderingFormatter):
    def render(self, item, join='', **fields):
        if types.is_type(item):
            return types.to_typestring(item, "")
        elif isinstance(item, Enum): 
            return item.value

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

    class Boolean(Renderer):
        def _render_fields(self, fields):
            fields.update(value = ("true" if fields["value"] else "false"))
        template = "{value}"
    
    class Integer(Renderer):
        template = "{value}"
    class Float(Renderer):
        template = "{value}"

    class Identifier(Renderer):
        def _render_fields(self, fields):
            if "identifier" not in fields:  # TODO error out on undefined fields
                fields.update(identifier = fields["name"])
        template = "{identifier}"

    class Body(Renderer):
        template = """\
            {value::\\n:%s;}\
        """

    # Operators
    # TODO Directly unwrap primitive values -> performance
    class UMinus(Renderer):
        template = "(-{right})"
    class Invert(Renderer):
        template = "(~{right})"
    class Add(Renderer):
        template = "({left} + {right})"
    class Sub(Renderer):
        template = "({left} - {right})"
    class Mul(Renderer):
        template = "({left} * {right})"
    class Div(Renderer):
        template = "({left} / {right})"
    class Mod(Renderer):
        template = "({left} % {right})"
    class BAnd(Renderer):
        template = "({left} & {right})"
    class BOr(Renderer):
        template = "({left} | {right})"
    class Xor(Renderer):
        template = "({left} ^ {right})"
    class And(Renderer):
        template = "({left} && {right})"
    class Or(Renderer):
        template = "({left} || {right})"
    class Not(Renderer):
        template = "(!{right})"
    class Ptr(Renderer):
        template = "(&{right})"
    class Deref(Renderer):
        template = "(*{right})"

    class SizeOf(Renderer):
        def _render_fields(self, fields):
            if types.is_type(fields["value"]):
                fields.update(value = types.to_typestring(fields["value"], ""))
        template = "(sizeof({value}))"
    
    class Cast(Renderer):
        template = "(({type}){left})"
    
    class ArrayIndex(Renderer):
        template = "({left}[{right}])"
    class Array(Renderer):
        template = "(({type}){{ {value::, :} }})"

    class CallArg(Renderer):
        template = "{value}"
    class Call(Renderer):
        template = "{left}({args::, :})"

    class VarDecl(Renderer):
        def _render_fields(self, fields):
            fields.update(typestring = 
                types.to_typestring(fields["type"], fields["name"]))
            if fields["right"]:
                return "{typestring} = {right:::}"
            else:
                return "{typestring}"
    class Assign(Renderer):
        template = "{left::, :} = {right::, :}"
    class TypeDecl(Renderer):
        def _render_fields(self, fields):
            fields.update(typestring = 
                types.to_typestring(fields["type"], fields["name"]))
        template = "typedef {typestring}"

    class Compare(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            for i in range(0, len(value), 2):
                value[i] = str(self.codegen.render(value[i]))

        template = "({value:: :})"

    class If(Renderer):
        template = """\
            if ({cond}) {{
            {body:1::}
            }} {else_if::\\n:} {else_}\
        """
    class ElseIf(Renderer):
        template = """\
            else if ({cond}) {{
            {body:1::}
            }}\
        """  
    class Else(Renderer):
        template = """\
            else {{
            {body:1::}
            }}\
        """

    class Return(Renderer):
        def _render_fields(self, fields):
            if "struct_identifier" in fields:
                return "return ({struct_identifier}) {{ {value::, :} }}"
            return "return {value::, :}"

    class DefArg(Renderer):
        def _render_fields(self, fields):
            tpe = fields["type"]
            name = fields["identifier"]
            fields.update(typestring = types.to_typestring(tpe, name))
            
        template = "{typestring}"
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