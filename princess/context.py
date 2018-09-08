# Wrapped parser for handling context
from .parser import PrincessParser

class WrappedParser(PrincessParser):
    def _reset(self, *args, **kwargs):
        super()._reset(*args, **kwargs)
        self.in_n_expression = 0

    # FIXME This doesn't work correctly (do expression) -> strip all whitespace beforehand using a special pass

    def _s__(self): 
        if self.in_n_expression > 0:
            return self._n__()
        else: return self.___()

    def _n_expression_(self): 
        self.in_n_expression += 1
        super()._n_expression_()
        self.in_n_expression -= 1
