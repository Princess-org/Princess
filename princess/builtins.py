from princess.model import PrincessModelBuilderSemantics
from princess.compiler import int_t, assert_error, Modifier, Compiler, error
from princess import types, ast, compiler

def _allocate(function, node, compiler: Compiler):
    assert_error(len(node.args) in (1, 2), "Invalid number of arguments")
    arg = node.args[0].value
    if compiler.scope.type_lookup(arg.type) in int_t:
        function.return_t = (types.void_p,)
        function.parameter_t = (types.size_t,)
    elif len(node.args) == 2:
        tpe = types.ArrayT(compiler.scope.type_lookup(arg))
        function.return_t = (tpe,)

        n = node.args[1].value
        assert_error(n.type in int_t, "Invalid argument")
        call = ast.Call(
            left = ast.Identifier("malloc"),
            args = [ast.CallArg(value = ast.Mul(left = ast.SizeOf(arg), right = n))]
        )
        call.left.type = function
        array = ast.ArrayInitializer(
            length = n,
            value = call,
            type = tpe
        )
        return array
    else:
        tpe = types.PointerT(compiler.scope.type_lookup(arg))
        function.return_t = (tpe,)
        node.args[0].value = ast.SizeOf(arg)

    node.left = ast.Identifier("malloc") 
    return node

def _zero_allocate(function, node, compiler: Compiler):
    assert_error(len(node.args) in (1, 2), "Invalid number of arguments")
    function.parameter_t = (types.size_t, types.size_t)
    
    arg = node.args[0].value
    if compiler.scope.type_lookup(arg.type) in int_t:
        function.return_t = (types.void_p,)
        node.args = [ast.CallArg(value = ast.Integer(1)), ast.CallArg(value = arg)]
    elif len(node.args) == 2:
        tpe = types.ArrayT(compiler.scope.type_lookup(arg))
        function.return_t = (tpe,)

        n = node.args[1].value
        assert_error(n.type in int_t, "Invalid argument")
        call = ast.Call(
            left = ast.Identifier("calloc"),
            args = [ast.CallArg(value = n), ast.CallArg(value = ast.SizeOf(arg))]
        )
        call.left.type = function
        array = ast.ArrayInitializer(
            length = n,
            value = call,
            type = tpe
        )
        return array
    else:
        tpe = types.PointerT(compiler.scope.type_lookup(arg))
        function.return_t = (tpe,)
        node.args = [ast.CallArg(value = ast.Integer(1)), ast.CallArg(value = ast.SizeOf(arg))]

    node.left = ast.Identifier("calloc")
    return node

def _reallocate(function, node, compiler: Compiler):
    node.left = ast.Identifier("realloc")
    return node

def to_c_format_specifier(tpe):
    if types.is_string(tpe):
        return "%s"
    elif types.is_pointer(tpe):
        if tpe.type is types.char:
            return "%s"
        else: return "%p"
    elif types.is_enum(tpe):
        return "%d"
    else:
        try:
            return {
                types.size_t: "%zu",
                types.byte: "%hhd",
                types.int8: "%hhd",
                types.ubyte: "%hhu",
                types.uint8: "%hhu",
                types.char: "%c",
                types.short: "%hd",
                types.int16: "%hd",
                types.ushort: "%hu",
                types.uint16: "%hu",
                types.bool: "%d",
                types.int: "%d",
                types.int32: "%d",
                types.uint: "%u",
                types.uint32: "%u",
                types.long: "%ld",
                types.int64: "%ld",
                types.ulong: "%lu",
                types.uint64: "%lu",
                types.float: "%f",
                types.double: "%f"
            }[tpe]
        except KeyError:
            error("Wrong type %s" % tpe.name)

# TODO Do proper paremeter and return types

def _print(function, node, compiler: Compiler):
    node.args[:] = [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args)))] + node.args

    node.left = ast.Identifier("printf")
    return node

def _error(function, node, compiler: Compiler):
    node.args[:] = [ast.CallArg(value = ast.Identifier("stderr")), ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args)))] + node.args

    node.left = ast.Identifier("fprintf")
    return node


def _concat(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args[1:])))] + node.args[1:]

    node.left = ast.Identifier("sprintf")
    return node

def _reopen(function, node, compiler: Compiler):
    node.left = ast.Identifier("freopen")
    return node

def _open(function, node, compiler: Compiler):
    node.left = ast.Identifier("fopen")
    return node

def _close(function, node, compiler: Compiler):
    node.left = ast.Identifier("fclose")
    return node

def read_write(function, node, compiler: Compiler):
    buffer = node.args[1].value
    if len(node.args) == 3:
        size = node.args[2].value
    else:
        if types.is_array(buffer.type):
            size = ast.Integer(buffer.type.n)
        else:
            assert_error(types.is_pointer(buffer.type), "Illegal argument")
            size = ast.Integer(1)
    node.args[:] = [node.args[1], ast.CallArg(value = ast.SizeOf(buffer.type.type)), ast.CallArg(value = size), node.args[0]]
    return node

def _write(function, node, compiler: Compiler):
    node = read_write(function, node, compiler)
    node.left = ast.Identifier("fwrite")
    return node

def _read(function, node, compiler: Compiler):
    node = read_write(function, node, compiler)
    node.left = ast.Identifier("fread")
    return node

def _write_string(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args[1:])))] + node.args[1:]

    node.left = ast.Identifier("fprintf")
    return node

def _read_line(function, node, compiler: Compiler):
    buffer = node.args[1].value
    if types.is_array(buffer.type):
        size = ast.Integer(buffer.type.n)
    if len(node.args) == 3:
        size = node.args[2].value
    node.args[:] = [node.args[1], ast.CallArg(value = size), node.args[0]]

    node.left = ast.Identifier("fgets")
    return node

def _scan(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type.type)) for a in node.args[1:])))] + node.args[1:]
    
    node.left = ast.Identifier("fscanf")
    return node

def _flush(function, node, compiler: Compiler):
    node.left = ast.Identifier("fflush")
    return node

def _seek(function, node, compiler: Compiler):
    if len(node.args) < 3:
        node.args.append(ast.CallArg(value = ast.Identifier("SEEK_SET")))
    node.left = ast.Identifier("fseek")
    return node

def _tell(function, node, compiler: Compiler):
    node.left = ast.Identifier("ftell")
    return node

def _length(function, node, compiler: Compiler):
    assert_error(len(node.args) == 1, "Illegal arguments")
    arg = node.args[0].value
    node = ast.Sub(left = ast.MemberAccess(left = arg, right = ast.Identifier("size")), right = ast.Integer(1))
    node.type = types.size_t
    return node

def _memcopy(function, node, compiler: Compiler):
    assert_error(len(node.args) == 3, "Illegal arguments")
    node.args[:] = [node.args[1], node.args[0], node.args[2]]
    node.left = ast.Identifier("memcpy")
    return node

def _min(function, node, compiler: Compiler):
    node.left = ast.Identifier("fmin")
    return node
def _max(function, node, compiler: Compiler):
    node.left = ast.Identifier("fmax")
    return node

compiler.builtins.create_function("allocate", types.FunctionT(c = True, macro = _allocate))
compiler.builtins.create_function("zero_allocate", types.FunctionT(c = True, macro = _zero_allocate))
compiler.builtins.create_function("reallocate", types.FunctionT(c = True, return_t = (types.void_p,), parameter_t = (types.void_p, types.size_t), macro = _reallocate))
compiler.builtins.create_function("free", types.FunctionT(c = True, parameter_t = (types.void_p,)))

compiler.builtins.create_function("print", types.FunctionT(c = True, return_t = (types.int,), macro = _print))
compiler.builtins.create_function("error", types.FunctionT(c = True, return_t = (types.int,), macro = _error))
compiler.builtins.create_function("concat", types.FunctionT(c = True, return_t = (types.int,), macro = _concat))

compiler.builtins.create_function("reopen", types.FunctionT(c = True, return_t = (types.FILE_T,), parameter_t = (types.string, types.string, types.FILE_T), macro = _reopen))
compiler.builtins.create_function("open", types.FunctionT(c = True, return_t = (types.FILE_T,), parameter_t = (types.string, types.string), macro = _open))
compiler.builtins.create_function("close", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _close))
compiler.builtins.create_function("write", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _write))
compiler.builtins.create_function("read", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _read))
compiler.builtins.create_function("rewind", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.void_p,)))
compiler.builtins.create_function("write_string", types.FunctionT(c = True, return_t = (types.void,), macro = _write_string))
compiler.builtins.create_function("read_line", types.FunctionT(c = True, return_t = (types.string,), macro = _read_line))
compiler.builtins.create_function("scan", types.FunctionT(c = True, return_t = (types.int,), macro = _scan))
compiler.builtins.create_function("flush", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _flush))
compiler.builtins.create_function("seek", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.FILE_T, types.long, types.int), macro = _seek))
compiler.builtins.create_function("tell", types.FunctionT(c = True, return_t = (types.int,), parameter_t = (types.FILE_T,), macro = _tell))

compiler.builtins.create_function("pow", types.FunctionT(c = True, return_t = (types.double,), parameter_t = (types.double, types.double)))
compiler.builtins.create_function("sqrt", types.FunctionT(c = True, return_t = (types.double,), parameter_t = (types.double,)))
compiler.builtins.create_function("log2", types.FunctionT(c = True, return_t = (types.double,), parameter_t = (types.double,)))

compiler.builtins.create_function("absolute_path", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.string, types.string)))
compiler.builtins.create_function("exit", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.int,)))
compiler.builtins.create_function("starts_with", types.FunctionT(c = True, return_t = (types.bool,), parameter_t = (types.string, types.string)))
compiler.builtins.create_function("assert", types.FunctionT(c = True, return_t = (types.void,), parameter_t = (types.int,)))
compiler.builtins.create_function("length", types.FunctionT(c = True, return_t = (types.size_t,), parameter_t = (types.string,), macro = _length))
compiler.builtins.create_function("memcopy", types.FunctionT(c = True, return_t = (types.void_p,), parameter_t = (types.void_p, types.void_p, types.size_t), macro = _memcopy))

compiler.builtins.create_function("min", types.FunctionT(c = True, return_t = (types.double,), parameter_t = (types.double, types.double), macro = _min))
compiler.builtins.create_function("max", types.FunctionT(c = True, return_t = (types.double,), parameter_t = (types.double, types.double), macro = _max))


compiler.builtins.create_variable(Modifier.Let, "MAX_PATH", types.int)

compiler.builtins.create_variable(Modifier.Let, "SEEK_SET", types.int)
compiler.builtins.create_variable(Modifier.Let, "SEEK_CUR", types.int)
compiler.builtins.create_variable(Modifier.Let, "SEEK_END", types.int)

compiler.builtins.create_variable(Modifier.Let, "stdout", types.FILE_T)
compiler.builtins.create_variable(Modifier.Let, "stderr", types.FILE_T)
compiler.builtins.create_variable(Modifier.Let, "stdin", types.FILE_T)

compiler.builtins.create_variable(Modifier.Let, "args", types.ArrayT(types.string))