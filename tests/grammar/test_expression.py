import pytest
from tests import *

class TestIdentifier:
    def test_simple(self):
        assert parse("foo") == Program(Identifier("foo"))

    def test_namespace(self):
        assert parse("foo::bar::baz") == Program(Identifier("foo", "bar", "baz"))
        assert parse("std::foo.bar::baz") == Program(
            MemberAccess(
                left = Identifier("std", "foo"),
                right = Identifier("bar", "baz")
            )
        )
    
    def test_root_namespace(self):
        assert parse("::foo::bar::baz") == Program(Identifier("::", "foo", "bar", "baz"))

class TestOperators:
    def test_simple(self):
        """ Simple addition """
        assert parse("1 + 2") == Program(Add(left = Integer(1), right = Integer(2)))
        assert parse("1 + 2 + 3") == Program(
            Add(
                left = Add(left = Integer(1), right = Integer(2)), 
                right = Integer(3)
            )
        )

        assert parse("0 - 1E10") == Program(Sub(left = Integer(0), right = Float(1E10)))

    def test_precidence(self):
        """ Operator Precidence """
        assert parse("1 * 1 + 1") == Program(
            Add(
                left = Mul(left = Integer(1), right = Integer(1)),
                right = Integer(1)
            )
        )
        assert parse("1 + 1 * 1") == Program(
            Add(
                left = Integer(1),
                right = Mul(left = Integer(1), right = Integer(1))
            )
        )
        assert parse("1 >> 3 + 2 << 5") == Program(
            Add(
                left = Shr(
                    left = Integer(1),
                    right = Integer(3),
                ),
                right = Shl(
                    left = Integer(2),
                    right = Integer(5)
                )
            )
        )

    def test_pointer_arithmetic(self):
        assert parse("ptr ++ 2") == Program(
            PAdd(left = Identifier("ptr"), right = Integer(2))
        )
        assert parse("ptr++") == Program(
            PostInc(left = Identifier("ptr"))
        )
        assert parse("++ptr") == Program(
            PreInc(right = Identifier("ptr"))
        )
        assert parse("++ptr++++1") == parse("(++(ptr++)) ++ 1") == Program(
            PAdd(
                left = PreInc(right = PostInc(left = Identifier("ptr"))),
                right = Integer(1)
            )
        )

    def test_comparison(self):
        assert parse("foo == bar > 1 + 2 < baz") == Program(
            Compare(
                Identifier("foo"),
                CompareOp("=="),
                Identifier("bar"),
                CompareOp(">"),
                Add(left = Integer(1), right = Integer(2)),
                CompareOp("<"),
                Identifier("baz")
            )
        )
    
    def test_assignment(self):
        assert parse("foo = 2")  == Program(Assign(left = [Identifier("foo")], right = [Integer(2)]))
        assert parse("foo += 2") == Program(AssignAndOp(left = Identifier("foo"), op = AssignOp("+="), right = Integer(2)))

        assert parse("a = b = c") == Program(
            Assign(
                left = [Identifier("a")],
                right = [Assign(
                    left = [Identifier("b")],
                    right = [Identifier("c")]
                )]
            )
        )

        assert parse("foo = bar *= 2") == Program(
            Assign(
                left = [Identifier("foo")], 
                right = [AssignAndOp(
                    left = Identifier("bar"),
                    op = AssignOp("*="),
                    right = Integer(2)
                )]
            )
        )

    def test_assignment_multiple(self):
        assert parse("a, b = b, a") == Program(
            Assign(
                left = [Identifier("a"), Identifier("b")],
                right = [Identifier("b"), Identifier("a")]
            )
        )

        assert parse("a, b = c, d = e, f") == Program(
            Assign(
                left = [Identifier("a"), Identifier("b")],
                right = [Assign(
                    left = [Identifier("c"), Identifier("d")],
                    right = [Identifier("e"), Identifier("f")]
                )]
            )
        )

    def test_call(self):
        assert parse("foo(a, b = 50)") == Program(
            Call(
                left = Identifier("foo"),
                args = [
                    CallArg(
                        value = Identifier("a")
                    ),
                    CallArg(
                        name = Identifier("b"),
                        value = Integer(50)
                    )
                ]
            )
        )

    def test_member_access(self):
        assert parse("(@foo).bar(\n)") == Program(
            Call(
                left = MemberAccess(
                    left = Deref(right = Identifier("foo")),
                    right = Identifier("bar")
                )
            )
        )
    
    def test_array_index(self):
        assert parse("foo[\n1\n].bar()") == Program(
            Call(
                left = MemberAccess(
                    left = ArrayIndex(
                        left = Identifier("foo"),
                        right = Integer(1)
                    ),
                    right = Identifier("bar")
                )
            )
        )

    def test_array_slice(self):
        assert parse("array[:]") == Program(
            ArrayIndex(
                left = Identifier("array"),
                right = Range()
            )
        )
        assert parse("array[1:]") == Program(
            ArrayIndex(
                left = Identifier("array"),
                right = Range(from_ = Integer(1))
            )
        )
        assert parse("array[:-2]") == Program(
            ArrayIndex(
                left = Identifier("array"),
                right = Range(to = UMinus(right = Integer(2)))
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
    """) == Program(Add(left = Integer(1), right = Integer(2)))

def test_cast():
    assert parse("1!float") == Program(Cast(left = Integer(1), right = Identifier("float")))

def test_if_expression():
    assert parse("foo = 10 if true else 20") == Program(
        Assign(
            left = [Identifier("foo")],
            right = [IfExpr(
                cond = Boolean(True),
                if_true = Integer(10),
                if_false = Integer(20)
            )]
        )
    )

    assertFailedParse("foo = 10 if true") # TODO Bad error message

def test_range_expression():
    assert parse("1:2") == Program(Range(from_ = Integer(1), to = Integer(2)))

def test_do_expression():
    assert parse("""\
        let a = do {
            some_call()
            20
        }
    """) == Program(
        Let(
            left = [IdDecl(name = Identifier("a"))],
            right = [
                Do(
                    Call(left = Identifier("some_call"), args = []),
                    Integer(20)
                )
            ]
        )
    )