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
        for var i in 0..20 {
            a = a + 1
        }
        return a
    """
    assert eval(prog) == 20

def test_for_loop_array():
    prog = """\
        var a = [1, 2, 3, 4]
        var sum = 0
        for var b in a {
            sum += b
        }
        return sum
    """
    assert eval(prog) == 10

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

def test_loop():
    prog = """\
        var a = 0
        loop {
            a = a + 1
            if a == 10 {
                break
            }
            continue
        }
        return a
    """
    assert eval(prog) == 10

def test_export():
    prog = """\
        export var a = 20
        export var b = 21
        export def test -> int {
            return a
        }
        return test()
    """
    assert eval(prog) == 20

def test_switch():
    prog = """\
        let i = 20
        var a = 5
        switch i {
        case 5:
            return 5
        case 20:
            a += 5
            return a
        }
    """
    assert eval(prog) == 10

def test_switch_complex():
    prog = """\
        let i = 20
        switch i {
        case 0..10:
            return 5
        case 11..20:
            return 10
        case:
            return 20
        }
    """
    assert eval(prog) == 10
