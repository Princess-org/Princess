#!/usr/bin/env python
# -*- coding: utf-8 -*-

# CAVEAT UTILITOR
#
# This file was automatically generated by TatSu.
#
#    https://pypi.python.org/pypi/tatsu/
#
# Any changes you make to it will be overwritten the next time
# the file is generated.

from __future__ import print_function, division, absolute_import, unicode_literals

from tatsu.objectmodel import Node
from tatsu.semantics import ModelBuilderSemantics

from princess.node import Node as ModelBase

class PrincessModelBuilderSemantics(ModelBuilderSemantics):
    def __init__(self, context=None, types=None):
        types = [
            t for t in globals().values()
            if type(t) is type and issubclass(t, ModelBase)
        ] + (types or [])
        super(PrincessModelBuilderSemantics, self).__init__(context=context, types=types)

class Expression(ModelBase):
    pass


class Literal(Expression):
    pass


class Statement(ModelBase):
    pass


class Type(ModelBase):
    pass


class UnaryPostOp(Expression):
    pass


class UnaryPreOp(Expression):
    pass


class BinaryOp(Expression):
    pass


class Body(ModelBase):
    pass


class Program(ModelBase):
    pass


class Float(Literal):
    exp = None
    frac = None
    num = None


class Integer(Literal):
    base = None
    num = None


class Char(Literal):
    pass


class String(Literal):
    pass


class Identifier(Expression):
    ident = None
    root = None


class Boolean(Literal):
    pass


class Null(Expression):
    pass


class Array(Literal):
    pass


class StructInit(ModelBase):
    pass


class StructuralT(ModelBase):
    pass


class Else(Statement):
    body = None


class ElseIf(Statement):
    body = None
    cond = None


class If(Statement):
    body = None
    cond = None
    else_ = None
    else_if = None


class StructBody(ModelBase):
    pass


class Struct(Type):
    body = None


class PtrT(Type):
    keyword = None
    type = None


class RefT(Type):
    keyword = None
    type = None


class ArrayT(Type):
    keyword = None
    type = None


class FunctionT(Type):
    left = None
    right = None


class Unsigned(Type):
    pass


class Word(Type):
    pass


class CallArg(ModelBase):
    name = None
    value = None


class Call(Expression):
    args = None
    left = None


class ArrayIndex(Expression):
    left = None
    right = None


class MemberAccess(Expression):
    left = None
    right = None


class PostInc(UnaryPostOp):
    left = None


class PostDec(UnaryPostOp):
    left = None


class Cast(Expression):
    left = None
    right = None


class PreInc(UnaryPreOp):
    right = None


class PreDec(UnaryPreOp):
    right = None


class UMinus(UnaryPreOp):
    right = None


class Deref(UnaryPreOp):
    right = None


class Ptr(UnaryPreOp):
    right = None


class Invert(UnaryPreOp):
    right = None


class Not(UnaryPreOp):
    right = None


class Shr(BinaryOp):
    left = None
    right = None


class Shl(BinaryOp):
    left = None
    right = None


class BAnd(BinaryOp):
    left = None
    right = None


class BOr(BinaryOp):
    left = None
    right = None


class Xor(BinaryOp):
    left = None
    right = None


class Mul(BinaryOp):
    left = None
    right = None


class Div(BinaryOp):
    left = None
    right = None


class Mod(BinaryOp):
    left = None
    right = None


class PAdd(BinaryOp):
    left = None
    right = None


class PSub(BinaryOp):
    left = None
    right = None


class Add(BinaryOp):
    left = None
    right = None


class Sub(BinaryOp):
    left = None
    right = None


class CompareOp(ModelBase):
    pass


class Compare(Expression):
    left = None
    right = None


class And(BinaryOp):
    left = None
    right = None


class Or(BinaryOp):
    left = None
    right = None


class AssignOp(ModelBase):
    pass


class AssignAndOp(Expression):
    left = None
    op = None
    right = None


class Assign(Expression):
    left = None
    right = None


class IfExpr(Expression):
    cond = None
    if_false = None
    if_true = None


class Do(Expression):
    pass


class Range(Expression):
    from_ = None
    step = None
    to = None


class Share(ModelBase):
    pass


class ImportModule(ModelBase):
    alias = None
    name = None


class Import(ModelBase):
    modules = None
    share = None


class IdDecl(ModelBase):
    name = None
    type = None


class IdAssign(ModelBase):
    pass


class VarDecl(Statement):
    keyword = None
    left = None
    right = None
    share = None


class TypeDecl(Statement):
    name = None
    value = None


class Switch(Statement):
    body = None
    value = None


class StaticIf(Statement):
    body = None
    cond = None
    else_ = None
    else_if = None


class While(Statement):
    body = None
    cond = None


class Continue(Statement):
    pass


class Break(Statement):
    pass


class Return(Statement):
    pass


class In(Expression):
    keyword = None
    left = None
    right = None


class For(Statement):
    body = None
    iterator = None


class Pragma(Statement):
    args = None
    name = None


class Case(Statement):
    statement = None
    value = None


class Label(Statement):
    name = None
    statement = None


class Goto(Statement):
    pass


class DefArg(ModelBase):
    keyword = None
    name = None
    type = None
    value = None


class Def(Statement):
    args = None
    body = None
    name = None
    returns = None
    share = None