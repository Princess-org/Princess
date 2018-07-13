import os, tatsu, subprocess, sys, unittest, argparse
from datetime import datetime
from . import opt

parser = argparse.ArgumentParser()
parser.add_argument("--no-trace", action = "store_true", help="Don't print the Parser Trace on Error")
parser.add_argument("--no-compile", action = "store_true", help="Don't compile the parser")
args = parser.parse_args()

opt.TRACEBACK = not args.no_trace

# Recompile the parser if the grammar has changed
def recompile_parser():
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

    if force_compile or last_compiled < last_modified:
        print("Grammar changed, generating parser:")
        if subprocess.call([sys.executable, "-m", "tatsu", grammar_file, "--color", "--outfile", parser_file]):
            raise Exception("Failed to parse grammar")

if not args.no_compile:
    try:
        recompile_parser()
    except Exception as e:
        print("Couldn't generate parser!")
        sys.exit(-1)

    
class TestResult(unittest.TextTestResult): pass

print("Done. Running tests...")
loader = unittest.TestLoader()
tests = loader.discover(".")
testRunner = unittest.runner.TextTestRunner(resultclass = TestResult)
testRunner.run(tests)