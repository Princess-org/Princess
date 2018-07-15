# Wrapped parser for handling context
from .parser import PrincessParser

class WrappedParser(PrincessParser):
    in_n_expression = False

    # TODO Handle this inside the grammar instead? Would mean a lot of duplications tho

    def _s__(self): 
        if self.in_n_expression:
            return self._n__()
        else: return self.___()

    def _n_expression_(self): 
        self.in_n_expression = True
        super()._n_expression_()
        self.in_n_expression = False
