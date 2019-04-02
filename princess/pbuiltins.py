import builtins, ctypes
from princess import env

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
    builtins.print(*(env.string_value(arg) for arg in args))