import tatsu

from pprint import pprint
from functools import reduce

from tatsu.grammars import Grammar
from tatsu.grammars import AST
from tatsu.model import ModelBuilderSemantics

def ast_repr(value, indents = " ", indent = 0):
    istr = indents * indent
    if (isinstance(value, Node)):
        class_name = str(value.__class__.__name__)

        if hasattr(value, "_list"):
            return class_name + indents + ast_repr(value.children_list(), indents, indent)

        ret = class_name + " {\n"

        if hasattr(value, "_value"):
            ret += indents + istr + ast_repr(value._value, indents, indent + 1) + "\n"
        else:
            for k, v in sorted(vars(value).items()):
                if not k.startswith("_"): 
                    ast_r = ast_repr(v, indents, indent + 1)
                    ret += indents + istr + str(k) + " = " + ast_r + "\n"

        ret += istr + "}"

        return ret
    elif (isinstance(value, list)):
        ret = "[\n"
        for k in value:
            ret += indents + istr + ast_repr(k, indents, indent + 1) + "\n"
        ret += istr + "]"
        return ret
    else:
        return repr(value)

class Node(tatsu.model.Node):
    def __init__(self, ctx = None, ast = None, parseinfo = None, **kwargs):
        super().__init__(ctx, ast, parseinfo, **kwargs)
        if hasattr(self, "_list"):
            self._adopt_children(self._list)
            self._is_list = True
        else:
            self._is_list = False

    def __str__(self): return ast_repr(self)
    
    def children_list(self, vars_sort_key = None):
        if self._is_list:
            return list(self._list)
        return super().children_list(self, vars_sort_key)
    
    def children_set(self):
        if self._is_list:
            return set(self._list)
        return super().children_set(self)

def semantic(fun):
    def wrapper(self, ast, *args, **kwargs):
        ast = fun(self, ast)
        return super(Semantics, self)._default(ast, *args, **kwargs)
    return wrapper

class Semantics(ModelBuilderSemantics):
    def __init__(self):
        super().__init__(base_type = Node)

    def __decode_escape_seq(self, ast):
        def hex(a, b): 
            return chr(int("".join(ast[a:b+1]), 16))

        e = ast[0]
        if e == 'x': return hex(1, 2)
        elif e == 'u': return hex(1, 4)
        elif e == 'U': return hex(1, 8)
        else: return { #abfnrtv\\'"0
            'a': '\a', 'b': '\b', 'f': '\f', 'n': '\n', 
            'r': '\r', 't': '\t', 'v': '\v', '0': '\0'}.get(e, e)

    def __char_to_str(self, ast):
        if isinstance(ast, list): return self.__decode_escape_seq(ast[1:])
        else: return ast

    @semantic
    def t_string_lit(self, ast):
        return AST({"_value" : reduce(lambda l, r: self.__char_to_str(l) + self.__char_to_str(r), ast._value)})

    @semantic
    def t_char_lit(self, ast):
        return AST({"_value" : self.__char_to_str(ast._value)})


grammar: Grammar

with open("princess.ebnf") as file:
    grammar = tatsu.compile(file.read(), semantics = Semantics())

try:
    parsed = grammar.parse("""
        /* W
           A
           T 
        */
        10 +/*COMMENT*/++10 - *@foo + // This is a comment
        10 // part of the previous line
    
        
        1 + 30 * 20; "Jap: 
            六七八九十 \\\\\\u26E7  \\U0001F707" + '\\x0C'
    """)

    #parsed = grammar.parse("1 + 1 - 1")

    print(ast_repr(parsed))
except tatsu.exceptions.FailedParse as e:
    print(e)