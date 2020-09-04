from tests import eval_expr, eval

def test_enum_simple():
    prog = """\
        type Enum = enum: int {
            BAR; BAZ;
        }
        return Enum::BAR, Enum::BAZ
    """
    assert eval(prog) == (0, 1)

def test_enum_complex():
    prog = """\
        type Enum = enum: long {
            FOO = 20; BAR;
        }
        return Enum::FOO, Enum::BAR
    """
    assert eval(prog) == (20, 21)

def test_enum_variable():
    prog = """\
        type Choice = enum {
            YES; NO
        }

        var choice: Choice
        choice = Choice::YES
        return choice
    """
    assert eval(prog) == 0