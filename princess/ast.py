# Constructors

from princess import model
from princess.model import *
from princess.semantics import AssignOp, CompareOp, Share

EmptyBody = Body(ast = [None])
Continue = Continue()
Break = Break()
Null = Null()

def value_type(cst):
    return lambda value: cst(ast = value)

def value_types(*args):
    for arg in args:
        name = arg.__name__
        globals()[name] = value_type(arg)

value_types(String, Char, Integer, Float, Boolean, Goto, Type)

def list_type(cst):
    return lambda *args: cst(ast = list(args))

def list_types(*args):
    for arg in args:
        name = arg.__name__
        globals()[name] = list_type(arg)

list_types(Array, Body, Identifier, Compare, Program, StructBody)

Do = (lambda *args: model.Do(ast = Body(*args)))

Var = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'var', *args, **kwargs))
Let = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'let', *args, **kwargs))
Const = (lambda *args, **kwargs: 
    model.VarDecl(keyword = 'const', *args, **kwargs))

Pointer = (lambda type = None, keyword = 'var': 
    model.PtrT(keyword = keyword, type = type))
Reference = (lambda type = None, keyword = 'var': 
    model.RefT(keyword = keyword, type = type))

ArrayT = (lambda type = None, n = None, keyword = 'var': 
    model.ArrayT(n = n, keyword = keyword, type = type))
