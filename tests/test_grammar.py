from tests import *

# Test the parser

Integer = node.Integer
Float = node.Float
String = node.String

class StringLiteral(TestCase):
    def test_empty(self):
        """ Empty string literal """
        self.assertEqual(parse("\"\""), expr(String("")))

    def test_generic(self):
        """ Generic text """
        self.assertEqual(parse("\"  0123 A a Ä   こんにちは世界 \""), expr(String("  0123 A a Ä   こんにちは世界 ")))
        self.assertNotEqual(parse("\"Donald Trump\""), expr(String("Good President")))

    def test_escapes(self):
        """ Escape sequences """
        self.assertEqual(parse("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \""), expr(String(" \a\b\f\n\t\v\'\"\\\0 ")))
        self.assertEqual(parse("\" \\x0A\\x00 \""), expr(String(" \x0A\x00 ")))
        self.assertEqual(parse("\" \\u1111 \""), expr(String(" \u1111 ")))
        self.assertEqual(parse("\" \\U0010FFFF \""), expr(String(" \U0010FFFF ")))

    def test_invalid_escapes(self):
        """ Invalid escape sequences, these should fail"""
        with self.assertRaises(FailedParse): parse("\" \\q \\ \"")
        with self.assertRaises(FailedParse): parse("\" \\XFF \"")

class IntegerLiteral(TestCase):
    def test_int_simple(self):
        """ Simple integer """
        self.assertEqual(parse("0"), expr(Integer(0)))
        self.assertEqual(parse("42"), expr(Integer(42)))

    def test_int_base(self):
        """ Integer with base """
        self.assertEqual(parse("0xDEADBABE"), expr(Integer(0xDEADBABE)))
        self.assertEqual(parse("0b10101010"), expr(Integer(0b10101010)))
        self.assertEqual(parse("0o777"), expr(Integer(0o777)))

    def test_float(self):
        """ Normal float """
        self.assertEqual(parse("10.10"), expr(Float(10.10)))
        self.assertEqual(parse("0.0"), expr(Float(0.0)))

    def test_float_exp(self):
        """ Float with Exponent """
        self.assertEqual(parse("5.20e10"), expr(Float(5.20e10)))
        self.assertEqual(parse("40E-10"), expr(Float(40E-10)))
        self.assertEqual(parse("122E+30"), expr(Float(122E+30)))
    
    def test_float_strange(self):
        """ Weird notations for floats """
        self.assertEqual(parse(".20"), expr(Float(.20)))
        self.assertEqual(parse(".42e10"), expr(Float(.42E10)))
        self.assertEqual(parse("20."), expr(Float(20.)))
        self.assertEqual(parse("2.E-2"), expr(Float(2.E-2)))

class Operators(TestCase):
    def test_simple(self):
        """ Simple addition """
        self.assertEqual(parse("1 + 2"), expr(node.Add(left = Integer(1), right = Integer(2))))
        self.assertEqual(parse("1 + 2 + 3"), expr(
            node.Add(
                left = node.Add(left = Integer(1), right = Integer(2)), 
                right = Integer(3)
            )
        ))

        self.assertEqual(parse("0 - 1E10"), expr(node.Sub(left = Integer(0), right = Float(1E10))))

class Generic(TestCase):
    def test_empty_program(self):
        """ Empty program """
        self.assertEqual(parse(""), node.Program([None]))
