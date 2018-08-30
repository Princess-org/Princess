import pytest

import os, tatsu, subprocess, sys , shutil, importlib
import princess


from datetime import datetime
from . import opt
from . import __file__ as init_file

from princess.ast import Node

import tests

@pytest.fixture(scope="session", autouse=True)
def recompile_parser():
    print()  # Needed to not pollute the pytest output too much
    print("Checking grammar...")
    basedir = os.path.dirname(__file__) + "/../"
    grammar_file = basedir + "princess.ebnf"
    parser_file = basedir + "princess/parser.py"
    
    force_compile = False
    if os.path.exists(parser_file):
        last_compiled = datetime.fromtimestamp(os.path.getmtime(parser_file))
        print("Last compiled:", last_compiled)
    else:
        force_compile = True

    last_modified = datetime.fromtimestamp(os.path.getmtime(grammar_file))
    
    print("Last modified:", last_modified)
    
    if force_compile or last_compiled <= last_modified:
        print("Grammar changed, generating parser:")
        # TODO There's a method for this, tatsu.to_python_sourcecode
        if subprocess.call([sys.executable, "-m", "tatsu", grammar_file, "--color", "--outfile", parser_file]):
            raise Exception("Failed to parse grammar")
        else:
            princess._import_parser()

# TODO: figure out use https://docs.pytest.org/en/latest/example/simple.html#post-process-test-reports-failures instead of using the messy unit test hack

# https://docs.pytest.org/en/latest/assert.html#defining-your-own-assertion-comparison
def pytest_assertrepr_compare(config, op, left, right):
    ret = []

    first  = tests._generate_traceback(left )
    second = tests._generate_traceback(right)

    if first:
        ret.append(first)
    if second:
        ret.append(second)

    if isinstance(left, Node) or isinstance(right, Node):
        ret += str(left).split('\n')
        ret.append(op)
        ret += str(right).split('\n')

    if ret:
        ret.insert(0, '')

    return ret or None


