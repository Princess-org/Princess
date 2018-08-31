import pytest
from tests import *

def test_empty_program():
    """ Empty program """
    assert parse("") == node.Program([None])

def test_variable_declarataion():
    assert parse("let a = 10") == prog(
        Let(name = Identifier("a"), value = Integer(10))
    )
    assert parse("var myvar: int"), prog(
        Var(name = Identifier("myvar"), type = node.Type(Identifier("int")))
    )

def test_type_declaration():
    assert parse("type i8 = int8") == prog(
        node.TypeDecl(
            name = Identifier("i8"),
            value = node.Type(Identifier("int8"))
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
            body = node.Body([Identifier("body")]),
            else_ = node.Else(
                body = node.Body([Identifier("body")])
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
