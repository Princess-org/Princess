from tatsu.codegen import ModelRenderer, CodeGenerator
import princess.ast

class Compiler(CodeGenerator):
    def __init__(self):
        super().__init__(modules = princess.compiler)

class Integer(ModelRenderer):
    template = "c_int({})"