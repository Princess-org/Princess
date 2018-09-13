import pytest

from tests import parse, assertFailedParse
from princess.ast import *

class TestStringLiteral:
    def test_empty(self):
        """ Empty string literal """
        assert parse("\"\"") == Program(String(""))

    def test_generic(self):
        """ Generic text """
        assert parse("\"  0123 A a Ä   こんにちは世界 \"") == Program(String("  0123 A a Ä   こんにちは世界 "))
        assert parse("\"Donald Trump\"") != Program(String("Good President"))

    def test_escapes(self):
        """ Escape sequences """
        assert parse("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \"") == Program(String(" \a\b\f\n\t\v\'\"\\\0 "))
        assert parse("\" \\x0A\\x00 \"") == Program(String(" \x0A\x00 "))
        assert parse("\" \\u1111 \"") == Program(String(" \u1111 "))
        assert parse("\" \\U0010FFFF \"") == Program(String(" \U0010FFFF "))
 
    def test_invalid_escapes(self):
        """ Invalid escape sequences, these should fail"""
        assertFailedParse("\" \\q \\ \"", "Expecting <ESC_CHAR>")
        assertFailedParse("\" \\XFF \"", "Expecting <ESC_CHAR>")

    def test_multiline_string(self):
        """ String that spans multiple lines """
        assert parse("\"Hello\nWorld\"") == Program(String("Hello\nWorld"))

class TestCharLiteral:
    def test_generic(self):
        assert parse("' '") == Program(Char(' '))
        assert parse("'N'") == Program(Char('N'))
    
    def test_escapes(self):
        assert parse("'\\x20'") == Program(Char('\x20'))
        assert parse("'\\u1111'") == Program(Char('\u1111'))
    
    def test_invalid(self):
        assertFailedParse("''")
        assertFailedParse("'AB'", "expecting \"'\"")

class TestIntegerLiteral:
    def test_int_simple(self):
        """ Simple integer """
        assert parse( "0") == Program(Integer( 0))
        assert parse("42") == Program(Integer(42))

    def test_int_base(self):
        """ Integer with base """
        assert parse("0xDEADBABE") == Program(Integer(0xDEADBABE))
        assert parse("0b10101010") == Program(Integer(0b10101010))
        assert parse("0o777")      == Program(Integer(0o777))

    def test_float(self):
        """ Normal float """
        assert parse("10.10") == Program(Float(10.10))
        assert parse( "0.0")  == Program(Float( 0.0))

    def test_float_exp(self):
        """ Float with Exponent """
        assert parse("5.20e10") == Program(Float(5.20e10))
        assert  parse("40E-10") == Program(Float( 40E-10))
        assert parse("122E+30") == Program(Float(122E+30))
    
    def test_float_strange(self):
        """ Weird notations for floats """
        assert parse(".20") == Program(Float(.20))
        assert parse(".42e10") == Program(Float(.42E10))
        assert parse("20.") == Program(Float(20.))
        assert parse("2.E-2") == Program(Float(2.E-2))

    def test_invalid(self):
        assertFailedParse("0x", "Expecting <hex_digit>")
        assertFailedParse(".E1", "Expecting <digit>")
        assertFailedParse("42.2e", "Expecting <digit>")
        #assertFailedParse("1.1.1") # TODO: Doesn't fail because of the . operator
        assertFailedParse("1EFA0")

    @pytest.mark.skip(reason="Not implemented")
    def test_num_with_underscore(self):
        """ Underscores in numeric literals """
        assert parse("1_000_000") == Program(Integer(1000000))
        assert parse("1_000_0.423_0E-10") == Program(Float(10000.4230E-10))

class TestBooleanLiteral:
    def test_bool(self):
        """ Boolean literals """
        assert parse("true" ) == Program(Boolean(True ))
        assert parse("false") == Program(Boolean(False))

class TestArrayLiteral:
    def test_array_simple(self):
        assert parse("[]") == Program(Array())
        assert parse("[\n\n]") == Program(Array())
        assert parse("[1, 2, 3]") == Program(Array(
            Integer(1), Integer(2), Integer(3)
        ))

def test_null():
    assert parse("null") == Program(Null)
