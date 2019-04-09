import builtins, ctypes
from princess import env, compiler, model

# types
char = ctypes.c_byte
bool = ctypes.c_bool

byte = ctypes.c_byte
short = ctypes.c_short
int = ctypes.c_long
long = ctypes.c_longlong

ubyte = ctypes.c_ubyte
ushort = ctypes.c_ushort
uint = ctypes.c_ulong
ulong = ctypes.c_ulonglong
    
float = ctypes.c_float
double = ctypes.c_double

int8 = ctypes.c_int8
int16 = ctypes.c_int16
int32 = ctypes.c_int32
int64 = ctypes.c_int64

uint8 = ctypes.c_uint8
uint16 = ctypes.c_uint16
uint32 = ctypes.c_uint32
uint64 = ctypes.c_uint64

_void = ctypes.c_void_p

# functions
def print(*args):
    builtins.print(*(env.p_string_value(arg) for arg in args))

def allocate(type_or_num, value = None):
    tpe = _void

    if isinstance(type_or_num, type):
        tpe = ctypes.POINTER(type_or_num)
        size = ctypes.sizeof(tpe)
    else:
        size = type_or_num.value
    
    if value:
        ptr = ctypes.cast(env.libc.malloc(ctypes.c_size_t(size)), tpe)
        ptr.contents.value = value.value
    else:
        ptr = ctypes.cast(env.libc.calloc(1, ctypes.c_size_t(size)), tpe)

    return ptr

def _allocate_typecheck(scope, type_or_num, value = None):
    type_or_num = type_or_num.value

    if isinstance(type_or_num, model.Identifier):
        if type_or_num.modifier == compiler.Modifier.Type:
            tpe = scope.get_const_value(type_or_num)
            return ctypes.POINTER(tpe)
        else:
            assert False, "TODO"
            return _void
    else:
        if isinstance(type_or_num, model.Integer):
            return _void
        
        tpe = scope.type_lookup(type_or_num)
        return ctypes.POINTER(tpe)

allocate.typecheck_macro = _allocate_typecheck

def free(v: _void):
    env.libc.free(v)
    v.contents = type(v)()
