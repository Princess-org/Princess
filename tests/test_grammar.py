from tests import *

# Test the parser
class TestGeneric(TestCase):
    def test_empty(self):
        """ Empty program """
        self.assertEqual(parse(""), node.Program([None]))

class TestStringLiteral(TestCase):
    def test_empty(self):
        """ Empty string literal """
        self.assertEqual(parse("\"\""), expr(node.String("")))

    def test_generic(self):
        """ Generic text """
        self.assertEqual(parse("\"  0123 A a Ä   こんにちは世界 \""), expr(node.String("  0123 A a Ä   こんにちは世界 ")))
        self.assertNotEqual(parse("\"Donald Trump\""), expr(node.String("Good President")))

    def test_escapes(self):
        """ Escape sequences """
        self.assertEqual(parse("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \""), expr(node.String(" \a\b\f\n\t\v\'\"\\\0 ")))
        self.assertEqual(parse("\" \\x0A\\x00 \""), expr(node.String(" \x0A\x00 ")))
        self.assertEqual(parse("\" \\u1111 \""), expr(node.String(" \u1111 ")))
        self.assertEqual(parse("\" \\U0010FFFF \""), expr(node.String(" \U0010FFFF ")))

    def test_invalid_escapes(self):
        """ Invalid escape sequences, these should fail"""
        with self.assertRaises(FailedParse): parse("\" \\q \\ \"")
        with self.assertRaises(FailedParse): parse("\" \\XFF \"")
