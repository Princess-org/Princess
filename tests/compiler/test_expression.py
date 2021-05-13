import ctypes
from tests import eval_expr, eval, skip

def test_arithmetic():
    assert eval_expr("1 + 2 - 1") == 2
    assert eval_expr("2 * 4 - 1") == 7
    assert eval_expr("2 * (4 - 1)") == 6

def test_bitwise():
    assert eval_expr("0b110 & 0b010") == 0b010
    assert eval_expr("0b110 | 0b001") == 0b111
    assert eval_expr("0b100 ^ 0b111") == 0b011
    assert eval_expr("~0") == -1

def test_logical():
    assert eval_expr("true or true and false") == True
    assert eval_expr("not false") == True

def test_compare():
    assert eval_expr("1 > 0") == True
    #assert eval_expr("20 > 5 > 2 > 1") == True TODO Not supported

def test_cast():
    assert eval_expr("1!byte") == 1
    assert eval_expr("1000!ubyte") == 232 # Overflow

def test_sign_conv():
    assert eval_expr("10!uint * -5") == -50

def test_array_access():
    assert eval_expr("[1, 2, 3, 4][1]") == 2
    assert eval_expr("[1, 1.5, -3][2]") == -3

def test_size_of():
    assert eval_expr("size_of int")             == ctypes.sizeof(ctypes.c_int)
    assert eval_expr("size_of *int")            == ctypes.sizeof(ctypes.POINTER(ctypes.c_int))
    assert eval_expr("size_of type struct { }") == 0 # TODO This should be 1, insert dummy field, not sure why type is required here
    assert eval_expr("size_of 1 + 1")           == ctypes.sizeof(ctypes.c_int)
    assert eval_expr("size_of (1)")             == ctypes.sizeof(ctypes.c_int)

def test_align_of():
    assert eval_expr("align_of int")             == ctypes.alignment(ctypes.c_int)
    assert eval_expr("align_of *int")            == ctypes.alignment(ctypes.POINTER(ctypes.c_int))
    assert eval_expr("align_of type struct { }") == 1
    assert eval_expr("align_of 1 + 1")           == ctypes.alignment(ctypes.c_int)
    assert eval_expr("align_of (1)")             == ctypes.alignment(ctypes.c_int)

@skip("Array type")
def test_size_of_complex():
    class T(ctypes.Structure):
        _fields_ = [("a", ctypes.c_int), ("b", ctypes.c_byte)]
    
    prog = """\
        type T = struct {
            a: int
            b: byte
        }
        var arr: [5 T]

        return size_of T, size_of arr[0], size_of arr
    """
    
    size_of_t = ctypes.sizeof(T)
    assert eval(prog) == (size_of_t, size_of_t, 5 * size_of_t)