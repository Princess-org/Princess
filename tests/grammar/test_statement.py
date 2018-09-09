import pytest
from tests import *

def test_empty_program():
    """ Empty program """
    assert parse("") == node.Program([None])

def test_const_declaration():
    assert parse("const a = 50") == prog(
        Const(left = [node.IdDecl(name = Identifier("a"))], right = [Integer(50)])
    )

def test_variable_declarataion():
    assert parse("let a = 10") == prog(
        Let(left = [node.IdDecl(name = Identifier("a"))], right = [Integer(10)])
    )
    assert parse("var myvar: int"), prog(
        Var(left = [node.IdDecl(name = Identifier("myvar"), type = Identifier("int"))])
    )
    assert parse("var ptr:*"), prog(
        Var(left = [node.IdDecl(name = Identifier("ptr"), type = Pointer())])
    )

def test_variable_declaration_multiple():
    assert parse("let a, b:int = 10, 20") == prog(
        Let(
            left = [
                node.IdDecl(name = Identifier("a")), 
                node.IdDecl(name = Identifier("b"), type = Identifier("int"))
            ], 
            right = [Integer(10), Integer(20)]
        )
    )

def test_type_declaration():
    assert parse("type i8 = int8") == prog(
        node.TypeDecl(
            name = [Identifier("i8")],
            value = [Identifier("int8")]
        )
    )

def test_type_declaration_multiple():
    assert parse("type i8, i16 = int8, int16") == prog(
        node.TypeDecl(
            name = [Identifier("i8"), Identifier("i16")],
            value = [Identifier("int8"), Identifier("int16")]
        )
    )

def test_if_statement():
    assert parse("""\
        if true { body }
    """) == prog(
        node.If(
            cond = Boolean(True),
            body = node.Body([Identifier("body")])
        )
    )
    
    assert parse("""\
        if (true) 
        { 
            body // For the verbose
        }
        else
        {
            body // people
        }
    """) == prog(
        node.If(
            cond = Boolean(True),
            body = Body(Identifier("body")),
            else_ = node.Else(
                body = Body(Identifier("body"))
            )
        )
    )

    assert parse("""\
        if true { 
            if_body
        } else if false {
            else_if_body
        } else if true {
            else_if_body
        } else {
            else_body
        }
    """) == prog(
        node.If(
            cond = Boolean(True),
            body = Body(Identifier("if_body")),
            else_if = [
                node.If(
                    cond = Boolean(False),
                    body = Body(Identifier("else_if_body"))
                ),
                node.If(
                    cond = Boolean(True),
                    body = Body(Identifier("else_if_body"))
                )
            ],
            else_ = node.Else(
                body = Body(Identifier("else_body"))
            )
        )
    )

def test_static_if():
    assert parse("""\
        #if true { } else if false { } else {}
    """) == prog(
        node.StaticIf(
            cond = Boolean(True),
            body = EmptyBody,
            else_if = [
                node.If(cond = Boolean(False), body = EmptyBody)
            ],
            else_ = node.Else(body = EmptyBody)
        )
    )

def test_loop():
    assert parse("""\
        loop { continue; forever }
    """) == prog(
        node.While(
            body = node.Body(
                Continue,
                Identifier("forever")
            )
        )
    )

def test_while():
    assert parse("""\
        while 1 == 2 {
            continue
            break
        }
    """) == prog(
        node.While(
            cond = ast("1 == 2"),
            body = Body(
                Continue,
                Break
            )
        )
    )


def test_for_simple():
    assert parse ("""\
        var i = 0
        for i in 1:20 { 
            /* in line /* comment */*/
            print("Hello World") // EOL
        }
        print(i)
    """) == node.Program(
        ast("var i = 0"),
        node.For(
            iterator = node.In(
                left = [node.IdDecl(name = Identifier("i"))], 
                right = [node.Range(from_ = Integer(1), to = Integer(20))]
            ),
            body = Body(
                ast("print(\"Hello World\")")
            )
        ),
        ast("print(i)")
    )

def test_for_multiple():
    assert parse("""\
        for var e in array1, array2 { }
    """) == prog(
        node.For(
            iterator = node.In(
                keyword = "var",
                left = [node.IdDecl(name = Identifier("e"))],
                right = [Identifier("array1"), Identifier("array2")]
            ),
            body = EmptyBody
        )
    )