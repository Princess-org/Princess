from tests import eval_expr, eval, skip, parse

def test_struct_basic():
    prog = """\
        type Point = struct {
            x: int
            y: int
        }

        var a: Point
        a.x = 20
        a.y = 30

        return a.x, a.y
    """
    assert eval(prog) == (20, 30)

def test_struct_initializer():
    prog = """\
        type S = struct { v: int; v2: float }
        let s: S = {20, v2 = -2.5}
        return s.v, s.v2
    """
    assert eval(prog) == (20, -2.5)

def test_struct_initializer_cast():
    prog = """\
        type S = struct { v: int }
        var s = {1} !S
        s = {1 + s.v} !S
        let b = ({5}!S).v
        return s.v, b
    """
    assert eval(prog) == (2, 5)

def test_struct_pointer():
    prog = """\
        type T = struct { v: int }
        var a: T = {1}
        let b = *a
        a = {5 + a.v}

        return (@b).v
    """
    assert eval(prog) == 6

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
    assert eval(prog) == (1, 1)

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
    assert eval(prog) == 20

def test_struct_as_parameter():
    # TODO anonymous struct as function parameter
    prog = """\
        type T = struct { i: int }
        def with_struct(a: T) -> int {
            return a.i   
        }

        return with_struct({1})
    """
    assert eval(prog) == 1

def test_struct_passing():
    prog = """\
        type T = struct { i: int }
        def call(a: T) {
            a.i = 20
        }
        var a: T = {1}
        call(a)
        return a.i
    """
    assert eval(prog) == 1

def test_struct_recursive():
    prog = """\
        type List = struct {
            element: int
            next: *List
        }

        def make_List() -> List {
            return {0, null} !List
        }

        def insert(list: *List, e: int) {
            let le = allocate(List)
            (@le).element = e
            (@le).next = null

            var temp = list
            while (@temp).next != null {
                temp = (@temp).next
            }
            (@temp).next = le
        }

        var list = make_List()
        insert(*list, 10)
        insert(*list, 20)

        return (@(list.next)).element
    """
    assert eval(prog) == 10

def test_struct_recursive_2():
    prog = """\
        type Node

        type NodeBinaryOp = struct {
            left: *Node
            right: *Node
        }

        type NodeValue = struct #union {
            bin_op: NodeBinaryOp
        }

        type Node = struct {
            value: NodeValue
        }
    """
    eval(prog)

def test_struct_reassignment():
    prog = """\
        type T = struct { v: int }
        var t: T = {0}
        t = {5}
        return t.v
    """
    assert eval(prog) == 5

def test_struct_forward_declare():
    prog = """\
        type T

        var foo: *T = null

        type T = struct {
            a: int
            b: int
        }

        foo = *({ 1, 2 } !T)
        return (@foo).a, (@foo).b
    """
    assert eval(prog) == (1, 2)

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
    assert eval(prog) == (0xAABBCCDD, 0xCCDD, 0xDD)