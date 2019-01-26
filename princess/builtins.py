from ctypes import *

from princess.compiler import Modifier, Value, Scope, FunctionT

builtins = Scope(None, level = 0)

# built in types and functions
_builtins = {
    # types
    "char": c_byte,
    "bool": c_bool,

    "byte": c_byte,
    "short": c_short,
    "int": c_long,
    "long": c_longlong,

    "ubyte": c_ubyte,
    "ushort": c_ushort,
    "uint": c_ulong,
    "ulong": c_ulonglong,

    "float": c_float,
    "double": c_double,

    "int8": c_int8,
    "int16": c_int16,
    "int32": c_int32,
    "int64": c_int64,

    "uint8": c_uint8,
    "uint16": c_uint16,
    "uint32": c_uint32,
    "uint64": c_uint64,

    # functions
    "print": FunctionT([...], [])
}

for identifier, v in _builtins.items():
    if isinstance(v, type):
        builtins.create_type(identifier, v)
    elif isinstance(v, FunctionT):
        builtins.create_function(identifier, v.arg_t, v.ret_t)
    else:
        raise NotImplementedError()