import os, tatsu, subprocess, sys, unittest, argparse, shutil, importlib
import princess

from datetime import datetime
from . import opt
from . import __file__ as init_file

parser = argparse.ArgumentParser("python -m tests")
parser.add_argument("--no-compile", action = "store_true", help = "Don't compile the parser")
parser.add_argument("-c", "--colorize", action = "store_true", help = "Colorize Parser Trace")
parser.add_argument("-t", "--trace", action = "store_true", help = "Print the Parser Trace on Error")

args = parser.parse_args()

opt.TRACEBACK = args.trace
opt.COLORIZE = args.colorize

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
        else:
            princess._import_parser()


class TestResult(unittest.TextTestResult):
    def _is_relevant_tb_level(self, tb):
        return (tb.tb_frame.f_code.co_filename == init_file or # Skip all tb's from __init__
            super()._is_relevant_tb_level(tb))

    #def __getattribute__(self, name): # Use terminal size for pretties
    #    tsize = shutil.get_terminal_size()
    #    if name == "separator1": return tsize.columns * "="
    #    elif name == "separator2": return tsize.columns * "-"
    #    return super().__getattribute__(name)

def main():
    print("Checking grammar...")
    if not args.no_compile:
        try:
            recompile_parser()
        except Exception:
            print("Couldn't generate parser!")
            sys.exit(-1)

    print("Done. Running tests...")
    loader = unittest.TestLoader()
    tests = loader.discover("tests")
    testRunner = unittest.runner.TextTestRunner(resultclass = TestResult, failfast = True)
    testRunner.run(tests)

if __name__ == "__main__":
    main()
    