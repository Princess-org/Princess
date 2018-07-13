import tatsu
from tatsu.model import ModelBuilderSemantics

with open("test.ebnf") as file:
    grammar = tatsu.compile(file.read(), semantics = ModelBuilderSemantics())

parsed = grammar.parse("1 + 2 + 3")
print(parsed)