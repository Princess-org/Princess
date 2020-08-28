from princess.types import to_typestring, Function
from ctypes import *

def test_simple_type():
    assert to_typestring(c_short, "foo") == "short foo"

def test_pointer_type():
    assert to_typestring(POINTER(c_int), "foo") == "int *foo"

def test_array_type():
    assert to_typestring(c_int * 10, "foo") == "int foo[10]"

def test_pointer_to_array():
    assert to_typestring(POINTER(c_int) * 10, "foo") == "int *foo[10]"

def test_nested_pointer_to_array():
    assert (to_typestring(POINTER((POINTER(c_int) * 10)) * 10, "foo")
        == "int **foo[10][10]") # TODO Nested types with proper brackets

def test_pointer_to_fucttion():
    assert (to_typestring(Function(c_int, (c_bool, c_bool)), "foo") 
        == "int (*foo)(bool, bool)")

def test_nested_types():
    assert (to_typestring(Function(c_int, (Function(c_int, (POINTER(c_bool), c_bool)), c_int)), "foo")
        == "int (*foo)(int (*)(bool *, bool), int)")