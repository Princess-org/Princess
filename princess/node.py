import tatsu.model
from tatsu.ast import AST

def ast_repr(value, indents = " ", indent = 0):
    istr = indents * indent
    if (isinstance(value, Node)):
        class_name = str(value.__class__.__name__)

        if isinstance(value.ast, list) or value._count_keys() == 0:
            return class_name + indents + ast_repr(value.ast, indents, indent)

        ret = class_name + " {\n"

        for k, v in sorted(vars(value).items()):
            if v is not None and not k.startswith("_"): 
                ast_r = ast_repr(v, indents, indent + 1)
                ret += indents + istr + str(k) + " = " + ast_r + "\n"

        ret += istr + "}"

        return ret
    elif (isinstance(value, list)):
        ret = "[\n"
        for k in value:
            ret += indents + istr + ast_repr(k, indents, indent + 1) + "\n"
        ret += istr + "]"
        return ret
    else:
        return repr(value)

class Node(tatsu.model.Node):
    type = None

    def _count_keys(self):
        return len(list(filter(lambda k: not k.startswith("_"), vars(self).keys())))

    def _semantic(self, ast):
        return ast
    
    def children_list(self, vars_sort_key = None):
        children = super().children_list(vars_sort_key)
        if isinstance(self.ast, list):
            children += self.ast
        return children
    
    def children_set(self):
        children = super().children_set()
        if isinstance(self.ast, list):
            children += set(self.ast)
        return children

    children = children_list

    def __eq__(self, other):
        if type(self) != type(other): return False

        def _eq(a, b):
            if a.ast is not None and not isinstance(a.ast, AST):
                if a.ast != b.ast:
                    return False

            for k, v in vars(a).items():
                if k.startswith("_"): continue
                if hasattr(b, k) and getattr(b, k) == v: continue
                if v is None: continue                      # ignore None
                if isinstance(v, list) and not v: continue  # ignore empty list
                return False
            return True

        return _eq(self, other) and _eq(other, self)

    def __str__(self): return ast_repr(self)