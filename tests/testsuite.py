import unittest, tatsu, princess

from princess import ast_repr, grammar
from princess.ast import node
from tatsu.exceptions import FailedParse

parse = princess.parser.parse
def expr(n): return node.Program([node.Expression(n)])


if __name__ == "__main__":
    suite = unittest.TestSuite()
    unittest.TextTestRunner(verbosity = 2).run(suite)