from os import get_inheritable, sep
import subprocess, json, ctypes, math
import tatsu, pickle, sys
from tatsu.walkers import NodeWalker
from pathlib import Path

GRAMMAR = """\
    function_decl = ret: type_1 '(' args: ','.{ type_1 | varargs } ')';

    sign = 'signed' | 'unsigned';
    modifier = 'long' 'long' @:`'llong'` | 'long' | 'short';
    specifier = 'int' | 'char' | 'float' | 'double' | '__int128';

    identifier::Identifier      = /(?!\d)\w+/;
    tagged_idenitifier::Tagged  = ('struct' | 'union' | 'enum') identifier;
    primitive::Primitive        = [sign] [modifier] specifier | [sign] modifier | sign;
    pointer::Pointer            = type: type '*' ['const'] ['volatile'] ['restrict'];
    array::Array                = type: type '[' size: [/\d+/] ']';
    function::Function          = ret: type / \(\*\)/ '(' args: ','.{ type_1 | varargs } ')';

    void::Void = 'void';
    varargs::Varargs = '...';

    type = pointer | function | array | void | primitive | tagged_idenitifier | identifier;
    type_1 = ['const'] ['volatile'] @:type;
"""

PARSER = tatsu.compile(GRAMMAR, asmodel = True)

GLOBALS = {}
TYPEDEFS = {}
TAGGED = {}
STRUCT_IDS = {}

# Types

class Type:
    def to_definition(self) -> str:
        return str(self)

class VaList(Type):
    def __str__(self) -> str:
        return "__va_list_tag"

class IncompleteType(Type):
    def __init__(self, name: str):
        self.name = name

    def __str__(self) -> str:
        return str(TAGGED[self.name])
    
    def to_definition(self) -> str:
        return TAGGED[self.name].to_definition()

class Float(Type):
    def __init__(self, name):
        self.name = name

    def __str__(self) -> str:
        return self.name
        
class Integer(Type):
    def __init__(self, name):
        self.name = name

    def __str__(self) -> str:
        return self.name

class Function(Type):
    def __init__(self, args: list[Type], ret: Type):
        self.args = args
        self.ret = ret

    def __str__(self) -> str:
        args = ', '.join(map(str, filter(lambda x: x != 'void', self.args)))
        return f"({args}) -> ({self.ret if self.ret != 'void' else ''})"

class Pointer(Type):
    def __init__(self, tpe: Type):
        self.type = tpe

    def __str__(self) -> str:
        if self.type == 'void':
            return "*"
        else: return f"*{self.type}"

class Array(Type):
    def __init__(self, tpe: Type, length = None):
        self.type = tpe
        self.length = length

    def __str__(self) -> str:
        if self.length:
            return f"[{self.length}; {self.type}]"
        else:
            return f"*{self.type}"

class Record(Type):
    def __str__(self) -> str:
        if self.qualname:
            self = TAGGED[self.qualname]

        name = self.typename or self.name
        if not name: return self.to_definition()
        else: return name

class Struct(Record):
    def __init__(self, name: str, fields):
        self.name = ("s_" + name) if name else None
        self.fields = fields
        self.qualname = name
        self.typename = None

    def to_definition(self) -> str:
        if self.fields:
            res = "struct { "
            for (name, tpe) in self.fields:
                if name:
                    res += name + ": "
                res += str(tpe) + "; "
            res += "}"
            return res

class Union(Record):
    def __init__(self, name: str, fields):
        self.name = ("u_" + name) if name else None
        self.fields = fields
        self.qualname = name
        self.typename = None
    
    def to_definition(self) -> str:
        if self.fields:
            res = "struct #union { "
            for (name, tpe) in self.fields:
                if name:
                    res += name + ": "
                res += str(tpe) + "; "
            res += "}"
            return res

class Enum(Type):
    def __init__(self, name: str):
        self.name = name

#Global entities

class VarDecl:
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type

    def __str__(self) -> str:
        return f"export import var #extern {self.name}: {self.type}"

class FunctionDecl:
    def __init__(self, name: str, ret: Type, args, variadic: bool):
        self.name = name
        self.ret = ret
        self.args = args
        self.variadic = variadic

    def __str__(self) -> str:
        args = []
        for (name, tpe) in self.args:
            args.append(name + ": " + str(tpe))
        if self.variadic:
            args.append("...")

        ret = f"export import def #extern {self.name}({', '.join(args)})"
        if self.ret != 'void': ret += " -> " + str(self.ret)
        return ret

PRIMITIVES = {
    ('char'): Integer("char"),
    ('signed', 'char'): Integer("char"),
    ('unsigned', 'char'): Integer("char"),
    ('short'): Integer("short"),
    ('short', 'int'): Integer("short"),
    ('signed', 'short'): Integer("short"),
    ('signed', 'short', 'int'): Integer("short"),
    ('unsigned', 'short'): Integer("ushort"),
    ('unsigned', 'short', 'int'): Integer("ushort"),
    ('int'): Integer("int"),
    ('signed'): Integer("int"),
    ('signed', 'int'): Integer("int"),
    ('unsigned',): Integer("uint"),
    ('unsigned', 'int'): Integer("uint"),
    ('long'): Integer("long"),
    ('long', 'int'): Integer("long"),
    ('signed', 'long'): Integer("long"),
    ('signed', 'long', 'int'): Integer("long"),
    ('unsigned', 'long'): Integer("ulong"),
    ('unsigned', 'long', 'int'): Integer("ulong"),
    ('llong'): Integer("int64"),
    ('llong', 'int'): Integer("int64"),
    ('signed', 'llong'): Integer("int64"),
    ('signed', 'llong', 'int'): Integer("int64"),
    ('unsigned', 'llong'): Integer("uint64"),
    ('unsigned', 'llong', 'int'): Integer("uint64"),
    ('__int128'): Integer("int128"),
    ('signed', '__int128'): Integer("int128"),
    ('unsigned', '__int128'): Integer("uint128"),
    ('float'): Float("float"),
    ('double'): Float("double"),
    ('long', 'double'): Float("float80"),
    ('_Bool'): Integer("uint8")
}

class Walker(NodeWalker):
    def walk_Primitive(self, node):
        return PRIMITIVES[node.ast]
    
    def walk_Void(self, node):
        return "void"
    
    def walk_Varargs(self, node):
        return "..."
    
    def walk_Pointer(self, node):
        return Pointer(self.walk(node.type))

    def walk_Array(self, node):
        return Array(self.walk(node.type), int(node.size) if node.size else None)

    def walk_Identifier(self, node):
        return TYPEDEFS[node.ast]

    def walk_Tagged(self, node):
        name = node.ast[1].ast
        if name in TAGGED:
            return TAGGED[name]
        else:
            return IncompleteType(name)
    
    def walk_Function(self, node):
        return Function(list(map(self.walk, node.args)), self.walk(node.ret))

WALKER = Walker()

def get_type(node) -> str:
    tpe = node["type"]
    if "desugaredQualType" in tpe:
        return tpe["desugaredQualType"]
    else: return tpe["qualType"]

def walk_VarDecl(node):
    name = node["name"]
    tpe = PARSER.parse(get_type(node), start = "type_1")
    tpe = WALKER.walk(tpe)
    GLOBALS[name] = VarDecl(name, tpe)

def walk_EnumDecl(node):
    name = node["name"] if "name" in node else ""
    record = Enum(name)
    if name:
        TAGGED[name] = record
    STRUCT_IDS[node["id"]] = record

def walk_TypedefDecl(node):
    name = node["name"]
    inner = node["inner"][0]
    if "ownedTagDecl" in inner:
        id = inner["ownedTagDecl"]["id"]
        struct = STRUCT_IDS[id]
        struct.typename = name
        TYPEDEFS[name] = struct
    else:
        tpe = PARSER.parse(get_type(inner), start = "type_1")
        TYPEDEFS[name] = WALKER.walk(tpe)

def walk_RecordDecl(node):
    name = node["name"] if "name" in node else ""

    fields = []
    last_record = None
    if "inner" in node:
        for field in node["inner"]:
            if field["kind"] == "FieldDecl":
                qual_type = get_type(field)
                if ("anonymous struct at" in qual_type or 
                    "anonymous union" in qual_type or 
                    "anonymous at" in qual_type):
                    tpe = last_record
                else:
                    tpe = PARSER.parse(qual_type, start = "type_1")
                    tpe = WALKER.walk(tpe)
                
                fields.append((field.get("name", ""), tpe))
            elif field["kind"] == "RecordDecl":
                last_record = walk_RecordDecl(field)
    
    if node["tagUsed"] == "struct":
        record = Struct(name, fields)
    else: record = Union(name, fields)

    if name:
        TAGGED[name] = record
    STRUCT_IDS[node["id"]] = record

    return record

def walk_FunctionDecl(node):
    name = node["name"]
    ret = WALKER.walk(PARSER.parse(get_type(node), start = "type_1"))
    if not "storageClass" in node or node["storageClass"] != "static":
        variadic = node.get("variadic", False)
        args = []
        if "inner" in node:
            for (i, param) in enumerate(node["inner"]):
                if param["kind"] != "ParmVarDecl":
                    continue
                argname = param.get("name", "_" + str(i))
                tpe = WALKER.walk(PARSER.parse(get_type(param), start = "type_1"))
                args.append((argname, tpe))


        GLOBALS[name] = FunctionDecl(name, ret, args, variadic)

def walk(node):
    if node["kind"] == "VarDecl": 
        walk_VarDecl(node)
    elif node["kind"] == "TypedefDecl":
        walk_TypedefDecl(node)
    elif node["kind"] == "FunctionDecl":
        walk_FunctionDecl(node)
    elif node["kind"] == "RecordDecl":
        walk_RecordDecl(node)
    elif node["kind"] == "EnumDecl":
        walk_EnumDecl(node)

TAGGED["__va_list_tag"] = VaList()
TYPEDEFS["bool"] = PRIMITIVES["_Bool"]

def main():
    global GLOBALS, TAGGED, TYPEDEFS

    folder = Path(__file__).parent

    with open(folder / "header.json", "w") as fp:
        p = subprocess.Popen(
            ["clang-12", "-Xclang", "-ast-dump=json", "-fsyntax-only", folder / "header.c"], 
            stdout = fp)
        p.wait()

    with open(folder / "header.json", "r") as fp:
        data = json.load(fp)

    data = data["inner"]
    for top_level in data:
        walk(top_level)

    with open(folder / "cstd.pr", "w") as fp:

        has_printed = set()
        def print_references(tpe):
            if isinstance(tpe, Pointer):
                print_references(tpe.type)
            elif isinstance(tpe, Array):
                print_references(tpe.type)
            elif isinstance(tpe, Function):
                for t in tpe.args:
                    print_references(t)
                print_references(tpe.ret)
            elif isinstance(tpe, Record):
                if tpe.typename:
                    tpe = TYPEDEFS[tpe.typename]
                elif tpe.qualname:
                    tpe = TAGGED[tpe.qualname]

                if tpe not in has_printed:
                    has_printed.add(tpe)

                    for _, t in tpe.fields:
                        print_references(t)

                    name = tpe.typename or tpe.name
                    if name:
                        print(f"export type {name}", file = fp, end = "")
                        if tpe.fields:
                            print(f" = {tpe.to_definition()}", file = fp)
                        else: print("", file = fp)

        for g in GLOBALS.values():
            if isinstance(g, FunctionDecl):
                print_references(g.ret)
                for _, tpe in g.args:
                    print_references(tpe)
            elif isinstance(g, VarDecl):
                print_references(g.type)
            print(str(g), file = fp)


if __name__ == "__main__":
    main()