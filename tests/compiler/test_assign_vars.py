from ctypes import *
from tests import eval_expr, eval, skip
from pytest import raises
from princess.env import p_eq
from princess.compiler import CompileError

def test_let_simple():
    prog = """\
        let a = 10 * 2
        return a
    """
    assert p_eq(eval(prog), c_long(20))

def test_let_multiple_assign():
    prog = """\
        let a, b = 1, 2
        return a, b
    """
    assert p_eq(eval(prog), (c_long(1), c_long(2)))

def test_assign():
    prog = """\
        var a = 0
        a = 20
        a = a + 5
        return a
    """
    assert p_eq(eval(prog), c_long(25))

def test_assign_multiple():
    prog = """\
        var a, b, c = 0, 0, 0
        a, b, c = 10, 20, 30
        return a, b, c
    """
    assert p_eq(eval(prog), (c_long(10), c_long(20), c_long(30)))

def test_assign_multiple_call():
    prog = """\
        def test -> int, double, long {
            return 1, 2.5, -2
        }
        let c, b, a = test()
        return a, b, c
    """
    assert p_eq(eval(prog), (c_longlong(-2), c_double(2.5), c_long(1)))

def test_assign_and_let():
    prog = """\
        var a = 0
        let (a), b = 1, 2
        return a, b
    """
    assert p_eq(eval(prog), (c_long(1), c_long(2)))

def test_types():
    prog = """\
        var a: int = 20
        var b: byte = a !byte
        var c: byte, d: byte = 20, 30
        return a, b, c, d
    """
    assert p_eq(eval(prog), (c_long(20), c_byte(20), c_byte(20), c_byte(30)))

def test_declare_no_assign():
    eval("var a: int")

    with raises(CompileError, match = "Couldn't infer type for var") as e:
        eval("var a")
    with raises(CompileError, match = "Unbalanced assignment for let") as e:
        eval("let b: int")
