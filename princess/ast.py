import tatsu, inspect, princess
from tatsu.model import AST

class Node(tatsu.model.Node):
    def __semantic(self, ast):
        return ast

    # member access on LIST
    # pylint: disable=E1101
    def __postinit__(self, ast):
        super().__postinit__(self.__semantic(ast))
        if hasattr(self, "LIST"):
            self._adopt_children(self.LIST)
            self._is_list = True
        else:
            self._is_list = False
    
    def children_list(self, vars_sort_key = None):
        if self._is_list:
            return list(self.LIST)
        return super().children_list(vars_sort_key)
    
    def children_set(self):
        if self._is_list:
            return set(self.LIST)
        return super().children_set()

    children = children_list

    def __eq__(self, other):
        if type(self) != type(other): return False
        for k, v in vars(self).items():
            if k.startswith("_"): continue
            if hasattr(other, k) and getattr(other, k) == v: continue
            else: return False
        return True

    # TODO: make this correspond to do the node.XYZ(...) syntax
    def __repr__(self): return princess.util.ast_repr(self)

# This should really be handled inside the grammar but for now there's no other way
# HACK Bug: https://github.com/neogeny/TatSu/issues/69
def Operator(mapping):
    def decorator(op_cls):
        def __new__(cls, ast = None, ctx = None):
            if (cls == op_cls):
                cls = mapping[ast.op]
                return cls.__new__(cls, ast, ctx)
            else: return super(op_cls, cls).__new__(cls)
        op_cls.__new__ = __new__
        return op_cls
    return decorator

# Generator function, this makes sure that it always pulls out every subclass no matter where it's defined
def __get_subclasses(cls):
    for subclass in cls.__subclasses__():
        yield from __get_subclasses(subclass)
        yield subclass

# List of all nodes
node_classes = __get_subclasses(Node)

class NodeDict(object):
    def __getattr__(self, name):
        def apply(*args, **kwargs):
            return get_node(name, *args, **kwargs)
        return apply
node = NodeDict()

def get_node(name: str, *args, **kwargs):
    ctor = princess.semantic._get_constructor(name, princess.semantic.base_type)
    
    if len(args) == 1:
        a0 = args[0]
        if (isinstance(a0, list)):
            ast = AST(kwargs, LIST = a0)
        else: ast = AST(kwargs, VALUE = args[0])
    elif (len(args) > 1):
        ast = AST(kwargs, LIST = a0)
    else: ast = AST(kwargs)
    
    node = ctor(ast = ast)

    return node