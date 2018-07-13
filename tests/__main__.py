import os, tatsu, subprocess, sys, unittest
from datetime import datetime

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

try:
    recompile_parser()
except Exception as e:
    print("Couldn't generate parser, aborting!")
    sys.exit(-1)
    

print("Done. Running tests...")
loader = unittest.TestLoader()
tests = loader.discover(".")
testRunner = unittest.runner.TextTestRunner()
testRunner.run(tests)