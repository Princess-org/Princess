from tests import parse, compile, skip

from princess.ast import *

def test_whitespace_collapse():
    ip = """\
        many    -   spaces
        many\n\n\n\nnewlines
        "many    -   spaces"
        "many\n\n\n\nnewlines"\
"""
    
    assert (parse(ip) == Program(
        Sub(
            left = Identifier("many"),
            right = Identifier("spaces")
        ),
        Identifier("many"),
        Identifier("newlines"),
        String("many    -   spaces"),
        String("many\n\n\n\nnewlines")
    ))

def test_comments():
    ip = """\
        bu /*is a
            /* nested */
            comment */ - ra\
"""

    assert(parse(ip) == Program(
        Sub(
            left = Identifier("bu"),
            right = Identifier("ra")
        )
    ))

@skip # TODO: Figure out how to test this properly
def test_error_messages():
    prog = """
        a: int = 5
    """

    compile(prog)