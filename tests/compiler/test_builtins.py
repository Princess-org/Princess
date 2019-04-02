from ctypes import *
from tests import eval_expr, eval
from princess.env import p_eq

def test_print(capfd):
    prog = """\
        let a = 30
        let b = 40
        print(a + b, "foobar")
    """
    eval(prog)
    assert capfd.readouterr().out == "70 foobar\n"