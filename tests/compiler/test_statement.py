from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_if_statement():
    prog = """\
        if 1 > 2 {
            return true
        }
        return false
    """
    assert eq(eval(prog), c_bool(False))

def test_if_statement_complex():
    prog = """\
        if false {
        } else if false {
        } else if true {
            return true
        } else { }
    """
    assert eq(eval(prog), c_bool(True))