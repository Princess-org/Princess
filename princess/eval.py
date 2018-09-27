import operator
from tatsu.model import NodeWalker
from enum import Enum
from .ast import *

class TType: pass
class TNumeric(TType): pass

class TFloat(TNumeric):
    def __init__(self, size):
        self.bitsize = size

class TInt(TNumeric):
    def __init__(self, size):
        self.bitsize = size

class TUint(TNumeric):
    def __init__(self, size):
        self.bitsize = size

class TStruct(TType):
    def __init__(self, name, attributes):
        self.name = name
        self.attributes = attributes

class TypedValue:
    def __init__(self, type: TType, value):
        self.type = type
        self.value = value

    def __getattribute__(self, attr):
        return getattr(self.expr, attr)

def binop(left: TypedValue, right: TypedValue, operator):
    result = operator(left.value, right.value)


class Eval(NodeWalker):
    
    def walk_Add(self, node: Add):
        return binop(self.walk(node.left), self.walk(node.right), operator.add)
    
    def walk_Mul(self, node: Mul):
        return binop(self.walk(node.left), self.walk(node.right), operator.mul)

    def walk_Div(self, node: Div):
        return binop(self.walk(node.left), self.walk(node.right), operator.truediv)