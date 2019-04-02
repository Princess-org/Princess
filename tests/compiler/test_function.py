from ctypes import *
from tests import eval_expr, eval
from princess.env import p_eq

def test_simple_function():
    prog = """\
        def test_function -> int {
            return 42
        }

        return test_function()
    """
    assert p_eq(eval(prog), c_long(42))

def test_args():
    prog = """\
        def add(a: int, b: int) -> int {
            return a + b
        }
        
        return add(10, 20)
    """

    assert p_eq(eval(prog), c_long(30))
