import re
from collections import namedtuple

from tatsu.buffering import Buffer
from .parser import PrincessBuffer

PRE_REGEX = re.compile(
    r"""(?P<quote_s>  (?<!\\)[\"]) 
      | (?P<quote_d>  (?<!\\)[\']) 
      | (?P<comment_start>  /\* ) 
      | (?P<comment_end>    \*/ ) 
      | (?P<comment_eol> //[^\n$]*)(?=\n|$)
      | (?P<whitespace>   [\t ]+)
      | (?P<newline>  \n[\t\n ]*)
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

class LineCache(namedtuple("LineCache", ["line", "start", "length", "offset"])): 
    pass

class Lexer(PrincessBuffer):
    text = ""
    src_text = "" # Non processed
    src_line_cache = []
    
    def _preprocess(self, *args, **kwargs):
        self.src_text = self.text
        self.src_line_cache = []

        offset = 0
        line = 0
        line_diff = 0 # This tracks the difference between the source text and the preprocessed text
        line_offset = 0
        line_length = self.src_text.find("\n")
        if line_length < 0: 
            line_length = len(self.src_text)

        bracket_stack = [BRACE]
        comment_stack = 0
        in_str = NO
        output = ["\n"]

        def append(text, src_txt = None):   # Prevent repeated whitespace
            nonlocal output, offset, line, line_diff, line_offset, line_length
            if not src_txt:
                src_txt = text

            last = output[-1]
            if not in_str:
                # No newline after space or repeated new lines
                if (text == " " or text == "\n") and last == "\n": 
                    text = ""
                # No single space after single space
                if text == " " and last == " ": 
                    text = ""

            pos_line = LineCache(line, line_offset, line_length, line_diff) 
            for _ in text:
                self.src_line_cache.append(pos_line)
            output += text

            # Calculate source position
            lineskip = src_txt.count("\n")
            if lineskip > 0:
                line_offset = offset + src_txt.rfind("\n") + 1
                line_length = self.src_text.find("\n", line_offset) - line_offset
                if line_length < 0: 
                    line_length = len(self.src_text) - line_offset

            line += lineskip
            line_diff += len(src_txt) - len(text)
            offset += len(src_txt)

        pos = 0
        for match in re.finditer(PRE_REGEX, self.src_text):
            text = match.group()
            src_txt = text

            last_txt = self.src_text[pos:match.start()]
            if comment_stack == 0:
                append(last_txt) # Add text inbetween
            else:
                append("", last_txt) # Skip if we're inside a comment

            if comment_stack == 0:
                if match.group("quote_s"):
                    if in_str == SINGLE: in_str = NO
                    else: in_str = SINGLE
                elif match.group("quote_d"):
                    if in_str == DOUBLE: in_str = NO
                    else: in_str = DOUBLE
                elif not in_str:
                    if match.group("oparen"):
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
                if match.group("whitespace"):
                        text = " "
                elif match.group("newline"):
                    if bracket_stack[-1] != BRACE:
                        text = " "      # Strip newline inside parens
                    else: text = "\n"   # Collapse to single newline
                elif match.group("comment_start"):
                    text = " "
                    comment_stack += 1
                elif match.group("comment_end"):
                    text = ""
                    comment_stack -= 1
                elif match.group("comment_eol"):
                    text = ""

            append(text, src_txt)
            pos = match.end()

        append(self.src_text[pos:len(self.src_text)])

        self.text = ''.join(output[1:])
        # print("In total I stripped", len(self.src_text) - len(self.text), "characters")
        
        assert len(self.text) == len(self.src_line_cache), "Invalid line cache!"
        
        # for i, c in enumerate(self.text):
        #     lc = self.src_line_cache[i]
        #     print("%s (line = %s; offset = %s; length = %s)" % (repr(c), lc.line, lc.offset, lc.length))
        #     print(self.src_text[lc.start:(lc.start + lc.length)])
        #     print(" " * ((lc.offset + i) - lc.start) + "^")

        super()._preprocess(*args, **kwargs)

    def format_error(self, error, lineinfo):
        lca = self.src_line_cache[lineinfo.pos]
        lcb = self.src_line_cache[lineinfo.endpos - 1]
       
        error += "\n"
        error += (self.filename or "??? ") + ":" + str(lca.line) + "\n"
        error += self.src_text[lca.start:(lca.start + lca.length)] + "\n"
        error += " " * ((lca.offset + lineinfo.pos) - lca.start) + "^"
        if lca.line == lcb.line:
            error += ((lcb.offset + lineinfo.endpos) - (lca.offset + lineinfo.pos) - 1) * "~"

        return error
