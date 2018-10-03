import sys
from ctypes import *
from pytest import raises

from princess.env import Stack, Environment, StackOverflow, StackUnderflow


def test_basic():
    stack = Stack(sizeof(c_int) * 2) # Stack for two integers

    stack.push(c_int(42))
    stack.push(c_int(-10))

    with raises(StackOverflow):
        stack.push(c_int(10))

    assert stack.pop(c_int).value == -10
    assert stack.pop(c_int).value == 42

    with raises(StackUnderflow):
        stack.pop(c_int)

def test_type_conv():
    stack = Stack(sizeof(c_uint16))
    stack.push(c_uint16(0b1010101011111111))

    assert stack.pop(c_uint8).value == (0b10101010 if sys.byteorder == 'little' else 0b11111111)
    assert stack.pop(c_uint8).value == (0b11111111 if sys.byteorder == 'little' else 0b10101010)

    assert stack.ptr == 0

def test_stack_frame():
    env = Environment(Stack(128 * 1000))
    env.push_frame(c_int, c_bool, c_float)
    env.set_local(0, c_int(20))
    env.set_local(1, c_bool(True))
    env.set_local(2, c_float(12.42))

    env.push_frame(c_byte * 20, c_double)
    env.pop_frame()

    assert env.get_local(0).value == 20
    assert env.get_local(1).value == True
    assert env.get_local(2).value == c_float(12.42).value

    env.pop_frame()
    assert env.stack.ptr == 0