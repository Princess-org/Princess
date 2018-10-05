import sys, re, argparse
import colorama

from colorama import ansi
from princess import parse, eval, compile
from princess import model, ast
from tatsu.exceptions import FailedParse

args = {}

UNBALANCED_PAREN_RE = re.compile(r"""
      (?P<string> \"(\\\"|[^\"])*\" | \'(\\\'|[^\'])*\')
    | (?P<oparen>    \(  )
    | (?P<cparen>    \)  )
    | (?P<osquare>   \[  )
    | (?P<csquare>   \]  )
    | (?P<obrace>    \{  )
    | (?P<cbrace>    \}  )
    """, re.VERBOSE
)

def is_balanced(src):
    parens = [0, 0, 0]
    for match in UNBALANCED_PAREN_RE.finditer(src):
        if match.group("oparen"):    parens[0] += 1
        elif match.group("cparen"):  parens[0] -= 1
        elif match.group("osquare"): parens[1] += 1
        elif match.group("csquare"): parens[1] -= 1
        elif match.group("obrace"):  parens[2] += 1
        elif match.group("cbrace"):  parens[2] -= 1
    
    return all(n == 0 for n in parens)

def read_input():
    line = input(">>> ")
    indent = ""

    while not is_balanced(line):
        nline = input(">>> ")
        # indent = re.match("[ \t]*", nline).group() or "" TODO
        line += nline + "\n"
    return line.strip()

def do_eval(src):
    try:
        _ast = parse(src)
        if args.ast:
            print(_ast)
        else:
            if len(_ast.ast) == 1 and isinstance(_ast.ast[0], model.Expression):
                _ast.ast[0] = ast.Return(_ast.ast[0])

            print(eval(_ast))

    except FailedParse as e:
        print(ansi.Fore.RED, e, ansi.Fore.RESET, file = sys.stderr)
    except AssertionError as e:
        print(ansi.Fore.RED, e, ansi.Fore.RESET, file = sys.stderr)

def main():
    colorama.init()
    print("Princess REPL")
    print("type exit to leave the prompt")
    
    while True:
        try:
            line = read_input()
            if line == "exit": break
            else: do_eval(line)
        except KeyboardInterrupt:
            print()
            break

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description = "Princess REPL")
    parser.add_argument("--ast", "-a", action = "store_true", help = "Turns off evaluation and emits the AST")
    args = parser.parse_args()

    main()
