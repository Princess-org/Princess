#!/usr/bin/python3.9

from abc import ABC, abstractmethod
from dataclasses import dataclass
import os
import subprocess, sys
from typing import List
from pathlib import Path

import re
import clang.cindex as clang

class File:
    def __init__(self, fp) -> None:
        self.GLOBALS = {}
        self.TYPEDEFS = {}
        self.TAGGED = {}
        self.STRUCT_IDS = {}

        self.TYPEDEFS["__builtin_va_list"] = VaList()

        self.has_printed = set()
        self.has_declared = set()
        self.fp = fp
        self.last_record = None

def escape_name(name: str) -> str:
    if name == "type":
        return "type_"
    elif name == "in":
        return "in_"
    elif name == "from":
        return "from_"
    return name
    
# Types

class Type:
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

class String(Type):
    def to_string(self, file: File) -> str:
        return "[char]"
string = String()

class VaList(Type):
    def to_string(self, file: File) -> str:
        return "__va_list_tag"

class IncompleteType(Type):
    def __init__(self, name: str):
        self.name = name
        self.displayname = (name
                            .replace("struct ", "s_")
                            .replace("enum ", "e_")
                            .replace("union ", "u_")
                            .replace("const ", ""))

    def to_string(self, file: File) -> str:
        if self.name in file.TAGGED:
            return file.TAGGED[self.name].to_string(file)
        else: return self.displayname
    
    def to_definition(self, file: File) -> str:
        if self.name in file.TAGGED:
            return file.TAGGED[self.name].to_definition(file)
        else: return self.displayname

    def print_references(self, file: File):
        if self.displayname in file.has_declared or self.displayname in file.has_printed: return
        else: file.has_declared.add(self.displayname)

        if self.displayname and "()" not in self.displayname:
            print(f"export type {self.displayname}", file = file.fp)

class IncompleteTypedef(Type):
    def __init__(self, name: str):
        self.name = name

    def to_string(self, file: File) -> str:
        if self.name in file.TYPEDEFS:
            return file.TYPEDEFS[self.name].to_string(file)
        else: return self.name
    
    def to_definition(self, file: File) -> str:
        if self.name in file.TYPEDEFS:
            return file.TYPEDEFS[self.name].to_definition(file)
        else: return self.name

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
    def __init__(self, args: List[Type], ret: Type):
        self.args = args
        self.ret = ret

    def to_string(self, file: File) -> str:
        args = ', '.join(map(lambda x: x.to_string(file), filter(lambda x: x != void, self.args)))
        return f"def ({args}) -> ({self.ret.to_string(file) if self.ret != void else ''})"
    
    def print_references(self, file: File):
        self.ret.print_references(file)
        for type in self.args:
            type.print_references(file)

class Pointer(Type):
    def __init__(self, tpe: Type):
        self.type = tpe

    def to_string(self, file: File) -> str:
        if self.type == void:
            return "*"
        else: return f"*{self.type.to_string(file)}"

    def print_references(self, file: File):
        self.type.print_references(file)


class Array(Type):
    def __init__(self, tpe: Type, length = None):
        self.type = tpe
        self.length = length

    def to_string(self, file: File) -> str:
        if self.length:
            return f"[{self.length}; {self.type.to_string(file)}]"
        else:
            return f"*{self.type.to_string(file)}"
        
    def print_references(self, file: File):
        self.type.print_references(file)

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
        name = f"{escape_name(self.name)}: " if self.name and not is_anonymous(self.name) else ""
        res += f"{name}{self.type.to_string(file)}"
        return res

class Record(Type):
    def __init__(self) -> None:
        self.fields: List[Field] = []
        self.name = None
        self.displayname = None

    def to_string(self, file: File) -> str:
        if self.name:
            self = file.TAGGED[self.name]

        if not self.name: return self.to_definition(file)
        else: return self.displayname

    def print_references(self, file: File):
        if self.name:
            self = file.TAGGED[self.name]
        
        for f in self.fields:
            if f.type:
                f.type.print_references(file)

        if not self.displayname in file.has_printed:
            file.has_printed.add(self.displayname)
        else: return

        if self.displayname:
            print(f"export type {self.displayname}", file = file.fp, end = "")
            if self.fields:
                print(f" = {self.to_definition(file)}", file = file.fp)
            else: print(file = file.fp)

class Struct(Record):
    def __init__(self, name: str, fields):
        self.name = name
        self.fields = fields
        self.displayname = self.name.replace("struct ", "s_").replace("const ", "") if self.name else None

    def to_definition(self, file: File) -> str:
        if self.fields:
            res = "struct { "
            for field in self.fields:
                if field.type: res += field.to_definition(file) + "; "
            res += "}"
            return res

class Union(Record):
    def __init__(self, name: str, fields):
        self.name = name
        self.fields = fields
        self.displayname = self.name.replace("union ", "u_").replace("const ", "") if self.name else None
    
    def to_definition(self, file: File) -> str:
        if self.fields:
            res = "struct #union { "
            for field in self.fields:
                if field.type: res += field.to_definition(file) + "; "
            res += "}"
            return res

class Enum(Type):
    def __init__(self, name: str, fields):
        self.name = name
        self.fields = fields
        self.displayname = self.name.replace("enum ", "e_").replace("const ", "") if self.name else None
    
    def to_string(self, file: File) -> str:
        if self.name:
            self = file.TAGGED[self.name]

        if not self.name: return self.to_definition(file)
        else: return self.displayname

    def to_definition(self, file: File) -> str:
        res =  "enum { "
        for (name, value) in self.fields:
            res += name
            if value:
                res += " = "
                res += str(value)
            res += "; "
        res += "}"
        return res

    def print_references(self, file: File):
        if self.name:
            self = file.TAGGED[self.name]
        
        if not self.displayname in file.has_printed:
            file.has_printed.add(self.displayname)
        else: return

        if self.displayname and not is_anonymous(self.name):
            print(f"export type {self.displayname}", file = file.fp, end = "")
            if self.fields:
                print(f" = {self.to_definition(file)}", file = file.fp)
            else: print("", file = file.fp)
        

#Global entities

class Declaration(ABC):
    @abstractmethod
    def to_declaration(self, n: int, file: File) -> str:
        pass

    @abstractmethod
    def to_symbol(self, n: int, file: File) -> str:
        pass

class ConstDecl(Declaration):
    def __init__(self, name: str, type: Type, value) -> None:
        self.name = name
        self.type = type
        self.value = value

    def to_declaration(self, file: File) -> str:
        return f"export const {self.name}: {self.type.to_string(file)} = {self.value}"
    
    def to_symbol(self, n: int, file: File) -> str:
        return ""

class VarDecl(Declaration):
    def __init__(self, name: str, type: Type, dllimport: bool):
        self.name = name
        self.type = type
        self.dllimport = dllimport

    def to_declaration(self, file: File) -> str:
        ret = "export import var #extern "
        if self.dllimport:
            ret += "#dllimport "

        ret += f"{self.name}: {self.type.to_string(file)}"
        return ret

    def to_symbol(self, n: int, file: File) -> str:
        variable = ""
        if not self.dllimport:
            variable = f", variable = *{self.name} !*"

        ret = f"__SYMBOLS[{n}] = {{ kind = symbol::SymbolKind::VARIABLE, dllimport = {'true' if self.dllimport else 'false'}, name = \"{self.name}\"{variable}}} !symbol::Symbol"
        return ret

class FunctionDecl(Declaration):
    def __init__(self, name: str, ret: Type, args, variadic: bool, dllimport: bool):
        self.name = name
        self.ret = ret
        self.args = args
        self.variadic = variadic
        self.dllimport = dllimport

    def to_declaration(self, file: File) -> str:
        args = []
        for i, (name, tpe) in enumerate(self.args):
            args.append((name if name else "_" + str(i)) + ": " + tpe.to_string(file))
        if self.variadic:
            args.append("...")
        
        ret = "export import def #extern "
        if self.dllimport:
            ret += "#dllimport "

        ret += f"{self.name}({', '.join(args)})"
        if self.ret != void: ret += " -> " + self.ret.to_string(file)

        return ret

    def to_symbol(self, n: int, file: File) -> str:
        function = ""
        if not self.dllimport:
            function = f", function = *{self.name} !(def () -> ())"

        ret = f"__SYMBOLS[{n}] = {{ kind = symbol::SymbolKind::FUNCTION, dllimport = {'true' if self.dllimport else 'false'}, name = \"{self.name}\"{function}}} !symbol::Symbol"
        return ret

PRIMITIVES = {
    clang.TypeKind.VOID: void,
    clang.TypeKind.CHAR_S: Integer("char"),
    clang.TypeKind.SCHAR: Integer("char"),
    clang.TypeKind.UCHAR: Integer("uint8"),
    clang.TypeKind.SHORT: Integer("short"),
    clang.TypeKind.USHORT: Integer("ushort"),
    clang.TypeKind.INT: Integer("int"),
    clang.TypeKind.UINT: Integer("uint"),
    clang.TypeKind.LONG: Integer("long"),
    clang.TypeKind.ULONG: Integer("ulong"),
    clang.TypeKind.LONGLONG: Integer("int64"),
    clang.TypeKind.ULONGLONG: Integer("uint64"),
    clang.TypeKind.INT128: Integer("int128"),
    clang.TypeKind.UINT128: Integer("uint128"),
    clang.TypeKind.FLOAT: Float("float"),
    clang.TypeKind.DOUBLE: Float("double"),
    clang.TypeKind.LONGDOUBLE: Float("float80"),
    clang.TypeKind.BOOL: Integer("uint8")
}

def is_anonymous(qual_type):
    return ("unnamed struct at" in qual_type or 
        "unnamed union" in qual_type or 
        "unnamed at" in qual_type or
        "anonymous at" in qual_type)


def get_symbols(lib: str):
    if sys.platform == "win32":
        vswhere = os.environ["ProgramFiles(x86)"] + r"\Microsoft Visual Studio\Installer\vswhere.exe"
        dumpbin = subprocess.check_output([vswhere, "-latest", "-find", r"VC\Tools\**\x64\dumpbin.exe"]).splitlines()[0]
        winsdk_bat = subprocess.check_output([vswhere, "-latest", "-find", "**\winsdk.bat"]).splitlines()[0]
        os.environ["VSCMD_ARG_HOST_ARCH"] = "x64"
        os.environ["VSCMD_ARG_TGT_ARCH"] = "x64"
        env = dict([tuple(var.decode().split("=")) for var in subprocess.check_output([winsdk_bat, ">", "nul", "&&", "set"], shell = True).splitlines()])
        lib_path = env["WindowsSdkDir"] + "Lib\\" + env["WindowsSDKVersion"] + "um\\x64\\"
        dout = subprocess.check_output([dumpbin, "/exports", lib_path + lib]).decode().splitlines()
        
        symbols = []
        for i, line in enumerate(dout):
            if "ordinal" in line and "name" in line:
                for j in dout[i+2:]:
                    j = j.strip()
                    if len(j) == 0:
                        break
                    
                    sym = j.split("    ")
                    if len(sym) > 1:
                        sym = sym[1]
                    else: sym = sym[0]
                    symbols.append(sym)
                break
        return symbols
    return []

def parse_struct(name: str, inner: clang.Type, file: File, lookup: bool = False) -> Type:
    anon = is_anonymous(name)

    if name in file.TAGGED: return file.TAGGED[name]
    if not anon: 
        file.TAGGED[name] = IncompleteType(name)
    else: name = None
    
    declaration = inner.get_declaration()
    children = list(declaration.get_children())

    fields = []
    field: clang.Cursor
    index = 0

    for i, field in enumerate(children):
        if field.kind == clang.CursorKind.STRUCT_DECL: 
            if len(list(field.get_children())) == 0: continue
        field_type = parse_type(field.type, file, is_in_struct = True)
        if not field_type: return None

        if is_anonymous(field.spelling) and i + 1 < len(children) and field.type.get_declaration() == children[i + 1].type.get_declaration():
            continue

        spelling = field.spelling
        if not spelling: 
            spelling = "_" + str(index)
            if type(field_type) == IncompleteType:
                field_type = None

        fields.append(Field(field_type, spelling, field.is_bitfield(), field.get_bitfield_width()))
        index += 1

    res = None
    if declaration.kind == clang.CursorKind.STRUCT_DECL:
        res = Struct(name, fields)
    elif declaration.kind == clang.CursorKind.UNION_DECL:
        res = Union(name, fields)
    
    if not anon: 
        file.TAGGED[name] = res
    return res

def parse_enum(name: str, inner: clang.Type, file: File) -> Type:
    if name in file.TAGGED: return file.TAGGED[name]
    file.TAGGED[name] = IncompleteType(name)
    
    declaration = inner.get_declaration()
    
    fields = []
    child: clang.Cursor
    for child in declaration.get_children():
        fields.append((child.spelling, int(child.enum_value)))
        file.GLOBALS[child.spelling] = ConstDecl(child.spelling, PRIMITIVES[clang.TypeKind.INT], int(child.enum_value))

    res = Enum(name, fields)

    file.TAGGED[name] = res
    return res
        
def parse_type(type: clang.Type, file: File, lookup: bool = False, is_in_struct: bool = False) -> Type:
    if type.kind in PRIMITIVES:
        return PRIMITIVES[type.kind]
    elif type.kind == clang.TypeKind.POINTER:
        inner = parse_type(type.get_pointee(), file, lookup, is_in_struct)
        if isinstance(inner, Function): return inner
        return Pointer(inner)
    elif type.kind == clang.TypeKind.CONSTANTARRAY:
        inner = parse_type(type.element_type, file, lookup, is_in_struct)
        if is_in_struct:
            return Array(inner, type.element_count)
        else: return Array(inner)
    elif type.kind == clang.TypeKind.ELABORATED:
        inner: clang.Type = type.get_named_type()
        if inner.kind == clang.TypeKind.TYPEDEF:
            if inner.spelling in file.TYPEDEFS:
                return file.TYPEDEFS[inner.spelling]
            else:
                return IncompleteTypedef(inner.spelling)
        elif inner.kind == clang.TypeKind.RECORD:
            if lookup or is_anonymous(type.spelling):
                return parse_struct(type.spelling, inner, file, lookup)
            else: return IncompleteType(inner.spelling)
        elif inner.kind == clang.TypeKind.ENUM:
            return parse_enum(type.spelling, inner, file)
    elif type.kind == clang.TypeKind.ENUM:
        return parse_enum(type.spelling, type, file)
    elif type.kind == clang.TypeKind.RECORD:
        return parse_struct(type.spelling, type, file, lookup)
    elif type.kind == clang.TypeKind.FUNCTIONPROTO:
        ret = parse_type(type.get_result(), file, lookup, is_in_struct)
        args = [parse_type(tpe, file, lookup, is_in_struct) for tpe in type.argument_types()]
        return Function(args, ret)
    elif type.kind == clang.TypeKind.INCOMPLETEARRAY:
        return Pointer(parse_type(type.get_array_element_type(), file, lookup, is_in_struct))
    elif type.kind == clang.TypeKind.TYPEDEF:
        spelling = type.spelling
        # TODO This doesn't work properly
        if spelling.startswith("const"):
            spelling = spelling.replace("const", "", 1)
            spelling = spelling.strip()
        if spelling.startswith("__unaligned"):
            spelling = spelling.replace("__unaligned", "", 1)
            spelling = spelling.strip()
        if spelling.startswith("volatile"):
            spelling = spelling.replace("volatile", "", 1)
            spelling = spelling.strip()
            
        spelling = spelling.strip()
        return file.TYPEDEFS[spelling]
    
    return IncompleteType(type.spelling)

def process_module(name: str, *libs):
    included = []
    if len(libs) > 0:
        for lib in libs:
            included.extend(get_symbols(lib))


    folder = Path(__file__).parent
    platform = folder / ("windows" if sys.platform == "win32" else "macos" if sys.platform == "darwin" else "linux")

    excluded = set()
    with open(folder / f"{name}.h", "r") as fp:
        for line in fp:
            if line.startswith("%EXCLUDE"):
                line = line.replace("%EXCLUDE", "")
                line = line.strip()
                excluded.update(line.split(" "))

    with open(platform / f"{name}.pr", "w") as fp,\
        open(platform / f"{name}_sym.pr", "w") as fp2:

        file = File(fp)

        def extract(node: clang.Cursor):
            if node.kind == clang.CursorKind.FUNCTION_DECL:
                if node.is_static_method(): return

                dllimport = False
                for child in node.get_children():
                    if child.kind == clang.CursorKind.DLLIMPORT_ATTR:
                        dllimport = True

                name = node.spelling
                args = []

                for child in node.get_arguments():
                    if child.kind == clang.CursorKind.PARM_DECL:
                        tokens = list(child.get_tokens())
                        spelling = escape_name(child.spelling)
                        args.append((spelling, parse_type(child.type, file)))

                ret = parse_type(node.result_type, file)
                
                is_variadic = False
                if node.type.kind == clang.TypeKind.FUNCTIONPROTO:
                    is_variadic = node.type.is_function_variadic()

                file.GLOBALS[name] = FunctionDecl(name, ret, args, is_variadic, dllimport)
            elif node.kind == clang.CursorKind.VAR_DECL:
                if node.storage_class == clang.StorageClass.EXTERN:
                    dllimport = False
                    for child in node.get_children():
                        if child.kind == clang.CursorKind.DLLIMPORT_ATTR:
                            dllimport = True

                    type = parse_type(node.type, file)
                    file.GLOBALS[node.spelling] = VarDecl(node.spelling, type, dllimport)
            elif node.kind == clang.CursorKind.TYPEDEF_DECL:
                name = node.spelling
                underlying = node.underlying_typedef_type
                if underlying.kind == clang.TypeKind.ELABORATED:
                    first_child = next(node.get_children())
                    if first_child.location == underlying.get_declaration().location or underlying.get_named_type().kind == clang.TypeKind.TYPEDEF:
                        type = parse_type(underlying, file, True)
                    else:
                        type = IncompleteType(underlying.spelling)
                else:
                    type = parse_type(underlying, file)
                
                file.TYPEDEFS[name] = type
            elif node.kind == clang.CursorKind.STRUCT_DECL:
                type = node.type
                name = node.type.spelling
                if name.startswith("struct") and node.location == type.get_declaration().location:
                    file.TAGGED[name] = parse_type(type, file, True)
            elif node.kind == clang.CursorKind.UNION_DECL:
                type = node.type
                name = node.type.spelling
                if name.startswith("union") and node.location == type.get_declaration().location:
                    file.TAGGED[name] = parse_type(type, file, True)
            elif node.kind == clang.CursorKind.ENUM_DECL:
                type = node.type
                name = node.type.spelling
                if name.startswith("enum") and node.location == type.get_declaration().location:
                    file.TAGGED[name] = parse_type(type, file, True)
            elif node.kind == clang.CursorKind.MACRO_DEFINITION:
                tokens = list(node.get_tokens())
                if len(tokens) == 2 and tokens[1].kind == clang.TokenKind.LITERAL:
                    if node.spelling != "true" and node.spelling != "false":
                        token = tokens[1]
                        if token.spelling.startswith('"') and token.spelling.endswith('"'):
                            s = token.spelling
                            s = re.sub(r"(?<!\\)\\(\d{1,3})", lambda o: f"\\x{ + int(o.group(1), base = 8):02x}", s)
                            file.GLOBALS[node.spelling] = ConstDecl(node.spelling, string, s)
                        elif token.spelling.isdigit():
                            file.GLOBALS[node.spelling] = ConstDecl(node.spelling, PRIMITIVES[clang.TypeKind.INT], token.spelling)
                        else:
                            try: 
                                float(token.spelling)
                                file.GLOBALS[node.spelling] = ConstDecl(node.spelling, PRIMITIVES[clang.TypeKind.DOUBLE], token.spelling)
                            except ValueError: pass        

        index = clang.Index.create()
        tu = index.parse(folder / f"{name}.h", args = ["-DMUSL"], options = 
                         clang.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD
                         | clang.TranslationUnit.PARSE_SKIP_FUNCTION_BODIES 
                         | clang.TranslationUnit.PARSE_PRECOMPILED_PREAMBLE 
                         | clang.TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD)
        for node in tu.cursor.get_children():
            extract(node)
        
            
        file.GLOBALS = {k:v for k,v in file.GLOBALS.items() if k not in excluded }

        for type in file.TYPEDEFS.values():
            type.print_references(file)
        for type in file.TAGGED.values():
            type.print_references(file)

        for g in file.GLOBALS.values():
            print(g.to_declaration(file), file = fp)

        print(f"import {name}", file = fp2)
        print("import symbol", file = fp2)

        num_decls = 0
        for g in file.GLOBALS.values():
            if isinstance(g, (VarDecl, FunctionDecl)) and not included or g.name in included:
                print(g.to_symbol(num_decls, file), file = fp2)
                num_decls += 1

        print(f"export var __SYMBOLS: [{num_decls}; symbol::Symbol]", file = fp2)

def main():
    if sys.platform != "win32":
        process_module("linux")
        
    process_module("bfd")
    process_module("cstd")
    process_module("ffi")
    process_module("clang")

    if sys.platform == "win32":
        process_module("windows", "User32.lib", "Kernel32.lib", "Dbghelp.lib")

if __name__ == "__main__":
    main()