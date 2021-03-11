from functools import reduce
from tatsu.ast import AST
from enum import Enum

from princess.lexer import LexerSemantics

def decode_escape_seq(ast):
    def hex(a, b): 
        return chr(int("".join(ast[a:b+1]), 16))
    e = ast[0]
    if e == 'x': return hex(1, 2)
    elif e == 'u': return hex(1, 4)
    elif e == 'U': return hex(1, 8)
    else: return { #abfnrtv\\'"0
        'a': '\a', 'b': '\b', 'f': '\f', 'n': '\n', 
        'r': '\r', 't': '\t', 'v': '\v', '0': '\0',
        '"': '"', '\'': '\'', '\\': '\\'}[e]

def char_to_str(ast):
    if isinstance(ast, tuple): return decode_escape_seq(ast)
    else: return ast

class CompareOp(str, Enum):
    LT = '<'; GT = '>'
    LEQ = '<='; GEQ = '>='
    EQ = '=='; NEQ = '!='

class AssignOp(str, Enum):
    Add = '+='; Sub = '-='
    Mul = '*='; Mod = '%='; Div = '/='
    BAnd = '&='; BOr = '|='; Xor = '^='

# TODO let/const/var?

class Share(int, Enum):
    No = 0
    Import = 1
    Export = 2
    Both = 3

class Semantics(LexerSemantics):
    def __init__(self):
        types = list(filter(lambda t: 
            isinstance(t, type) and issubclass(t, Enum), 
            globals().values()))
            
        super().__init__(types = types)

    def _default(self, ast, *args, **kwargs):
        if len(args) < 1: 
            return ast
        
        name = args[0]
        # if name == "String": print(ast)
        if hasattr(self, name):
            ast = getattr(self, name)(ast)

        return super()._default(ast, *args, **kwargs)

    def Identifier(self, ast):
        return ([ast.root] if ast.root else []) + ast.ident

    def String(self, ast):
        return reduce(lambda l, r: char_to_str(l) + char_to_str(r), ast, "")

    def Char(self, ast):
        return char_to_str(ast)

    def Integer(self, ast):
        return int("".join(ast.num), ast.base)

    def Float(self, ast):
        n = float("".join(ast.num) + "." + "".join(ast.frac))
        if ast.exp:
            exp = int("".join(ast.exp.num))
            if ast.exp.sign == "-":
                exp = -exp
            n *= 10 ** exp
        return n

    def Compare(self, ast):
        value = [ast.left]
        for e in ast.right:
            value += [e.op, e.right]
        return value

