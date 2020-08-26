from princess.types import *

def test_simple_type():
    assert int16.to_typestring("foo") == "int16 foo"

def test_pointer_type():
    assert Pointer(int32).to_typestring("foo") == "int32 *foo"

def test_array_type():
    assert Array(int32).to_typestring("foo") == "int32 foo[]"

def test_pointer_to_array():
    assert Array(Pointer(int32)).to_typestring("foo") == "int32 *foo[]"

def test_pointer_to_static_array():
    assert Array(5, int32).to_typestring("foo") == "int32 foo[5]"

def test_nested_pointer_to_array():
    assert (Pointer(Array(Pointer(Array(int32)))).to_typestring("foo")
        == "int32 **foo[][]") # TODO Nested types with proper brackets

def test_pointer_to_fucttion():
    assert (Function(int32, (bool, bool)).to_typestring("foo") 
        == "int32 (*foo)(bool, bool)")

def test_nested_types():
    assert (Function(int32, (Function(int32, (Pointer(bool), bool)), int32)).to_typestring("foo")
        == "int32 (*foo)(int32 (*)(bool *, bool), int32)")