import os
from tests import eval
from pathlib import Path

def test_import():
    prog = """\
        import test
        let a: test::Point = test::origin
        let b: test::Point = {20, 20}

        let distance = test::distance(a, b) !int
        return distance
    """
    base_path = Path("bin/test_import").resolve()
    base_path.mkdir(parents = True, exist_ok = True)
    include_path = Path("tests/compiler")
    
    assert eval(prog, base_path, include_path) == 28