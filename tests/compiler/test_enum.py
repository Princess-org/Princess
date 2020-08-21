from ctypes import *
from tests import eval_expr, eval

def test_enum_simple():
    prog = """
        type Enum = enum: int {
            BAR; BAZ;
        }
        return Enum::BAR, Enum::BAZ
    """
    assert p_eq(eval(prog), (c_long(0), c_long(1)))

def test_enum_complex():
    prog = """
        type Enum = enum: long {
            FOO = 20; BAR;
        }
        return Enum::FOO, Enum::BAR
    """
    assert p_eq(eval(prog), (c_longlong(20), c_longlong(21)))