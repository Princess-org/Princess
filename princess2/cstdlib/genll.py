import re
import subprocess, json, ctypes, math
import tatsu
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
    function::Function          = ret: type '(' '*' ')' '(' args: ','.{ type_1 | varargs } ')';

    void::Void = 'void';
    varargs::Varargs = '...';

    type = pointer | function | array | void | primitive | tagged_idenitifier | identifier;
    type_1 = ['const'] ['volatile'] @:type;
"""

PARSER = tatsu.compile(GRAMMAR, asmodel = True)

GLOBALS = {}
TAGGED = {}

# Types

class Type:
    def __init__(self, size, align = None):
        self.size = size
        self.align = align or size

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
        if length == 0:
            size = ctypes.sizeof(ctypes.c_void_p)
            align = size
        else:
            size = length * tpe.size
            align = tpe.align
        super().__init__(size, align)

class Struct(Type):
    def __init__(self, name: str, fields: list[Type]):
        self.name = name
        self.fields = fields

        offset = 0
        align = 1
        for field in self.fields:
            offset = math.ceil(offset / field.align()) * field.align()
            align = math.lcm(align, field.align())
            offset += field.size()

        offset = (math.ceil(offset / align) * align)
        super().__init__(offset, align)

class Union(Type):
    def __init__(self, name: str, fields: list[Type]):
        self.name = name
        self.fields = fields
        size = max(map(lambda x: x.size(), fields))
        align = max(map(lambda x: x.align(), fields))
        super().__init__(size, align)

#Global entities

class VarDecl:
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type

class TypeDefDecl:
    def __init__(self, name: str, type: Type):
        self.name = name
        self.type = type
    
    def __str__(self) -> str:
        return f"%{self.name} = type {self.type}"

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

WALKER = Walker()

def walk_VarDecl(node):
    pass

def walk_TypedefDecl(node):
    name = node["name"]

def walk_FunctionDecl(node):
    name = node["name"]
    function = PARSER.parse(node["type"]["qualType"], start = "function_decl")
    GLOBALS[name] = FunctionDecl(
        name, 
        WALKER.walk(function.ret), 
        map(lambda x: WALKER.walk(x), function.args)
    )

def walk(node):
    if node["kind"] == "VarDecl": 
        walk_VarDecl(node)
    elif node["kind"] == "TypedefDecl":
        walk_TypedefDecl(node)
    elif node["kind"] == "FunctionDecl":
        walk_FunctionDecl(node)

def main():
    folder = Path(__file__).parent

    with open(folder / "header.json", "w") as fp:
        p = subprocess.Popen(
            ["clang", "-Xclang", "-ast-dump=json", "-fsyntax-only", folder / "header.c"], 
            stdout = fp)
        p.wait()

    with open(folder / "header.json", "r") as fp:
        data = json.load(fp)

    data = data["inner"]
    for top_level in data:
        walk(top_level)

    print("\n".join(map(str, GLOBALS.values())))

if __name__ == "__main__":
    main()