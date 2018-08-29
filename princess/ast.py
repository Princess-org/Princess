import tatsu, inspect, princess
from tatsu.model import AST

class Node(tatsu.model.Node):
    def __init__(self, _run_semantic = True, **kwargs):
        self._run_semantic = _run_semantic
        super().__init__(**kwargs)

    # member access on LIST
    # pylint: disable=E1101
    def __postinit__(self, ast):
        if self._run_semantic: ast = self._semantic(ast) 
        super().__postinit__(ast)
        if hasattr(self, "LIST"):
            self._adopt_children(self.LIST)
            self._is_list = True
        else:
            self._is_list = False

    def _semantic(self, ast):
        return ast
    
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
            if v is None: continue                      # ignore None
            if isinstance(v, list) and not v: continue  # ignore empty list
            return False
        return True

    # TODO: make this correspond to do the node.XYZ(...) syntax
    def __repr__(self): return princess.util.ast_repr(self)

# Generator function, this makes sure that it always pulls out every subclass no matter where it's defined
def __get_subclasses(cls):
    for subclass in cls.__subclasses__():
        yield from __get_subclasses(subclass)
        yield subclass

# List of all nodes, magical object
node_classes = __get_subclasses(Node)

class NodeDict(object):
    def __getattr__(self, name):
        def apply(*args, **kwargs):
            return get_node(name, *args, **kwargs)
        return apply
node = NodeDict()

REMOVE = object()
def copy(ast, **kwargs):
    d = {}
    for k, v in ast.items():
        if k in kwargs:
            if kwargs[k] != REMOVE: 
                d[k] = kwargs[k]
        else:
            d[k] = v
    return AST(d)
AST.copy_with = copy

def get_node(_name: str, *args, **kwargs):
    ctor = princess.semantic._get_constructor(_name, princess.semantic.base_type)

    # Special cases for single value, single list
    if len(args) == 1:
        a0 = args[0]
        if (isinstance(a0, list)):
            ast = AST(kwargs, LIST = a0)
        else: ast = AST(kwargs, VALUE = args[0])
    elif (len(args) > 1):
        ast = AST(kwargs, LIST = list(args))
    else: ast = AST(kwargs)
    
    if issubclass(ctor, Node):
        return ctor(ast = ast, _run_semantic = False)
    
    return ctor(ast = ast)