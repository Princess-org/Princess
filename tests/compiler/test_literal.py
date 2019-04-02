from ctypes import *
from tests import eval_expr, eval
from princess.env import p_string_value, p_eq

def test_string_literal():
    assert (p_string_value(eval_expr("\"  0123 A a Ä   こんにちは世界 \""))
        == "  0123 A a Ä   こんにちは世界 ")

    # Escape sequences get mangled but this should be equivalent
    assert (p_string_value(eval_expr("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \""))
        == " \a\b\f\n\t\v\'\"\\\0 ")

def test_char_literal():
    assert p_eq(eval_expr("'界'"), c_wchar('界'))
    assert p_eq(eval_expr("'\\a'"), c_wchar('\x07'))

def test_int_literal():
    assert p_eq(eval_expr("123"), c_long(123))
    assert p_eq(eval_expr("-43"), c_long(-43))

def test_bool_literal():
    assert p_eq(eval_expr("true"), c_bool(True))
    assert p_eq(eval_expr("false"), c_bool(False))

def test_null():
    assert eval_expr("null") == None

def test_array():
    assert p_eq(eval_expr("[1, 2, 3, 4]"), (c_long * 4)(1, 2, 3, 4))
