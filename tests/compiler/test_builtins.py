from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_print(capfd):
    prog = """\
        let a = 30
        let b = 40
        print(a + b)
    """
    eval(prog)
    assert capfd.readouterr().out == "c_long(70)\n"