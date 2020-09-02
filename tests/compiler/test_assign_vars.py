from pytest import raises
from tests import eval_expr, eval, skip
from princess.compiler import CompileError

def test_let_simple():
    prog = """\
        let a = 10 * 2
        return a
    """
    assert eval(prog) == 20

@skip("Not implemented")
def test_let_multiple_assign():
    prog = """\
        let a, b = 1, 2
        return a, b
    """
    assert eval(prog) == (1, 2)

def test_assign():
    prog = """\
        var a = 0
        a = 20
        a = a + 5
        return a
    """
    assert eval(prog) == 25

@skip("Not implemented")
def test_assign_multiple():
    prog = """\
        var a, b, c = 0, 0, 0
        a, b, c = 10, 20, 30
        return a, b, c
    """
    assert eval(prog) == (10, 20, 30)

@skip("Not implemented")
def test_assign_multiple_call():
    prog = """\
        def test -> int, double, long {
            return 1, 2.5, -2
        }
        let c, b, a = test()
        return a, b, c
    """
    assert eval(prog) == (-2, 2.5, 1)

@skip("Not implemented")
def test_assign_and_let():
    prog = """\
        var a = 0
        let (a), b = 1, 2
        return a, b
    """
    assert eval(prog) == (1, 2)

def test_types():
    prog = """\
        var a: int = 20
        var b: byte = a !byte
        var c: byte = 20
        var d: byte = 30
        return a, b, c, d
    """
    assert eval(prog) == (20, 20, 20, 30)

@skip("Not implemented")
def test_declare_no_assign():
    eval("var a: int")

    with raises(CompileError, match = "Couldn't infer type for var") as e:
        eval("var a")
    with raises(CompileError, match = "Unbalanced assignment for let") as e:
        eval("let b: int")
