from ctypes import *
from tests import eval_expr, eval, eval_globals
from princess.env import p_eq

def test_struct_basic():
    prog = """\
        type Point = struct {
            x: int
            y: int
        }

        var a: Point
        a.x, a.y = 20, 30

        return a.x, a.y
    """
    assert p_eq(eval(prog), (c_long(20), c_long(30)))

def test_pointer_to_struct_member():
    prog = """\
        type Point = struct {
            x: int; y: int
        }

        var a: Point

        def inc_by_one(v: *int) {
            @v = @v + 1
        }

        inc_by_one(*a.x)
        inc_by_one(*a.y)

        return a.x, a.y
    """
    assert p_eq(eval(prog), (c_long(1), c_long(1)))

def test_struct_as_parameter():
    prog = """\
        def with_struct(a: struct { i: int }) {
            print(a.i)    
        }
    """
    eval(prog)
