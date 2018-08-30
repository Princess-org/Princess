from tests import *
from princess.grammar import CompareOp, AssignOp

# Test the parser

Integer = node.Integer
Float = node.Float
String = node.String
Boolean = node.Boolean

def Identifier(*args):
    return node.Identifier(list(args))
def Var(*args, **kwargs):
    return node.VarDecl(keyword = 'var', *args, **kwargs)
def Let(*args, **kwargs):
    return node.VarDecl(keyword = 'let', *args, **kwargs)

class StringLiteral(TestCase):
    def test_empty(self):
        """ Empty string literal """
        self.assertEqual(parse("\"\""), prog(String("")))

    def test_generic(self):
        """ Generic text """
        self.assertEqual(parse("\"  0123 A a Ä   こんにちは世界 \""), prog(String("  0123 A a Ä   こんにちは世界 ")))
        self.assertNotEqual(parse("\"Donald Trump\""), prog(String("Good President")))

    def test_escapes(self):
        """ Escape sequences """
        self.assertEqual(parse("\" \\a\\b\\f\\n\\t\\v\\'\\\"\\\\\\0 \""), prog(String(" \a\b\f\n\t\v\'\"\\\0 ")))
        self.assertEqual(parse("\" \\x0A\\x00 \""), prog(String(" \x0A\x00 ")))
        self.assertEqual(parse("\" \\u1111 \""), prog(String(" \u1111 ")))
        self.assertEqual(parse("\" \\U0010FFFF \""), prog(String(" \U0010FFFF ")))

    def test_invalid_escapes(self):
        """ Invalid escape sequences, these should fail"""
        self.assertFailedParse("\" \\q \\ \"", "Expecting <esc_char>")
        self.assertFailedParse("\" \\XFF \"", "Expecting <esc_char>")

    def test_multiline_string(self):
        """ String that spans multiple lines """
        self.assertEqual(parse("\"Hello\nWorld\""), prog(String("Hello\nWorld")))

class IntegerLiteral(TestCase):
    def test_int_simple(self):
        """ Simple integer """
        self.assertEqual(parse("0"), prog(Integer(0)))
        self.assertEqual(parse("42"), prog(Integer(42)))

    def test_int_base(self):
        """ Integer with base """
        self.assertEqual(parse("0xDEADBABE"), prog(Integer(0xDEADBABE)))
        self.assertEqual(parse("0b10101010"), prog(Integer(0b10101010)))
        self.assertEqual(parse("0o777"), prog(Integer(0o777)))

    def test_float(self):
        """ Normal float """
        self.assertEqual(parse("10.10"), prog(Float(10.10)))
        self.assertEqual(parse("0.0"), prog(Float(0.0)))

    def test_float_exp(self):
        """ Float with Exponent """
        self.assertEqual(parse("5.20e10"), prog(Float(5.20e10)))
        self.assertEqual(parse("40E-10"), prog(Float(40E-10)))
        self.assertEqual(parse("122E+30"), prog(Float(122E+30)))
    
    def test_float_strange(self):
        """ Weird notations for floats """
        self.assertEqual(parse(".20"), prog(Float(.20)))
        self.assertEqual(parse(".42e10"), prog(Float(.42E10)))
        self.assertEqual(parse("20."), prog(Float(20.)))
        self.assertEqual(parse("2.E-2"), prog(Float(2.E-2)))

    def test_invalid(self):
        self.assertFailedParse("0x", "Expecting <hex_digit>")
        self.assertFailedParse(".E1", "Expecting <digit>")
        self.assertFailedParse("42.2e", "Expecting <digit>")
        #self.assertFailedParse("1.1.1") # TODO: Doesn't fail because of the . operator
        self.assertFailedParse("1EFA0")

    @skip("Not implemented")
    def test_num_with_underscore(self):
        """ Underscores in numeric literals """
        self.assertEqual(parse("1_000_000"), prog(Integer(1000000)))
        self.assertEqual(parse("1_000_0.423_0E-10"), prog(Float(10000.4230E-10)))

class BooleanLiteral(TestCase):
    def test_bool(self):
        """ Boolean literals """
        self.assertEqual(parse("true"), prog(Boolean(True)))
        self.assertEqual(parse("false"), prog(Boolean(False)))

class ATestIdentifier(TestCase):
    def test_simple(self):
        self.assertEqual(parse("foo"), prog(Identifier("foo")))

    def test_namespace(self):
        self.assertEqual(parse("foo::bar::baz"), prog(Identifier("foo", "bar", "baz")))
        self.assertEqual(parse("std::foo.bar::baz"), prog(
            node.MemberAccess(
                left = Identifier("std", "foo"),
                right = Identifier("bar", "baz")
            )
        ))
    
    def test_root_namespace(self):
        self.assertEqual(parse("::foo::bar::baz"), prog(Identifier("::", "foo", "bar", "baz")))


class Expressions(TestCase):
    def test_simple(self):
        """ Simple addition """
        self.assertEqual(parse("1 + 2"), prog(node.Add(left = Integer(1), right = Integer(2))))
        self.assertEqual(parse("1 + 2 + 3"), prog(
            node.Add(
                left = node.Add(left = Integer(1), right = Integer(2)), 
                right = Integer(3)
            )
        ))

        self.assertEqual(parse("0 - 1E10"), prog(node.Sub(left = Integer(0), right = Float(1E10))))

    def test_precidence(self):
        """ Operator Precidence """
        self.assertEqual(parse("1 * 1 + 1"), prog(
            node.Add(
                left = node.Mul(left = Integer(1), right = Integer(1)),
                right = Integer(1)
            )
        ))
        self.assertEqual(parse("1 + 1 * 1"), prog(
            node.Add(
                left = Integer(1),
                right = node.Mul(left = Integer(1), right = Integer(1))
            )
        ))
        self.assertEqual(parse("1 >> 3 + 2 << 5"), prog(
            node.Add(
                left = node.Shr(
                    left = Integer(1),
                    right = Integer(3),
                ),
                right = node.Shl(
                    left = Integer(2),
                    right = Integer(5)
                )
            )
        ))

    def test_comparison(self):
        self.assertEqual(parse("foo == bar > 1 + 2 < baz"), prog(
            node.Compare(
                Identifier("foo"),
                CompareOp("=="),
                Identifier("bar"),
                CompareOp(">"),
                node.Add(left = Integer(1), right = Integer(2)),
                CompareOp("<"),
                Identifier("baz")
            )
        ))
    
    def test_assignment(self):
        self.assertEqual(parse("foo = 2"), prog(node.Assign(left = Identifier("foo"), right = Integer(2))))
        self.assertEqual(parse("foo += 2"), prog(node.Assign(left = Identifier("foo"), op = AssignOp("+="), right = Integer(2))))

        self.assertEqual(parse("foo = bar *= 2"), prog(
            node.Assign(
                left = Identifier("foo"), 
                right = node.Assign(
                    left = Identifier("bar"),
                    op = AssignOp("*="),
                    right = Integer(2)
                )
            )
        ))

    def test_if_expression(self):
        self.assertEqual(parse("foo = 10 if true else 20"), prog(
            node.Assign(
                left = Identifier("foo"),
                right = node.IfExpr(
                    cond = Boolean(True),
                    if_true = Integer(10),
                    if_false = Integer(20)
                )
            )
        ))

        self.assertFailedParse("foo = 10 if true") # TODO Bad error message

    def test_call(self):
        self.assertEqual(parse("foo(a = 20, 50)"), prog(
            node.Call(
                left = Identifier("foo"),
                args = [
                    node.CallArg(
                        name = Identifier("a"), 
                        value = Integer(20)
                    ),
                    node.CallArg(
                        value = Integer(50)
                    )
                ]
            )
        ))

    def test_member_access(self):
        self.assertEqual(parse("(@foo).bar(\n)"), prog(
            node.Call(
                left = node.MemberAccess(
                    left = node.Deref(right = Identifier("foo")),
                    right = Identifier("bar")
                )
            )
        ))
    
    def test_array_index(self):
        self.assertEqual(parse("foo[\n1\n].bar()"), prog(
            node.Call(
                left = node.MemberAccess(
                    left = node.ArrayIndex(
                        left = Identifier("foo"),
                        right = Integer(1)
                    ),
                    right = Identifier("bar")
                )
            )
        ))

    def test_no_wrapping(self):
        self.assertFailedParse("""\
                1
                / 2
            """)

    def test_wrapping(self):
        """ Newline wrapping inside () """
        self.assertEqual(parse("""\
            (1
            + 2)
        """), prog(node.Add(left = Integer(1), right = Integer(2))))

    def test_cast(self):
        self.assertEqual(parse("1!float"), prog(node.Cast(left = Integer(1), right = node.Type(Identifier("float")))))

class Program(TestCase):
    def test_empty_program(self):
        """ Empty program """
        self.assertEqual(parse(""), node.Program([None]))

    def test_variable_declarataion(self):
        self.assertEqual(parse("let a = 10"), prog(
            Let(name = Identifier("a"), value = Integer(10))
        ))
        self.assertEqual(parse("var myvar: int"), prog(
            Var(name = Identifier("myvar"), type = node.Type(Identifier("int")))
        ))
    
    def test_type_declaration(self):
        self.assertEqual(parse("type i8 = int8"), prog(
            node.TypeDecl(
                name = Identifier("i8"),
                value = node.Type(Identifier("int8"))
            )
        ))

    def test_if_statement(self):
        self.assertEqual(parse("""\
            if true { body }
        """), prog(
            node.If(
                cond = Boolean(True),
                body = node.Body([Identifier("body")])
            )
        ))
        
        self.assertEqual(parse("""\
            if (true) 
            { 
                body // For the verbose
            }
            else
            {
                body // people
            }
        """), prog(
            node.If(
                cond = Boolean(True),
                body = node.Body([Identifier("body")]),
                else_ = node.Else(
                    body = node.Body([Identifier("body")])
                )
            )
        ))

        self.assertEqual(parse("""\
            if true { 
                if_body
            } else if false {
                else_if_body
            } else if true {
                else_if_body
            } else {
                else_body
            }
        """), prog(
            node.If(
                cond = Boolean(True),
                body = node.Body([Identifier("if_body")]),
                else_if = [
                    node.If(
                        cond = Boolean(False),
                        body = node.Body([Identifier("else_if_body")])
                    ),
                    node.If(
                        cond = Boolean(True),
                        body = node.Body([Identifier("else_if_body")])
                    )
                ],
                else_ = node.Else(
                    body = node.Body([Identifier("else_body")])
                )
            )
        ))
