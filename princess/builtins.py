from ctypes import *

from princess.compiler import Modifier, Value, Scope

builtins = Scope(None, level = 0)
builtins.create_function("print", [...], [])
builtins.create_variable(Modifier.Type, "char", value = c_byte)

# built in types and functions
"""builtins = {
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
}"""

def builtin(v):
    if isinstance(v, tuple):
        v = v[1]
        name = v[0]
    else:
        name = v.__name__
    if isinstance(v, type):
        modifier = Modifier.Type
    else:
        raise NotImplementedError()
    
    return Value(
        modifier = modifier, name = name, 
        tpe = None, scope = builtins, 
        identifier = name, value = v)

builtins = {k: builtin(v) for k, v in builtins.items()}