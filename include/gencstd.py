#!/usr/bin/python3.9

from abc import ABC, abstractmethod
from dataclasses import dataclass
import subprocess, json, sys
from typing import List
import tatsu
from tatsu.walkers import NodeWalker
from pathlib import Path

GRAMMAR = """\
    function_decl = ret: type_1 '(' args: ','.{ type_1 | varargs } ')';

    sign = 'signed' | 'unsigned';
    modifier = 'long' 'long' @:`'llong'` | 'long' | 'short';
    specifier = 'int' | 'char' | 'float' | 'double' | '__int128' | '_Bool';
    winptr = '__ptr32' | '__sptr' | '__uptr';

    identifier::Identifier      = /(?!\d)\w+/;
    tagged_idenitifier::Tagged  = ('struct' | 'union' | 'enum') identifier;
    primitive::Primitive        = [sign] [modifier] specifier | [sign] modifier | sign;
    pointer::Pointer            = type: type '*' {winptr | 'const' | 'volatile' | 'restrict'};
    array::Array                = type: type '[' size: [/\d+/] ']';
    function::Function          = ret: type / \(\*\)/ '(' args: ','.{ type_1 | varargs } ')';

    void::Void = 'void';
    varargs::Varargs = '...';

    type = pointer | function | array | void | primitive | tagged_idenitifier | identifier;
    type_1 = {winptr | 'const' | 'volatile' | '__unaligned'} @:type;
"""

PARSER = tatsu.compile(GRAMMAR, asmodel = True)

def parse(s):
    return PARSER.parse(s, start = "type_1")

class File:
    def __init__(self, fp) -> None:
        self.GLOBALS = {}
        self.TYPEDEFS = {}
        self.TAGGED = {}
        self.STRUCT_IDS = {}

        self.TAGGED["__va_list_tag"] = VaList()
        self.TYPEDEFS["bool"] = PRIMITIVES["_Bool"]

        self.has_printed = set()
        self.fp = fp
        self.last_record = None

def escape_name(name: str) -> str:
    if name == "type":
        return "type_"
    return name
    
# Types

class Type:
    def __init__(self) -> None:
        self.qualname = None

    @abstractmethod
    def to_string(self, file: File) -> str:
        pass

    def to_definition(self, file: File) -> str:
        return self.to_string(file)
    
    def print_references(self, file: File):
        pass

class Void(Type):
    def to_string(self, file: File) -> str:
        return "void"
void = Void()

class Varargs(Type):
    def to_string(self, file: File) -> str:
        return "..."
varargs = Varargs()

class VaList(Type):
    def to_string(self, file: File) -> str:
        return "__va_list_tag"

class IncompleteType(Type):
    def __init__(self, name: str):
        self.name = name

    def to_string(self, file: File) -> str:
        return file.TAGGED[self.name].to_string(file)
    
    def to_definition(self, file: File) -> str:
        return file.TAGGED[self.name].to_definition(file)

class Float(Type):
    def __init__(self, name):
        self.name = name

    def to_string(self, file: File) -> str:
        return self.name
        
class Integer(Type):
    def __init__(self, name):
        self.name = name

    def to_string(self, file: File) -> str:
        return self.name

class Function(Type):
    def __init__(self, args: list[Type], ret: Type):
        self.args = args
        self.ret = ret

    def to_string(self, file: File) -> str:
        args = ', '.join(map(lambda x: x.to_string(file), filter(lambda x: x != void, self.args)))
        return f"({args}) -> ({self.ret.to_string(file) if self.ret != void else ''})"

class Pointer(Type):
    def __init__(self, tpe: Type):
        self.type = tpe

    def to_string(self, file: File) -> str:
        if self.type == void:
            return "*"
        else: return f"*{self.type.to_string(file)}"


class Array(Type):
    def __init__(self, tpe: Type, length = None):
        self.type = tpe
        self.length = length

    def to_string(self, file: File) -> str:
        if self.length:
            return f"[{self.length}; {self.type.to_string(file)}]"
        else:
            return f"*{self.type.to_string(file)}"

@dataclass
class Field:
    type: Type
    name: str
    is_bitfield: bool
    bit_size: int

    def to_definition(self, file: File) -> str:
        res = ""
        if self.is_bitfield:
            res += f"#bits({self.bit_size}) "
        res += f"{escape_name(self.name)}: {self.type.to_string(file)}"
        return res

class Record(Type):
    def __init__(self) -> None:
        self.typename = None
        self.fields: List[Field] = []
        self.name = None

    def to_string(self, file: File) -> str:
        if self.qualname:
            self = file.TAGGED[self.qualname]

        name = self.typename or self.name
        if not name: return self.to_definition(file)
        else: return name

    def print_references(self, file: File):
        if self.typename:
            self = file.TYPEDEFS[self.typename]
        elif self.qualname:
            self = file.TAGGED[self.qualname]
        
        if not self in file.has_printed:
            file.has_printed.add(self)
        else: return

        for f in self.fields:
            f.type.print_references(file)

        name = self.typename or self.name
        if name:
            print(f"export type {name}", file = file.fp, end = "")
            if self.fields:
                print(f" = {self.to_definition(file)}", file = file.fp)
            else: print("", file = file.fp)

class Struct(Record):
    def __init__(self, name: str, fields):
        self.name = ("s_" + name) if name else None
        self.fields = fields
        self.qualname = name
        self.typename = None

    def to_definition(self, file: File) -> str:
        if self.fields:
            res = "struct { "
            for field in self.fields:
                res += field.to_definition(file) + "; "
            res += "}"
            return res

class Union(Record):
    def __init__(self, name: str, fields):
        self.name = ("u_" + name) if name else None
        self.fields = fields
        self.qualname = name
        self.typename = None
    
    def to_definition(self, file: File) -> str:
        if self.fields:
            res = "struct #union { "
            for field in self.fields:
                res += field.to_definition(file) + "; "
            res += "}"
            return res

class Enum(Type):
    def __init__(self, name: str, fields):
        self.name = ("e_" + name) if name else None
        self.typename = None
        self.qualname = name
        self.fields = fields
    
    def to_string(self, file: File) -> str:
        if self.qualname:
            self = file.TAGGED[self.qualname]

        name = self.typename or self.name
        if not name: return self.to_definition(file)
        else: return name

    def to_definition(self, file: File) -> str:
        res =  "enum { "
        for (name, value) in self.fields:
            res += name
            if value:
                res += " = "
                res += value
            res += "; "
        res += "}"
        return res

    def print_references(self, file: File):
        if self.typename:
            self = file.TYPEDEFS[self.typename]
        elif self.qualname:
            self = file.TAGGED[self.qualname]
        
        if not self in file.has_printed:
            file.has_printed.add(self)
        else: return

        name = self.typename or self.name
        if name:
            print(f"export type {name}", file = file.fp, end = "")
            if self.fields:
                print(f" = {self.to_definition(file)}", file = file.fp)
            else: print("", file = file.fp)
        

#Global entities

class Declaration(ABC):
    @abstractmethod
    def to_declaration(self, n: int) -> str:
        pass

class ConstDecl(Declaration):
    def __init__(self, name: str, type: Type, value: str) -> None:
        self.name = name
        self.type = type
        self.value = value

    def to_declaration(self, n: int, file: File) -> str:
        return f"export const {self.name}: {self.type.to_string(file)} = {self.value}"

class VarDecl(Declaration):
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type

    def to_declaration(self, n: int, file: File) -> str:
        ret = f"export import var #extern {self.name}: {self.type.to_string(file)}"
        ret += f"\n__VAR_NAMES[{n}] = \"{self.name}\""
        ret += f"\n__VARS[{n}] = *{self.name} !*"
        return ret

class FunctionDecl(Declaration):
    def __init__(self, name: str, ret: Type, args, variadic: bool):
        self.name = name
        self.ret = ret
        self.args = args
        self.variadic = variadic

    def to_declaration(self, n: int, file: File) -> str:
        args = []
        for (name, tpe) in self.args:
            args.append(name + ": " + tpe.to_string(file))
        if self.variadic:
            args.append("...")

        ret = f"export import def #extern {self.name}({', '.join(args)})"
        if self.ret != void: ret += " -> " + self.ret.to_string(file)
        ret += f"\n__DEF_NAMES[{n}] = \"{self.name}\""
        ret += f"\n__DEFS[{n}] = *{self.name} !() -> ()"

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
    def __init__(self, file: File) -> None:
        super().__init__()
        self.file = file

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
        return self.file.TYPEDEFS[node.ast]

    def walk_Tagged(self, node):
        name = node.ast[1].ast
        if name in self.file.TAGGED:
            return self.file.TAGGED[name]
        else:
            return IncompleteType(name)
    
    def walk_Function(self, node):
        return Function(list(map(self.walk, node.args)), self.walk(node.ret))

def get_type(node) -> str:
    tpe = node["type"]
    if "desugaredQualType" in tpe:
        desugared = tpe["desugaredQualType"]
        if is_anonymous(desugared):
            return tpe["qualType"]
        return desugared
    else: return tpe["qualType"]

def walk_Expression(node):
    kind = node["kind"]
    if kind == "ConstantExpr":
        return walk_Expression(node["inner"][0])
    elif kind == "IntegerLiteral":
        return node["value"]
    elif kind == "UnaryOperator":
        opcode = node["opcode"]
        
        if opcode == "!": opcode = "not"

        return "(" + opcode + " " + walk_Expression(node["inner"][0]) + ")"
    elif kind == "BinaryOperator":
        opcode = node["opcode"]

        if opcode == "&&": opcode = "and"
        elif opcode == "||": opcode = "or"

        return ("(" + walk_Expression(node["inner"][0]) + " " + 
            opcode + " " + walk_Expression(node["inner"][1]) + ")")
    elif kind == "ParenExpr":
        return "(" + walk_Expression(node["inner"][0]) + ")"
    elif kind == "DeclRefExpr":
        return node["referencedDecl"]["name"]
    elif kind == "ConditionalOperator":
        return (walk_Expression(node["inner"][1]) + " if " +
            walk_Expression(node["inner"][0]) + " else " +
            walk_Expression(node["inner"][2]))
    return ""

def walk_VarDecl(node, file: File):
    name = node["name"]
    tpe = parse(get_type(node))
    tpe = Walker(file).walk(tpe)
    file.GLOBALS[name] = VarDecl(name, tpe)

def walk_EnumDecl(node, file: File):
    name = node["name"] if "name" in node else ""
    fields = []
    for decl in node["inner"]:
        if decl["kind"] == "EnumConstantDecl":
            field_name = decl["name"]
            inner = None
            if "inner" in decl:
                inner = walk_Expression(decl["inner"][0])
            
            fields.append((field_name, inner))

    #if not name:
    prev = "0"
    for f in fields:
        file.GLOBALS[f[0]] = ConstDecl(f[0], PRIMITIVES["int"], f[1] if f[1] else prev)
        prev = f[0] + " + 1"

    record = Enum(name, fields)
    if name:
        file.TAGGED[name] = record
    file.STRUCT_IDS[node["id"]] = record

def is_anonymous(qual_type):
    return ("unnamed struct at" in qual_type or 
        "unnamed union" in qual_type or 
        "unnamed at" in qual_type or
        "anonymous at" in qual_type)

def walk_TypedefDecl(node, file: File):

    name = node["name"]
    inner = node["inner"][0]
    if "ownedTagDecl" in inner:
        id = inner["ownedTagDecl"]["id"]
        struct = file.STRUCT_IDS[id]
        struct.typename = name
        file.TYPEDEFS[name] = struct
        if not struct.name:
            incomplete_type = Walker(file).walk(parse(get_type(inner)))
            file.TAGGED[incomplete_type.name] = struct
    else:
        tpe = get_type(inner)
        if is_anonymous(tpe):
            record = file.last_record
        else:
            record = Walker(file).walk(parse(tpe))
        file.TYPEDEFS[name] = record

def walk_RecordDecl(node, file: File):
    name = node["name"] if "name" in node else ""

    fields = []
    if "inner" in node:
        for i, field in enumerate(node["inner"]):
            if field["kind"] == "FieldDecl":
                is_bitfield = field.get("isBitfield", False)
                bit_size = 0
                if is_bitfield:
                    bit_size = int(field["inner"][0]["value"])

                qual_type = get_type(field)
                if is_anonymous(qual_type):
                    tpe = file.last_record
                else:
                    tpe = Walker(file).walk(parse(qual_type))
                
                field_name = field.get("name", "" if is_bitfield else "_" + str(i))
                fields.append(Field(tpe, field_name, is_bitfield, bit_size))
            elif field["kind"] == "RecordDecl":
                file.last_record = walk_RecordDecl(field, file)
    
    if node["tagUsed"] == "struct":
        record = Struct(name, fields)
    else: record = Union(name, fields)

    file.last_record = record

    if name:
        file.TAGGED[name] = record
    file.STRUCT_IDS[node["id"]] = record

    return record

def walk_FunctionDecl(node, file: File):
    name = node["name"]
    ret = Walker(file).walk(parse(get_type(node)))
    if node.get("storageClass", None) != "static":
        variadic = node.get("variadic", False)
        args = []
        if "inner" in node:
            for (i, param) in enumerate(node["inner"]):
                if param["kind"] != "ParmVarDecl":
                    continue
                argname = escape_name(param.get("name", "_" + str(i)))
                tpe = Walker(file).walk(parse(get_type(param)))
                args.append((argname, tpe))


        file.GLOBALS[name] = FunctionDecl(name, ret, args, variadic)

def walk(node, file: File):
    if node["kind"] == "VarDecl": 
        walk_VarDecl(node, file)
    elif node["kind"] == "TypedefDecl":
        walk_TypedefDecl(node, file)
    elif node["kind"] == "FunctionDecl":
        walk_FunctionDecl(node, file)
    elif node["kind"] == "RecordDecl":
        walk_RecordDecl(node, file)
    elif node["kind"] == "EnumDecl":
        walk_EnumDecl(node, file)

ALL_DEFINITIONS = {}

def process_module(name: str):
    folder = Path(__file__).parent

    with open(folder / f"{name}.json", "w") as fp:
        p = subprocess.Popen(
            ["clang" if sys.platform == "win32" else "clang-13", "-Xclang", "-ast-dump=json", "-fsyntax-only", folder / f"{name}.h"], 
            stdout = fp)
        p.wait()

    with open(folder / f"{name}.json", "r") as fp:
        data = json.load(fp)
        data = data["inner"]
    
    excluded = set()
    with open(folder / f"{name}.h", "r") as fp:
        for line in fp:
            if line.startswith("%EXCLUDE"):
                line = line.replace("%EXCLUDE", "")
                line = line.strip()
                excluded = set(line.split(" "))

    with open(folder / f"{name}.pr", "w") as fp:
        file = File(fp)

        for top_level in data:
            walk(top_level, file)
        
        file.GLOBALS = {k:v for k,v in file.GLOBALS.items() if k not in excluded and k not in ALL_DEFINITIONS}
        ALL_DEFINITIONS.update(file.GLOBALS)

        DEFS = {k:v for k,v in file.GLOBALS.items() if isinstance(v, FunctionDecl)}
        VARS = {k:v for k,v in file.GLOBALS.items() if isinstance(v, VarDecl)}
        CONSTS = {k:v for k,v in file.GLOBALS.items() if isinstance(v, ConstDecl)}
        
        print(f"export var __DEFS: [{len(DEFS)}; () -> ()]", file = fp)
        print(f"export var __DEF_NAMES: [{len(DEFS)}; string]", file = fp)
        print(f"export var __VARS: [{len(VARS)}; *]", file = fp)
        print(f"export var __VAR_NAMES: [{len(VARS)}; string]", file = fp)

        for g in CONSTS.values():
            print(g.to_declaration(0, file), file = fp)

        for type in file.TYPEDEFS.values():
            type.print_references(file)
        for type in file.TAGGED.values():
            type.print_references(file)

        num_decls = 0
        for g in DEFS.values():
            print(g.to_declaration(num_decls, file), file = fp)
            num_decls += 1

        num_decls = 0
        for g in VARS.values():
            print(g.to_declaration(num_decls, file), file = fp)
            num_decls += 1

    return file

def main():
    if sys.platform != "win32":
        process_module("linux")

    process_module("cstd")
    process_module("ffi")

    if sys.platform == "win32":
        process_module("windows")

if __name__ == "__main__":
    main()