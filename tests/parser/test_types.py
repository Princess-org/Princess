from tests import parse, ast, assertFailedParse
from princess.ast import *

def test_pointer_simple():
    assert parse("type *") == parse("type *var") == Program(
        Pointer()
    )
    assert parse("type &") == parse("type &var") == Program(
        Reference()
    )

    assert parse("type *int") == parse("type *var int") == Program(
        Pointer(Identifier("int"))
    )
    assert parse("type &int") == parse("type &var int") == Program(
        Reference(Identifier("int"))
    )

    assert parse("type *let int") == Program(
        Pointer(Identifier("int"), "let")
    )
    assert parse("type &let int") == Program(
        Reference(Identifier("int"), "let")
    )

    assert parse("type **int") == Program(
        Pointer(Pointer(Identifier("int")))
    )

def test_array_simple():
    assert parse("type []") == parse("type [var]") == Program(
        ArrayT()
    )
    assert parse("type [int]") == parse("type [var int]") == Program(
        ArrayT(Identifier("int"))
    )
    assert parse("type [3 let int]") == Program(
        ArrayT(n = Integer(3), keyword = "let", type = Identifier("int"))
    )
    assert parse("type [3 [10 int]]") == Program(
        ArrayT(n = Integer(3), type = ArrayT(n = Integer(10), type = Identifier("int")))
    )

def test_array_expr():
    """ Tests array types that take type expressions """
    
    assert parse("type [3*size let gen_type(int)]") == Program(
        ArrayT(
            n = ast("3 * size"),
            keyword = "let",
            type = ast("gen_type(int)")
        )
    )

def test_function():
    assert parse("type (->)") == parse("type ->") == parse("type () -> ()") == Program(
        FunctionT()
    )

    assert parse("type ->int") == parse("type (-> int)") == parse("type -> (int)") == Program(
        FunctionT(right = [Identifier("int")])
    )

    assert parse("type T -> A") == Program(
        FunctionT(
            left = [Identifier("T")],
            right = [Identifier("A")]
        )
    )

def test_function_complex():
    assert parse("type *int -> &int") == Program(
        FunctionT(
            left = [Pointer(Identifier("int"))],
            right = [Reference(Identifier("int"))]
        )
    )

    assert parse("type [T] -> **int") == Program(
        FunctionT(
            left = [ArrayT(Identifier("T"))],
            right = [Pointer(Pointer(Identifier("int")))]
        )
    )

def test_function_multiple():
    assert parse("type (A, B) -> (C, D)") == Program(
        FunctionT(
            left = [Identifier("A"), Identifier("B")],
            right = [Identifier("C"), Identifier("D")]
        )
    )

def test_function_chain():
    assert parse("type A -> B -> C") == Program(
        FunctionT(
            left = [Identifier("A")],
            right = [
                FunctionT(
                    left = [Identifier("B")],
                    right = [Identifier("C")]
                )
            ]
        )
    )

def test_function_var():
    assert parse("let a: -> = *some_fun") == Program(
        Let(
            left = [IdDecl(name = Identifier("a"), type = FunctionT())],
            right = [ast("*some_fun")]
        )
    )

def test_unsigned():
    assert parse("type unsigned int") == Program(
        Unsigned(Identifier("int"))
    )

def test_word():
    assert parse("type word(16)") == Program(
        Word(Integer(16))
    )
    assertFailedParse("type word(12.4)")