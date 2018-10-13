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

class Environment:
    def __init__(self):
        self.result = None # Return value of the program

def string_value(v):
    """ returns the string value of v, v is a wstring buffer.
        calling v.value is not sufficient as it cuts off
        at the first 0 terminator
    """
    return wstring_at(byref(v), len(v) - 1)

def p_range(_from, to, step):
    _from = _from.value
    to = to.value + 1

    if not step:
        if to <= _from:
            step = -1
        else: step = 1
    else:
        step = step.value
    
    for x in range(_from, to, step):
        yield c_long(x)

def eq(l, r):
    if isinstance(l, tuple):
        for l, r in zip(l, r):
            if not eq(l, r): return False
        return True

    return type(l) == type(r) and l.value == r.value