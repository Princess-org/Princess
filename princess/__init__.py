import tatsu, os, importlib
from tatsu.grammars import Grammar
from tatsu.model import ModelBuilderSemantics

from .util import *
from princess import lexer

# Loaded dynamically
parser = None
instance = None

# This is import is important to make sure 
# that ast.node_classes is properly loaded
from . import grammar

def _import_parser():
    global instance, parser, lexer
    if parser is not None:
        print("Reloading parser")
        importlib.invalidate_caches()
        from . import parser
        parser = importlib.reload(parser)
        importlib.reload(lexer)

    else:
        try:
            parser = importlib.import_module(".parser", package = __package__)
        except ImportError: pass
    if parser is not None:
        instance = parser.PrincessParser(buffer_class = lexer.Lexer)
        
_import_parser()

# Old way
#with open(os.path.dirname(__file__) + "/../princess.ebnf") as file:
    #parser = tatsu.compile(file.read(), semantics = semantic)

#parser: Grammar
semantic = ModelBuilderSemantics(base_type = ast.Node, types = ast.node_classes)

def parse(input: str, trace = False, **kwargs):
    instance.trace = trace # Somehow this can't be taken as an argument BUG https://github.com/neogeny/TatSu/pull/72
    kwargs["trace"] = None
    return instance.parse(input, semantics = semantic, rule_name = "program", **kwargs)