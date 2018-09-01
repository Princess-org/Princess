import pytest

from tests import *

class TestStringLiteral:
    def test_empty(self):
        """ Empty string literal """
        assert parse("\"\"") == prog(String(""))

    def test_generic(self):
        """ Generic text """
        assert parse("\"  0123 A a Ä   こんにちは世界 \"") == prog(String("  0123 A a Ä   こんにちは世界 "))
        assert parse("\"Donald Trump\"") != prog(String("Good President"))

    def test_escapes(self):
        """ Escape sequences """
        assert parse("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \"") == prog(String(" \a\b\f\n\t\v\'\"\\\0 "))
        assert parse("\" \\x0A\\x00 \"") == prog(String(" \x0A\x00 "))
        assert parse("\" \\u1111 \"") == prog(String(" \u1111 "))
        assert parse("\" \\U0010FFFF \"") == prog(String(" \U0010FFFF "))
 
    def test_invalid_escapes(self):
        """ Invalid escape sequences, these should fail"""
        assertFailedParse("\" \\q \\ \"", "Expecting <esc_char>")
        assertFailedParse("\" \\XFF \"", "Expecting <esc_char>")

    def test_multiline_string(self):
        """ String that spans multiple lines """
        assert parse("\"Hello\nWorld\"") == prog(String("Hello\nWorld"))

class TestIntegerLiteral:
    def test_int_simple(self):
        """ Simple integer """
        assert parse( "0") == prog(Integer( 0))
        assert parse("42") == prog(Integer(42))

    def test_int_base(self):
        """ Integer with base """
        assert parse("0xDEADBABE") == prog(Integer(0xDEADBABE))
        assert parse("0b10101010") == prog(Integer(0b10101010))
        assert parse("0o777")      == prog(Integer(0o777))

    def test_float(self):
        """ Normal float """
        assert parse("10.10") == prog(Float(10.10))
        assert parse( "0.0")  == prog(Float( 0.0))

    def test_float_exp(self):
        """ Float with Exponent """
        assert parse("5.20e10") == prog(Float(5.20e10))
        assert  parse("40E-10") == prog(Float( 40E-10))
        assert parse("122E+30") == prog(Float(122E+30))
    
    def test_float_strange(self):
        """ Weird notations for floats """
        assert parse(".20") == prog(Float(.20))
        assert parse(".42e10") == prog(Float(.42E10))
        assert parse("20.") == prog(Float(20.))
        assert parse("2.E-2") == prog(Float(2.E-2))

    def test_invalid(self):
        assertFailedParse("0x", "Expecting <hex_digit>")
        assertFailedParse(".E1", "Expecting <digit>")
        assertFailedParse("42.2e", "Expecting <digit>")
        #assertFailedParse("1.1.1") # TODO: Doesn't fail because of the . operator
        assertFailedParse("1EFA0")

    @pytest.mark.skip(reason="Not implemented")
    def test_num_with_underscore(self):
        """ Underscores in numeric literals """
        assert parse("1_000_000") == prog(Integer(1000000))
        assert parse("1_000_0.423_0E-10") == prog(Float(10000.4230E-10))

class TestBooleanLiteral:
    def test_bool(self):
        """ Boolean literals """
        assert parse("true" ) == prog(Boolean(True ))
        assert parse("false") == prog(Boolean(False))

class TestArrayLiteral:
    def test_array_simple(self):
        assert parse("[]") == prog(node.Array())
        assert parse("[\n\n]") == prog(node.Array())
        assert parse("[1, 2, 3]") == prog(node.Array(
            Integer(1), Integer(2), Integer(3)
        ))
