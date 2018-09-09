from tests import *

def test_empty():
    assert parse("""\
        type struct {}
    """) == prog(node.Type(
        node.Struct(body = node.StructBody([None]))
    ))

def test_simple():
    assert parse("""\
        type struct {
            a: int; b: ->int
            c: *
        }
    """) == prog(node.Type(
        node.Struct(
            body = node.StructBody(
                node.IdDecl(name = Identifier("a"), type = Identifier("int")),
                node.IdDecl(name = Identifier("b"), type = node.FunctionT(right = [Identifier("int")])),
                node.IdDecl(name = Identifier("c"), type = Pointer())
            )
        )
    ))

def test_nested():
    assert parse("""\
        type struct {
            deep: struct {
                sea: struct {}
            }
        }
    """) == prog(node.Type(
        node.Struct(
            body = node.StructBody([
                node.IdDecl(
                    name = Identifier("deep"),
                    type = node.Struct(
                        body = node.StructBody([
                            node.IdDecl(
                                name = Identifier("sea"),
                                type = node.Struct(body = node.StructBody([None]))
                            )
                        ])
                    )
                )
            ])
        )
    ))

    assert parse("""\
        type struct {
            struct {
                a: int
            }
            b: int
        }
    """) == prog(node.Type(
        node.Struct(
            body = node.StructBody([
                node.Struct(
                    body = node.StructBody([
                        node.IdDecl(name = Identifier("a"), type = Identifier("int"))
                    ])
                ),
                node.IdDecl(
                    name = Identifier("b"),
                    type = Identifier("int")
                )
            ])
        )
    ))

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
    """) == prog(node.Type(
        node.Struct(
            body = node.StructBody([
                node.If(
                    cond = Boolean(False),
                    body = node.StructBody([node.IdDecl(name = Identifier("a"), type = Identifier("int"))]),
                    else_if = [node.If(
                        cond = Boolean(False),
                        body = node.StructBody([node.IdDecl(name = Identifier("a"), type = Identifier("double"))])
                    )],
                    else_ = node.Else(
                        body = node.StructBody([node.IdDecl(name = Identifier("a"), type = Identifier("float"))])
                    )
                )
            ])
        )
    ))

def test_typedef():
    assert parse("""\
        type empty = struct {}
    """) == prog(
        node.TypeDecl(
            name = [Identifier("empty")],
            value = [node.Struct(body = node.StructBody([None]))]
        )
    )