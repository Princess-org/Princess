from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_let_simple():
    prog = """\
        let a = 10 * 2
        return a
    """
    assert eq(eval(prog), c_long(20))

def test_let_multiple_assign():
    prog = """\
        let a, b = 1, 2
        return a, b
    """
    assert eq(eval(prog), (c_long(1), c_long(2)))

def test_assign():
    prog = """\
        var a = 0
        a = 20
        a = a + 5
        return a
    """
    assert eq(eval(prog), c_long(25))

def test_assign_multiple():
    prog = """\
        var a, b, c = 0, 0, 0
        a, b, c = 10, 20, 30
        return a, b, c
    """
    assert eq(eval(prog), (c_long(10), c_long(20), c_long(30)))

def test_assign_and_let():
    prog = """\
        var a = 0
        let (a), b = 1, 2
        return a, b
    """
    assert eq(eval(prog), (c_long(1), c_long(2)))

def test_types():
    prog = """\
        var a: int = 20
        var b: byte = a !byte
        var c: byte = 20
        return a, b, c
    """
    assert eq(eval(prog), (c_long(20), c_byte(20), c_byte(20)))