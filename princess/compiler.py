import typing, inspect

from ctypes import *
from ctypes import _Pointer, _SimpleCData
from enum import Enum
from keyword import iskeyword
from collections import namedtuple
from collections.abc import MutableMapping
from itertools import chain, zip_longest
from datetime import datetime
from functools import reduce

from tatsu.walkers import NodeWalker
from tatsu.codegen import ModelRenderer, CodeGenerator, DelegatingRenderingFormatter
from tatsu.ast import AST
from princess import model, ast, env
from princess.node import Node

def error(s, node = None):
    raise CompileAssert(s, node)
def assert_error(cond, s, node = None):
    if not cond: raise CompileAssert(s, node)
class context:
    def __init__(self, node):
        self.node = node
    def __enter__(self): pass
    def __exit__(self, exc_type, exc_value, traceback):
        if exc_type is CompileAssert:
            exc_value.node = self.node

class CompileAssert(Exception):
    def __init__(self, message, node):
        super().__init__(message)
        self.node = node
class CompileError(Exception): pass

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
    return t is c_void_p or issubclass(t, _Pointer)
def is_array(t):
    return issubclass(t, Array)
def is_function(t):
    return isinstance(t, FunctionT)
def is_struct(t):
    return issubclass(t, RecordT)

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
        error("Incompatible types %s %s" % (a, b))

    return result

def get_name(ident: model.Identifier):
    if hasattr(ident, "name"):
        return ident.name
    
    if len(ident.ast) == 1:
        return ident.ast[0]
    elif len(ident.ast) == 2:
        return ident.ast[0] + "." + ident.ast[1]
    error("Scope resolution :: not implemented")


def typecheck(t, r):
    """ Typechecks and casts if applicable, returning the new type """
    if t is None: # infer type
        if r is INT_T: return c_long
        elif r is FLOAT_T: return c_double
        else: return r 

    # Implicit conversion
    if r in (INT_T, FLOAT_T):   # FIXME Don't convert literals to literally any type!
        r = t
    # FIXME Ensure size limit, float <> int !!
    if t is c_void_p and is_pointer(r):
        r = t

    assert_error(t is r, "incompatible types: %s and %s" % (t, r))

    return r

def flatten_type(types):
    """ extracts type tuples into a single type tuple """
    return reduce(lambda a, b: a + b if isinstance(b, tuple) else a + (b,), types, ())

class Modifier(str, Enum):
    Const = "const"
    Var = "var"
    Let = "let"
    Type = "type"

def _unpack_value(v):
    if isinstance(v, _SimpleCData):
        return v.value
    else: return v

class Varargs:
    """ Varargs, tpe may be None """
    def __init__(self, tpe = None):
        self.type = tpe

class RecordT:
    """ Dedicated structure type, don't read what follows unless enough holy water is at hand """

    def __init__(self, *args, **kwargs):
        super().__init__(
            *(_unpack_value(v) for v in args), 
            **{k: _unpack_value(v) for k, v in kwargs.items()}
        )

    @classmethod
    def get_argument_type(cls, name_or_id):
        if isinstance(name_or_id, int):
            return cls._fields_[name_or_id][1]
        else:
            return next(filter(lambda f: f[0] == name_or_id, cls._fields_))[1]
    
    def __getattribute__(self, name):
        # print("__getattribute__", name, hex(id(self)))
        try:
            datatypes = super().__getattribute__("__datatypes")

        except AttributeError:
            datatypes = {}
            # loading data types
            base_p = cast(pointer(self), c_void_p).value
            
            cls = type(self)
            for n, tpe in super().__getattribute__("_fields_"):
                offset = getattr(cls, n).offset
                value = cast(c_void_p(base_p + offset), POINTER(tpe)).contents
                datatypes[n] = value

            super().__setattr__("__datatypes", datatypes)

        if name in datatypes:
            return datatypes[name]

        return super().__getattribute__(name)

class UnionT(Union, RecordT): pass
class StructT(Structure, RecordT): pass
    
class FunctionT:
    """ Dedicated function type """

    def __init__(self, arg_t: tuple, ret_t: tuple, typecheck_macro = None):
        self.arg_t = arg_t
        self.ret_t = ret_t
        self.typecheck_macro = typecheck_macro

    def get_argument_type(self, name_or_id):
        if isinstance(name_or_id, int):
            at = name_or_id
            if at >= (len(self.arg_t) - 1) and isinstance(self.arg_t[-1], Varargs):
                return self.arg_t[-1].type
            else: return self.arg_t[at]
        else: return getattr(self.arg_t, name_or_id)

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
            v = self.get_const_value(t)
            v._identifier = t # Reverse lookup for codegen, needed for custom types
            return v
        elif isinstance(t, model.PtrT):
            return POINTER(self.type_lookup(t.type))
        elif isinstance(t, model.Struct):
            fields = [
                (field.name.name, self.type_lookup(field.type)) for field in filter(None, t.body.ast) # TODO inference
            ] 
            if "#union" in t.pragma:
                return env.p_union_type(fields) 
            else: return env.p_struct_type(fields)
        elif isinstance(t, model.ArrayT):
            assert_error(t.n, "Dynamic arrays not implemented")
            n = t.n.value
            tpe = self.type_lookup(t.type)
            return tpe * n
        
        error("Type not implemented")


    def get_const_value(self, v):
        if isinstance(v, model.Identifier):
            try:
                value = self[v.name]
            except KeyError:
                error("Unknown identifier", v)

            assert (value.modifier == Modifier.Const 
                or value.modifier == Modifier.Type)
            v = value.value

        return v
    
    def enter_namespace(self, namespace):
        if namespace in self.dir:
            return self.dir[namespace]
        else:
            ns = Namespace(self)
            self.dir[namespace] = ns
            return ns

    def enter_scope(self, node):
        if node in self.children:
            return self.children[node]

        child = Scope(self)
        self.children[node] = child
        return child
    
    def exit_scope(self):
        return self.parent

    def create_variable(self, modifier: Modifier, name: str, tpe, export = False, value = None, identifier = None):
        assert_error(name not in self.dir, "Redeclaration of %s" % name)
        
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
    def create_function(self, name, arg_t = None, ret_t = None, typecheck_macro = None, identifier = None):
        return self.create_variable(modifier = Modifier.Const, name = name, tpe = FunctionT(arg_t, ret_t, typecheck_macro), identifier = identifier)

    def create_anonymous(self):
        name = "__tmp" + str(self.tmpcount)
        self.tmpcount += 1
        return name

class Namespace(Scope):
    def exit_namespace(self):
        return self.parent

class ASTWalker(NodeWalker):
    def __init__(self, scope = None):
        self.scope = scope # type: Scope
        self.function_stack = []
        self.current_function = None

    def walk(self, node, *args, **kwargs):
        old_node = node
        try:
            return super().walk(node, *args, **kwargs)
        except CompileAssert as e:
            node = e.node or node
            info = node.parseinfo or old_node.parseinfo
            lexer = info.buffer
            raise CompileError(lexer.format_error(str(e), info))

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
        
    def _typecheck_args(self, ftype, args):
        """ typecheck arguments for struct literals and function calls """

        at_named_args = False
        for i, arg in enumerate(args):
            if arg.name:
                at_named_args = True
            else: assert_error(not at_named_args, "No positional arguments allowed after named parameters")
            
            if at_named_args:
                try: tpe = ftype.get_argument_type(arg.name.name)
                except TypeError: error("Unknown argument", arg.name)
            else: 
                try: tpe = ftype.get_argument_type(i)
                except TypeError: error("Unknown argument", arg)

            with context(arg):
                arg.value.type = typecheck(tpe, arg.value.type)

    def _infer_struct_types_call(self, ftype, args):
        for i, arg in enumerate(args):
            v = arg.value
            if isinstance(v, model.StructInit) and not v.type:
                # type inference for struct literal from argument type
                if arg.name:
                    try: v.type = ftype.get_argument_type(arg.name.name)
                    except TypeError: error("Unknown argument", arg.name)
                else:
                    try: v.type = ftype.get_argument_type(i)
                    except TypeError: error("Unknown argument", arg)

    def walk_StructInit(self, node: model.StructInit):
        if node.type and not isinstance(node.type, type):
            node.type = self.scope.type_lookup(node.type)
        assert node.type is not None

        self._infer_struct_types_call(node.type, node.args)
        self.walk_children(node)
        self._typecheck_args(node.type, node.args)
            
        return node

    def walk_TEnum(self, node: model.TEnum):
        self.walk_children(node)
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

        assert_error(is_array(node.left.type), "Can only index arrays")
        node.array_type = node.left.type
        node.type = node.left.type._type_

        return node

    def walk_Call(self, node: model.Call):
        self.walk_child(node, node.left)
        assert_error(is_function(node.left.type), "Can only call functions")
        
        self._infer_struct_types_call(node.left.type, node.args)
        self.walk_child(node, node.args)
        self._typecheck_args(node.left.type, node.args)
        
        funct = node.left.type
        node.type = funct.ret_t

        # TODO typecheck arguments

        if funct.typecheck_macro:
            t = funct.typecheck_macro(self.scope, *node.args)
            node.type = t if isinstance(t, tuple) else (t,)

        return node

    def walk_Cast(self, node: model.Cast):
        self.walk_child(node, node.right)

        # Simplify cast if casting a literal
        tpe = self.scope.type_lookup(node.right)

        if isinstance(node.left, (model.Integer, model.Float, model.StructInit)):
            node.left.type = tpe
            if isinstance(node.left, model.StructInit):
                return self.walk(node.left)
            return node.left

        self.walk_child(node, node.left)
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
            assert_error(node.right.type is node.left.type is c_bool, "incompatible type")
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
        
        if isinstance(node.right, model.Identifier) and node.right.modifier == Modifier.Type:
            return self.walk(ast.PtrT(type = node.right))

        node.type = POINTER(node.right.type)
        return node

    def walk_SizeOf(self, node: model.SizeOf):
        self.walk_children(node)
        
        if isinstance(node.ast, model.Type):
            tpe = self.scope.type_lookup(node.ast)
        elif isinstance(node.ast, model.Identifier):
            if node.ast.modifier == Modifier.Type:
                tpe = self.scope.type_lookup(node.ast)
            else: tpe = node.ast.type
        else:
            tpe = node.ast.type

        size = ast.Integer(sizeof(tpe))
        size.type = c_size_t   
        
        return size

    def walk_Not(self, node: model.Not):
        self.walk_children(node)

        node.type = c_bool
        assert_error(node.right.type is c_bool, "'not' on incompatible type")
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
        assert_error(len(node.right) == 1 and isinstance(node.right[0], model.Range), "For loop only supports iterating over a range" )
        return node

    def walk_TypeDecl(self, node: model.TypeDecl):
        self.walk_children(node)

        assert_error(len(node.name) == len(node.value) == 1, "Parallel type assignment not implemented") # TODO

        name = node.name[0]
        if isinstance(node.value[0], model.TEnum):
            ns = self.scope.enter_namespace(name.name)
            value = self.scope.type_lookup(node.value[0].type)()
            for nme in node.value[0].body.ast:
                if nme.value:
                    value = self.scope.type_lookup(node.value[0].type)(nme.value.value)
                else:
                    value = self.scope.type_lookup(node.value[0].type)(value.value)
                    value.value += 1
                    
                nme = nme.name
                ns.create_variable(modifier = Modifier.Let, name = nme.name, tpe = self.scope.type_lookup(node.value[0].type), value = value)
                
            node.value[0].namespace = ns
            node.value[0].name = name.name
            ns.exit_namespace()
        else:
            tpe = self.scope.type_lookup(node.value[0])
            t = self.scope.create_type(name.name, tpe)
            name.identifier = t.identifier

        return node

    def _infer_struct_types_assign(self, node):
         # infer struct types
        if not node.right: return
        i = 0
        def walk_right(r):
            nonlocal i
            if isinstance(r, model.StructInit) and not r.type:
                r.type = node.left[i].type
            else: self.walk(r.type)
            r = self.walk(r)
            i += len(r.type.ret_t) if is_function(r.type) else 1
            return r

        node.right[:] = [walk_right(r) for r in node.right]

    def walk_VarDecl(self, node: model.VarDecl):
        self.walk_child(node, node.left, node.keyword, node.share)

        anon_types = ()
        for l in node.left:
            if isinstance(l.type, model.Struct):
                # anonymous struct
                name = self.scope.create_anonymous()
                identifier = self.walk(ast.Identifier(name))

                anon_t = self.walk(
                    ast.TypeDecl(
                        name = [identifier],
                        value = [l.type]
                    )
                )

                anon_types += (anon_t,)
                l.type = self.scope.type_lookup(anon_t.name[0])
            else:
                l.type = self.scope.type_lookup(l.type)

        self._infer_struct_types_assign(node)

        export = node.share & ast.Share.Export
        modifier = Modifier(node.keyword)
        assert_error(modifier is not Modifier.Const, "const not implemented")

        if node.right is None: 
            node.right = []

        types_r = flatten_type(r.type for r in node.right)

        if modifier is Modifier.Let:
            assert_error(len(types_r) == len(node.left), "Unbalanced assignment for let")
        else:
            assert_error(len(types_r) <= len(node.left), "Nothing to assign to")

        types_r_casted = ()
        for l, r in zip_longest(node.left, types_r):
            if isinstance(l, model.IdDecl):
                name = get_name(l.name)
                tpe = l.type

                if r is not None:
                    tpe = typecheck(tpe, r)
                
                types_r_casted += (tpe,)

                if modifier is Modifier.Var:
                    assert_error(tpe is not None, "Couldn't infer type for var")

                v = self.scope.create_variable(modifier, name, tpe, export) # Add value to scope
                l.identifier = v.identifier
            else:
                assert_error(r is not None, "Need to assign value")
                typecheck(l.type, r)
                types_r_casted += (None,) # None means assignment

        if len(types_r) < len(node.left):
            node.right.extend([ast.Null] * (len(node.left) - len(types_r)))

        node.type = types_r_casted

        return anon_types + (node,)

    def walk_Assign(self, node: model.Assign):
        self.walk_child(node, node.left)
        self._infer_struct_types_assign(node)

        assert_error(isinstance(node.parent, (model.Body, model.Program)), "Nested assignments disallowed" ) # TODO 

        types_r = flatten_type(r.type for r in node.right)
        types_l = tuple(l.type for l in node.left)

        assert_error(len(types_r) == len(types_l), "Unbalanced assignment")
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

    def walk_MemberAccess(self, node: model.MemberAccess):
        self.walk_children(node)

        tpe_l = node.left.type
        tpe_r = node.right.type

        if is_struct(tpe_l):
            node.type = dict(tpe_l._fields_)[node.right.name]
        elif is_function(tpe_r):
            error("Universal call syntax not implemented")
        else:
            error("Member access on incompatible type")
        
        return node

    # TODO Rewrite
    def walk_Def(self, node: model.Def):
        self.walk_child(node, node.args, node.returns, node.name)

        Arguments = namedtuple("Arguments", (arg.name.name for arg in node.args or []))

        # TODO Check return arguments
        f = self.scope.create_function(
            name = get_name(node.name), 
            arg_t = Arguments(*(self.scope.type_lookup(arg.type) for arg in node.args or [])),
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
    if k.startswith("_"): continue
        
    v = getattr(pbuiltins, k)
    if isinstance(v, type):
        builtins.create_type(k, v)
    elif callable(v):
        arg_t = None
        ret_t = None

        argspec = inspect.getfullargspec(v)
        varg = argspec.varargs
        print(argspec)
        types = argspec.annotations
        types.update({name: None for name in argspec.args if name not in types})
        if varg: types[varg] = Varargs(types.get(varg, None))

        if "return" in types:
            ret_t = types["return"]
            del types["return"] # delete to keep it from getting into the argument types
        if len(types) > 0:
            arg_t = namedtuple('MyNamedTuple', types.keys())(**types)
        
        
        builtins.create_function(k, arg_t, ret_t, getattr(v, "typecheck_macro", None))

def compile(ast):
    global_scope = Scope(builtins)
    ast = Compile(global_scope).walk(ast)
    src = PythonCodeGen().render(ast)
    return src

def eval(pysrc, globals = {}):
    return eval_globals(pysrc, globals)["__env"].result

def eval_globals(pysrc, globals = {}):
    exec(pysrc, globals)
    return globals