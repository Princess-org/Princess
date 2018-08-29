from tests import *

class AST(TestCase):
    def test_lookup(self):
        """ Lookup of python classes"""
        self.assertIsInstance(node.Expression(), grammar.Expression)

    def test_ast(self):
        """ Equality """
        self.assertEqual(node.String(" Node "), node.String(" Node "))
        self.assertNotEqual(node.String(" Node "), node.String(" Yo "))

    def test_ast_rec(self):
        """ Equality, recursive """
        self.assertEqual(prog(node.String(" Node ")), prog(node.String(" Node ")))
        self.assertEqual(prog(node.String(" Node ")), prog(node.String(" Yo ")))
