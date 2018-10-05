from ctypes import *
from ctypes import _Pointer

from tatsu.walkers import NodeWalker
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from princess import model
from princess import ast
from princess.node import Node

def is_pointer(t):
    return issubclass(t, _Pointer)
def is_int(t):
    return t in [c_int8, c_int16, c_int32, c_int64] or is_unsigned(t)
def is_unsigned(t):
    return t in [c_uint8, c_uint16, c_uint32, c_uint64]
def is_float(t):
    return t in [c_float, c_double]
def signed(t):
    if is_unsigned(t):
        return {c_uint8: c_int8, c_uint16: c_int16, c_uint32: c_int32, c_uint64: c_int64}[t]
    return t

def cast_to(a, node, b):
    """ wraps node in a cast to b if a != b """
    if a is b: 
        return node
    return ast.Cast(left = node, type = b)

def common_type(a, b, sign_convert = False):
    """ Finds the common type of a and b, implicit up conversion """
    if a == b: return a
    elif is_int(a) and is_int(b):
        # integer <-> integer conversion
        result = b if sizeof(a) < sizeof(b) else a
        # check sign, unsigned -> signed if signs differ
        if sign_convert and is_unsigned(a) != is_unsigned(b):
            result = signed(result)
    elif is_float(a) and is_float(b):
        result = b if sizeof(a) < sizeof(b) else a
    elif is_float(a) and is_int(b):
        result = a
    elif is_int(a) and is_float(b):
        result = b
    else: # Sanity check
        assert False

    return result

class DepthFirstWalker(NodeWalker):
    def walk(self, node, *args, **kwargs):
        if node:
            node.map(self.walk)
            return super().walk(node)

class Prepass(DepthFirstWalker):
    """ First compilation step, does simplify the AST """
    
    def walk_UMinus(self, node: model.UMinus):
        # UMinus(Integer(n)) -> Integer(-n)
        right = node.right
        if type(right) == model.Integer:
            return ast.Integer(-right.ast)
        elif type(right) == model.Float:
            return ast.Float(-right.ast)
        return node

    def walk_default(self, node):
        return node

class ScopeInfo():
    """ Scope information """
    pass

class Typecheck(DepthFirstWalker):
    """ Second compilation step, typechecking """

    # Literals
    def walk_Integer(self, node: model.Integer):
        node.value = node.ast
        node.type = c_int
        return node
    def walk_Float(self, node: model.Float):
        node.value = node.ast
        node.type = c_double
        return node
    def walk_String(self, node: model.String):
        node.value = node.ast
        node.type = c_wchar * len(node.ast)
        return node
    def walk_Char(self, node: model.Char):
        node.value = node.ast
        node.type = c_wchar
        return node
    def walk_Boolean(self, node: model.Boolean):
        node.value = node.ast
        node.type = c_bool
        return node
    def walk_Null(self, node: model.Null):
        node.type = None
        return node

    # TODO Fix inheritance bug, PR: https://github.com/neogeny/TatSu/pull/78
    def walk_BinaryOp(self, node: model.BinaryOp):
        l = node.left.type
        r = node.right.type

        if isinstance(node, (model.Shl, model.Shr)):
            # Shift operators
            assert is_int(l) and is_int(r)
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.BAnd, model.BOr, model.Xor)):
            # Bitwise, only works on ints
            assert is_int(l) and is_int(r)
            node.type = common_type(l, r, sign_convert = False)
        elif isinstance(node, (model.PAdd, model.PSub)):
            # TODO pointer - pointer
            assert is_pointer(l) and is_int(r)
            node.type = l

            return node # No conversion
        else:
            # Arithmetic
            node.type = common_type(l, r, sign_convert = True)

        node.left = cast_to(l, node.left, node.type)
        node.right = cast_to(r, node.right, node.type)

        return node

    def walk_UnaryPreOp(self, node: model.UnaryPreOp):
        node.type = node.right.type
        return node
    
    def walk_Deref(self, node: model.Deref):
        assert is_pointer(node.right.type)
        node.type = node.right.type._type_
        return node

    def walk_Ptr(self, node: model.Ptr):
        node.type = POINTER(node.right.type)
        return node

    def walk_Not(self, node: model.Not):
        node.type = c_bool
        assert node.right.type is c_bool, "'not' on incompatible type"
        return node

    def walk_default(self, node):
        return node

class Formatter(DelegatingRenderingFormatter):
    def render(self, item, join='', **fields):
        if isinstance(item, type):
            return item.__name__
        return super().render(item, join = join, **fields)

class Renderer(ModelRenderer):
    def _render_fields(self, fields):
        pass

    def render_fields(self, fields):
        if isinstance(self.node.ast, list) or self.node._count_keys() == 0:
            fields.update(value = self.node.ast)
        return self._render_fields(fields)

class PythonCodeGen(CodeGenerator):
    """ Last compilation step, turns the AST into python code """

    def __init__(self, stack_size):
        self.stack_size = stack_size
        self.current_function = None

        super().__init__(modules = [PythonCodeGen])
        self.formatter = Formatter(self)

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
        template = "({type}(-({right}.value)))"
    class Add(Renderer):
        template = "({type}({left}.value + {right}.value))"
    class Sub(Renderer):
        template = "({type}({left}.value - {right}.value))"
    class Mul(Renderer):
        template = "({type}({left}.value * {right}.value))"
    class Div(Renderer):
        template = "({type}({left}.value / {right}.value))"
    class Mod(Renderer):
        template = "({type}({left}.value % {right.value}))"
    class BAnd(Renderer):
        template = "({type}({left}.value & {right}.value))"
    class BOr(Renderer):
        template = "({type}({left}.value | {right}.value))"
    class Xor(Renderer):
        template = "({type}({left}.value ^ {right}.value))"
    class And(Renderer):
        template = "(c_bool({left}.value and {right}.value))"
    class Or(Renderer):
        template = "(c_bool({left}.value or {right}.value))"
    class Not(Renderer):
        template = "(c_bool(not {right}.value))"
    class Ptr(Renderer):
        template = "(pointer({right}))"
    class Deref(Renderer):
        template = "({right}.contents)"

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
            if len(body) == 1 and body[0] == None:
                body[0] = ast.Null # Empty function compiles

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
    ast = Prepass().walk(ast)
    ast = Typecheck().walk(ast)
    src = PythonCodeGen(stack_size).render(ast)
    return src

def eval(ast):
    env = {'__name__': '__main__'}
    src = compile(ast)
    exec(src, env)
    return env["env"].result