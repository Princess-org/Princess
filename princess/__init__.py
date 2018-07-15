import tatsu, os, importlib
from tatsu.grammars import Grammar
from tatsu.model import ModelBuilderSemantics

from .util import *

# Loaded dynamically
context = None
instance = None

# This is import is important to make sure 
# that ast.node_classes is properly loaded
from . import grammar

def _import_parser():
    global instance, context
    if context is not None:
        print("Reloading context")
        importlib.invalidate_caches()
        from . import parser
        importlib.reload(parser)
        context = importlib.reload(context)
    else:
        try:
            context = importlib.import_module(".context", package = __package__)
        except ImportError: pass
    if context is not None:
        instance = context.WrappedParser()
        
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