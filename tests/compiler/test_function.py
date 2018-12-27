from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_simple_function():
    prog = """\
        def test_function -> int {
            return 42
        }

        return test_function()
    """
    assert eq(eval(prog), c_long(42))

