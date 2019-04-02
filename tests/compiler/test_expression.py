from ctypes import *
from tests import eval_expr, eval
from princess.env import p_eq

def test_arithmetic():
    assert p_eq(eval_expr("1 + 2 - 1"), c_long(2))
    assert p_eq(eval_expr("2 * 4 - 1"), c_long(7))
    assert p_eq(eval_expr("2 * (4 - 1)"), c_long(6))

def test_bitwise():
    assert p_eq(eval_expr("0b110 & 0b010"), c_long(0b010))
    assert p_eq(eval_expr("0b110 | 0b001"), c_long(0b111))
    assert p_eq(eval_expr("0b100 ^ 0b111"), c_long(0b011))
    assert p_eq(eval_expr("~0"), c_long(-1))

def test_logical():
    assert p_eq(eval_expr("true or true and false"), c_bool(True))
    assert p_eq(eval_expr("not false"), c_bool(True))

def test_compare():
    assert p_eq(eval_expr("1 > 0"), c_bool(True))
    assert p_eq(eval_expr("20 > 5 > 2 > 1"), c_bool(True))

def test_cast():
    assert p_eq(eval_expr("1!byte"), c_byte(1))
    assert p_eq(eval_expr("1000!ubyte"), c_ubyte(232)) # Overflow

def test_sign_conv():
    assert p_eq(eval_expr("10!uint * -5"), c_long(-50))

def test_array_access():
    assert p_eq(eval_expr("[1, 2, 3, 4][1]"), c_long(2))
    assert p_eq(eval_expr("[1, 1.5, -3][2]"), c_double(-3))