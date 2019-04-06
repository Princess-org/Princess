from princess.lexer import Lexer
from tests import parse, compile, skip

def lex(text):
    lexer = Lexer(text)
    return lexer.text

def test_whitespace_collapse():
    ip = """\
        many        spaces
        many\n\n\n\nnewlines
        "many        spaces"
        "many\n\n\n\nnewlines"\
"""
    
    op = """\
many spaces
many\nnewlines
"many        spaces"
"many\n\n\n\nnewlines"\
"""
    assert lex(ip) == op


def test_comments():
    ip = """\
        bu /*is a
            /* nested */
            comment */ ra\
"""
    op = "bu \nra"

    assert lex(ip) == op


@skip # Figure out how to test this properly
def test_error_messages():
    prog = """
        a: int = 5
    """

    compile(prog)