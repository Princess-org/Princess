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

# functions
def print(*args):
    builtins.print(*(env.p_string_value(arg) for arg in args))

def allocate(_type_or_num, value = None):
    tpe = ctypes.c_void_p

    if isinstance(_type_or_num, type):
        tpe = ctypes.POINTER(_type_or_num)
        size = ctypes.sizeof(tpe)
    else:
        size = _type_or_num.value
    
    if value:
        ptr = ctypes.cast(env.libc.malloc(ctypes.c_size_t(size)), tpe)
        ptr.contents.value = value.value
    else:
        ptr = ctypes.cast(env.libc.calloc(1, ctypes.c_size_t(size)), tpe)

    return ptr

def _allocate_typecheck(scope, _type_or_num, value = None):
    _type_or_num = _type_or_num.value

    if isinstance(_type_or_num, model.Identifier):
        if _type_or_num.modifier == compiler.Modifier.Type:
            tpe = scope.get_const_value(_type_or_num)
            return ctypes.POINTER(tpe)
        else:
            assert False, "TODO"
            return ctypes.c_void_p
    else:
        if isinstance(_type_or_num, model.Integer):
            return ctypes.c_void_p
        
        tpe = scope.type_lookup(_type_or_num)
        return ctypes.POINTER(tpe)

allocate.typecheck_macro = _allocate_typecheck

def free(v):
    env.libc.free(v)
    v.contents = type(v)()
