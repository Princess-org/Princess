import sys

from tatsu.walkers import DepthFirstWalker
from tatsu.codegen import ModelRenderer, CodeGenerator
from princess import model
from princess import ast
from princess.node import Node

class Preprocess(DepthFirstWalker):
    """ First compilation step, does simplify the AST """
    
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
    """ Last compilation step, turns the AST into python code """

    def __init__(self, stack_size):
        self.stack_size = stack_size
        self.current_function = None

        super().__init__(modules = [sys.modules[__name__]])

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if isinstance(self.node.ast, list) or self.node._count_keys() == 0:
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class Literal(Renderer):
    def _render_fields(self, fields):
        fields["value"] = repr(fields["value"])

# Literals
class Integer(Literal):
    template = "c_int({value})"
class Float(Literal):
    template = "c_double({value})"
class String(Literal):
    template = "create_unicode_buffer({value})"
class Char(Literal):
    template = "c_wchar({value})"
class Boolean(Literal):
    template = "c_bool({value})"
class Null(Renderer):
    template = "None"

# Operators
class UMinus(Renderer):
    template = "(-({right}))"
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
    template = "({left} and {right})"
class Or(Renderer):
    template = "({left} or {right})"
class Not(Renderer):
    template = "(not {right})"
class Ptr(Renderer):
    template = "(pointer({right}))"
class Deref(Renderer):
    template = "(({right}).contents)"

class Return(Renderer):
    def _render_fields(self, fields):
        value = fields["value"]
        fun = self.codegen.current_function
        if fun != "__main":
            #start = len(fun.args)
            #fields.update(values = 
            #    ["env.set_local(%i, %s)" % (i + start, self.codegen.render(v)) 
            #        for i, v in enumerate(value)])
            #
            return """\
                {values::\\n:}
                return
            """
        else:
            if any(type(v) == model.Do for v in value):
                raise NotImplementedError("Can't use 'do' expressions in return statement on top level")

            return "return ({value::, :})"

class Def(Renderer):
    def _render_fields(self, fields):
        name = fields["name"].ast[0]
        body = fields["body"].ast
        fields.update(name = name, body = body)
        self.codegen.current_function = name

    template = """\
        def {name}(env):
            {body:1:\\n:}
    """

class Program(Renderer):
    def _render_fields(self, fields):
        value = fields["value"]
        code = ast.Def(
            name = ast.Identifier("__main"),
            body = ast.Body(*value)
        )

        fields.update(
            stack_size = self.codegen.stack_size,
            code = code
        )

    template = '''\
        from ctypes import *
        from princess.env import Environment, Stack

        env = Environment(Stack({stack_size})) 

        # --- start of code ---
        {code}
        # --- end of code ---

        if __name__ == "__main__":
            env.result = __main(env = env)
    '''

def compile(ast, stack_size = 128 * 1000):
    return PythonCodeGen(stack_size).render(Preprocess().walk(ast))

def eval(ast):
    env = {'__name__': '__main__'}
    src = compile(ast)
    exec(src, env)
    return env["env"].result