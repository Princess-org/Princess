import importlib

class instance:
    parser = None
    model = None

def load_parser():
    from princess import parser, model, lexer, semantics
    instance.parser = parser.PrincessParser(buffer_class = lexer.Lexer)
    instance.model = semantics.Semantics()

def parse(input: str, **kwargs):
    if instance.parser is None: load_parser()
    return instance.parser.parse(input, semantics = instance.model, rule_name = "program", **kwargs)