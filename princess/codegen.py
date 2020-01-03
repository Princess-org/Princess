import ctypes
from enum import Enum
from datetime import datetime

from tatsu.codegen import DelegatingRenderingFormatter, ModelRenderer, CodeGenerator
from tatsu.model import AST
from princess.ast import Share

from princess import model, ast
from princess.compiler import int_t, INT_T, FLOAT_T, is_pointer, is_struct, is_array, StructT

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
            return "int"
        elif item is FLOAT_T:
            return "double"
        elif isinstance(item, type):
            if is_pointer(item):
                return "POINTER(%s)" % self.render(item._type_)
            elif is_array(item):
                return "%s * %s" % (self.render(item._type_), item._length_)
            elif is_struct(item):
                return item._identifier.identifier

            return item.__name__ # TODO use actual type names, reverse lookup in builtins?
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

class PythonCodeGen(CodeGenerator):
    """ Last compilation step, turns the AST into python code """

    def __init__(self):
        super().__init__(modules = [PythonCodeGen])
        self.formatter = Formatter(self)
        
    # Literals
    class Literal(Renderer):
        def _render_fields(self, fields):
            fields.update(value = repr(fields["value"]))
        template = "{type}({value})"

    class String(Literal):
        template = "create_unicode_buffer({value})"
    class Null(Renderer):
        template = "None"

    class Array(Renderer):
        def _render_fields(self, fields):
            # simplify literals
            fields.update(value = [unpack_literal(v) for v in fields["value"]])
        template = "({value_type} * {length})({value::, :})"

    # Identifier
    class Identifier(Renderer):
        def _render_fields(self, fields):
            if "identifier" not in fields:  # TODO error out on undefined fields
                fields.update(identifier = fields["name"])
        template = "{identifier}"

    # Struct
    class IdDeclStruct(Renderer):
        template = "(\"{name}\", {type})"
    class StructBody(Renderer):
        template = """\
            {value::\\n:%s,}
        """
    class Struct(Renderer):
        def _render_fields(self, fields):
            if "#union" in fields["pragma"]:
                fields.update(kind = "p_union_type")
            else:
                fields.update(kind = "p_struct_type")
        template = """\
            ({kind}([
            {body:1::}
            ]))\
        """

    class StructArg(Renderer):
        def _render_fields(self, fields):
            return "{name} = {value}" if "name" in fields else "{value}" 
    class StructInit(Renderer):
        template = """\
            {type}(
            {args:1:\\n:%s,}
            )\
        """

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

    class Import(Renderer):
        template = "{modules::\\n:}"
    class ImportModule(Renderer):
        def _render_fields(self, fields):
            if not fields["alias"]:
                fields.update(alias = fields["name"])

        template = """\
            from .{name} import *
            from . import {name} as {alias}
        """

    class Call(Renderer):
        def _render_fields(self, fields):
            prefix = ""
            tpe = fields["type"]            
            if tpe and len(tpe) > 1:
                prefix = "*"

            fields.update(prefix = prefix)

        template = "{prefix}{left}({args::, :})"
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
                fields.update(right = right.value)
                template = "({left}[{right}])"
            else:
                template = "({left}[{right}.value])"

            if not isinstance(array_type, tuple):
                template = "({type}%s)" % template

            return template

    class MemberAccess(Renderer):
        template = "({left}.{right})"

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
            
            if fields["root"]:
                return "__env.result = p_return(({value::, :},))"
            else:
                return "return p_return(({value::, :},))"

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
        template = "{left::, :} = p_declare(({right::, :},), ({type::, :},))"
    class TypeDecl(Renderer):
        template = "{name::, :} = {value::, :} # typedef"
    class Assign(Renderer):
        template = "p_assign(({left::, :},), ({right::, :},))"

    class TEnum(Renderer):
        def _render_fields(self, fields):
            text = "PEnum()\n"
            for name in fields["namespace"].dir:
                text += fields["name"] +  "." + name + " = " + self.formatter.render(fields["namespace"].dir[name].value) + "\n"
            return text

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
            fields.update(code = ast.Body(*fields["value"]), time = datetime.now())

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
        '''