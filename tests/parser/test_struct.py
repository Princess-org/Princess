from tests import parse, assertFailedParse
from princess.ast import *

def test_empty():
    assert parse("""\
        type struct {}
    """) == Program(
        Struct(body = StructBody(None))
    )

def test_simple():
    assert parse("""\
        type struct {
            a: int; b: ->int
            c: *
        }
    """) == Program(
        Struct(
            body = StructBody(
                IdDeclStruct(name = Identifier("a"), type = Identifier("int")),
                IdDeclStruct(name = Identifier("b"), type = FunctionT(right = [Identifier("int")])),
                IdDeclStruct(name = Identifier("c"), type = Pointer())
            )
        )
    )

def test_nested():
    assert parse("""\
        type struct {
            deep: struct {
                sea: struct {}
            }
        }
    """) == Program(
        Struct(
            body = StructBody(
                IdDeclStruct(
                    name = Identifier("deep"),
                    type = Struct(
                        body = StructBody(
                            IdDeclStruct(
                                name = Identifier("sea"),
                                type = Struct(body = StructBody(None))
                            )
                        )
                    )
                )
            )
        )
    )

    assert parse("""\
        type struct {
            struct {
                a: int
            }
            b: int
        }
    """) == Program(
        Struct(
            body = StructBody(
                Struct(
                    body = StructBody(
                        IdDeclStruct(name = Identifier("a"), type = Identifier("int"))
                    )
                ),
                IdDeclStruct(
                    name = Identifier("b"),
                    type = Identifier("int")
                )
            )
        )
    )

def test_struct_if():
    """ struct with inline static if """

    assert parse("""\
        type struct {
            #if false {
                a: int
            } else if false {
                a: double
            } else {
                a: float
            }
        }
    """) == Program(
        Struct(
            body = StructBody(
                If(
                    cond = Boolean(False),
                    body = StructBody(IdDeclStruct(name = Identifier("a"), type = Identifier("int"))),
                    else_if = [ElseIf(
                        cond = Boolean(False),
                        body = StructBody(IdDeclStruct(name = Identifier("a"), type = Identifier("double")))
                    )],
                    else_ = Else(
                        body = StructBody(IdDeclStruct(name = Identifier("a"), type = Identifier("float")))
                    )
                )
            )
        )
    )

def test_typedef():
    assert parse("""\
        type empty = struct {}
    """) == Program(
        TypeDecl(
            name = [Identifier("empty")],
            value = [Struct(body = StructBody(None))]
        )
    )

def test_typedef_bug():
    parse("""\
        type a = struct {}
        a
    """)