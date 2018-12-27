import re

from tatsu.buffering import Buffer
from .parser import PrincessBuffer

PRE_REGEX = re.compile(
    r"""(?P<quote_s>  (?<!\\)[\"]) 
      | (?P<quote_d>  (?<!\\)[\']) 
      | (?P<comment_start>  /\* ) 
      | (?P<comment_end>    \*/ ) 
      | (?P<comment_eol> //.*(\n|$)) 
      | (?P<whitespace>   [\t ]+)
      | (?P<newline> \n [\t\n ]*)
      | (?P<oparen>         \(  )
      | (?P<cparen>         \)  )
      | (?P<osquare>        \[  )
      | (?P<csquare>        \]  )
      | (?P<obrace>         \{  )
      | (?P<cbrace>         \}  )
    """, re.VERBOSE
)

NO = 0
SINGLE = 1
DOUBLE = 2

PAREN = 1
SQUARE = 2
BRACE = 3

# TODO Better error messages
# TODO track correct line numbers
class Lexer(PrincessBuffer):
    text = ""
    
    def _preprocess(self, *args, **kwargs):
        bracket_stack = [BRACE]
        comment_stack = 0
        in_str = NO
        output = ["\n"]

        def append(text):   # Prevent repeated whitespace
            nonlocal output
            last = output[-1]
            if not in_str:
                # No newline after space or repeated new lines
                if (text == " " or text == "\n") and last == "\n": return
                # No single space after single space
                if text == " " and last == " ": return

            output += text

        pos = 0
        for match in re.finditer(PRE_REGEX, self.text):
            text = match.group()
            if comment_stack == 0:
                append(self.text[pos:match.start()])

            if comment_stack == 0:
                if match.group("quote_s"):
                    if in_str == SINGLE: in_str = NO
                    else: in_str = SINGLE
                elif match.group("quote_d"):
                    if in_str == DOUBLE: in_str = NO
                    else: in_str = DOUBLE
                elif not in_str:
                    if match.group("whitespace"):
                        text = " "
                    elif match.group("newline"):
                        if bracket_stack[-1] != BRACE:
                            text = " "      # Strip newline inside parens
                        else: text = "\n"   # Collapse to single newline
                    elif match.group("oparen"):
                        bracket_stack += [PAREN]
                    elif match.group("osquare"):
                        bracket_stack += [SQUARE]
                    elif match.group("obrace"):
                        bracket_stack += [BRACE]
                    elif match.group("cparen"):
                        assert len(bracket_stack) > 1 and bracket_stack[-1] == PAREN
                        bracket_stack.pop()
                    elif match.group("csquare"):
                        assert len(bracket_stack) > 1 and bracket_stack[-1] == SQUARE
                        bracket_stack.pop()
                    elif match.group("cbrace"):
                        assert len(bracket_stack) > 1 and bracket_stack[-1] == BRACE
                        bracket_stack.pop()
                    
            if not in_str:
                if match.group("comment_start"):
                    text = " "
                    comment_stack += 1
                elif match.group("comment_end"):
                    text = ""
                    comment_stack -= 1
                elif match.group("comment_eol"):
                    text = "\n"

            append(text)
            pos = match.end()

        output += [self.text[pos:len(self.text)]]

        self.text = ''.join(output[1:])
        super()._preprocess(*args, **kwargs)
