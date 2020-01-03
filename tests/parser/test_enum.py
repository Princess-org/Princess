from tests import parse, assertFailedParse
from princess.ast import *

def test_simple():
    assert parse("""\
        type enum {
            FOO
            BAR
            BAZ
        }
    """) == Program(
        TEnum(body = EnumBody(
            IdDeclEnum(name = Identifier("FOO")),
            IdDeclEnum(name = Identifier("BAR")),
            IdDeclEnum(name = Identifier("BAZ"))
        ))
    )

def test_typed():
    assert parse("""\
        type Enum = enum: long {
            A = 20; B = 30
            C
        }
    """) == Program(
        TypeDecl(
            share = Share.No,
            name = [Identifier("Enum")],
            value = [TEnum(
                type = Identifier("long"),
                body = EnumBody(
                    IdDeclEnum(name = Identifier("A"), value = Integer(20)),
                    IdDeclEnum(name = Identifier("B"), value = Integer(30)),
                    IdDeclEnum(name = Identifier("C"))
                )
            )]
        )
    )

def test_enum_if():
    assert parse("""\
        type enum: double {
            #if earth == FLAT {
                R = -1
            } else if earth == CUBE {
                R = 20
            } else {
                R = 3.14
            }
            D = 20.5
        }
    """) == Program(
        TEnum(
            type = Identifier("double"),
            body = EnumBody(
                If(
                    cond = Compare(Identifier("earth"), CompareOp.EQ, Identifier("FLAT")),
                    body = EnumBody(IdDeclEnum(name = Identifier("R"), value = UMinus(right = Integer(1)))),
                    else_if = [ElseIf(
                        cond = Compare(Identifier("earth"), CompareOp.EQ, Identifier("CUBE")),
                        body = EnumBody(IdDeclEnum(name = Identifier("R"), value = Integer(20)))
                    )],
                    else_ = Else(
                        body = EnumBody(IdDeclEnum(name = Identifier("R"), value = Float(3.14)))
                    )
                ),
                IdDeclEnum(name = Identifier("D"), value = Float(20.5))
            )
        )
    )