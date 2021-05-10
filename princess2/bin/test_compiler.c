/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _test_compiler_H
#define _test_compiler_H
#include "buffer.c"
#include "compiler.c"
#include "codegen.c"
#include "lexer.c"
#include "util.c"
#include "parser.c"
#include "scope.c"
#include "typechecking.c"
bool test_compiler_print_ll;
 string _6dcc03b3_compile(string s) {
    codegen_outfolder = ((Array){6, "./bin"});
    Array main = ((Array){5, "main"});
    lexer_TokenList *tokens = lexer_lex(s);
    Array lines = util_split_lines(s);
    parser_Node *node = parser_parse(tokens, lines, main, main);
    scope_Scope *scope = scope_enter_function_scope(builtins_builtins);
    typechecking_typecheck(node, scope, main, main);
    compiler_Result result = compiler_compile(node, main, main);
    codegen_gen(result, main, main);
    FILE* fh = fopen((((Array){14, "./bin/main.ll"}).value), (((Array){2, "r"}).value));
    string buf = util_read_all(fh);
    fclose(fh);
    int llc = system((((Array){16, "llc bin/main.ll"}).value));
    if (llc) {
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){25, "LLC compilation failed!\x0a"""}).value));
    }  ;
    if ((test_compiler_print_ll || ((bool)llc))) {
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        printf((((Array){3, "%s"}).value), (s.value));
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        printf((((Array){3, "%s"}).value), (buf.value));
    }  ;
    if (llc) {
        exit((-1));
    }  ;
    return buf;
};
 void _6dcc03b3_test_emit_arithmetic() {
    printf((((Array){3, "%s"}).value), (((Array){33, ">Test arithmetic instruction... "}).value));
    Array str = ((Array){27, "\x0a""        10 + 10 + 10\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){37, "\x0a""        10 * 2 + 5 / 4 - 5 % 3\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){25, "\x0a""        10.5 / 4.0\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){32, "\x0a""        10 << 1 + 10 >> 2\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_call() {
    printf((((Array){3, "%s"}).value), (((Array){27, ">Test call instruction... "}).value));
    Array str = ((Array){102, "\x0a""        def add(a: int, b: int) -> int {\x0a""            return a + b\x0a""        }\x0a""        add(10, 10)\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){211, "\x0a""        def add(a: int, b: int) -> int {\x0a""            return a + b\x0a""        }\x0a""        def add(a: double, b: double) -> double {\x0a""            return a + b\x0a""        }\x0a""        add(10, 10)\x0a""        add(10.0, 10.5)\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_if() {
    printf((((Array){3, "%s"}).value), (((Array){23, ">Test if statement... "}).value));
    Array str = ((Array){82, "\x0a""        def foo\x0a""        if true {\x0a""            foo()\x0a""        }\x0a""        foo()\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){208, "\x0a""        def foo -> int\x0a""        if true {\x0a""            let x = foo()\x0a""        } else if false {\x0a""            let x = foo()\x0a""        } else if true {\x0a""            let x = foo()\x0a""        }\x0a""        let x = foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){117, "\x0a""        def foo\x0a""        if true {\x0a""            foo()\x0a""        } else {\x0a""            foo()\x0a""        }\x0a""        foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){370, "\x0a""        def foo\x0a""        if true {\x0a""            foo()\x0a""            if true {\x0a""                foo()\x0a""            } else {\x0a""                foo()\x0a""            }\x0a""        } else {\x0a""            foo()\x0a""            if true {\x0a""                foo()\x0a""            } else if true {\x0a""                foo()\x0a""            } else {\x0a""                foo()\x0a""            }\x0a""        }\x0a""        foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_loop() {
    printf((((Array){3, "%s"}).value), (((Array){25, ">Test loop statement... "}).value));
    Array str = ((Array){140, "\x0a""        def foo\x0a""        loop {\x0a""            foo()\x0a""            continue\x0a""            foo()\x0a""            break\x0a""            foo()\x0a""        }\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){153, "\x0a""        loop {\x0a""            if true {\x0a""                break\x0a""            } else {\x0a""                continue\x0a""            }\x0a""            break\x0a""        }\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){150, "\x0a""        loop {\x0a""            continue\x0a""            loop {\x0a""                continue\x0a""                break\x0a""            }\x0a""            break\x0a""        }\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_vardecl() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test vardecl... "}).value));
    Array str = ((Array){65, "\x0a""        def foo {\x0a""            var a: int, b: int\x0a""        }\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){121, "\x0a""        def foo {\x0a""            var a: int\x0a""            if false {\x0a""                var a: int\x0a""            }\x0a""        }\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_globals() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test globals... "}).value));
    Array str = ((Array){30, "\x0a""        var global: int\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){30, "\x0a""        let global = 20\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){32, "\x0a""        let a, b = 10, 20\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){97, "\x0a""        def foo -> int, int {\x0a""            return 10, 20\x0a""        }\x0a""        let a, b = foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){118, "\x0a""        def foo -> int, int {\x0a""            return 10, 20\x0a""        }\x0a""        var a: int\x0a""        let (a), b = foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){123, "\x0a""        def foo -> int {\x0a""            return 10\x0a""        }\x0a""        var a: int\x0a""        var b: int\x0a""        a = b = foo()\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_ptr() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test pointers... "}).value));
    Array str = ((Array){62, "\x0a""        let a = 20\x0a""        let pa = *a\x0a""        @pa = 40\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){108, "\x0a""        let a = 20\x0a""        let pa = *a\x0a""        let ppa = *pa\x0a""        @@ppa = 40\x0a""        let b = @@ppa\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_emit_convert() {
    printf((((Array){3, "%s"}).value), (((Array){26, ">Test type conversion... "}).value));
    Array str = ((Array){55, "\x0a""        let a = 10 !float\x0a""        let b = a !int\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){65, "\x0a""        let a = 10!float + 20\x0a""        let b = 10!uint + 20\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){106, "\x0a""        let a = 200!bool\x0a""        let b = 1.5!bool\x0a""        let c: *int = null\x0a""        let d = c!bool\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){101, "\x0a""        let a: int64 = 20\x0a""        let b: int16 = 20\x0a""\x0a""        def foo(a: int64)\x0a""        foo(10)\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_member_access() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test member access... "}).value));
    Array str = ((Array){242, "\x0a""        type S = struct {\x0a""            value: int\x0a""        }\x0a""        type T = struct {\x0a""            a: int\x0a""            b: S\x0a""        }\x0a""\x0a""        var t: T\x0a""        let a = t.a\x0a""        let b = t.b.value\x0a""\x0a""        t.b.value = 20\x0a""        t.a = 40\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_array_subscript() {
    printf((((Array){3, "%s"}).value), (((Array){26, ">Test array subscript... "}).value));
    Array str = ((Array){189, "\x0a""        var a: [int]\x0a""        var b: *int\x0a""        var c: [3; int]\x0a""\x0a""        let d = a[2]\x0a""        let e = b[2]\x0a""        let f = c[2]\x0a""\x0a""        a[2] = 5\x0a""        b[2] = 10\x0a""        c[2] = 15\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_struct_lit() {
    printf((((Array){3, "%s"}).value), (((Array){25, ">Test struct literal... "}).value));
    Array str = ((Array){108, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: int\x0a""        }\x0a""        let a = {10, 20} !T\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){152, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: int\x0a""        }\x0a""        let a = 20\x0a""        let b = 50\x0a""        let c = {a = a, b = b} !T\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){202, "\x0a""        type A = struct {\x0a""            a: int\x0a""        }\x0a""        type B = struct {\x0a""            b: A\x0a""            c: int\x0a""        }\x0a""        let a = 20\x0a""        let b = 50\x0a""        let v = {{a} !A, b} !B\x0a""    "});
    res = _6dcc03b3_compile(str);
    str = ((Array){184, "\x0a""        type A = struct {\x0a""            value: int\x0a""        }\x0a""\x0a""        def ret_a -> A {\x0a""            return {10}\x0a""        }\x0a""\x0a""        let a: A = {10}\x0a""        var b: A\x0a""        b = {10}\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_size_of() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test size_of... "}).value));
    Array str = ((Array){224, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: int\x0a""        }\x0a""\x0a""        let a = size_of T\x0a""        let b = size_of int\x0a""        let c = size_of type *\x0a""        let d = size_of a\x0a""        let e = size_of (a + b)\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_array_lit() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test array literal... "}).value));
    Array str = ((Array){35, "\x0a""        let a = [1, 2, 3, 4]\x0a""    "});
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_compare() {
    printf((((Array){3, "%s"}).value), (((Array){27, ">Test compare operator... "}).value));
    Array str = ((Array){133, "\x0a""        let a = 10 == 20\x0a""        let b = 10 > 20\x0a""        let c = 10 < 20\x0a""        \x0a""        let d = 5\x0a""        let e = 1 < d < 10\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_pointer_arithmetic() {
    printf((((Array){3, "%s"}).value), (((Array){29, ">Test pointer arithmetic... "}).value));
    Array str = ((Array){73, "\x0a""        let a = 20\x0a""        let b = *a\x0a""        let c = b ++ 20 -- 5\x0a""    "});
    string res = _6dcc03b3_compile(str);
    str = ((Array){50, "\x0a""        var a: *int\x0a""        @(a ++ 10) = 20\x0a""    "});
    res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_assign_eq() {
    printf((((Array){3, "%s"}).value), (((Array){20, ">Test assign_eq... "}).value));
    Array str = ((Array){104, "\x0a""        var a = 10\x0a""        a += 20\x0a""        a <<= 1\x0a""        a >>= 2\x0a""        a *= 5\x0a""        a /= 10\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_import() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test import... "}).value));
    Array str = ((Array){52, "\x0a""        import test::a\x0a""        import test::b\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _6dcc03b3_test_array_size_and_value() {
    printf((((Array){3, "%s"}).value), (((Array){31, ">Test array size and value... "}).value));
    Array str = ((Array){190, "\x0a""        var a: [4; int]\x0a""        var b: [int]\x0a""\x0a""        let c = a.size\x0a""        let d = a.value\x0a""        let e = b.size\x0a""        let f = b.value\x0a""\x0a""        b.size = 20\x0a""        b.value = null\x0a""    "});
    string res = _6dcc03b3_compile(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
DLL_EXPORT void test_compiler_test() {
    printf((((Array){3, "%s"}).value), (((Array){30, "Running tests on Compiler...\x0a"""}).value));
    _6dcc03b3_test_emit_arithmetic();
    _6dcc03b3_test_emit_call();
    _6dcc03b3_test_emit_if();
    _6dcc03b3_test_emit_loop();
    _6dcc03b3_test_emit_vardecl();
    _6dcc03b3_test_emit_globals();
    _6dcc03b3_test_emit_ptr();
    _6dcc03b3_test_emit_convert();
    _6dcc03b3_test_member_access();
    _6dcc03b3_test_array_subscript();
    _6dcc03b3_test_struct_lit();
    _6dcc03b3_test_size_of();
    _6dcc03b3_test_compare();
    _6dcc03b3_test_pointer_arithmetic();
    _6dcc03b3_test_assign_eq();
    _6dcc03b3_test_import();
    _6dcc03b3_test_array_size_and_value();
};
DLL_EXPORT void test_compiler_p_main(Array args) {
    test_compiler_print_ll = false;
};


#endif
