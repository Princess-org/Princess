import os

from pathlib import Path
from ctypes import *
from tests import eval_expr, eval, skip
from princess.env import p_eq

def test_import():
    os.chdir(Path(__file__).parent)
    prog = """\
        import test_imp as test
        
        var a: int = 20
        a = test::plus_one(a)
        var b: int = test::plus(a, test::foo)

        return a, b
    """
    assert p_eq(eval(prog, globals = {"__name__": __name__}), (c_long(21), c_long(41)))