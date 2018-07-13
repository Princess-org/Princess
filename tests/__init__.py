import unittest, tatsu, princess

from princess import ast_repr, grammar, parse
from princess.ast import node
from tatsu.exceptions import FailedParse

def expr(n): return node.Program([node.Expression(n)])