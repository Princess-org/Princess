import builtins, ctypes

def is_type(t):
    return isinstance(t, Type)

def is_function(t):
    return isinstance(t, FunctionT)

def is_pointer(t):
    return isinstance(t, PointerT)

def is_array(t):
    return isinstance(t, ArrayT)

def is_struct(t):
    return isinstance(t, (Struct, Union))

class Type:
    def __init__(self, c_type, name = None):
        self._c_type = c_type
        self.name = name
    
    @property
    def c_type(self):
        return self._c_type

    def _to_typestring(self, identifier, recursive = False):
        res = self.c_type.__name__.split("c_")[1]
        if identifier:
            res = res + " " + identifier
        return res

    def to_typestring(self, identifier, recursive = False, named = True):
        if named and self.name:
            res = self.name
            if recursive: 
                if isinstance(self, Struct):
                    res = "struct " + res
                elif isinstance(self, Union):
                    res = "union " + res
            if identifier:
                res = res + " " + identifier
        else:
            res = self._to_typestring(identifier, recursive)
        return res

    def __hash__(self):
        return hash(self.c_type)
    
    def __eq__(self, value):
        if is_type(value):
            return self.c_type == value.c_type
        return False

    def __str__(self):
        return self.to_typestring("")

class PointerT(Type):
    def __init__(self, tpe, name = None):
        self.type = tpe
        super().__init__(None, name = name)
    
    @property
    def c_type(self):
        if self.type.c_type is ctypes.c_char:
            return ctypes.c_char_p
        else: return ctypes.POINTER(self.type.c_type)
    
    def _to_typestring(self, identifier, recursive = False):
        tpe = self.type or void
        return tpe.to_typestring("*" + identifier, recursive)

class ArrayT(Type):
    def __init__(self, tpe, n = None, name = None):
        self.type = tpe
        self.n = n
        super().__init__(None, name = name)

    @property
    def c_type(self):
        return self.type.c_type * self.n
    
    def _to_typestring(self, identifier, recursive = False):
        s = str(self.n) if self.n else ""
        return self.type.to_typestring(identifier, recursive) + "[" + s + "]" 

class Struct(Type):
    def __init__(self, fields, name = None):
        self.fields = fields
        self.cache = None
        super().__init__(None, name = name)

    @property
    def c_type(self):
        if self.cache:
            return self.cache
        class Struct(ctypes.Structure):
            _fields_ = [(f[0], f[1].c_type) for f in self.fields]
        
        self.cache = Struct
        return self.cache
    
    def _to_typestring(self, identifier, recursive = False):
        name = self.name or ""
        return ("struct " + name + " {" + "; ".join(
            f[1].to_typestring(f[0], recursive = True) for f in self.fields) + ";} " + identifier) 
    
class Union(Type):
    def __init__(self, fields, name = None):
        self.fields = fields
        self.cache = None
        super().__init__(None, name = name)
    
    @property
    def c_type(self):
        if self.cache:
            return self.cache
        class Struct(ctypes.Union):
            _fields_ = [(f[0], f[1].c_type) for f in self.fields]
        
        self.cache = Struct
        return self.cache

    def _to_typestring(self, identifier, recursive = False):
        name = self.name or ""
        return ("union " + name + " {" + "; ".join(
            f[1].to_typestring(f[0], recursive = True) for f in self.fields) + ";} " + identifier)

class Enum(Type):
    def __init__(self, tpe, fields, name = None):
        self.type = tpe
        self.fields = fields
        super().__init__(None, name = name)
    
    @property
    def c_type(self):
        return self.type.c_type

    def _to_typestring(self, identifier, recursive = False):
        return ("enum {" + ", ".join(
            f[0] + " = " + str(f[1]) for f in self.fields
        ) + "} " + identifier)
    

void = Type(None, "void")
void_p = Type(ctypes.c_void_p, "void*")
size_t = Type(ctypes.c_size_t, "size_t")


class FunctionT(Type):
    def __init__(self, return_t = (void,), parameter_t = (), struct_identifier = None, macro = None, name = None):
        self.return_t = return_t
        self.parameter_t = parameter_t
        self.macro = macro
        self.struct_identifier = struct_identifier
        super().__init__(None, name = name)

    def _to_typestring(self, identifier, recursive = False):
        return (self.return_t[0].to_typestring("") + " (*" + identifier + ")(" + 
            ", ".join(map(lambda t: t.to_typestring(""), self.parameter_t)) + ")")

# Basic types

FILE_T = Type(None, "FILE*")

bool = Type(ctypes.c_bool, "bool")

int8 = Type(ctypes.c_int8, "int8")
uint8 = Type(ctypes.c_uint8, "uint8")
int16 = Type(ctypes.c_int16, "int16")
uint16 = Type(ctypes.c_uint16, "uint16")
int32 = Type(ctypes.c_int32, "int32")
uint32 = Type(ctypes.c_uint32, "uint32")
int64 = Type(ctypes.c_int64, "int64")
uint64 = Type(ctypes.c_uint64, "uint64")

float32 = Type(ctypes.c_float, "float32")
float64 = Type(ctypes.c_double, "float64")

byte = Type(ctypes.c_byte, "byte")
ubyte = Type(ctypes.c_ubyte, "ubyte")
char = Type(ctypes.c_char, "char")
short = Type(ctypes.c_short, "short")
ushort = Type(ctypes.c_ushort, "ushort")
int = Type(ctypes.c_int, "int")
uint = Type(ctypes.c_uint, "uint")
long = Type(ctypes.c_long, "long")
ulong = Type(ctypes.c_ulong, "ulong")
float = Type(ctypes.c_float, "float")
double = Type(ctypes.c_double, "double")
string = Type(ctypes.c_char_p, "char*")