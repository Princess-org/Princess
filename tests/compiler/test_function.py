from tests import eval_expr, eval

def test_simple_function():
    prog = """\
        def test_function -> int {
            return 42
        }

        return test_function()
    """
    assert eval(prog) == 42

def test_args():
    prog = """\
        def add(a: int, b: int) -> int {
            return a + b
        }
        
        return add(10, 20)
    """

    assert eval(prog) == 30

def test_args_type_infer():
    prog = """\
        def ret_byte(a: byte) -> byte { return a }
        def ret_float(a: float) -> float { return a }
        
        return ret_byte(20), ret_float(20)
    """

    assert eval(prog) == (20, 20)

def test_array_passing():
    prog = """\
        let array = [1, 2, 3, 4]

        def first(a: [4 int]) {
            return a[0]
        }

        def second(a: [int]) {
            return a[1]
        }

        return first(array), second(array)
    """

    assert eval(prog) == (1, 2)

def test_recursion():
    prog = """\
        def factorial(n: int) -> int {
            if n > 1 {
                return n * factorial(n - 1)
            }
            return 1
        }
        return factorial(5)
    """

    assert eval(prog) == 120
