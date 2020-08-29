import builtins, ctypes

def is_type(t):
    return (t is void or isinstance(t, Function) or
        isinstance(t, type) and (
        issubclass(t, ctypes._SimpleCData) or
        issubclass(t, ctypes._Pointer) or
        issubclass(t, ctypes.Array) or 
        issubclass(t, ctypes.Structure) or
        issubclass(t, ctypes.Union)))

def is_function(t):
    return isinstance(t, Function)

def to_typestring(cls, identifier):
    if isinstance(cls, Function):
        return (to_typestring(cls.return_t, "") + " (*" + identifier + ")(" + 
            ", ".join(map(lambda t: to_typestring(t, ""), cls.parameter_t)) + ")")
    elif issubclass(cls, ctypes._SimpleCData):
        ret = cls.__name__.split("c_")[1]
        if identifier:
            ret += " " + identifier
        return ret
    elif issubclass(cls, ctypes._Pointer):
        return to_typestring(cls._type_, "*" + identifier)
    elif issubclass(cls, ctypes.Array):
        return to_typestring(cls._type_, identifier) + "[" + str(cls._length_) + "]"
    elif issubclass(cls, ctypes.Structure):
        return ("struct {\n" + ";\n".join(
            to_typestring(k[1], k[0]) for k in cls._fields_) + ";\n} " + identifier) 
    elif issubclass(cls, ctypes.Union):
        return ("union {\n" + ";\n".join(
            to_typestring(k[1], k[0]) for k in cls._fields_) + ";\n} " + identifier) 

class Function:
    def __init__(self, return_t, parameter_t, struct_identifier = None):
        self.return_t = return_t
        self.parameter_t = parameter_t
        self.struct_identifier = struct_identifier

    def to_typestring(self, identifier):
        return (self.return_t.to_typestring("") + " (*" + identifier + ")(" + 
            ", ".join(map(lambda t: t.to_typestring(""), self.parameter_t)) + ")")

def Struct(fields):
    class Struct(ctypes.Structure):
        _fields_ = fields
    return Struct

def Union(fields):
    class Union(ctypes.Union):
        _fields = fields
    return Union

class void: pass

# Basic types

bool = ctypes.c_bool

int8 = ctypes.c_int8
uint8 = ctypes.c_uint8
int16 = ctypes.c_int16
uint16 = ctypes.c_uint16
int32 = ctypes.c_int32
uint32 = ctypes.c_uint32
int64 = ctypes.c_int64
uint64 = ctypes.c_uint64

float32 = ctypes.c_float
float64 = ctypes.c_double

byte = uint8
char = uint8
short = int16
ushort = uint16
int = int32
uint = uint32
long = int64
ulong = uint64
float = float32
double = float64
string = ctypes.c_char_p