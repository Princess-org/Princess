from tests import eval_expr, eval, skip

@skip("Stdout cant be redirected")
def test_print():
    prog = """\
        let a = 30
        let b = 40
        print(a + b, " foobar\n")
    """
    eval(prog)

def test_concat_stack():
    prog = """\
        let a = "Hello"
        let b = "World"
        var c: [12 char]
        concat(c, a, " ", b)
        return c
    """
    assert eval(prog) == b"Hello World"

def test_concat_malloc():
    prog = """\
        let a = "Hello"
        let b = "World"
        var c = allocate((size_of char) * 12) !string
        concat(c, a, " ", b)
        return c
    """
    assert eval(prog) == b"Hello World"

def test_file_io_binary():
    prog = """\
        let fp = open("tests/compiler/test_builtins", "wb+")
        write(fp, "This is a test")
        let a = 10
        write(fp, *a)

        rewind(fp)
        
        var c: [15 char]
        read(fp, c)
        var b: int
        read(fp, *b)
        close(fp)
        return b, c
    """
    assert eval(prog) == (10, b"This is a test")

def test_string():
    prog = """\
        let a = "Hello"
        let b = a
        return b[0]
    """
    assert eval(prog) == b"H"