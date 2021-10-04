from abc import ABC, abstractclassmethod, abstractmethod
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

def escape_name(name: str) -> str:
    if name == "type":
        return "type_"
    return name

# Types

class Type:
    def __init__(self) -> None:
        self.qualname = None

    def to_definition(self) -> str:
        return str(self)
    
    def print_references(self, fp, has_printed: set):
        pass

class Void(Type):
    def __str__(self) -> str:
        return "void"
void = Void()

class Varargs(Type):
    def __str__(self) -> str:
        return "..."
varargs = Varargs()

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
        args = ', '.join(map(str, filter(lambda x: x != void, self.args)))
        return f"({args}) -> ({self.ret if self.ret != void else ''})"

    def print_references(self, fp, has_printed):
        for t in self.args:
            t.print_references(fp, has_printed)
        self.ret.print_references(fp, has_printed)

class Pointer(Type):
    def __init__(self, tpe: Type):
        self.type = tpe

    def __str__(self) -> str:
        if self.type == void:
            return "*"
        else: return f"*{self.type}"

    def print_references(self, fp, has_printed):
        self.type.print_references(fp, has_printed)

class Array(Type):
    def __init__(self, tpe: Type, length = None):
        self.type = tpe
        self.length = length

    def __str__(self) -> str:
        if self.length:
            return f"[{self.length}; {self.type}]"
        else:
            return f"*{self.type}"
    
    def print_references(self, fp, has_printed):
        self.type.print_references(fp, has_printed)

class Record(Type):
    def __init__(self) -> None:
        self.typename = None
        self.fields = []
        self.name = None

    def __str__(self) -> str:
        if self.qualname:
            self = TAGGED[self.qualname]

        name = self.typename or self.name
        if not name: return self.to_definition()
        else: return name

    def print_references(self, fp, has_printed):
        if self.typename:
            self = TYPEDEFS[self.typename]
        elif self.qualname:
            self = TAGGED[self.qualname]
        
        if not self in has_printed:
            has_printed.add(self)
        else: return

        for _, t in self.fields:
            t.print_references(fp, has_printed)

        name = self.typename or self.name
        if name:
            print(f"export type {name}", file = fp, end = "")
            if self.fields:
                print(f" = {self.to_definition()}", file = fp)
            else: print("", file = fp)

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
                    res += escape_name(name) + ": "
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
                    res += escape_name(name) + ": "
                res += str(tpe) + "; "
            res += "}"
            return res

class Enum(Type):
    def __init__(self, name: str, fields):
        self.name = ("e_" + name) if name else None
        self.typename = None
        self.qualname = name
        self.fields = fields
    
    def __str__(self) -> str:
        if self.qualname:
            self = TAGGED[self.qualname]

        name = self.typename or self.name
        if not name: return self.to_definition()
        else: return name

    def to_definition(self) -> str:
        res =  "enum { "
        for (name, value) in self.fields:
            res += name
            if value:
                res += " = "
                res += value
            res += "; "
        res += "}"
        return res

    def print_references(self, fp, has_printed):
        if self.typename:
            self = TYPEDEFS[self.typename]
        elif self.qualname:
            self = TAGGED[self.qualname]
        
        if not self in has_printed:
            has_printed.add(self)
        else: return

        name = self.typename or self.name
        if name:
            print(f"export type {name}", file = fp, end = "")
            if self.fields:
                print(f" = {self.to_definition()}", file = fp)
            else: print("", file = fp)
        

#Global entities

class Declaration(ABC):
    @abstractmethod
    def to_declaration(self, n: int) -> str:
        pass
    
    @abstractmethod
    def print_references(self, fp, has_printed: set):
        pass

class VarDecl(Declaration):
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type

    def to_declaration(self, n: int) -> str:
        ret = f"export import var #extern {self.name}: {self.type}"
        ret += f"\n__VAR_NAMES[{n}] = \"{self.name}\""
        ret += f"\n__VARS[{n}] = *{self.name} !*"
        return ret

    def print_references(self, fp, has_printed: set):
        self.type.print_references(fp, has_printed)

class FunctionDecl(Declaration):
    def __init__(self, name: str, ret: Type, args, variadic: bool):
        self.name = name
        self.ret = ret
        self.args = args
        self.variadic = variadic

    def to_declaration(self, n: int) -> str:
        args = []
        for (name, tpe) in self.args:
            args.append(name + ": " + str(tpe))
        if self.variadic:
            args.append("...")

        ret = f"export import def #extern {self.name}({', '.join(args)})"
        if self.ret != void: ret += " -> " + str(self.ret)
        ret += f"\n__DEF_NAMES[{n}] = \"{self.name}\""
        ret += f"\n__DEFS[{n}] = *{self.name} !() -> ()"

        return ret

    def print_references(self, fp, has_printed: set):
        self.ret.print_references(fp, has_printed)
        for _, tpe in self.args:
            tpe.print_references(fp, has_printed)

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
        return void
    
    def walk_Varargs(self, node):
        return varargs
    
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

def walk_Expression(node):
    kind = node["kind"]
    if kind == "ConstantExpr":
        return walk_Expression(node["inner"][0])
    elif kind == "IntegerLiteral":
        return node["value"]
    elif kind == "UnaryOperator":
        return node["opcode"] + " " + walk_Expression(node["inner"][0])
    elif kind == "BinaryOperator":
        return (walk_Expression(node["inner"][0]) + " " + 
            node["opcode"] + " " +
            walk_Expression(node["inner"][1]))
    return ""

def walk_VarDecl(node):
    name = node["name"]
    tpe = PARSER.parse(get_type(node), start = "type_1")
    tpe = WALKER.walk(tpe)
    GLOBALS[name] = VarDecl(name, tpe)

def walk_EnumDecl(node):
    name = node["name"] if "name" in node else ""
    fields = []
    for decl in node["inner"]:
        if decl["kind"] == "EnumConstantDecl":
            field_name = decl["name"]
            inner = None
            if "inner" in decl:
                inner = walk_Expression(decl["inner"][0])
            
            fields.append((field_name, inner))

    record = Enum(name, fields)
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
    
    with open(folder / "excluded.txt", "r") as fp:
        excluded = set(l.rstrip("\n") for l in fp.readlines())

    data = data["inner"]
    for top_level in data:
        walk(top_level)

    with open(folder / "cstd.pr", "w") as fp:
        
        has_printed = set()
        
        GLOBALS = {k:v for k,v in GLOBALS.items() if k not in excluded}
        DEFS = {k:v for k,v in GLOBALS.items() if isinstance(v, FunctionDecl)}
        VARS = {k:v for k,v in GLOBALS.items() if isinstance(v, VarDecl)}
        
        print(f"export var __DEFS: [{len(DEFS)}; () -> ()]", file = fp)
        print(f"export var __DEF_NAMES: [{len(DEFS)}; string]", file = fp)
        print(f"export var __VARS: [{len(VARS)}; *]", file = fp)
        print(f"export var __VAR_NAMES: [{len(VARS)}; string]", file = fp)

        num_decls = 0
        for g in DEFS.values():
            g.print_references(fp, has_printed)
            print(g.to_declaration(num_decls), file = fp)
            num_decls += 1

        num_decls = 0
        for g in VARS.values():
            g.print_references(fp, has_printed)
            print(g.to_declaration(num_decls), file = fp)
            num_decls += 1


if __name__ == "__main__":
    main()