from . import ast

def ast_repr(value, indents = " ", indent = 0):
    istr = indents * indent
    if (isinstance(value, ast.Node)):
        class_name = str(value.__class__.__name__)

        if hasattr(value, "LIST"):
            return class_name + indents + ast_repr(value.children_list(), indents, indent)

        ret = class_name + " {\n"

        if hasattr(value, "VALUE"):
            ret += indents + istr + ast_repr(value.VALUE, indents, indent + 1) + "\n"
        else:
            for k, v in sorted(vars(value).items()):
                if not k.startswith("_"): 
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