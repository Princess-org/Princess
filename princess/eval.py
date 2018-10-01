import operator, os
from ctypes import *
from tatsu.model import NodeWalker
from enum import Enum
from . import ast

if os.name == "nt":
    libc = cdll.LoadLibrary("msvcrt.dll")
else:
    libc = cdll.LoadLibrary("libc.so.6")

libc.calloc.restype = c_void_p
libc.malloc.restype = c_void_p

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
        value = self.peek(tpe, sizeof(tpe)).contents
        self.ptr -= sizeof(tpe)
        return value
        
    def peek(self, tpe, offset = 0): # Returns a pointer
        offset = self.ptr - offset
        if offset < 0:
            raise StackUnderflow()

        slot = cast(self.buffer + offset, POINTER(tpe))
        return slot

class Environment:
    def __init__(self, stack: Stack):
        self.stack = stack
        self.stack_frames = []
    
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
        self.stack.peek(type(value), sizeof(Frame) - field.offset).contents = value

    def get_env(self, i):
        Frame = self.frame
        Frame.env[i].contents
    
    def set_env(self, i, value):
        Frame = self.frame
        Frame.env[i].contents = value

    def push_frame(self, *args, env = []):  # args is a list of types, env is a list of pointers

        class Frame(Structure):
            _fields_ = [(str(i), v) for (i, v) in enumerate(args)]
            types = args
            env = env

            @classmethod
            def field(cls, i):
                return getattr(cls, str(i))

        self.stack_frames.append(Frame)
        self.stack.allocate(sizeof(Frame))

    def pop_frame(self):
        Frame = self.stack_frames.pop()
        self.stack.free(sizeof(Frame))

def binop(left, right, operator):
    return operator(left.value, right.value)

class Eval(NodeWalker):

    def __init__(self):
        self.env = Environment(Stack(128 * 1000)) # 128kb of stack size
    
    def walk_Add(self, node: ast.Add):
        return binop(self.walk(node.left), self.walk(node.right), operator.add)
    
    def walk_Mul(self, node: ast.Mul):
        return binop(self.walk(node.left), self.walk(node.right), operator.mul)

    def walk_Div(self, node: ast.Div):
        return binop(self.walk(node.left), self.walk(node.right), operator.truediv)
