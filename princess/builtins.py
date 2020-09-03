from princess.compiler import int_t, assert_error, Modifier, Compiler
from princess import types, ast, compiler

def _allocate(function, node, compiler: Compiler):
    arg = node.args[0].value
    if compiler.scope.type_lookup(arg.type) in int_t:
        function.return_t = (types.void_p,)
        function.parameter_t = (types.size_t,)
    else:
        function.return_t = (types.PointerT(compiler.scope.type_lookup(arg)),)
        if len(node.args) == 2:
            n = node.args[1].value
            assert_error(n.type in int_t, "Invalid argument")
            node.args[:] = [ast.CallArg(value = ast.Mul(left = ast.SizeOf(arg), right = n))]
        else:
            node.args[0].value = ast.SizeOf(arg)

    node.left = ast.Identifier("malloc")
    return node

def to_c_format_specifier(tpe):
    if types.is_array(tpe) and tpe.type is types.char:
        return "%s"
    elif types.is_pointer(tpe):
        return "%p"
    else:
        return {
            types.size_t: "%zu",
            types.byte: "%hhd",
            types.ubyte: "%hhu",
            types.char: "%c",
            types.short: "%hd",
            types.ushort: "%hu",
            types.int: "%d",
            types.uint: "%u",
            types.long: "%ld",
            types.ulong: "%lu",
            types.float: "%f",
            types.double: "%f"
        }[tpe]

# TODO Do proper paremeter and return types

def _print(function, node, compiler: Compiler):
    node.args[:] = [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args)))] + node.args

    node.left = ast.Identifier("printf")
    return node

def _concat(function, node, compiler: Compiler):
    node.args[:] = [node.args[0]] + [ast.CallArg(value = ast.String("".join(to_c_format_specifier(
        compiler.scope.type_lookup(a.value.type)) for a in node.args[1:])))] + node.args[1:]

    node.left = ast.Identifier("sprintf")
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
    node.args.append(ast.CallArg(value = ast.Identifier("SEEK_SET")))
    node.left = ast.Identifier("fseek")
    return node

compiler.builtins.create_function("allocate", types.FunctionT(macro = _allocate))
compiler.builtins.create_function("free", types.FunctionT(parameter_t = (types.void_p,)))
compiler.builtins.create_function("print", types.FunctionT(return_t = (types.int,), macro = _print))
compiler.builtins.create_function("concat", types.FunctionT(return_t = (types.int,), macro = _concat))
compiler.builtins.create_function("open", types.FunctionT(return_t = (types.FILE_T,), parameter_t = (types.string, types.string), macro = _open))
compiler.builtins.create_function("close", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _close))
compiler.builtins.create_function("write", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _write))
compiler.builtins.create_function("read", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.void_p, types.size_t), macro = _read))
compiler.builtins.create_function("rewind", types.FunctionT(return_t = (types.void,), parameter_t = (types.void_p,)))
compiler.builtins.create_function("write_string", types.FunctionT(return_t = (types.void,), macro = _write_string))
compiler.builtins.create_function("read_line", types.FunctionT(return_t = (types.string,), macro = _read_line))
compiler.builtins.create_function("scan", types.FunctionT(return_t = (types.int,), macro = _scan))
compiler.builtins.create_function("flush", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T,), macro = _flush))
compiler.builtins.create_function("seek", types.FunctionT(return_t = (types.void,), parameter_t = (types.FILE_T, types.long, types.int), macro = _seek))
compiler.builtins.create_function("pow", types.FunctionT(return_t = (types.double,), parameter_t = (types.double, types.double)))
compiler.builtins.create_function("sqrt", types.FunctionT(return_t = (types.double,), parameter_t = (types.double,)))

compiler.builtins.create_variable(Modifier.Let, "stdout", types.FILE_T)
compiler.builtins.create_variable(Modifier.Let, "stderr", types.FILE_T)
compiler.builtins.create_variable(Modifier.Let, "stdin", types.FILE_T)