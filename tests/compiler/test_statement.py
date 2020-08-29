from tests import eval_expr, eval

def test_empty_program():
    prog = ""
    eval(prog)

def test_return():
    prog = """\
        return true
    """
    assert eval(prog) == True

def test_return_multiple():
    prog = """\
        return true, 5
    """
    assert eval(prog) == (True, 5)

def test_if_statement():
    prog = """\
        if 1 > 2 {
            return true
        }
        return false
    """
    assert eval(prog) == False

def test_if_statement_complex():
    prog = """\
        if false {
        } else if false {
        } else if true {
            return true
        } else { }
    """
    assert eval(prog) == True

def test_if_scoping():
    prog = """\
        var a = 20
        if true {
            if true {
                a = 42
            }
            var a = 40
            if true {
                a = 60
            }
        } else {
            var a = 50
        }
        return a
    """
    assert eval(prog) == 42

def test_for_loop_range():
    prog = """\
        var a = 0
        for var i in 1:20 {
            a = a + 1
        }
        return a
    """
    assert eval(prog) == 20

def test_while_loop():
    prog = """\
        var a = 10
        var b = 0
        while a > 0 { // TODO: Assign inside expression?
            b = b + 1
            a = a - 1
        }
        return b
    """
    assert eval(prog) == 10

def test_export():
    prog = """
        export var a, b = 20, 21
        export def test() { }
        return a
    """
    assert eval(prog) == 20
