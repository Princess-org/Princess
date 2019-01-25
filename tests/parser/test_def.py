from tests import parse, ast
from princess.ast import *


def test_simple():
    assert parse("""
        def function
    """) == Program(
        Def(name = Identifier("function"))
    )

    assert parse("""
        def function = 0
    """) == Program(Def(
        name = Identifier("function"),
        body = Integer(0)
    ))
    assert parse("""
        def function -> int
    """) == Program(Def(
        name = Identifier("function"),
        returns = [Identifier("int")]
    ))

def test_args():
    assert parse("""
        def function(a: int, b: SomeType)
    """) == Program(Def(
        name = Identifier("function"),
        args = [
            DefArg(name = Identifier("a"), type = Identifier("int")),
            DefArg(name = Identifier("b"), type = Identifier("SomeType"))
        ]
    ))
    assert parse("""
        def function(let a: int = 2) -> T
    """) == Program(Def(
        name = Identifier("function"),
        args = [
            DefArg(keyword = "let", name = Identifier("a"), type = Identifier("int"), value = Integer(2))
        ],
        returns = [Identifier("T")]
    ))

def test_export():
    assert parse("""
        export def function {
            let foobar = 20 + 40
            return foobar
        }
    """) == Program(
        Def(
            share = Share.Export,
            name = Identifier("function"),
            body = Body(
                ast("let foobar = 20 + 40"),
                Return(Identifier("foobar"))
            )
        )
    )