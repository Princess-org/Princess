from ctypes import *
from ctypes import _Pointer
from enum import Enum
from keyword import iskeyword
from collections.abc import MutableMapping
from itertools import chain
from datetime import datetime

from tatsu.walkers import NodeWalker
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST
from princess import model, ast, env
from princess.node import Node

unsigned_t = set([c_uint8, c_uint16, c_uint32, c_uint64])
signed_t = set([c_int8, c_int16, c_int32, c_int64])
float_t = set([c_double, c_float])
int_t = unsigned_t | signed_t
primitive_t = int_t | float_t | set([c_bool, c_wchar])

def is_reserved(name):
    return iskeyword(name) or hasattr(env, name)

def is_pointer(t):
    return issubclass(t, _Pointer)

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
    else: # Sanity check
        assert False

    return result

def get_name(ident: model.Identifier):
    if hasattr(ident, "name"):
        return ident.name
    
    assert len(ident.ast) == 1, "scope resolution (::) not implemented"
    return ident.ast[0]


def typecheck_assign(l, r):
    """ Typechecks and casts if applicable, by wrapping the right node """
    if not r:
        return ast.Null

    # Implicit conversion
    if isinstance(r, (model.Integer, model.Float)):
        r.type = l
    # FIXME Ensure size limit, float <> int !!

    assert l is r.type, "incompatible types"

    return r

class Modifier(str, Enum):
    Const = "const"
    Var = "var"
    Let = "let"
    Type = "type"

class FunctionT:
    """ Dedicated function type """

    def __init__(self, arg_t, ret_t):
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
    def __init__(self, parent, level = None):
        self.id = Scope._scope_id
        self.parent = parent
        self.children = {}
        self.dir = {}
        self.tmpcount = 0
        
        Scope._scope_id += 1
        
    def python_identifier(self, name):
        if self.id == 0:
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
        # TODO const value isn't enough for complicated types, this only works for identifiers
        assert t is None or isinstance(t, model.Identifier), "Complex types as argument not implemented"
        return self.get_const_value(t)

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
        v = Value(Modifier.Var, name, tpe)
        self[name] = v
        self.tmpcount += 1
        return ast.Identifier(identifier = v.identifier, type = v.type)

class ASTWalker(NodeWalker):
    def __init__(self, scope = None):
        self.scope = scope # type: Scope

    def enter_scope(self, node):
        self.scope = self.scope.enter_scope(node)
    def exit_scope(self):
        self.scope = self.scope.parent

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
        node.type = c_long
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

    def walk_Array(self, node: model.Array):
        common_type
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

    def walk_Cast(self, node: model.Cast):
        self.walk_children(node)

        # Simplify cast if casting a literal
        tpe = self.scope.get_const_value(node.right)
        if isinstance(node.left, (model.Integer, model.Float)):
            node = node.left
        node.type = tpe
        return node

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

    def __insert_assignments(self, declarations, node):
        try:
            index = 0
            for b in node.right or []:
                tpe = b.type
                if isinstance(tpe, tuple):  # Parallel assignment
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
        self.walk_children(node)

        declarations = []
        export = node.share & ast.Share.Export
        modifier = Modifier(node.keyword)
        assert modifier != Modifier.Const, "const not implemented"

        for a in node.left:
            if type(a) is model.IdDecl:
                name = get_name(a.name)
                v = self.scope.create_variable(modifier, name, self.scope.type_lookup(a.type), export) # Add value to scope
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
        self.walk_children(node)

        assert isinstance(node.parent, model.Body), "Nested assignments disallowed" # TODO

        declarations = []

        for a in node.left:
            if isinstance(a, model.Identifier):
                assert a.modifier == "var", "Assign to constant"
            declarations.append(ast.Assign(left = a, right = None))
        
        self.__insert_assignments(declarations, node)

        # typecheck
        for decl in declarations:
            decl.right = typecheck_assign(decl.left.type, decl.right)
            decl.type = decl.left.type # extract type into outer statement

        return tuple(declarations)

    def walk_Identifier(self, node: model.Identifier):
        name = get_name(node)
        node.name = name

        if name in self.scope:
            value = self.scope[name]
            
            node.modifier = value.modifier  # scope resolution for render
            node.identifier = value.identifier
            node.type = value.type

        return node

    def walk_Body(self, node: model.Body):
        self.enter_scope(node)
        self.walk_children(node)
        self.exit_scope()

        return node

    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns, node.name)

        # TODO Check return arguments
        f = self.scope.create_function(
            name = get_name(node.name), 
            arg_t = [self.scope.type_lookup(arg.type) for arg in node.args or []],
            ret_t = [self.scope.type_lookup(r) for r in node.returns or []]
        )
        node.identifier = f.identifier # TODO Maybe redundant

        if node.body:
            scope = self.scope.enter_scope(node.body)
            for arg in node.args or []:
                # Create argument variables
                v = scope.create_variable(Modifier.Var, get_name(arg.name), self.scope.type_lookup(arg.type))
                arg.identifier = v.identifier

            self.walk_child(node, node.body)

        return node

    def walk_default(self, node):
        self.walk_children(node)
        return node

from princess import pbuiltins
from princess.codegen import PythonCodeGen

import inspect

builtins = Scope(None, level = 0)
for k in dir(pbuiltins):
    v = getattr(pbuiltins, k)
    if isinstance(v, type):
        builtins.create_type(k, v)
    elif callable(v):
        builtins.create_function(k) # TODO: argument checks

def compile(ast):
    ast = Compile(builtins).walk(ast)
    src = PythonCodeGen().render(ast)
    return src

def eval(pysrc):
    globals = {}
    exec(pysrc, globals)
    return globals["__env"].result