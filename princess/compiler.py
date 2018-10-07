from ctypes import *
from ctypes import _Pointer
from enum import Enum
from keyword import iskeyword
from collections.abc import MutableMapping
from itertools import chain
from datetime import datetime

from tatsu.walkers import NodeWalker
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from princess import model
from princess import ast
from princess.node import Node

unsigned_t = set([c_uint8, c_uint16, c_uint32, c_uint64])
signed_t = set([c_int8, c_int16, c_int32, c_int64])
float_t = set([c_double, c_float])
int_t = unsigned_t | signed_t
primitive_t = int_t | float_t | set([c_bool, c_wchar])

def is_pointer(t):
    return issubclass(t, _Pointer)
def signed(t):
    if t in unsigned_t:
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
    elif a in int_t and b in int_t:
        # integer <-> integer conversion
        result = b if sizeof(a) < sizeof(b) else a
        # check sign, unsigned -> signed if signs differ
        if sign_convert and (a in unsigned_t) != (b in unsigned_t):
            result = signed(result)
    elif a in float_t and b in float_t:
        result = b if sizeof(a) < sizeof(b) else a
    elif a in float_t and b in int_t:
        result = a
    elif a in int_t and b in float_t:
        result = b
    else: # Sanity check
        assert False

    return result

def get_name(ident: model.Identifier):
    name = getattr(ident, "identifier", None)
    assert not name, ("Redeclaration of %s", name)
    assert len(ident.ast) == 1, "scope resolution (::) not implemented"
    return ident.ast[0]

def get_name_ref(ident: model.Identifier):
    name = getattr(ident, "identifier", None)
    if name: return name
    else:
        name = get_name(ident)
        return name

def typecheck_assign(l, r):
    # TODO implicit conversion!
    assert l is r.type, "incompatible types"
    return r

class Modifier(str, Enum):
    Const = "const"
    Var = "var"
    Let = "let"
    Type = "type"

class Value:
    def __init__(self, modifier: Modifier, name: str, tpe, export = False, scope = None, identifier = None, value = None):
        self.name = name
        self.modifier = modifier
        self.type = tpe
        self.export = export
        self.scope = scope
        self.identifier = identifier
        self.value = value

    @staticmethod
    def builtin(v):
        if isinstance(v, tuple):
            v = v[1]
            name = v[0]
        else:
            name = v.__name__
        if isinstance(v, type):
            modifier = Modifier.Type
        else:
            raise NotImplementedError()
        
        return Value(
            modifier = modifier, name = name, 
            tpe = None, scope = builtins, 
            identifier = name, value = v)

# built in types and functions
builtins = {
    "char": c_byte,
    "bool": c_bool,

    "byte": c_byte,
    "short": c_short,
    "int": c_long,
    "long": c_longlong,

    "ubyte": c_ubyte,
    "ushort": c_ushort,
    "uint": c_ulong,
    "ulong": c_ulonglong,

    "float": c_float,
    "double": c_double,

    "int8": c_int8,
    "int16": c_int16,
    "int32": c_int32,
    "int64": c_int64,

    "uint8": c_uint8,
    "uint16": c_uint16,
    "uint32": c_uint32,
    "uint64": c_uint64,
}

builtins = {k: Value.builtin(v) for k, v in builtins.items()}

class Scope(MutableMapping):
    """ Scope information """
    def __init__(self, parent = builtins):
        self.level = getattr(parent, "level", -1) + 1
        self.parent = parent
        self.children = {}
        self.dir = {}
        self.tmpcount = 0
        
    def python_identifier(self, value: Value):
        name = value.name
        if self.level == 0:
            if iskeyword(value.name):
                name += "_"
        else:
            name = "_" + str(self.level) + name

        return name

    def __iter__(self):
        return chain(iter(self.dir), self.parent.__iter__())

    def __delitem__(self, name):
        raise NotImplementedError()

    def __len__(self):
        # Bloody inefficient!
        return len(list(self.__iter__()))

    def __getitem__(self, name):
        if name in self.dir:
            return self.dir[name]
        return self.parent[name]

    def __setitem__(self, name, value):
        if name in self.parent:
            self.parent[name] = value
            return

        assert isinstance(value, Value)
        value.scope = self
        value.identifier = self.python_identifier(value)
        self.dir[name] = value

    def get_const_value(self, v):
        if isinstance(v, model.Identifier):
            value = self[v.name]
            assert (value.modifier == Modifier.Const 
                or value.modifier == Modifier.Type)
            v = value.value

        return v

    def enter_scope(self, node):
        if node in self.children:
            return self.children[node]

        child = Scope(self)
        self.children[node] = child
        return child

    def create_temporary(self, type):
        name = "__tmp" + str(self.tmpcount)
        v = Value(Modifier.Var, name, type)
        self[name] = v
        self.tmpcount += 1
        return ast.Identifier(identifier = v.identifier, type = v.type)

class ASTWalker(NodeWalker):
    walk_scopes = True

    def __init__(self, scope = None):
        self.scope = scope

    def walk(self, node):
        supers_walk = super().walk
        if isinstance(node, Node):
            if self.walk_scopes:
                scope = self.scope
                if node in ast.scoped_types:
                    self.scope = self.scope.enter_scope(node)
            node.map(self.walk)
            if self.walk_scopes:
                self.scope = scope
            return supers_walk(node)
        elif isinstance(node, list):
            return [self.walk(e) for e in iter(node)]
        else:
            return supers_walk(node)
            

class Prepass(ASTWalker):
    """ First step, does simplify the AST """
    walk_scopes = False
    
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

class Typecheck(ASTWalker):
    """ Third step, typechecking """

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

    def walk_Cast(self, node: model.Cast):
        tpe = self.scope.get_const_value(node.right)
        if isinstance(node.left, (model.Integer, model.Float)):
            node = node.left
        node.type = tpe
        return node

    # TODO Fix inheritance bug, PR: https://github.com/neogeny/TatSu/pull/78
    def walk_BinaryOp(self, node: model.BinaryOp):
        l = node.left.type
        r = node.right.type

        if isinstance(node, (model.Shl, model.Shr)):
            # Shift operators
            assert l in int_t and r in int_t
            node.type = l

            return node # No conversion
        elif isinstance(node, (model.BAnd, model.BOr, model.Xor)):
            # Bitwise, only works on ints
            assert l in int_t and r in int_t
            node.type = common_type(l, r, sign_convert = False)
        elif isinstance(node, (model.PAdd, model.PSub)):
            # TODO pointer - pointer
            assert is_pointer(l) and r in int_t
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

    def __insert_assignments(self, declarations, node):
        try:
            index = 0
            for b in node.right:
                tpe = b.type
                if isinstance(tpe, tuple):
                    tmp = self.scope.create_temporary(tpe)
                    declarations.insert(index, ast.Assign(left = tmp, right = b))
                    index += 1
                    for j, t in enumerate(tpe):
                        declarations[index].right = ast.ArrayIndex(left = tmp, right = j, type = t)
                        index += 1
                else:
                    declarations[index].right = b
                index += 1
        except IndexError:
            assert False, "Imbalanced assignment"

    def walk_VarDecl(self, node: model.VarDecl):
        declarations = []
        export = node.share & ast.Share.Export
        modifier = Modifier(node.keyword)
        assert modifier != Modifier.Const, "const not implemented"

        for a in node.left:
            if type(a) is model.IdDecl:
                name = get_name(a.name)
                v = Value(modifier, name, a.type, export)
                self.scope[name] = v # Add value to scope
                declarations.append(ast.VarDecl(
                    left = v, type = v.type, identifier = v.identifier, right = None))

            elif type(a) is model.IdAssign:
                declarations.append(ast.Assign(left = a.ast, right = None))
            else:
                assert False

        self.__insert_assignments(declarations, node)

        # typecheck
        for decl in declarations:
            if decl.left.type is None:
                # type inference
                decl.left.type = decl.right.type
            else:
                decl.right = typecheck_assign(decl.left.type, decl.right)
            decl.type = decl.left.type # extract type into outer statement

        return tuple(declarations)

    def walk_Assign(self, node: model.Assign):
        declarations = []

        for a in node.left:
            declarations.append(ast.Assign(left = a, right = None))
        
        self.__insert_assignments(declarations, node)

        # typecheck
        for decl in declarations:
            decl.right = typecheck_assign(decl.left.type, decl.right)
            decl.type = decl.left.type # extract type into outer statement

        return tuple(declarations)

    def walk_Identifier(self, node: model.Identifier):
        name = get_name_ref(node)
        if name in self.scope:
            value = self.scope[name]
            node.identifier = value.identifier
            node.name = name
            node.type = value.type
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

    def __init__(self):
        #self.scope = scope
        #self.current_function = None

        super().__init__(modules = [PythonCodeGen])
        self.formatter = Formatter(self)

    #def render(self, node, join = '', **fields):
    #    if isinstance(node, Node):
    #        scope = self.scope
    #        if node in ast.scoped_types:
    #            self.scope = scope.get_scope(node)
    #        result = super().render(node, join = join, **fields)
    #        self.scope = scope # reset
    #        return result
        
    # Literals
    class Literal(Renderer):
        def _render_fields(self, fields):
            fields["value"] = repr(fields["value"])
        template = "{type}({value})"

    class String(Literal):
        template = "create_unicode_buffer({value})"
    class Null(Renderer):
        template = "None"

    # Identifier
    class Identifier(Renderer):
        template = "{identifier}"

    # Operators
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
        template = "({type}({left}.value / {right}.value))"
    class Mod(Renderer):
        template = "({type}({left}.value % {right}.value))"
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

    class Cast(Renderer):
        template = "({type}({left}.value))"

    class Return(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            if any(type(v) == model.Do for v in value):
                raise NotImplementedError("Can't use 'do' expressions in return statement")

            return "return ({value::, :})"

    class VarDecl(Renderer):
        template = """
            {identifier} = {right} # type: {type}\
        """

    class Assign(Renderer):
        template = "{left} = {right}"

    class Def(Renderer):
        def _render_fields(self, fields):
            name = fields["name"].ast[0]
            body = fields["body"].ast
            if len(body) == 1 and body[0] == None:
                body[0] = ast.Null # Empty function compiles

            fields.update(name = name, body = body)
            #self.codegen.current_function = name

        template = """\
            def {name}():
                {body:1:\\n:}\
        """

    class Program(Renderer):
        def _render_fields(self, fields):
            value = fields["value"]
            code = ast.Def(
                name = ast.Identifier("__main"),
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

            __env = Environment()

            # --- start of code ---
            {code}
            # --- end of code ---

            __env.result = __main()
        '''

def compile(ast):
    ast = Prepass().walk(ast)
    scope = Scope()
    ast = Typecheck(scope).walk(ast)
    src = PythonCodeGen().render(ast)
    return src

def eval(pysrc):
    globals = {}
    exec(pysrc, globals)
    return globals["__env"].result