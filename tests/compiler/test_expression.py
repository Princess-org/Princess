from ctypes import *
from tests import eval_expr, eval, skip

def test_arithmetic():
    assert eval_expr("1 + 2 - 1") == c_long(2)
    assert eval_expr("2 * 4 - 1") == c_long(7)
    assert eval_expr("2 * (4 - 1)") == c_long(6)

def test_bitwise():
    assert eval_expr("0b110 & 0b010") == c_long(0b010)
    assert eval_expr("0b110 | 0b001") == c_long(0b111)
    assert eval_expr("0b100 ^ 0b111") == c_long(0b011)
    assert eval_expr("~0") == c_long(-1)

def test_logical():
    assert eval_expr("true or true and false") == c_bool(True)
    assert eval_expr("not false") == c_bool(True)

def test_compare():
    assert eval_expr("1 > 0") == c_bool(True)
    assert eval_expr("20 > 5 > 2 > 1") == c_bool(True)

def test_cast():
    assert eval_expr("1!byte") == c_byte(1)
    assert eval_expr("1000!ubyte") == c_ubyte(232) # Overflow

def test_sign_conv():
    assert eval_expr("10!uint * -5") == c_long(-50)

def test_array_access():
    assert eval_expr("[1, 2, 3, 4][1]") == c_long(2)
    assert eval_expr("[1, 1.5, -3][2]") == c_double(-3)

def test_size_of():
    assert eval_expr("size_of int")             == c_size_t(sizeof(c_long))
    assert eval_expr("size_of *int")            == c_size_t(sizeof(POINTER(c_long)))
    assert eval_expr("size_of type struct { }") == c_size_t(0) # TODO This should be 1, insert dummy field, not sure why type is required here
    assert eval_expr("size_of 1 + 1")           == c_size_t(sizeof(c_long))
    assert eval_expr("size_of (1)")             == c_size_t(sizeof(c_long))

def test_size_of_complex():
    class T(Structure):
        _fields_ = [("a", c_long), ("b", c_byte)]
    
    prog = """\
        type T = struct {
            a: int
            b: byte
        }
        var arr: [5 T]

        return size_of T, size_of arr[0], size_of arr
    """
    
    size_of_t = sizeof(T)
    assert eval(prog) == (c_size_t(size_of_t), c_size_t(size_of_t), c_size_t(5 * size_of_t))