from princess import types

def test_simple_type():
    assert types.short.to_typestring("foo") == "short foo"

def test_pointer_type():
    assert types.Pointer(types.int).to_typestring("foo") == "int *foo"

def test_array_type():
    assert types.Array(types.int, 10).to_typestring("foo") == "int foo[10]"

def test_pointer_to_array():
    assert types.Pointer(types.Array(types.int, 10)).to_typestring("foo") == "int *foo[10]"


def test_pointer_to_fucttion():
    assert (types.Function(types.int, (types.bool, types.bool)).to_typestring("foo") 
        == "int (*foo)(bool, bool)")

def test_nested_types():
    assert (types.Function(types.int, 
        (types.Function(types.int, (types.Pointer(types.bool), types.bool)), types.int)).to_typestring("foo")
        == "int (*foo)(int (*)(bool *, bool), int)")