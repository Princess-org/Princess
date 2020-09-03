import re
from collections import namedtuple

from tatsu.infos import ParseInfo
from tatsu.buffering import Buffer
from tatsu.semantics import ModelBuilderSemantics

from princess.model import PrincessModelBuilderSemantics
from princess.parser import PrincessBuffer

class LexerSemantics(PrincessModelBuilderSemantics):
    _nesting = 0

    def t_oparen(self, ast):
        self._nesting += 1
        return ast

    def t_cparen(self, ast):
        self._nesting -= 1
        return ast

class Lexer(PrincessBuffer):
    def __init__(self, *args, _semantics, **kwargs):
        self.semantics = _semantics
        super().__init__(*args, **kwargs)
    
    def eat_comments(self):
        depth = 0
        comments = []
        while self.matchre(r"\/\*"):
            start = self.pos - 2
            depth += 1
            while depth > 0:
                c = self.next()
                if c == "*" and self.peek(0) == "/":
                    depth -= 1
                    self.next()
                elif c == "/" and self.peek(0) == "*":
                    depth += 1
                    self.next()
                elif c is None: return # TODO failed parse
            else:
                end = self.pos
                comments += self.text[start:end]
        
        if comments:
            self._index_comments(comments, lambda x: x.inline)

    def eat_eol_comments(self):
        if self.matchre(r"\/\/"):
            start = self.pos
            self.skip_to_eol()
            self.next()
            end = self.pos
            self._index_comments([self.text[start:end]], lambda x: x.eol)

    def eat_whitespace(self):
        if self.semantics._nesting > 0:
            self.matchre(r"[\n\t ]+")
        else:
            self.matchre(r"[\t ]+")

    # TODO Rework
    def format_error(self, error, info: ParseInfo):
        line = info.text_lines()[0] # TODO Errors might span multiple lines
       
        error += "\n"        
        error += (self.filename or "??? ") + ":" + str(info.line) + "\n"
        error += line
        error += " " * (info.pos + 1) + "^"
        error += (info.endpos - info.pos - 1) * "~"

        return error
