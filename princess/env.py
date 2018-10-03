import os, operator, itertools
from ctypes import *

if os.name == "nt":
    libc = cdll.LoadLibrary("msvcrt.dll")
else:
    libc = cdll.LoadLibrary("libc.so.6")

# type information
libc.calloc.argtypes = [c_size_t, c_size_t]
libc.calloc.restype = c_void_p
libc.malloc.argtypes = [c_size_t]
libc.malloc.restype = c_void_p
libc.free.argtypes = [c_void_p]
libc.free.restype = None

class StackOverflow(Exception): pass
class StackUnderflow(Exception): pass

class Stack:
    def __init__(self, size):
        self.ptr = 0
        self.size = size
        self.buffer = libc.calloc(self.size, sizeof(c_byte))
        self.frames = []

    def __del__(self):
        libc.free(self.buffer)

    def allocate(self, n):  # Allocates raw memory
        if self.ptr + n > self.size:
            raise StackOverflow()
        ptr = self.ptr
        self.ptr += n
        return ptr

    def free(self, n):  # Frees stack space
        if self.ptr - n < 0:
            raise StackUnderflow()
        self.ptr -= n

    def push(self, value):  # Returns a pointer to the value on the stack

        if self.ptr + sizeof(value) > self.size:
            raise StackOverflow()
        slot = cast(self.buffer + self.ptr, POINTER(type(value)))
        slot[0] = value
        self.ptr += sizeof(value)

        return slot

    def pop(self, tpe):
        value = self.peek(tpe).contents
        self.ptr -= sizeof(tpe)
        return value
        
    def peek(self, tpe, offset = None): # Returns a pointer
        offset = self.ptr - (sizeof(tpe) if offset is None else offset)
        if offset < 0:
            raise StackUnderflow()

        slot = cast(self.buffer + offset, POINTER(tpe))
        return slot

class Environment:
    def __init__(self, stack: Stack):
        self.stack = stack
        self.stack_frames = []
        self.result = None # Return value of the program
    
    def push(self, value):
        return self.stack.push(value)
    
    def pop(self, tpe):
        return self.stack.pop(tpe)

    @property
    def frame(self):
        return self.stack_frames[-1]

    def get_local(self, i):
        Frame = self.frame
        tpe = Frame.types[i]
        field = Frame.field(i)
        return self.stack.peek(tpe, sizeof(Frame) - field.offset).contents

    def set_local(self, i, value):
        Frame = self.frame
        field = Frame.field(i)
        self.stack.peek(type(value), sizeof(Frame) - field.offset)[0] = value

    def get_env(self, i):
        Frame = self.frame
        return Frame.env[i].contents
    
    def set_env(self, i, value):
        Frame = self.frame
        Frame.env[i][0] = value

    def push_frame(self, *args, _env = []):  # args is a list of types, env is a list of pointers

        class Frame(Structure):
            _fields_ = [(str(i), v) for (i, v) in enumerate(args)]
            types = args
            env = _env

            @classmethod
            def field(cls, i):
                return getattr(cls, str(i))

        self.stack_frames.append(Frame)
        self.stack.allocate(sizeof(Frame))

    def pop_frame(self):
        Frame = self.stack_frames.pop()
        self.stack.free(sizeof(Frame))


def string_value(v):
    """ returns the string value of v, v is a wstring buffer.
        calling v.value is not sufficient as it cuts off
        at the first 0 terminator
    """
    return wstring_at(byref(v), len(v) - 1)

# Add operators to c types

def is_int(t):
    return t in [c_int8, c_int16, c_int32, c_int64] or is_unsigned(t)
def is_unsigned(t):
    return t in [c_uint8, c_uint16, c_uint32, c_uint64]
def is_float(t):
    return t in [c_float, c_double]
def signed(t):
    if is_unsigned(t):
        return {c_uint8: c_int8, c_uint16: c_int16, c_uint32: c_int32, c_uint64: c_int64}[t]
    return t

class TypeError(Exception): pass

def common_type(a, b, sign_convert = False):
    """ Finds the common type of a and b, implicit up conversion """
    if a == b: return a
    elif is_int(a) and is_int(b):
        # integer <-> integer conversion
        result = b if sizeof(a) < sizeof(b) else a
        # check sign, unsigned -> signed if signs differ
        if sign_convert and is_unsigned(a) != is_unsigned(b):
            result = signed(result)
    elif is_float(a) and is_float(b):
        result = b if sizeof(a) < sizeof(b) else a
    elif is_float(a) and is_int(b):
        result = a
    elif is_int(a) and is_float(b):
        result = b
    else: # Sanity check
        assert False

    return result

def op_arithmetic(operator):
    def _operator(l, r):
        restype = common_type(type(l), type(r), sign_convert = True)
        v = operator(l.value, r.value)
        if is_int(restype):
            v = int(v)
        return restype(v)
    return _operator

def op_shift(operator): # Shift always keeps the type of the first argument, they both need to be ints
    def _operator(l, r):
        assert is_int(type(l)) and is_int(type(r))
        return type(l)(operator(l.value, r.value))
    return _operator

def op_bitwise(operator): # Bitwise operators only work on ints
    def _operator(l, r):
        assert is_int(type(l)) and is_int(type(r))
        restype = common_type(type(l), type(r), sign_convert = False)
        return restype(operator(l.value, r.value))
    return _operator

def op_compare(operator):
    def _operator(l, r):
        return c_bool(operator(l.value, r.value))
    return _operator
    
def op_invert(v):
    assert is_int(type(v))
    return type(v)(~v.value)

def op_negate(v):
    return type(v)(-v.value)

def op_bool(v):
    return bool(v.value)

def op_bool_eq(l, r):
    assert type(l) == type(r) == c_bool
    return l.value == r.value

def _convert(f):
    return lambda s: (s, f(getattr(operator, s)))

arithmetic = list(map(_convert(op_arithmetic), ["__add__", "__sub__", "__mul__", "__mod__", "__truediv__"]))
shift      = list(map(_convert(op_shift), ["__lshift__", "__rshift__"]))
bitwise    = list(map(_convert(op_bitwise), ["__and__", "__or__", "__xor__"]))
compare    = list(map(_convert(op_compare), ["__gt__", "__lt__", "__eq__"]))
all_ops    = arithmetic + shift + bitwise + compare

for t in [c_int8, c_uint8, c_int16, c_uint16, c_int32, c_uint32, c_int64, c_uint64, c_float, c_double]:
    for (op, f) in all_ops:
        setattr(t, op, f)

    t.__invert__ = op_invert
    t.__neg__ = op_negate
    t.__bool__ = op_bool

c_bool.__bool__ = op_bool
c_bool.__eq__ = op_bool_eq

for t in [c_char, c_wchar]:
    for (op, f) in compare:
        setattr(t, op, f)