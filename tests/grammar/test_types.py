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