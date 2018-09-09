import pytest
from tests import *

class TestIdentifier:
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

class TestOperators:
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

    def test_pointer_arithmetic(self):
        assert parse("ptr ++ 2") == prog(
            node.PAdd(left = Identifier("ptr"), right = Integer(2))
        )
        assert parse("ptr++") == prog(
            node.PostInc(left = Identifier("ptr"))
        )
        assert parse("++ptr") == prog(
            node.PreInc(right = Identifier("ptr"))
        )
        assert parse("++ptr++++1") == parse("(++(ptr++)) ++ 1") == prog(
            node.PAdd(
                left = node.PreInc(right = node.PostInc(left = Identifier("ptr"))),
                right = Integer(1)
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
        assert parse("foo = 2")  == prog(node.Assign(left = [Identifier("foo")], right = [Integer(2)]))
        assert parse("foo += 2") == prog(node.AssignAndOp(left = Identifier("foo"), op = AssignOp("+="), right = Integer(2)))

        assert parse("a = b = c") == prog(
            node.Assign(
                left = [Identifier("a")],
                right = [node.Assign(
                    left = [Identifier("b")],
                    right = [Identifier("c")]
                )]
            )
        )

        assert parse("foo = bar *= 2") == prog(
            node.Assign(
                left = [Identifier("foo")], 
                right = [node.AssignAndOp(
                    left = Identifier("bar"),
                    op = AssignOp("*="),
                    right = Integer(2)
                )]
            )
        )

    def test_assignment_multiple(self):
        assert parse("a, b = b, a") == prog(
            node.Assign(
                left = [Identifier("a"), Identifier("b")],
                right = [Identifier("b"), Identifier("a")]
            )
        )

        assert parse("a, b = c, d = e, f") == prog(
            node.Assign(
                left = [Identifier("a"), Identifier("b")],
                right = [node.Assign(
                    left = [Identifier("c"), Identifier("d")],
                    right = [Identifier("e"), Identifier("f")]
                )]
            )
        )

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

    def test_array_slice(self):
        assert parse("array[:]") == prog(
            node.ArrayIndex(
                left = Identifier("array"),
                right = node.Range()
            )
        )
        assert parse("array[1:]") == prog(
            node.ArrayIndex(
                left = Identifier("array"),
                right = node.Range(from_ = Integer(1))
            )
        )
        assert parse("array[:-2]") == prog(
            node.ArrayIndex(
                left = Identifier("array"),
                right = node.Range(to = node.UMinus(right = Integer(2)))
            )
        )

def test_no_wrapping():
    assertFailedParse("""\
            1
            / 2
        """)

def test_wrapping():
    """ Newline wrapping inside () """
    assert parse("""\
        (1
        + 2)
    """) == prog(node.Add(left = Integer(1), right = Integer(2)))

def test_cast():
    assert parse("1!float") == prog(node.Cast(left = Integer(1), right = Identifier("float")))

def test_if_expression():
    assert parse("foo = 10 if true else 20") == prog(
        node.Assign(
            left = [Identifier("foo")],
            right = [node.IfExpr(
                cond = Boolean(True),
                if_true = Integer(10),
                if_false = Integer(20)
            )]
        )
    )

    assertFailedParse("foo = 10 if true") # TODO Bad error message

def test_range_expression():
    assert parse("1:2") == prog(node.Range(from_ = Integer(1), to = Integer(2)))

def test_do_expression():
    assert parse("""\
        let a = do {
            some_call()
            20
        }
    """) == prog(
        Let(
            left = [node.IdDecl(name = Identifier("a"))],
            right = [
                Do(
                    node.Call(left = Identifier("some_call"), args = []),
                    Integer(20)
                )
            ]
        )
    )