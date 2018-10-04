from ctypes import *
import itertools
from pytest import raises 

# import statement gets the hooks in
import princess.env

signed_types = [c_int8, c_int16, c_int32, c_int64]
unsigned_types = [c_uint8, c_uint16, c_uint32, c_uint64]
int_types = signed_types + unsigned_types
float_types = [c_float, c_double]
all_types = int_types + float_types

def test_equality():
    for a, b in itertools.combinations(all_types, 2):
        assert a(20) == b(20)
        assert a(10) != b(20)
        assert a(20) > b(10)

def test_arithmetic():
    for a, b in itertools.combinations(all_types, 2): 
        assert a(10) + b(20) == c_int(30)
        assert a(40) - b(20) == c_int(20)
        assert a(4) * b(2) == c_int(8)
        assert a(10) / b(2) == c_int(5)
        assert a(10) % b(2) == c_int(0)

def test_sign_conversion():
    for a, b in itertools.product(signed_types, unsigned_types):
        assert type(a(0) + b(0)) in signed_types
        assert type(a(0) - b(0)) in signed_types
        assert type(a(0) * b(0)) in signed_types
        assert type(a(0) / b(1)) in signed_types
        assert type(a(0) % b(1)) in signed_types

def test_unary():
    assert ~c_int16(0b1010101011111111) == c_int16(0b0101010100000000)
    assert -c_int(20) == c_int(-20)

def test_binary():
    assert c_int32(0b10101010) ^ c_int32(0b01010101) == c_int32(0b11111111) 
    assert c_int8(0b01010101) ^ c_int16(0b1010101010101010) == c_int16(0b1010101011111111)
    assert c_uint64(0b1111111100000000111111110000000011111111000000001111111100000000) & \
                c_uint16(0b1111111111111111) == c_uint64(0b1111111100000000)
    assert c_uint8(0b10101010) | c_int8(0b01010101) == c_uint(0b11111111)

def test_binary_invalid():
    with raises(AssertionError):
        c_uint8(0) & c_double(10)
    with raises(AssertionError):
        c_uint8(0) & c_float(10)

def test_binary_sign():
    assert type(c_uint16(0) & c_int16(0)) == c_uint16
    assert type(c_int16(0) & c_uint16(0)) == c_int16

def test_char_eq():
    assert c_wchar("界") == c_wchar("界")
    assert c_wchar("A") != c_wchar("B")

def test_bool_eq():
    assert c_bool(True) == c_bool(True)
    assert c_bool(False) == c_bool(False)
    assert c_bool(True) != c_bool(False)