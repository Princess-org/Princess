import sys, re
import colorama

from colorama import ansi
from princess import parse

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

def eval(src):
    ast = parse(src)
    print(ast)

def main(args):
    colorama.init()
    print("Princess REPL")
    print("type exit to leave the prompt")
    
    while True:
        line = read_input()
        if line == "exit": break
        else: eval(line)

if __name__ == "__main__":
    main(sys.argv)
