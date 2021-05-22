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
    def __init__(self, size, align = None):
        self.size = size
        self.align = align or size

    def to_definition(self) -> str:
        return str(self)

class IncompleteType(Type):
    def __init__(self, name: str):
        self.name = name
    
    @property
    def size(self):
        return TAGGED[self.name].size

    @property
    def align(self):
        return TAGGED[self.name].align

    def __str__(self) -> str:
        return str(TAGGED[self.name])
    
    def to_definition(self) -> str:
        return TAGGED[self.name].to_definition()
        

class Float(Type):
    def __str__(self) -> str:
        if self.size == 4:
            return "float"
        elif self.size == 8:
            return "double"
        elif self.size == 16:
            return "x86_fp80" # TODO: I think on windows this is also double
        
class Integer(Type):
    def __str__(self) -> str:
        return f"i{self.size * 8}"

class Function(Type):
    def __init__(self, args: list[Type], ret: Type):
        self.args = args
        self.ret = ret
        size = ctypes.sizeof(ctypes.c_void_p)
        super().__init__(size)

    def __str__(self) -> str:
        args = ', '.join(map(str, filter(lambda x: x != 'void', self.args)))
        return f"{self.ret} ({args})*"

class Pointer(Type):
    def __init__(self, tpe: Type):
        self.type = tpe
        size = ctypes.sizeof(ctypes.c_void_p)
        super().__init__(size)

    def __str__(self) -> str:
        if self.type == 'void':
            return "i8*"
        else: return f"{self.type}*"

class Array(Type):
    def __init__(self, tpe: Type, length = None):
        self.type = tpe
        self.length = length
        if length:
            size = length * tpe.size
            align = tpe.align 
        else:
            size = ctypes.sizeof(ctypes.c_void_p)
            align = size
            
        super().__init__(size, align)

    def __str__(self) -> str:
        if self.length:
            return f"[{self.length} x {self.type}]"
        else:
            return f"{self.type}*"

class Record(Type):
    def __str__(self) -> str:
        name = self.typename or self.name
        if not name: return self.to_definition()
        else: return "%" + name

class Struct(Record):
    def __init__(self, name: str, fields: list[Type]):
        if name:
            self.name = "struct." + name
        else: self.name = None

        self.qualname = name
        self.fields = fields
        self.typename = None

        offset = 0
        align = 1
        for field in self.fields:
            offset = math.ceil(offset / field.align) * field.align
            align = math.lcm(align, field.align)
            offset += field.size

        offset = (math.ceil(offset / align) * align)
        super().__init__(offset, align)

    def to_definition(self) -> str:
        if self.fields:
            return "{" + ", ".join(map(str, self.fields)) + "}"
        else: return "opaque"

class Union(Record):
    def __init__(self, name: str, fields: list[Type]):
        if name:
            self.name = "union." + name
        else: self.name = None

        self.qualname = name
        self.fields = fields
        self.typename = None

        if len(fields) == 0:
            size = align = 1
        else:
            size = max(map(lambda x: x.size, fields))
            align = max(map(lambda x: x.align, fields))
        super().__init__(size, align)
    
    def to_definition(self) -> str:
        if self.fields:
            return "{[" + str(self.size) + " x i8]}"
        return "opaque"

class Enum(Type):
    def __init__(self, name: str):
        self.name = name
        super().__init__(ctypes.sizeof(ctypes.c_int))

#Global entities

class VarDecl:
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type

    def __str__(self) -> str:
        return f"@{self.name} = external global {self.type}"

class FunctionDecl:
    def __init__(self, name: str, ret: Type, args: list[Type]):
        self.name = name
        self.ret = ret
        self.args = args

    def __str__(self) -> str:
        args = map(str, filter(lambda x: x != 'void', self.args))
        return f"declare {self.ret} @{self.name}({', '.join(args)})"

PRIMITIVES = {
    ('char'): Integer(ctypes.sizeof(ctypes.c_char)),
    ('signed', 'char'): Integer(ctypes.sizeof(ctypes.c_char)),
    ('unsigned', 'char'): Integer(ctypes.sizeof(ctypes.c_char)),
    ('short'): Integer(ctypes.sizeof(ctypes.c_short)),
    ('short', 'int'): Integer(ctypes.sizeof(ctypes.c_short)),
    ('signed', 'short'): Integer(ctypes.sizeof(ctypes.c_short)),
    ('signed', 'short', 'int'): Integer(ctypes.sizeof(ctypes.c_short)),
    ('unsigned', 'short'): Integer(ctypes.sizeof(ctypes.c_ushort)),
    ('unsigned', 'short', 'int'): Integer(ctypes.sizeof(ctypes.c_ushort)),
    ('int'): Integer(ctypes.sizeof(ctypes.c_int)),
    ('signed'): Integer(ctypes.sizeof(ctypes.c_int)),
    ('signed', 'int'): Integer(ctypes.sizeof(ctypes.c_int)),
    ('unsigned',): Integer(ctypes.sizeof(ctypes.c_uint)),
    ('unsigned', 'int'): Integer(ctypes.sizeof(ctypes.c_uint)),
    ('long'): Integer(ctypes.sizeof(ctypes.c_long)),
    ('long', 'int'): Integer(ctypes.sizeof(ctypes.c_long)),
    ('signed', 'long'): Integer(ctypes.sizeof(ctypes.c_long)),
    ('signed', 'long', 'int'): Integer(ctypes.sizeof(ctypes.c_long)),
    ('unsigned', 'long'): Integer(ctypes.sizeof(ctypes.c_ulong)),
    ('unsigned', 'long', 'int'): Integer(ctypes.sizeof(ctypes.c_ulong)),
    ('llong'): Integer(ctypes.sizeof(ctypes.c_longlong)),
    ('llong', 'int'): Integer(ctypes.sizeof(ctypes.c_longlong)),
    ('signed', 'llong'): Integer(ctypes.sizeof(ctypes.c_longlong)),
    ('signed', 'llong', 'int'): Integer(ctypes.sizeof(ctypes.c_longlong)),
    ('unsigned', 'llong'): Integer(ctypes.sizeof(ctypes.c_ulonglong)),
    ('unsigned', 'llong', 'int'): Integer(ctypes.sizeof(ctypes.c_ulonglong)),
    ('__int128'): Integer(16),
    ('signed', '__int128'): Integer(16),
    ('unsigned', '__int128'): Integer(16),
    ('float'): Float(ctypes.sizeof(ctypes.c_float)),
    ('double'): Float(ctypes.sizeof(ctypes.c_double)),
    ('long', 'double'): Float(ctypes.sizeof(ctypes.c_longdouble))
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
                
                fields.append(tpe)
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
    function = PARSER.parse(get_type(node), start = "function_decl")
    if not "storageClass" in node or node["storageClass"] != "static":
        GLOBALS[name] = FunctionDecl(
            name, 
            WALKER.walk(function.ret), 
            list(map(lambda x: WALKER.walk(x), function.args))
        )

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

TAGGED["__va_list_tag"] = Struct("__va_list_tag", [])

def main():
    global GLOBALS, TAGGED, TYPEDEFS

    folder = Path(__file__).parent
    data_file = folder / "header.pickle"

    if data_file.is_file():
        with open(data_file, "rb") as fp:
            GLOBALS = pickle.load(fp)
            TAGGED = pickle.load(fp)
            TYPEDEFS = pickle.load(fp)
    else:
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

        with open(data_file, "wb") as fp:
            pickle.dump(GLOBALS, fp)
            pickle.dump(TAGGED, fp)
            pickle.dump(TYPEDEFS, fp)

    with open(folder / "header.ll", "w") as fp:

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
                if tpe.qualname:
                    tpe = TAGGED[tpe.qualname]
                else: tpe = TYPEDEFS[tpe.typename]
                if tpe.name not in has_printed:
                    has_printed.add(tpe.name)
                    print(f"%{tpe.typename or tpe.name} = type {tpe.to_definition()}", file = fp)

                    for t in tpe.fields:
                        print_references(t)

        for g in GLOBALS.values():
            if g.name in sys.argv:
                print(str(g), file = fp)
                if isinstance(g, FunctionDecl):
                    print_references(g.ret)
                    for v in g.args:
                        print_references(v)
                elif isinstance(g, VarDecl):
                    print_references(g.type)


if __name__ == "__main__":
    main()