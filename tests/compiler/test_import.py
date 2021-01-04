from tests import eval
from pathlib import Path

def test_import():
    prog = """\
        import point
        let a: point::Point = point::origin
        let b: point::Point = {20, 20}

        let distance = point::distance(a, b) !int
        return distance
    """
    base_path = Path("bin/test_import").resolve()
    base_path.mkdir(parents = True, exist_ok = True)
    include_path = Path("tests/compiler")
    
    assert eval(prog, base_path, include_path) == 28

def test_mutual_import():
    prog = """\
        import test_a
    """

    base_path = Path("bin/test_import").resolve()
    base_path.mkdir(parents = True, exist_ok = True)
    include_path = Path("tests/compiler")
    
    eval(prog, base_path, include_path)