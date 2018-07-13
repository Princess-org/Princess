from tests import *

class TestAST(TestCase):
    def test_lookup(self):
        """ Lookup of python classes"""
        self.assertIsInstance(node.Expression(), grammar.Expression)

    def test_ast(self):
        """ Equality """
        self.assertEqual(node.String(" Node "), node.String(" Node "))
        self.assertNotEqual(node.String(" Node "), node.String(" Yo "))

    def test_ast_rec(self):
        """ Equality, recursive """
        self.assertEqual(expr(node.String(" Node ")), expr(node.String(" Node ")))
        self.assertNotEqual(expr(node.String(" Node ")), expr(node.String(" Yo ")))