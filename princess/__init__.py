import tatsu, os
from tatsu.grammars import Grammar
from tatsu.model import ModelBuilderSemantics

from .util import *

# This is import is important to make sure 
# that ast.node_classes is properly loaded
from . import grammar

parser: Grammar
semantic = ModelBuilderSemantics(base_type = ast.Node, types = ast.node_classes)

with open(os.path.dirname(__file__) + "/../grammar/princess.ebnf") as file:
    parser = tatsu.compile(file.read(), semantics = semantic)