from tests import *

def test_pointer_simple():
    assert parse("type *") == parse("type *var") == Program(
        Type(Pointer())
    )
    assert parse("type &") == parse("type &var") == Program(
        Type(Reference())
    )

    assert parse("type *int") == parse("type *var int") == Program(
        Type(Pointer(Identifier("int")))
    )
    assert parse("type &int") == parse("type &var int") == Program(
        Type(Reference(Identifier("int")))
    )

    assert parse("type *let int") == Program(
        Type(Pointer(Identifier("int"), "let"))
    )
    assert parse("type &let int") == Program(
        Type(Reference(Identifier("int"), "let"))
    )

    assert parse("type **int") == Program(
        Type(Pointer(Pointer(Identifier("int"))))
    )

def test_array_simple():
    assert parse("type []") == parse("type [var]") == Program(
        Type(ArrayT())
    )
    assert parse("type [int]") == parse("type [var int]") == Program(
        Type(ArrayT(Identifier("int")))
    )
    assert parse("type [3 let int]") == Program(
        Type(ArrayT(n = Integer(3), keyword = "let", type = Identifier("int")))
    )
    assert parse("type [3 [10 int]]") == Program(
        Type(ArrayT(n = Integer(3), type = ArrayT(n = Integer(10), type = Identifier("int"))))
    )

def test_array_expr():
    """ Tests array types that take type expressions """
    
    assert parse("type [3*size let gen_type(int)]") == Program(
        Type(ArrayT(
            n = ast("3 * size"),
            keyword = "let",
            type = ast("gen_type(int)")
        ))
    )

def test_function():
    assert parse("type (->)") == parse("type ->") == parse("type () -> ()") == Program(
        Type(FunctionT())
    )

    assert parse("type ->int") == parse("type (-> int)") == parse("type -> (int)") == Program(
        Type(FunctionT(right = [Identifier("int")]))
    )

    assert parse("type T -> A") == Program(
        Type(FunctionT(
            left = [Identifier("T")],
            right = [Identifier("A")]
        ))
    )

def test_function_complex():
    assert parse("type *int -> &int") == Program(
        Type(FunctionT(
            left = [Pointer(Identifier("int"))],
            right = [Reference(Identifier("int"))]
        ))
    )

    assert parse("type [T] -> **int") == Program(
        Type(FunctionT(
            left = [ArrayT(Identifier("T"))],
            right = [Pointer(Pointer(Identifier("int")))]
        ))
    )

def test_function_multiple():
    assert parse("type (A, B) -> (C, D)") == Program(
        Type(FunctionT(
            left = [Identifier("A"), Identifier("B")],
            right = [Identifier("C"), Identifier("D")]
        ))
    )

def test_function_chain():
    assert parse("type A -> B -> C") == Program(
        Type(FunctionT(
            left = [Identifier("A")],
            right = [
                FunctionT(
                    left = [Identifier("B")],
                    right = [Identifier("C")]
                )
            ]
        ))
    )

def test_function_var():
    assert parse("let a: -> = *some_fun") == Program(
        Let(
            left = [IdDecl(name = Identifier("a"), type = FunctionT())],
            right = [ast("*some_fun")]
        )
    )