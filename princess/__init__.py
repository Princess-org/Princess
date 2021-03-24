import importlib

class instance:
    parser = None
    model = None

def load_parser():
    from princess import parser, model, lexer
    instance.parser = parser.PrincessParser(tokenizercls = lexer.Lexer)

def parse(input: str, **kwargs):
    from princess import semantics
    if instance.parser is None: load_parser()

    semantics = semantics.Semantics() # This is really ugly
    return instance.parser.parse(input, semantics = semantics, start = "program", **kwargs)