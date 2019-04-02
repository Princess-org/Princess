from ctypes import *
from ctypes import _Pointer
from enum import Enum
from keyword import iskeyword
from collections.abc import MutableMapping
from itertools import chain, zip_longest
from datetime import datetime
from functools import reduce

from tatsu.walkers import NodeWalker
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST
from princess import model, ast, env
from princess.node import Node

# Literal types
class INT_T(c_long): pass
class FLOAT_T(c_double): pass

unsigned_t = set([c_uint8, c_uint16, c_uint32, c_uint64])
signed_t = set([c_int8, c_int16, c_int32, c_int64, INT_T])
float_t = set([c_double, c_float, FLOAT_T])
int_t = unsigned_t | signed_t
primitive_t = int_t | float_t | set([c_bool, c_wchar])

def is_reserved(name):
    return iskeyword(name) or hasattr(env, name)
def is_pointer(t):
    return issubclass(t, _Pointer)
def is_array(t):
    return issubclass(t, Array)
def is_function(t):
    return isinstance(t, FunctionT)

def to_signed(t):
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
            result = to_signed(result)
    elif a in float_t and b in float_t:
        result = b if sizeof(a) < sizeof(b) else a
    elif a in float_t and b in int_t:
        result = a
    elif a in int_t and b in float_t:
        result = b
    else: # Sanity check TODO: Raise proper exception
        assert False, "Incompatible types %s %s" % (a, b)

    return result

def get_name(ident: model.Identifier):
    if hasattr(ident, "name"):
        return ident.name
    
    assert len(ident.ast) == 1, "scope resolution (::) not implemented"
    return ident.ast[0]


def typecheck(t, r):
    """ Typechecks and casts if applicable, returning the new type """
    if t is None: # infer type
        if r is INT_T: return c_long
        elif r is FLOAT_T: return c_double
        else: return r 

    # Implicit conversion
    if r in (INT_T, FLOAT_T):
        r = t
    # FIXME Ensure size limit, float <> int !!

    assert t is r, "incompatible types"

    return r

def flatten_type(types):
    """ extracts type tuples into a single type tuple """
    return reduce(lambda a, b: a + b if isinstance(b, tuple) else a + (b,), types, ())

class Modifier(str, Enum):
    Const = "const"
    Var = "var"
    Let = "let"
    Type = "type"

class FunctionT:
    """ Dedicated function type """

    def __init__(self, arg_t: tuple, ret_t: tuple):
        self.arg_t = arg_t
        self.ret_t = ret_t

class Value:
    def __init__(self, modifier: Modifier, name: str, tpe, export = False, scope = None, identifier = None, value = None):
        self.name = name    # real name, used by the source code
        self.modifier = modifier
        self.type = tpe
        self.export = export
        self.scope = scope
        self.identifier = identifier    # python identifier
        self.value = value

class Scope:
    _scope_id = 0

    """ Scope information """
    def __init__(self, parent):
        self.id = Scope._scope_id
        self.parent = parent
        self.children = {} # mapping Node -> Scope, to allow scope information to be preserved over multiple compilation passes
        self.dir = {}
        self.tmpcount = 0
        
        Scope._scope_id += 1
        
    def python_identifier(self, name):
        if not self.parent or self.parent is builtins: # builtin or top level
            if is_reserved(name):
                name += "_"
        else:
            name = "_" + str(self.id) + name

        return name

    def __contains__(self, name):
        if name in self.dir:
            return True
        elif self.parent:
            return name in self.parent
        return False

    def __getitem__(self, name):
        if name in self.dir:
            return self.dir[name]
        elif self.parent:
            return self.parent[name]
        else: raise KeyError()

    def __setitem__(self, name, value):
        if name in self.parent:
            self.parent[name] = value
            return

        assert isinstance(value, Value)
        self.dir[name] = value

    def type_lookup(self, t):
        if t is None:
            return None
        elif isinstance(t, model.Identifier):
            return self.get_const_value(t)
        elif isinstance(t, model.PtrT):
            return POINTER(self.type_lookup(t.type))
        
        assert False, "Type not implemented" # TODO Arrays, etc


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
    
    def exit_scope(self):
        return self.parent

    def create_variable(self, modifier: Modifier, name: str, tpe, export = False, value = None, identifier = None):
        assert name not in self.dir, "Redeclaration of %s" % name
        
        v = Value(
            modifier = modifier,
            name = name,
            tpe = tpe,
            export = export,
            identifier = identifier or self.python_identifier(name),
            scope = self,
            value = value
        )

        self.dir[name] = v

        return v

    def create_type(self, name, value, identifier = None):
        return self.create_variable(modifier = Modifier.Type, name = name, tpe = None, value = value, identifier = identifier)
    def create_function(self, name, arg_t = None, ret_t = None, identifier = None):
        return self.create_variable(modifier = Modifier.Const, name = name, tpe = FunctionT(arg_t, ret_t), identifier = identifier)

    def create_temporary(self, tpe):
        name = "__tmp" + str(self.tmpcount)
        v = self.create_variable(Modifier.Var, name, tpe)
        self.tmpcount += 1
        return model.Identifier(identifier = v.identifier, type = v.type)

class ASTWalker(NodeWalker):
    def __init__(self, scope = None):
        self.scope = scope # type: Scope
        self.function_stack = []
        self.current_function = None

    def enter_scope(self, node):
        self.scope = self.scope.enter_scope(node)
    def exit_scope(self):
        self.scope = self.scope.exit_scope()
    
    def walk_default(self, node: model.Program):
        self.walk_children(node)
        return node

    def walk_Body(self, node: model.Body):
        self.enter_scope(node)
        self.walk_children(node)
        self.exit_scope()

        return node

    # TODO Make this part of Scope?
    def enter_function(self, f: Value):
        self.function_stack.append(f)
        self.current_function = f
    def exit_function(self):
        self.current_function = self.function_stack.pop()

    def walk_children(self, node):
        if isinstance(node, list):
            node[:] = [self.walk(e) for e in iter(node)]
        elif isinstance(node, Node):
            node.map(self.walk)

    def walk_child(self, node, *children):
        assert isinstance(node, Node)
        node.map(self.walk, lambda n: n in children)   

class Compile(ASTWalker):
    """ Typechecking and compiling """

    # Literals
    def walk_Integer(self, node: model.Integer):
        node.value = node.ast
        node.type = INT_T
        return node
    def walk_Float(self, node: model.Float):
        node.value = node.ast
        node.type = FLOAT_T
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

    def walk_Array(self, node: model.Array):
        self.walk_children(node)

        node.length = len(node.ast)

        if node.ast:
            tpe = node.ast[0].type
            for v in node.ast[1:]:
                tpe = common_type(tpe, v.type)

            node.value_type = tpe
            node.type = tpe * node.length
        else:
            node.value_type = None
            node.type = None

        return node

    def walk_ArrayIndex(self, node: model.ArrayIndex):
        self.walk_children(node)

        assert is_array(node.left.type), "Can only index arrays"
        node.array_type = node.left.type
        node.type = node.left.type._type_

        return node

    def walk_Call(self, node: model.Call):
        self.walk_children(node)

        assert is_function(node.left.type), "Can only call functions"
        node.type = node.left.type.ret_t

        return node

    def walk_Cast(self, node: model.Cast):
        self.walk_children(node)

        # Simplify cast if casting a literal
        tpe = self.scope.get_const_value(node.right)
        if isinstance(node.left, (model.Integer, model.Float)):
            node = node.left
        node.type = tpe
        return node

    def walk_UMinus(self, node: model.UMinus):
        # UMinus(Integer(n)) -> Integer(-n)
        right = node.right

        if isinstance(right, model.Integer):
            node = ast.Integer(-right.ast)
        elif isinstance(right, model.Float):
            node = ast.Float(-right.ast)
        else:
            self.walk_UnaryPreOp(node)
            return node

        return self.walk(node)

    def walk_BinaryOp(self, node: model.BinaryOp):
        self.walk_children(node)

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
        elif isinstance(node, (model.And, model.Or)):
            assert node.right.type is node.left.type is c_bool, "incompatible type"
            node.type = c_bool
        else:
            # Arithmetic
            node.type = common_type(l, r, sign_convert = True)

        node.left = cast_to(l, node.left, node.type)
        node.right = cast_to(r, node.right, node.type)

        return node

    def walk_UnaryPreOp(self, node: model.UnaryPreOp):
        self.walk_children(node)

        node.type = node.right.type
        return node
    
    def walk_Deref(self, node: model.Deref):
        self.walk_children(node)

        assert is_pointer(node.right.type)
        node.type = node.right.type._type_
        return node

    def walk_Ptr(self, node: model.Ptr):
        self.walk_children(node)

        node.type = POINTER(node.right.type)
        return node

    def walk_Not(self, node: model.Not):
        self.walk_children(node)

        node.type = c_bool
        assert node.right.type is c_bool, "'not' on incompatible type"
        return node

    def walk_Compare(self, node: model.Compare):
        self.walk_children(node)

        node.type = c_bool
        return node

    def walk_In(self, node: model.In):
        self.walk_children(node)

        for l in node.left:
            if isinstance(l, model.IdDecl):
                v = self.scope.create_variable(modifier = node.keyword, name = get_name(l.name), tpe = c_long)
                l.identifier = v.identifier
        assert len(node.right) == 1 and isinstance(node.right[0], model.Range), "For loop only supports iterating over a range" 
        return node

    def walk_VarDecl(self, node: model.VarDecl):
        self.walk_children(node)

        export = node.share & ast.Share.Export
        modifier = Modifier(node.keyword)
        assert modifier is not Modifier.Const, "const not implemented"

        if node.right is None: 
            node.right = []

        types_r = flatten_type(r.type for r in node.right)

        if modifier is Modifier.Let:
            assert len(types_r) == len(node.left), "Unbalanced assignment for let"
        else:
            assert len(types_r) <= len(node.left), "Nothing to assign to"

        types_r_casted = ()
        for l, r in zip_longest(node.left, types_r):
            if isinstance(l, model.IdDecl):
                name = get_name(l.name)
                tpe = self.scope.type_lookup(l.type)

                if r is not None:
                    tpe = typecheck(tpe, r)
                    types_r_casted += (tpe,)

                if modifier is Modifier.Var:
                    assert tpe is not None, "Couldn't infer type for var"

                v = self.scope.create_variable(modifier, name, tpe, export) # Add value to scope
                l.identifier = v.identifier
            else:
                assert r is not None, "Need to assign value"
                typecheck(l.type, r)
                types_r_casted += (None,) # None means assignment

        if len(node.right) < len(node.left):
            node.right.extend([ast.Null] * (len(node.left) - len(node.right)))

        node.type = types_r_casted

        return node

    def walk_Assign(self, node: model.Assign):
        self.walk_children(node)

        assert isinstance(node.parent, (model.Body, model.Program)), "Nested assignments disallowed" # TODO

        types_r = flatten_type(r.type for r in node.right)
        types_l = [l.type for l in node.left]

        assert len(types_r) == len(types_l), "Unbalanced assignment"
        for l, r in zip(types_l, types_r):
            typecheck(l, r)

        return node

    def walk_Identifier(self, node: model.Identifier):
        name = get_name(node)
        node.name = name

        if name in self.scope:
            value = self.scope[name]
            
            node.modifier = value.modifier  # scope resolution for render
            node.identifier = value.identifier
            node.type = value.type

        return node

    # TODO Rewrite
    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns, node.name)

        # TODO Check return arguments
        f = self.scope.create_function(
            name = get_name(node.name), 
            arg_t = tuple(self.scope.type_lookup(arg.type) for arg in node.args or []),
            ret_t = tuple(self.scope.type_lookup(r) for r in node.returns or [])
        )
        node.identifier = f.identifier # TODO Maybe redundant

        if node.body:
            scope = self.scope.enter_scope(node.body)
            for arg in node.args or []:
                # Create argument variables
                v = scope.create_variable(Modifier.Var, get_name(arg.name), self.scope.type_lookup(arg.type))
                arg.identifier = v.identifier

            self.enter_function(f)
            self.walk_child(node, node.body)
            self.exit_function()

        return node
    
    def walk_Return(self, node: model.Return):
        self.walk_children(node)
        return node

from princess import pbuiltins
from princess.codegen import PythonCodeGen

builtins = Scope(None)
for k in dir(pbuiltins):
    v = getattr(pbuiltins, k)
    if isinstance(v, type):
        builtins.create_type(k, v)
    elif callable(v):
        builtins.create_function(k) # TODO: argument checks

def compile(ast):
    global_scope = Scope(builtins)
    ast = Compile(global_scope).walk(ast)
    src = PythonCodeGen().render(ast)
    return src

def eval(pysrc):
    globals = {}
    exec(pysrc, globals)
    return globals["__env"].result