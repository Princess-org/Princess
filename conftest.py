import pytest, tests
import os, tatsu, subprocess, sys, shutil, importlib

from datetime import datetime


# Arguments
def pytest_addoption(parser):
    parser.addoption("--no-compile", action = "store_true", help = "Don't compile the parser")
    parser.addoption("-C", "--colorize", action = "store_true", help = "Colorize Parser Trace") # TODO pytest has an option for this, use that?
    parser.addoption("-T", "--tatsu-trace", action = "store_true", help = "Print the Parser Trace on Error")
    parser.addoption("-P", "--print-src", action = "store_true", help = "Print the compiled python source code")
    parser.addoption("--performance", action="store_true")

def pytest_configure(config):
    recompile_parser()

    # HACK https://github.com/pytest-dev/py/issues/149#issuecomment-430606830
    # shutil.get_terminal_size = os.get_terminal_size

    import tests
    tests.config = config

def recompile_parser():
    print()  # Needed to not pollute the pytest output too much
    print("Checking grammar...")
    basedir = os.path.dirname(__file__) + "/"
    grammar_file = basedir + "princess.ebnf"
    parser_file = basedir + "princess/parser.py"
    model_file = basedir + "princess/model.py"
    
    force_compile = False
    if os.path.exists(parser_file):
        last_compiled = datetime.fromtimestamp(os.path.getmtime(parser_file))
        print("Last compiled:", last_compiled)
    else:
        force_compile = True

    last_modified = datetime.fromtimestamp(os.path.getmtime(grammar_file))
    
    print("Last modified:", last_modified)
    
    if force_compile or last_compiled < last_modified:
        print("Grammar changed, generating parser:")

        # TODO Add an easy way to call main to Tatsu
        if subprocess.call([sys.executable, "-m", "tatsu", grammar_file, "--color", 
            "--outfile", parser_file, "--object-model-outfile", model_file, "--base-type", "princess.node.Node"]):

            raise Exception("Failed to parse grammar")

# TODO: figure out use https://docs.pytest.org/en/latest/example/simple.html#post-process-test-reports-failures instead of using the messy unit test hack

# https://docs.pytest.org/en/latest/assert.html#defining-your-own-assertion-comparison
def pytest_assertrepr_compare(config, op, left, right):
    import tests
    from princess.node import Node

    ret = []

    tests._dump_traceback(left)
    tests._dump_traceback(right)

    if isinstance(left, Node) or isinstance(right, Node):
        ret += str(left).split('\n')
        ret.append(op)
        ret += str(right).split('\n')

    if ret:
        ret.insert(0, '')

    return ret or None

@pytest.fixture(autouse = True)
def library_fixture():
    tests.LIB_COUNT = 0
    yield