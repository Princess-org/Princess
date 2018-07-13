import tatsu, os
from tatsu.grammars import Grammar
from tatsu.model import ModelBuilderSemantics

from .util import *

# This is import is important to make sure 
# that ast.node_classes is properly loaded
from . import grammar
from . import parser as _parser

parser = _parser.PrincessParser()

# Old way
#with open(os.path.dirname(__file__) + "/../princess.ebnf") as file:
    #parser = tatsu.compile(file.read(), semantics = semantic)

#parser: Grammar
semantic = ModelBuilderSemantics(base_type = ast.Node, types = ast.node_classes)

def parse(input: str, trace = False, **kwargs):
    parser.trace = trace # Somehow this can't be taken as an argument BUG https://github.com/neogeny/TatSu/pull/72
    kwargs["trace"] = None
    return parser.parse(input, semantics = semantic, rule_name = "program", **kwargs)