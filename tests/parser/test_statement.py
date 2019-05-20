import pytest
from tests import parse, ast, assertFailedParse
from princess.ast import *

def test_empty_program():
    """ Empty program """
    assert parse("") == parse("()") == Program(None)

def test_const_declaration():
    assert parse("const a = 50") == Program(
        Const(left = [IdDecl(name = Identifier("a"))], right = [Integer(50)])
    )

def test_variable_declaration():
    assert parse("let a = 10") == Program(
        Let(left = [IdDecl(name = Identifier("a"))], right = [Integer(10)])
    )
    assert parse("var myvar: int"), Program(
        Var(left = [IdDecl(name = Identifier("myvar"), type = Identifier("int"))])
    )
    assert parse("var ptr:*"), Program(
        Var(left = [IdDecl(name = Identifier("ptr"), type = Pointer())])
    )

def test_variable_assign_and_declaration():
    assert parse("let a, (b) = 10, 20") == Program(
        Let(left = [
            IdDecl(name = Identifier("a")),
            IdAssign(Identifier("b"))
        ], right = [Integer(10), Integer(20)])
    )

def test_variable_declaration_multiple():
    assert parse("let a, b:int = 10, 20") == Program(
        Let(
            left = [
                IdDecl(name = Identifier("a")), 
                IdDecl(name = Identifier("b"), type = Identifier("int"))
            ], 
            right = [Integer(10), Integer(20)]
        )
    )

def test_type_declaration():
    assert parse("type i8 = int8") == Program(
        TypeDecl(
            name = [Identifier("i8")],
            value = [Identifier("int8")]
        )
    )

def test_type_declaration_multiple():
    assert parse("type i8, i16 = int8, int16") == Program(
        TypeDecl(
            name = [Identifier("i8"), Identifier("i16")],
            value = [Identifier("int8"), Identifier("int16")]
        )
    )

def test_if_statement():
    assert parse("""\
        if true { body }
    """) == Program(
        If(
            cond = Boolean(True),
            body = Body(Identifier("body"))
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
    """) == Program(
        If(
            cond = Boolean(True),
            body = Body(Identifier("body")),
            else_ = Else(
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
    """) == Program(
        If(
            cond = Boolean(True),
            body = Body(Identifier("if_body")),
            else_if = [
                ElseIf(
                    cond = Boolean(False),
                    body = Body(Identifier("else_if_body"))
                ),
                ElseIf(
                    cond = Boolean(True),
                    body = Body(Identifier("else_if_body"))
                )
            ],
            else_ = Else(
                body = Body(Identifier("else_body"))
            )
        )
    )

def test_static_if():
    assert parse("""\
        #if true {} else if false {} else {}
    """) == Program(
        StaticIf(
            cond = Boolean(True),
            body = EmptyBody,
            else_if = [
                ElseIf(cond = Boolean(False), body = EmptyBody)
            ],
            else_ = Else(body = EmptyBody)
        )
    )

def test_switch():
    assert parse("""\
        switch foo {
            case 1: noop
            case 2, 3: noop
            case:
                noop
        }
    """) == Program(
        Switch(
            value = Identifier("foo"),
            body = Body(
                Case(value = [Integer(1)], statement = Identifier("noop")),
                Case(value = [Integer(2), Integer(3)], statement = Identifier("noop")),
                Case(statement = Identifier("noop"))
            )
        )
    )

def test_loop():
    assert parse("""\
        loop { continue; forever }
    """) == Program(
        While(
            body = Body(
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
    """) == Program(
        While(
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
    """) == Program(
        ast("var i = 0"),
        For(
            iterator = In(
                left = [IdAssign(Identifier("i"))], 
                right = [Range(from_ = Integer(1), to = Integer(20))]
            ),
            body = Body(
                None, # Empty line (Comment)
                ast("print(\"Hello World\")")
            )
        ),
        ast("print(i)")
    )

def test_for_multiple():
    assert parse("""\
        for var e in array1, array2 { }
    """) == Program(
        For(
            iterator = In(
                keyword = "var",
                left = [IdDecl(name = Identifier("e"))],
                right = [Identifier("array1"), Identifier("array2")]
            ),
            body = EmptyBody
        )
    )

def test_pragma():
    assert parse("#pragma") == Program(Pragma(name = "#pragma"))
    assert parse("##pragma") == Program(Pragma(name = "##pragma"))

    assertFailedParse("###pragma")
    
def test_pragma_args():
    assert parse("#pragma(arg1, name = arg2)") == Program(
        Pragma(
            name = "#pragma",
            args = [
                CallArg(value = Identifier("arg1")),
                CallArg(name = Identifier("name"), value = Identifier("arg2"))
            ]
        )
    )

def test_label():
    assert parse("""\
        label a:
            some_code
            let a: int
        label b:
            other_code
    """) == Program(
        Label(name = Identifier("a"), statement = Identifier("some_code")),
        ast("let a: int"),
        Label(name = Identifier("b"), statement = Identifier("other_code"))
    )

def test_goto():
    assert parse("""\
        label inf_loop: 
            go_to inf_loop
    """) == Program(
        Label(
            name = Identifier("inf_loop"),
            statement = Goto(Identifier("inf_loop"))
        )
    )

def test_import():
    assert parse("""\
        import memory as mem,
            daki as makura,
            the_last_unicorn
    """) == Program(Import(
        share = Share.No,
        modules = [
            ImportModule(
                name = Identifier("memory"),
                alias = Identifier("mem")
            ),
            ImportModule(
                name = Identifier("daki"),
                alias = Identifier("makura")
            ),
            ImportModule(
                name = Identifier("the_last_unicorn")
            )
        ]
    ))

def test_import_export():
    assert parse("""\
        export import memory as mem
    """) == Program(Import(
        share = Share.Export,
        modules = [ImportModule(
            name = Identifier("memory"),
            alias = Identifier("mem")
        )]
    ))