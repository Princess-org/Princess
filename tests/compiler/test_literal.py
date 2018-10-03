from princess.ast import *
from tests import compile_stmt

def test_string_literal():
    assert (compile_stmt("\"  0123 A a Ä   こんにちは世界 \"")
        == "create_unicode_buffer('  0123 A a Ä   こんにちは世界 ')")

    # Escape sequences get mangled but this should be equivalent
    assert (compile_stmt("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \"")
        == "create_unicode_buffer(' \\x07\\x08\\x0c\\n\\t\\x0b\\\'\"\\\\\\x00 ')")

def test_char_literal():
    assert compile_stmt("'界'") == "c_wchar('界')"
    assert compile_stmt("'\\a'") == "c_wchar('\\x07')"

def test_int_literal():
    assert compile_stmt("123") == "c_int(123)"
    assert compile_stmt("-43") == "c_int(-43)"