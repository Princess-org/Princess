import builtins

def is_type(t): # TODO This is ugly, make use of metaclasses
    if isinstance(t, type):
        return issubclass(t, Type)
    else:
        return isinstance(t, Type)

class Type:
    @classmethod
    def to_typestring(cls, identifier):
        return (cls.__name__ + 
            ((" " + identifier) if identifier else ""))

class Pointer(Type):
    def __init__(self, base):
        self.base = base
    
    def to_typestring(self, identifier):
        return self.base.to_typestring("*" + identifier)
    
class Array(Type):
    def __init__(self, n_or_base, base = None):
        if isinstance(n_or_base, builtins.int):
            self.n = n_or_base
            self.base = base
        else:
            self.n = 0
            self.base = n_or_base
    
    def to_typestring(self, identifier):
        return self.base.to_typestring(identifier) + "[" + str(self.n or "") + "]"

class Function(Type):
    def __init__(self, return_t, parameter_t, struct_identifier = None):
        self.return_t = return_t
        self.parameter_t = parameter_t
        self.struct_identifier = struct_identifier

    def to_typestring(self, identifier):
        return (self.return_t.to_typestring("") + " (*" + identifier + ")(" + 
            ", ".join(map(lambda t: t.to_typestring(""), self.parameter_t)) + ")")

class Struct(Type):
    def __init__(self, fields: dict):
        self.fields = fields

    def to_typestring(self, identifier):
        return ("struct {\n" + ";\n".join(
            self.fields[k].to_typestring(k) for k in self.fields) + ";\n} " + identifier)

class Union(Type):
    def __init__(self, fields: dict):
        self.fields = fields

    def to_typestring(self, identifier):
        return ("union {\n" + ";\n".join(
            self.fields[k].to_typestring(k) for k in self.fields) + ";\n} " + identifier)

# Basic types

class void(Type): pass
class bool(Type): pass

class int8(Type): pass
class uint8(Type): pass
class int16(Type): pass
class uint16(Type): pass
class int32(Type): pass
class uint32(Type): pass
class int64(Type): pass
class uint64(Type): pass

class float32(Type): pass
class float64(Type): pass

char = uint8
short = int16
ushort = uint16
int = int32
uint = uint32
long = int64
ulong = uint64
float = float32
double = float64
string = Array(uint8)