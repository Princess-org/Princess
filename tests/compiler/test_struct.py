from ctypes import *
from tests import eval_expr, eval, eval_globals, skip
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

def test_struct_initializer():
    prog = """\
        type S = struct { v: int; v2: float }
        let s: S = {20, v2 = -2.5}
        return s.v, s.v2
    """
    assert p_eq(eval(prog), (c_long(20), c_float(-2.5)))

def test_struct_initializer_cast():
    prog = """\
        type S = struct { v: int }
        let s = {1} !S
        s = {1 + s.v} !S
        let b = ({5}!S).v
        return s.v, b
    """
    assert p_eq(eval(prog), (c_long(2), c_long(5)))

def test_struct_pointer():
    prog = """\
        let a: struct { v: int } = {1}
        let b = *a
        a = {5 + a.v}

        return (@b).v
    """
    assert p_eq(eval(prog), (c_long(6)))

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

@skip("not implemented")
def test_nested_struct():
    prog = """\
        // Using a builtin name
        type Structure = struct {
            a: int
            b: struct {
                c: int
                d: int
            }
        }
        var s: Structure = {0, {0, 20}}
        return s.b.c
    """
    assert p_eq(eval(prog), c_long(20))

def test_struct_as_parameter():
    # TODO anonymous struct as function parameter
    prog = """\
        type T = struct { i: int }
        def with_struct(a: T) {
            return a.i   
        }

        return with_struct({1})
    """
    assert p_eq(eval(prog), c_long(1))

def test_struct_reassignment():
    prog = """\
        type T = struct { v: int }
        var t: T = {0}
        t = {5}
        return t.v
    """
    assert p_eq(eval(prog), c_long(5))

def test_union():
    prog = """\
        type U = struct #union {
            i: uint
            s: ushort
            b: ubyte
        }

        let u: U = { i = 0xAABBCCDD }
        return u.i, u.s, u.b
    """
    assert p_eq(eval(prog), (c_ulong(0xAABBCCDD), c_ushort(0xCCDD), c_ubyte(0xDD)))