from ctypes import *
from tests import eval_expr, eval
from princess.env import eq

def test_arithmetic():
    assert eq(eval_expr("1 + 2 - 1"), c_long(2))
    assert eq(eval_expr("2 * 4 - 1"), c_long(7))
    assert eq(eval_expr("2 * (4 - 1)"), c_long(6))

def test_bitwise():
    assert eq(eval_expr("0b110 & 0b010"), c_long(0b010))
    assert eq(eval_expr("0b110 | 0b001"), c_long(0b111))
    assert eq(eval_expr("0b100 ^ 0b111"), c_long(0b011))
    assert eq(eval_expr("~0"), c_long(-1))

def test_cast():
    assert eq(eval_expr("1!byte"), c_byte(1))
    assert eq(eval_expr("1000!ubyte"), c_ubyte(232)) # Overflow

def test_sign_conv():
    assert eq(eval_expr("10!uint * -5"), c_long(-50))