""" This file gets imported by every output file """

import os, operator, itertools
from ctypes import *
from ctypes import _SimpleCData
from princess import compiler

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
libc.memcpy.argtypes = [c_void_p, c_void_p, c_size_t]
libc.memcpy.restype = None
libc.wcscat.argtypes = [c_wchar_p, c_wchar_p]
libc.wcscat.restype = c_wchar_p

class Environment:
    def __init__(self):
        self.result = None # Return value of the program

def p_string_value(v):
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

def p_struct_type(fields):
    class StructType(compiler.StructT):
        _fields_ = fields
    return StructType

def p_union_type(fields):
    class UnionType(compiler.UnionT):
        _fields_ =  fields
    return UnionType

class PEnum(object):
	def __init__(self, *args, **kwargs):
		for arg in args:
			self.__dict__.update(arg)

		self.__dict__.update(kwargs)

	def __getitem__(self, name):
		return self.__dict__.get(name, None)

	def __setitem__(self, name, val):
		return self.__dict__.__setitem__(name, val)

	def __delitem__(self, name):
		if name in self.__dict__:
			del self.__dict__[name]

	def __getattr__(self, name):
		return self.__getitem__(name)

	def __setattr__(self, name, val):
		return self.__setitem__(name, val)

	def __delattr__(self, name):
		return self.__delitem__(name)

	def __iter__(self):
		return self.__dict__.__iter__()

	def __repr__(self):
		return self.__dict__.__repr__()

	def __str__(self):
		return self.__dict__.__str__()

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

def p_call(fun, *args):
    if args:
        return fun(*(p_copy(v, type(v)) for v in args))
    else:
        return fun()

def p_cast(_from, to):
    if isinstance(to, tuple):
        return tuple(p_cast(f, t) for f, t in zip(_from, to))
    else:
        if isinstance(_from, to): 
            return _from
        elif compiler.is_pointer(to):
            return cast(_from, to)
        else: return to(_from.value)

def p_copy(v, tpe):
    if isinstance(v, type):
        return v
    if compiler.is_pointer(tpe):
        return cast(v, tpe)
    elif compiler.is_array(tpe) or compiler.is_struct(tpe):
        if v:
            copy = tpe()
            assert sizeof(v) == sizeof(copy) # Sanity check
            libc.memcpy(cast(pointer(copy), c_void_p), cast(pointer(v), c_void_p), sizeof(v))
            return copy
        return tpe()
    else:
        return tpe(v.value) if v else tpe()

# unpacks single values
def p_return(values):
    if len(values) == 1:
        return values[0]
    return values

def p_declare(values, types):
    if isinstance(types, tuple):
        return p_return(tuple(p_declare(v, t) for v, t in itertools.zip_longest(values, types)))
    else:
        return p_copy(values, types) if types else values.value

def p_assign(left, values):
    for l, v in zip(left, values):
        tpe = type(l)
        if compiler.is_struct(tpe) or compiler.is_array(tpe):
            assert sizeof(l) == sizeof(v) # Sanity check
            libc.memcpy(cast(pointer(l), c_void_p), cast(pointer(v), c_void_p), sizeof(v))
        else:
            l.value = v.value

def p_eq(l, r):
    if isinstance(l, tuple):
        for l, r in zip(l, r):
            if not p_eq(l, r): return False
        return True

    if type(l) != type(r): return False

    if isinstance(l, Array):
        return list(l) == list(r)
    else:
        return l.value == r.value