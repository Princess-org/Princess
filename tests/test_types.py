from princess import types

def test_simple_type():
    assert types.short.to_typestring("foo") == "short foo"

def test_pointer_type():
    assert types.PointerT(types.int).to_typestring("foo") == "int *foo"

def test_array_type():
    assert types.ArrayT(types.int, 10).to_typestring("foo") == "int foo[10]"

def test_pointer_to_array():
    assert types.PointerT(types.ArrayT(types.int, 10)).to_typestring("foo") == "int *foo[10]"


def test_pointer_to_fuction():
    assert (types.FunctionT((types.int,), (types.bool, types.bool)).to_typestring("foo") 
        == "int (*foo)(bool, bool)")

def test_nested_types():
    assert (types.FunctionT((types.int,),
        (types.FunctionT((types.int,), (types.PointerT(types.bool), types.bool)), types.int)).to_typestring("foo")
        == "int (*foo)(int (*)(bool *, bool), int)")