from princess.ast import *

def test_ast():
    """ Equality """
    assert String(" Node ") == String(" Node ")
    assert String(" Node ") != String(" Yo ")

def test_ast_rec():
    """ Equality, recursive """
    assert Program(String(" Node ")) == Program(String(" Node "))
    assert Program(String(" Node ")) != Program(String(" Yo "))
