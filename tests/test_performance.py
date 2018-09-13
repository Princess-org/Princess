from tests import parse, skipif, config

@skipif(not config.getoption("--performance"), reason="performance option not specified")
def test_performance():
    program = "1 + 1\n" * 1000
    parse(program)
