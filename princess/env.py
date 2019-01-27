""" This file gets imported by every output file """

import os, operator, itertools
from ctypes import *
from ctypes import _SimpleCData

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
    """ returns the string value of v
        calling v.value is not sufficient as it cuts off
        at the first 0 terminator
    """

    if isinstance(v, _SimpleCData):
        return str(v.value)
    elif isinstance(v, Array):
        if v._type_ is c_wchar:
            return wstring_at(byref(v), len(v) - 1)
        return dir(v)
    else:
        return str(v)

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

    if type(l) != type(r): return False

    if isinstance(l, Array):
        return list(l) == list(r)
    else:
        return l.value == r.value