from tests import *
import pytest

@pytest.mark.skipif(not pytest.config.getoption("--performance"), reason="performance option not specified")
def test_performance():
    program = "1 + 1\n" * 1000
    parse(program)
