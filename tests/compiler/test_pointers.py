from ctypes import *
from tests import eval_expr, eval, skip
from pytest import raises
from princess.env import p_eq

def test_pointer_basic():
    prog = """\
        var a = 10
        let b = *a
        @b = 20
        a = a + 10
        return a, @b
    """
    assert p_eq(eval(prog), (c_long(30), c_long(30)))

def test_pointer_to_pointer():
    prog = """\
        var a = 10
        var b = *a
        var c = *b
        return @@c
    """
    assert p_eq(eval(prog), c_long(10))

def test_pass_pointer_to_function():
    prog = """\
        def inc_by_one(a: *int) {
            @a = @a + 1    
        }

        var a = 20
        inc_by_one(*a)
        return a
    """
    assert p_eq(eval(prog), c_long(21))
    

