from tests import eval_expr, eval, skip

def test_string_literal():
    assert (eval_expr("\"  0123 A a Ä   こんにちは世界 \"")
        == "  0123 A a Ä   こんにちは世界 ".encode())

    # Escape sequences get mangled but this should be equivalent
    #assert (eval_expr("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \"")
    #    == " \a\b\f\n\t\v\'\"\\\0 ") TODO Not implemented, see to_c_string in codegen
    
    assert eval_expr("\"test\"[0]") == b't'

def test_char_literal():
    #assert eval_expr("'界'") == '界'
    assert eval_expr("'\\a'") == b'\x07'

def test_int_literal():
    assert eval_expr("123") == 123
    assert eval_expr("-43") == -43

def test_bool_literal():
    assert eval_expr("true") == True
    assert eval_expr("false") == False

def test_null():
    assert eval_expr("null") == None

def test_array():
    #assert eval_expr("[1, 2, 3, 4]") TODO Not implemented
    assert eval_expr("[1, 2, 3, 4][0]") == 1
