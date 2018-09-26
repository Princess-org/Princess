# Constructors

from princess import model
from princess.model import *
from princess.semantics import AssignOp, CompareOp, Share

def __value_type(cst):
    return lambda value: cst(ast = value)

def __value_types(*args):
    for arg in args:
        name = arg.__name__
        globals()[name] = __value_type(arg)

def __list_type(cst):
    return lambda *args: cst(ast = list(args))

def __list_types(*args):
    for arg in args:
        name = arg.__name__
        globals()[name] = __list_type(arg)

EmptyBody = Body(ast = [None])
Continue = Continue()
Break = Break()
Null = Null()

__value_types(String, Char, Integer, Float, Boolean, Goto, Type, Unsigned, Word)
__list_types(Array, Body, Identifier, Compare, Program, StructBody, Return)

Do = (lambda *args: model.Do(ast = Body(*args)))

Var = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'var', share = Share.No, *args, **kwargs))
Let = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'let', share = Share.No, *args, **kwargs))
Const = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'const', share = Share.No, *args, **kwargs))

Pointer = (lambda type = None, keyword = 'var': 
    model.PtrT(keyword = keyword, type = type))
Reference = (lambda type = None, keyword = 'var': 
    model.RefT(keyword = keyword, type = type))

ArrayT = (lambda type = None, n = None, keyword = 'var': 
    model.ArrayT(n = n, keyword = keyword, type = type))

Def = (lambda share = Share.No, *args, **kwargs:
    model.Def(share = share, *args, **kwargs))
DefArg = (lambda keyword = 'var', *args, **kwargs:
    model.DefArg(keyword = keyword, *args, **kwargs))
