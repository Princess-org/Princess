import tatsu.model
from tatsu.ast import AST
from functools import reduce

def ast_repr(value, indents = " ", indent = 0):
    istr = indents * indent
    if (isinstance(value, Node)):
        class_name = str(value.__class__.__name__)

        has_keys = False
        ret_body = ""
        for k, v in sorted(vars(value).items()):
            if v is not None and not k.startswith("_"):
                has_keys = True
                ast_r = ast_repr(v, indents, indent + 1)
                ret_body += indents + istr + str(k) + " = " + ast_r + "\n"

        if has_keys:
            ret = class_name + " {\n"
            if isinstance(value.ast, list):
                ret += indents + istr + "ast = " + ast_repr(value.ast, indents, indent + 1) + "\n"
            ret += ret_body
            ret += istr + "}"
        else:
            ret = class_name + indents + ast_repr(value.ast, indents, indent)

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

    def map(self, fun):
        if isinstance(self.ast, list):
            mapped = [fun(v) for v in self.ast]
            mapped = reduce(lambda a, b: a + (list(b) if isinstance(b, tuple) else [b]), mapped, [])
            self._ast = mapped
        elif self._ast is not None:
            self._ast = fun(self.ast)

        for key in filter(lambda k: not k.startswith("_"), vars(self).keys()):
            r = fun(getattr(self, key))
            setattr(self, key, r)

    def __eq__(self, other):
        if self is other: return True
        if type(self) != type(other): return False

        def _eq(a, b):
            if self.ast is not None and not isinstance(self.ast, AST):
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

    def __hash__(self):
        return id(self)