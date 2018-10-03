from princess.ast import *
from ctypes import *
from tests import eval_expr, compile_stmt
from princess.env import string_value

def test_string_literal():
    assert (string_value(eval_expr("\"  0123 A a Ä   こんにちは世界 \""))
        == "  0123 A a Ä   こんにちは世界 ")

    # Escape sequences get mangled but this should be equivalent
    assert (string_value(eval_expr("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \""))
        == " \a\b\f\n\t\v\'\"\\\0 ")

def test_char_literal():
    assert eval_expr("'界'") == c_wchar('界')
    assert eval_expr("'\\a'") == c_wchar('\x07')

def test_int_literal():
    assert eval_expr("123") == c_int(123)
    assert eval_expr("-43") == c_int(-43)

def test_bool_literal():
    assert eval_expr("true") == c_bool(True)
    assert eval_expr("false") == c_bool(False)

def test_null():
    assert eval_expr("null") == None