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
        var c: [12; char]
        concat(c, a, " ", b)
        return c
    """
    assert eval(prog) == b"Hello World"

def test_concat_malloc():
    prog = """\
        let a = "Hello"
        let b = "World"
        var c = zero_allocate(char, 12)
        concat(c, a, " ", b)
        return c
    """
    assert eval(prog) == b"Hello World"

def test_file_io_binary():
    prog = """\
        let fp: File = open("build/test_file_io_binary", "wb+")

        write(fp, "This is a test")
        let a = 10
        write(fp, *a)

        rewind(fp)
        
        var c: [15; char]
        read(fp, c)
        var b: int
        read(fp, *b)

        close(fp)
        return b, c
    """
    assert eval(prog) == (10, b"This is a test")

def test_file_io_text():
    prog = """\
        let fp: File = open("build/test_file_io_text", "w+")

        write_string(fp, "This is a test\n", 10)

        seek(fp, 0, SEEK_SET) // Same as rewind

        var buffer: [20; char]
        read_line(fp, buffer)
        var num: int
        scanf(fp, "%d", *num)

        close(fp)
        return num, buffer
    """
    assert eval(prog) == (10, b"This is a test\n")

def test_string_eq():
    prog = """\
        let str1 = "foo"
        let str2 = "bar"
        let str3 = "foo"

        return str1 == str2, str1 == str3
    """
    assert eval(prog) == (False, True)

def test_length():
    prog = """\
        let str = "Hello World" !string
        let str2 = "Hello World"

        return length(str), length(str2)
    """
    assert eval(prog) == (11, 11)

def test_array_size():
    prog = """\
        var array: [int] = [1, 2, 3, 4]
        return array.size
    """
    assert eval(prog) == 4