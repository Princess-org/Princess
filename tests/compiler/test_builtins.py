from ctypes import *
from tests import eval_expr, eval

def test_print(capfd):
    prog = """\
        let a = 30
        let b = 40
        print(a + b, "foobar")
    """
    eval(prog)
    assert capfd.readouterr().out == "70 foobar\n"

def test_concat():
    prog = """
        let a = "Hello"
        let b = "World"
        var c: [12 char]
        concat(*c, a, " ", b)
        return c
    """
    assert p_string_value(eval(prog)) == "Hello World"

def test_concat_malloc():
    prog = """
        let a = "Hello"
        let b = "World"
        var c = allocate((size_of char) * 12) !string
        concat(c, a, " ", b)
        return c
    """
    assert p_string_value(eval(prog)) == "Hello World"

def test_string():
    prog = """
        let a = "Hello"
        let b = *a
        return b[0]
    """
    assert p_eq(eval(prog), c_wchar("H"))