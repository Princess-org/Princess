from princess import ast, model, types, compiler

import json, ctypes, textwrap, re
from enum import Enum
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST

def to_c_string(s: str):
    result = '"'

    for c in s:
        if ord(c) < 32 or 0x80 <= ord(c) <= 0xFF:
            result += "\\x%02x" % ord(c) + '""'
        elif ord(c) > 0xFFFF:
            result += "\\U%08x" % ord(c)
        elif ord(c) > 0xFF:
            result += "\\u%04x" % ord(c)
        elif "\\\"".find(c) != -1:
            result += "\\%c" % c
        else:
            result += c

    result += '"'
    return result

def to_c_char(s: str):
    if s == "'":
        return "'\\''"
    elif ord(s) < 32 or 0x80 <= ord(s) <= 0xFF:
        return "'\\x%02x'" % ord(s)
    elif "\\\"".find(s) != -1:
        return "'\\%c'" % s
    else:
        return "'%c'" % s

class Formatter(DelegatingRenderingFormatter):
    def render(self, item, join='', **fields):
        if types.is_type(item):
            return item.to_typestring("")
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
        def _render_fields(self, fields):
            if fields["value"] > 0x7FFFFFFFFFFFFFF:
                fields["value"] = "%dULL" % fields["value"]
        template = "{value}"
    class Float(Renderer):
        template = "{value}"
    class String(Renderer):
        def _render_fields(self, fields):
            fields.update(value = to_c_string(fields["value"]))
        template = "((Array){{{length}, {value}}})"
    class Char(Renderer):
        def _render_fields(self, fields):
            fields.update(value = to_c_char(fields["value"]))
        template = "{value}"
    class Null(Renderer):
        template = "NULL"
    

    class Identifier(Renderer):
        def _render_fields(self, fields):
            if "identifier" not in fields:  # TODO error out on undefined fields
                fields.update(identifier = fields["name"])
        template = "{identifier}"

    class ImportModule(Renderer):
        template = "#include \"{name}.c\""
    class Import(Renderer):
        template = "{modules::\\n:}"

    class Body(Renderer):
        def _render_fields(self, fields):
            fields.update(statements = 
                [self.codegen.render(f) + ("\n" if isinstance(f, model.Import) else ";\n") for f in fields["value"]])
        template = """\
            {statements}\
        """

    class AssignAndOp(Renderer):
        template = "({left} {op} {right})"

    # Operators
    # TODO Directly unwrap primitive values -> performance
    class UMinus(Renderer):
        template = "(-{right})"
    class Invert(Renderer):
        template = "(~{right})"
    class Add(Renderer):
        template = "({left} + {right})"
    class PAdd(Renderer):
        template = "({left} + {right})"
    class Sub(Renderer):
        template = "({left} - {right})"
    class PSub(Renderer):
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
    class Shr(Renderer):
        template = "({left} >> {right})"
    class Shl(Renderer):
        template = "({left} << {right})"
    class Not(Renderer):
        template = "(!{right})"
    class Ptr(Renderer):
        template = "(&{right})"
    class Deref(Renderer):
        template = "(*{right})"

    class SizeOf(Renderer):
        def _render_fields(self, fields):
            if types.is_type(fields["value"]):
                fields.update(value = fields["value"].to_typestring(""))
        template = "(sizeof({value}))"

    class AlignOf(Renderer):
        def _render_fields(self, fields):
            if types.is_type(fields["value"]):
                fields.update(value = fields["value"].to_typestring(""))
        template = "(alignof({value}))"
    
    class Cast(Renderer):
        template = "(({type}){left})"
    
    class MemberAccess(Renderer):
        template = "({left}.{right})"

    class ArrayInitializer(Renderer):
        template = "((Array){{{length}, {value}}})"
    class ArrayIndex(Renderer):
        def _render_fields(self, fields):
            tpe = fields["array_type"]
            if types.is_pointer(tpe):
                return "({left}[{right}])"
            else:
                fields.update(array_type = types.PointerT(tpe.type))
                return "((({array_type}){left}.value)[{right}])"
    class Array(Renderer):
        def _render_fields(self, fields):
            fields.update(type = fields["type"].to_arraystring())
        template = "((Array){{{length}, ({type}){{ {value::, :} }}}})"

    class Range(Renderer):
        template = "{from_} ... {to}"

    class CallArg(Renderer):
        template = "{value}"
    class Call(Renderer):
        template = "{left}({args::, :})"

    class VarDecl(Renderer):
        def _render_fields(self, fields):
            tpe = fields["type"]
            ident = fields["identifier"]
            right = fields["right"]
            if types.is_array(tpe) and not right and tpe.n:
                fields.update(typestring =
                    "ARRAY(%s, %s, %d)" % (ident, tpe.type.to_typestring(""), tpe.n))
            else:
                fields.update(typestring = tpe.to_typestring(ident))
            if fields["right"]:
                return "{typestring} = {right:::}"
            else:
                return "{typestring}"
    class Assign(Renderer):
        template = "{left::, :} = {right::, :}"
    class TypeDecl(Renderer):
        def _render_fields(self, fields):
            tpe = fields["type"]
            if fields["forward_declare"]:
                fields.update(typestring =
                    tpe.to_typestring(fields["typename"], named = True, recursive = True))
            else:
                fields.update(typestring = 
                    tpe.to_typestring(fields["typename"], named = False))
        template = "typedef {typestring}"

    class Compare(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            for i in range(0, len(value), 2):
                value[i] = str(self.codegen.render(value[i]))

        template = "({value:: :})"

    class Break(Renderer):
        template = "break"
    class Continue(Renderer):
        template = "continue"
    class While(Renderer):
        def _render_fields(self, fields):
            if not "cond" in fields:
                fields.update(cond = ast.Boolean(True))
            
        template = """\
            while ({cond}) {{
            {body:1::}
            }}
        """
    class For(Renderer):
        template = """\
            for ({init_expr};{test_expr};{update_expr}) {{
            {body:1::}
            }}
        """

    class Case(Renderer):
        def _render_fields(self, fields):
            if not fields["value"]:
                return """\
                    break;
                    default:
                    {statement}\
                """

        template = """\
            break;
            case {value:::}:
            {statement}\
        """
    class Switch(Renderer):
        template = """\
            switch ({value}) {{
            {body:1::}
            }}
        """

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
            fields.update(typestring = tpe.to_typestring(name))
            
        template = "{typestring}"
    class Def(Renderer):
        def _render_fields(self, fields):
            if not "args" in fields or fields["args"] is None:
                fields.update(args = [])
            if "share" in fields and fields["share"] == ast.Share.Export:
                fields.update(dllexport = "DLL_EXPORT")
            else:
                fields.update(dllexport = "")
            if fields["body"]:
                return self.template + " {{\n{body:1::}\n}}"

        template = "{dllexport} {return_type} {identifier}({args::, :})"

    class StructArg(Renderer):
        def _render_fields(self, fields):
            return ".{name} = {value}" if "name" in fields else "{value}" 
    class StructInit(Renderer):
        template = "(({type}){{ {args::, :} }})"
    
    class Program(Renderer): 
        def _render_fields(self, fields):
            file = fields["file"]
            if file == "main":
                fields.update(main = textwrap.dedent(f"""\
                    int main(int argc, char* argv[]) {{
                        Array *args = malloc(sizeof(Array) * argc);
                        for (int i = 0; i < argc; i++) {{
                            args[i] = (Array) {{ strlen(argv[i]) + 1, argv[i] }};
                        }}
                        Array res = {{ argc, args }};
                        {file}_p_main(res);
                    }}
                """))
            else:
                fields.update(main = "")
            fields.update(code = ast.Body(*fields["value"]))

        template = """\
            /* This file was compiled by the grace
               of your highness Princess Vic Nightfall
            */
            #include "princess.h"
            #ifndef _{file}_H
            #define _{file}_H
            {code}
            {main}
            #endif
        """