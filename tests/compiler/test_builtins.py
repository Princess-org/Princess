from ctypes import *
from tests import eval_expr, eval
from princess.env import p_eq, p_string_value

def test_print(capfd):
    prog = """\
        let a = 30
        let b = 40
        print(a + b, "foobar")
    """
    eval(prog)
    assert capfd.readouterr().out == "70 foobar\n"

def test_string():
    prog = """
        let a = "Hello"
        let b = "World"
        var c: [12 char]
        return c
    """
    assert p_string_value(eval(prog)) == "Hello World"