from functools import reduce
from enum import Enum
from tatsu.ast import AST
from .ast import Operator, Node, REMOVE

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
    if isinstance(ast, list): return decode_escape_seq(ast)
    else: return ast

class String(Literal):
    def _semantic(self, ast):
        return AST(VALUE = reduce(lambda l, r: char_to_str(l) + char_to_str(r), ast.VALUE, ""))

class Char(Literal):
    def _semantic(self, ast):
        return AST(VALUE = char_to_str(ast.VALUE))

class Integer(Literal):
    def _semantic(self, ast):
        return AST(VALUE = int("".join(ast.num), ast.base))

class Float(Literal):
    def _semantic(self, ast):
        n = float("".join(ast.num) + "." + "".join(ast.frac))
        if ast.exp:
            exp = int("".join(ast.exp.num))
            if ast.exp.sign == "-":
                exp = -exp
            n *= 10 ** exp
        return AST(VALUE = n)

BinaryOp_table = {}
UnaryPreOp_table = {}
CompareOp_table = {}

@Operator(BinaryOp_table)
class BinaryOp(Expression): pass
    
@Operator(UnaryPreOp_table)
class UnaryPreOp(Expression): pass

class PreInc(UnaryPreOp): pass
class UPlus(UnaryPreOp): pass
class PreDec(UnaryPreOp): pass
class UMinus(UnaryPreOp): pass
class Ptr(UnaryPreOp): pass
class Deref(UnaryPreOp): pass
class Invert(UnaryPreOp): pass

class Mul(BinaryOp): pass
class Mod(BinaryOp): pass
class Div(BinaryOp): pass

class Add(BinaryOp): pass
class Sub(BinaryOp): pass

class Shl(BinaryOp): pass
class Shr(BinaryOp): pass
class BAnd(BinaryOp): pass
class BOr(BinaryOp): pass
class Xor(BinaryOp): pass

class CompareOp(str, Enum):
    LT = '<'; GT = '>'
    LEQ = '<='; GEQ = '>='
    EQ = '=='

class Compare(Expression):
    def _semantic(self, ast):
        value = [ast.left]
        for e in ast.right:
            value += [CompareOp(e.op), e.right]
        return AST(LIST = value)

class And(BinaryOp): pass

class Or(BinaryOp): pass 

BinaryOp_table.update({
    "+": Add, "-": Sub,
    "*": Mul, "%": Mod, "/": Div,
    "<<": Shl, ">>": Shr, 
    "&": BAnd, "|": BOr, "^": Xor,
    "and": And, "or": Or
})

UnaryPreOp_table.update({
    "++": PreInc, "--": PreDec,
    "+": UPlus, "-": UMinus,
    "*": Ptr, "@": Deref,
    "~": Invert
})
