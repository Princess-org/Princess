import importlib

_parser = None
_model = None
_lexer = None
_semantics = None

class instance:
    parser = None 
    model = None

def _import_parser():
    global _parser, _model, _lexer, _semantics
    if _parser is not None:
        print("Reloading parser")
        importlib.invalidate_caches()
        _parser = importlib.reload(_parser)
        _model = importlib.reload(_model)
        _lexer = importlib.reload(_lexer)
        _semantics = importlib.reload(_semantics)

    else:
        try:
            _parser = importlib.import_module(".parser", package = __package__)
            _model = importlib.import_module(".model", package = __package__)
            _lexer = importlib.import_module(".lexer", package = __package__)
            _semantics = importlib.import_module(".semantics", package = __package__)
        except ImportError: pass
    if _parser is not None and _model is not None:
        instance.parser = _parser.PrincessParser(buffer_class = _lexer.Lexer)
        instance.model = _semantics.Semantics()

_import_parser()

def parse(input: str, trace = False, **kwargs):
    return instance.parser.parse(input, semantics = instance.model, rule_name = "program", **kwargs)