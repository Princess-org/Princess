import pytest
from tests import *
from princess.grammar import CompareOp, AssignOp

class TestIdentifier():
    def test_simple(self):
        assert parse("foo") == prog(Identifier("foo"))

    def test_namespace(self):
        assert parse("foo::bar::baz") == prog(Identifier("foo", "bar", "baz"))
        assert parse("std::foo.bar::baz") == prog(
            node.MemberAccess(
                left = Identifier("std", "foo"),
                right = Identifier("bar", "baz")
            )
        )
    
    def test_root_namespace(self):
        assert parse("::foo::bar::baz") == prog(Identifier("::", "foo", "bar", "baz"))

class TestOperators():
    def test_simple(self):
        """ Simple addition """
        assert parse("1 + 2") == prog(node.Add(left = Integer(1), right = Integer(2)))
        assert parse("1 + 2 + 3") == prog(
            node.Add(
                left = node.Add(left = Integer(1), right = Integer(2)), 
                right = Integer(3)
            )
        )

        assert parse("0 - 1E10") == prog(node.Sub(left = Integer(0), right = Float(1E10)))

    def test_precidence(self):
        """ Operator Precidence """
        assert parse("1 * 1 + 1") == prog(
            node.Add(
                left = node.Mul(left = Integer(1), right = Integer(1)),
                right = Integer(1)
            )
        )
        assert parse("1 + 1 * 1") == prog(
            node.Add(
                left = Integer(1),
                right = node.Mul(left = Integer(1), right = Integer(1))
            )
        )
        assert parse("1 >> 3 + 2 << 5") == prog(
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
        )

    def test_comparison(self):
        assert parse("foo == bar > 1 + 2 < baz") == prog(
            node.Compare(
                Identifier("foo"),
                CompareOp("=="),
                Identifier("bar"),
                CompareOp(">"),
                node.Add(left = Integer(1), right = Integer(2)),
                CompareOp("<"),
                Identifier("baz")
            )
        )
    
    def test_assignment(self):
        assert parse("foo = 2")  == prog(node.Assign(left = Identifier("foo"), right = Integer(2)))
        assert parse("foo += 2") == prog(node.Assign(left = Identifier("foo"), op = AssignOp("+="), right = Integer(2)))

        assert parse("foo = bar *= 2") == prog(
            node.Assign(
                left = Identifier("foo"), 
                right = node.Assign(
                    left = Identifier("bar"),
                    op = AssignOp("*="),
                    right = Integer(2)
                )
            )
        )

    def test_if_expression(self):
        assert parse("foo = 10 if true else 20") == prog(
            node.Assign(
                left = Identifier("foo"),
                right = node.IfExpr(
                    cond = Boolean(True),
                    if_true = Integer(10),
                    if_false = Integer(20)
                )
            )
        )

        assertFailedParse("foo = 10 if true") # TODO Bad error message

    def test_call(self):
        assert parse("foo(a = 20, 50)") == prog(
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
        )

    def test_member_access(self):
        assert parse("(@foo).bar(\n)") == prog(
            node.Call(
                left = node.MemberAccess(
                    left = node.Deref(right = Identifier("foo")),
                    right = Identifier("bar")
                )
            )
        )
    
    def test_array_index(self):
        assert parse("foo[\n1\n].bar()") == prog(
            node.Call(
                left = node.MemberAccess(
                    left = node.ArrayIndex(
                        left = Identifier("foo"),
                        right = Integer(1)
                    ),
                    right = Identifier("bar")
                )
            )
        )

    def test_no_wrapping(self):
        assertFailedParse("""\
                1
                / 2
            """)

    def test_wrapping(self):
        """ Newline wrapping inside () """
        assert parse("""\
            (1
            + 2)
        """) == prog(node.Add(left = Integer(1), right = Integer(2)))

    def test_cast(self):
        assert parse("1!float") == prog(node.Cast(left = Integer(1), right = node.Type(Identifier("float"))))