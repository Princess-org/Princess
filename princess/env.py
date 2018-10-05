import os, operator, itertools
from ctypes import *
from princess.compiler import common_type, is_int

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

def eq(l, r):
    return type(l) == type(r) and l.value == r.value