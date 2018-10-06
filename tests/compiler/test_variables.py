from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_simple():
    prog = """\
        let a = 10 * 2
        return a
    """
    assert eq(eval(prog), c_long(20))

def test_multiple_assign():
    prog = """\
        let a, b = 1, 2
        return a, b
    """
    assert eq(eval(prog), (c_long(1), c_long(2)))