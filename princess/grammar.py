from functools import reduce
from tatsu.ast import AST
from .ast import Operator, Node

class Expression(Node):
    def eval(self): pass

class Literal(Expression): pass

def decode_escape_seq(ast):
    def hex(a, b): 
        return chr(int("".join(ast[a:b+1]), 16))

    e = ast[0]
    if e == 'x': return hex(1, 2)
    elif e == 'u': return hex(1, 4)
    elif e == 'U': return hex(1, 8)
    else: return { #abfnrtv\\'"0
        'a': '\a', 'b': '\b', 'f': '\f', 'n': '\n', 
        'r': '\r', 't': '\t', 'v': '\v', '0': '\0'}.get(e, e)

def char_to_str(ast):
    if isinstance(ast, list): return decode_escape_seq(ast[1:])
    else: return ast

class String(Literal):
    def __postinit__(self, ast):
        super().__postinit__(AST({"VALUE" : reduce(lambda l, r: char_to_str(l) + char_to_str(r), ast.VALUE, "")}))

class Char(Literal):
    def __postinit__(self, ast):
        super().__postinit__(AST({"VALUE" : char_to_str(ast.VALUE)}))

BinaryOp_table = {}
UnaryPreOp_table = {}

@Operator(BinaryOp_table)
class BinaryOp(Expression): pass
    
@Operator(UnaryPreOp_table)
class UnaryPreOp(Expression): pass

class Mul(BinaryOp): pass
class Mod(BinaryOp): pass
class Div(BinaryOp): pass

class Add(BinaryOp): pass
class Sub(BinaryOp): pass

class PreInc(UnaryPreOp): pass
class UPlus(UnaryPreOp): pass
class PreDec(UnaryPreOp): pass
class UMinus(UnaryPreOp): pass
class Ptr(UnaryPreOp): pass
class Deref(UnaryPreOp): pass

BinaryOp_table.update({
    "+": Add, "-": Sub,
    "*": Mul, "%": Mod, "/": Div
})

UnaryPreOp_table.update({
    "++": PreInc, "--": PreDec,
    "+": UPlus, "-": UMinus,
    "*": Ptr, "@": Deref
})