from tests import *

def test_pointer_simple():
    assert parse("type *") == parse("type *var") == prog(
        node.Type(Pointer())
    )
    assert parse("type &") == parse("type *let") == prog(
        node.Type(Reference())
    )

    assert parse("type *int") == parse("type *var int") == prog(
        node.Type(Pointer(Identifier("int")))
    )
    assert parse("type &int") == parse("type *let int") == prog(
        node.Type(Reference(Identifier("int")))
    )

    assert parse("type **int") == prog(
        node.Type(Pointer(Pointer(Identifier("int"))))
    )

def test_array_simple():
    assert parse("type []") == parse("type [var]") == prog(
        node.Type(ArrayT())
    )
    assert parse("type [int]") == parse("type [var int]") == prog(
        node.Type(ArrayT(Identifier("int")))
    )
    assert parse("type [3 let int]") == prog(
        node.Type(ArrayT(n = Integer(3), keyword = "let", type = Identifier("int")))
    )
    assert parse("type [3 [10 int]]") == prog(
        node.Type(ArrayT(n = Integer(3), type = ArrayT(n = Integer(10), type = Identifier("int"))))
    )

def test_array_expr():
    """ Tests array types that take type expressions """
    
    assert parse("type [3*size let gen_type(int)]") == prog(
        node.Type(ArrayT(
            n = ast("3 * size"),
            keyword = "let",
            type = ast("gen_type(int)")
        ))
    )

def test_function():
    assert parse("type (->)") == parse("type ->") == parse("type () -> ()") == prog(
        node.Type(node.FunctionT())
    )

    assert parse("type ->int") == parse("type (-> int)") == parse("type -> (int)") == prog(
        node.Type(node.FunctionT(right = [Identifier("int")]))
    )

    assert parse("type T -> A") == prog(
        node.Type(node.FunctionT(
            left = [Identifier("T")],
            right = [Identifier("A")]
        ))
    )

def test_function_complex():
    assert parse("type *int -> &int") == prog(
        node.Type(node.FunctionT(
            left = [Pointer(Identifier("int"))],
            right = [Reference(Identifier("int"))]
        ))
    )

    assert parse("type [T] -> **int") == prog(
        node.Type(node.FunctionT(
            left = [ArrayT(Identifier("T"))],
            right = [Pointer(Pointer(Identifier("int")))]
        ))
    )

def test_function_multiple():
    assert parse("type (A, B) -> (C, D)") == prog(
        node.Type(node.FunctionT(
            left = [Identifier("A"), Identifier("B")],
            right = [Identifier("C"), Identifier("D")]
        ))
    )

def test_function_chain():
    assert parse("type A -> B -> C") == prog(
        node.Type(node.FunctionT(
            left = [Identifier("A")],
            right = [
                node.FunctionT(
                    left = [Identifier("B")],
                    right = [Identifier("C")]
                )
            ]
        ))
    )

def test_function_var():
    assert parse("let a: -> = *some_fun") == prog(
        Let(
            left = [node.IdDecl(name = Identifier("a"), type = node.FunctionT())],
            right = [ast("*some_fun")]
        )
    )