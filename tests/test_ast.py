from tests import *

def test_lookup():
    """ Lookup of python classes"""
    assert isinstance(node.Expression(), grammar.Expression)
    #assert isinstance(node.Add(), grammar.Operator)

def test_ast():
    """ Equality """
    assert node.String(" Node ") == node.String(" Node ")
    assert node.String(" Node ") != node.String(" Yo ")

def test_ast_rec():
    """ Equality, recursive """
    assert prog(node.String(" Node ")) == prog(node.String(" Node "))
    assert prog(node.String(" Node ")) != prog(node.String(" Yo "))
