import ctypes
from enum import Enum
from datetime import datetime

from tatsu.codegen import DelegatingRenderingFormatter, ModelRenderer, CodeGenerator
from tatsu.model import AST

from princess import model, ast
from princess.compiler import int_t, INT_T, FLOAT_T, is_pointer

def unpack_literal(node):
    """ turns wrapped literal into value, like c_int(5) -> 5 """
    if isinstance(node, model.Literal):
        return node.value
    return node

class Formatter(DelegatingRenderingFormatter):
    def render(self, item, join='', **fields):
        if item is None:
            return "None"
        elif item is INT_T:
            return "c_long"
        elif item is FLOAT_T:
            return "c_double"
        elif isinstance(item, type):
            if is_pointer(item):
                return "POINTER(%s)" % self.render(item._type_)
            return item.__name__ # TODO use actual type names, reverse lookup in builtins?
        elif isinstance(item, Enum): 
            return item.value
        return super().render(item, join = join, **fields)

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if not isinstance(self.node.ast, AST):
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class PythonCodeGen(CodeGenerator):
    """ Last compilation step, turns the AST into python code """

    def __init__(self):
        super().__init__(modules = [PythonCodeGen])
        self.formatter = Formatter(self)
        
    # Literals
    class Literal(Renderer):
        def _render_fields(self, fields):
            fields["value"] = repr(fields["value"])
        template = "{type}({value})"

    class String(Literal):
        template = "create_unicode_buffer({value})"
    class Null(Renderer):
        template = "None"

    class Array(Renderer):
        def _render_fields(self, fields):
            # simplify literals
            fields["value"] = [unpack_literal(v) for v in fields["value"]]
        template = "({value_type} * {length})({value::, :})"

    # Identifier
    class Identifier(Renderer):
        template = "{identifier}"

    # Operators
    # TODO Directly unwrap primitive values -> performance
    class UMinus(Renderer):
        template = "({type}(-({right}.value)))"
    class Invert(Renderer):
        template = "({type}(~({right}.value)))"
    class Add(Renderer):
        template = "({type}({left}.value + {right}.value))"
    class Sub(Renderer):
        template = "({type}({left}.value - {right}.value))"
    class Mul(Renderer):
        template = "({type}({left}.value * {right}.value))"

    class Div(Renderer):
        def _render_fields(self, fields):
            tpe = fields["type"]
            op = "//" if tpe in int_t else "/"
            return "({type}({left}.value %s {right}.value))" % op

    class Mod(Renderer):
        template = "({type}({left}.value % {right}.value))"
    class BAnd(Renderer):
        template = "({type}({left}.value & {right}.value))"
    class BOr(Renderer):
        template = "({type}({left}.value | {right}.value))"
    class Xor(Renderer):
        template = "({type}({left}.value ^ {right}.value))"
    class And(Renderer):
        template = "({type}({left}.value and {right}.value))"
    class Or(Renderer):
        template = "({type}({left}.value or {right}.value))"
    class Not(Renderer):
        template = "({type}(not {right}.value))"
    class Ptr(Renderer):
        template = "(pointer({right}))"
    class Deref(Renderer):
        template = "({right}.contents)"

    class Call(Renderer):
        template = "({left}({args::, :}))"
    class CallArg(Renderer):
        def _render_fields(self, fields):
            if "identifier" in fields:
                return "{identifier}={value}"

        template = "{value}"

    class ArrayIndex(Renderer):
        def _render_fields(self, fields):            
            right = fields["right"]
            array_type = fields["array_type"]

            if isinstance(right, model.Literal):
                fields["right"] = right.value
                template = "({left}[{right}])"
            else:
                template = "({left}[{right}.value])"

            if not isinstance(array_type, tuple):
                template = "({type}%s)" % template

            return template

    class Compare(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            for i in range(0, len(value), 2):
                value[i] = "%s.value" % self.codegen.render(value[i])

        template = "({type}({value:: :}))"

    class Cast(Renderer):
        template = "p_cast({left}, {type})"

    class Return(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            if any(type(v) == model.Do for v in value):
                raise NotImplementedError("Can't use 'do' expressions in return statement")

            return "return {value::, :}"

    class While(Renderer):
        template = """\
            while {cond}:
                {body:1::}\
        """

    class For(Renderer):
        def _render_fields(self, fields):
            iterator = fields["iterator"]
            ref = iterator.left[0]
            if isinstance(ref, model.IdDecl):
                ident = ref.identifier
            else:
                ident = ref.ast
            
            fields.update(identifier = ident, range = iterator.right[0])

        template = """\
            for {identifier} in {range}:
                {body:1::}\
        """

    class Range(Renderer):
        template = "p_range({from_}, {to}, {step})"
    class IdDecl(Renderer):
        template = "{identifier}"
    class IdAssign(Renderer):
        template = "{value}.value"
    class VarDecl(Renderer):
        template = "{left::, :} = p_declare(({right::, :}), ({type::, :}))"
    class Assign(Renderer):
        template = "{left::, :%s.value} = p_assign(({right::, :}))"

    class Body(Renderer):
        def _render_fields(self, fields):
            body = fields["value"]
            if len(body) == 1 and body[0] == None:
                fields.update(value = "pass")

        template = """\
            {value::\\n:}\
        """

    class If(Renderer):
        template = """\
            if {cond}:
            {body:1::}
            {else_if::\\n:}
            {else_}\
        """

    class ElseIf(Renderer):
        template = """\
            elif {cond}:
            {body:1::}\
        """
    
    class Else(Renderer):
        template = """\
            else:
            {body:1::}\
        """


    class DefArg(Renderer):
        template = "{identifier}"
    class Def(Renderer):
        def _render_fields(self, fields):
            if not "args" in fields or fields["args"] is None:
                fields.update(args = [])

        template = """\
            def {identifier}({args::, :}):
            {body:1::}\
        """

    class Program(Renderer): 
        def _render_fields(self, fields):
            value = fields["value"]
            code = ast.Def(
                identifier = model.Identifier(identifier = "__main"),
                body = ast.Body(*value)
            )

            fields.update(code = code, time = datetime.now())

        template = '''\
            # This file was compiled by the grace of your highness
            # ~ Princess Vi Nightfall ~
            # on {time}
            #
            # Bow to the princess!

            from princess.env import *
            from princess.pbuiltins import *

            __env = Environment()

            # --- start of code ---
            {code}
            # --- end of code ---

            __env.result = __main()
        '''