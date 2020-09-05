from tests import eval_expr, eval, skip
from pytest import raises

def test_pointer_basic():
    prog = """\
        var a = 10
        let b = *a
        @b = 20
        a = a + 10
        return a, @b
    """
    assert eval(prog) == (30, 30)

def test_pointer_to_pointer():
    prog = """\
        var a = 10
        var b = *a
        var c = *b
        return @@c
    """
    assert eval(prog) == 10

def test_pass_pointer_to_function():
    prog = """\
        def inc_by_one(a: *int) {
            @a = @a + 1    
        }

        var a = 20
        inc_by_one(*a)
        return a
    """
    assert eval(prog) == 21

def test_malloc_free():
    prog = """\
        var a = allocate(int)
        @a = 20
        let b = @a
        free(a)
        return b
    """
    assert eval(prog) == 20

def test_malloc_free_array():
    prog = """\
        // var a = allocate(char, 100)
        var a = "Free from System"
        return a
    """
    assert eval(prog) == b"Free from System"
    

