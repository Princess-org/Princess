/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _test_parser_H
#define _test_parser_H
#include "parser.c"
#include "lexer.c"
#include "vector.c"
#include "util.c"
#include "debug.c"
bool test_parser_print_ast;
 parser_Node * _0b8ef353_parse(string s) {
    lexer_TokenList *tokens = lexer_lex(s);
    Array lines = util_split_lines(s);
    parser_Node *node = parser_parse(tokens, lines, ((Array){5, "main"}), ((Array){5, "main"}));
    if (test_parser_print_ast) {
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        printf((((Array){3, "%s"}).value), (s.value));
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        debug_print_node(node);
    }  ;
    return node;
};
 void _0b8ef353_test_operators() {
    printf((((Array){3, "%s"}).value), (((Array){20, ">Test operators... "}).value));
    Array str = ((Array){6, "1 + 2"});
    parser_Node *res = _0b8ef353_parse(str);
    assert((((*res).kind) == parser_NodeKind_PROGRAM));
    parser_Node val = (*((parser_Node *)vector_get((((*res).value).body), 0)));
    assert(((val.kind) == parser_NodeKind_ADD));
    parser_Node left = (*(((val.value).bin_op).left));
    parser_Node right = (*(((val.value).bin_op).right));
    assert(((left.kind) == parser_NodeKind_INTEGER));
    assert(((right.kind) == parser_NodeKind_INTEGER));
    assert((((left.value).i) == 1));
    assert((((right.value).i) == 2));
    str = ((Array){14, "1 + 2 * 3 - 5"});
    res = _0b8ef353_parse(str);
    str = ((Array){19, "1 << 5 + 0xFF >> 1"});
    res = _0b8ef353_parse(str);
    str = ((Array){13, "0 and 2 or 5"});
    res = _0b8ef353_parse(str);
    str = ((Array){40, "a == 5 and b != 6 or c <= 10 and d >= 5"});
    res = _0b8ef353_parse(str);
    str = ((Array){11, "10 > a > 5"});
    res = _0b8ef353_parse(str);
    str = ((Array){9, "not true"});
    res = _0b8ef353_parse(str);
    str = ((Array){13, "not not true"});
    res = _0b8ef353_parse(str);
    str = ((Array){23, "*foo and @bar and ~foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "+foo and -foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){7, "5 !int"});
    res = _0b8ef353_parse(str);
    str = ((Array){11, "5 * 5 !int"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "foo[1 + 5][1]"});
    res = _0b8ef353_parse(str);
    str = ((Array){12, "foo.bar.baz"});
    res = _0b8ef353_parse(str);
    str = ((Array){5, "a..b"});
    res = _0b8ef353_parse(str);
    str = ((Array){9, "a..=b..c"});
    res = _0b8ef353_parse(str);
    str = ((Array){12, "size_of foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){18, "size_of type *Foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){13, "align_of foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){19, "align_of type *Foo"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_vardecl() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test vardecl... "}).value));
    Array str = ((Array){12, "var foo = 5"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){14, "const foo = 5"});
    res = _0b8ef353_parse(str);
    str = ((Array){20, "var foo, bar = 1, 2"});
    res = _0b8ef353_parse(str);
    str = ((Array){22, "let foo, (bar) = 1, 2"});
    res = _0b8ef353_parse(str);
    str = ((Array){15, "export var foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){22, "export import var bar"});
    res = _0b8ef353_parse(str);
    str = ((Array){23, "var foo: int, bar: int"});
    res = _0b8ef353_parse(str);
    str = ((Array){24, "export let foo: int = 5"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_typedecl() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test typedecl... "}).value));
    Array str = ((Array){7, "type A"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){17, "export type A, B"});
    res = _0b8ef353_parse(str);
    str = ((Array){13, "type A = Foo"});
    res = _0b8ef353_parse(str);
    str = ((Array){27, "type A = unsigned word(16)"});
    res = _0b8ef353_parse(str);
    str = ((Array){23, "type A, B = int, float"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_simple_types() {
    printf((((Array){3, "%s"}).value), (((Array){23, ">Test simple types... "}).value));
    Array str = ((Array){11, "(type int)"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){16, "(type word(16))"});
    res = _0b8ef353_parse(str);
    str = ((Array){25, "(type unsigned word(32))"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_function_types() {
    printf((((Array){3, "%s"}).value), (((Array){25, ">Test function types... "}).value));
    Array str = ((Array){14, "(type T -> F)"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){10, "(type ->)"});
    res = _0b8ef353_parse(str);
    str = ((Array){12, "(type (->))"});
    res = _0b8ef353_parse(str);
    str = ((Array){19, "(type A -> B -> C)"});
    res = _0b8ef353_parse(str);
    str = ((Array){16, "(type () -> ())"});
    res = _0b8ef353_parse(str);
    str = ((Array){24, "(type (A, B) -> (C, D))"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_pointer_types() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test pointer types... "}).value));
    Array str = ((Array){10, "(type *A)"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){11, "(type **A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){10, "(type &A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){13, "(type &&**A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){9, "(type *)"});
    res = _0b8ef353_parse(str);
    str = ((Array){10, "(type &*)"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "(type *let A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "(type *var A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "(type &let A)"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "(type &var A)"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_array_types() {
    printf((((Array){3, "%s"}).value), (((Array){22, ">Test array types... "}).value));
    Array str = ((Array){11, "(type [T])"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){14, "(type [5; T])"});
    res = _0b8ef353_parse(str);
    str = ((Array){14, "(type [?; T])"});
    res = _0b8ef353_parse(str);
    str = ((Array){15, "(type [let T])"});
    res = _0b8ef353_parse(str);
    str = ((Array){18, "(type [5; var T])"});
    res = _0b8ef353_parse(str);
    str = ((Array){16, "(type [5; [T]])"});
    res = _0b8ef353_parse(str);
    str = ((Array){24, "(type [5; var [let T]])"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_func_call() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test function call... "}).value));
    Array str = ((Array){26, "really::long::path::foo()"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){14, "foo(bar, baz)"});
    res = _0b8ef353_parse(str);
    str = ((Array){19, "foo(bar, baz = 20)"});
    res = _0b8ef353_parse(str);
    str = ((Array){10, "foo(0)(1)"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_assign_op() {
    printf((((Array){3, "%s"}).value), (((Array){20, ">Test assign op... "}).value));
    Array str = ((Array){6, "a = b"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){12, "a, b = c, d"});
    res = _0b8ef353_parse(str);
    str = ((Array){19, "a, b = c, d = e, f"});
    res = _0b8ef353_parse(str);
    str = ((Array){7, "a += 2"});
    res = _0b8ef353_parse(str);
    str = ((Array){12, "a *= 2 %= 3"});
    res = _0b8ef353_parse(str);
    str = ((Array){17, "a ++= 2 = b += 2"});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_statements() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test statements... "}).value));
    Array str = ((Array){64, "\x0a""        var foo = 20\x0a""        foo += 10\x0a""        print(foo)\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){86, "\x0a""        if foo == null {\x0a""            print(\"Hello World\")\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){124, "\x0a""        if true {\x0a""            // Do something\x0a""        } else {\x0a""            // Do something else\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){227, "\x0a""        if true {\x0a""            print(0)\x0a""        } else if false {\x0a""            print(0)\x0a""            print(1)\x0a""        } else if true {\x0a""            // Do more\x0a""        } else {\x0a""            // Or else...!\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){114, "\x0a""        if true {\x0a""            print(0)\x0a""        } else if false {\x0a""            print(1)\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){127, "\x0a""        if must {\x0a""            if go {\x0a""                if deeper {\x0a""\x0a""                }\x0a""            }\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){140, "\x0a""        if false\x0a""        {\x0a""            // on new line\x0a""        }\x0a""        else\x0a""        {\x0a""            // Very ugly\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){100, "\x0a""        loop {\x0a""            nop()\x0a""            break\x0a""            continue\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){75, "\x0a""        for var i in 0..10 {\x0a""            nop()\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){89, "\x0a""        var i = 0\x0a""        for i in 0..10 {\x0a""            nop()\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){67, "\x0a""        while true {\x0a""            nop()\x0a""        }\x0a""        end\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){7, "return"});
    res = _0b8ef353_parse(str);
    str = ((Array){29, "\x0a""        return 1, 2, 3\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){38, "\x0a""        return 1,\x0a""            2\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_struct() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test struct... "}).value));
    Array str = ((Array){61, "\x0a""        type T = struct {\x0a""            a: int\x0a""        }\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){122, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: struct {\x0a""                a: int\x0a""            }\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){88, "\x0a""        type T = struct #union {\x0a""            a: int\x0a""            b: long\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){150, "\x0a""        type T = struct {\x0a""            a: int\x0a""            struct #union {\x0a""                a: int\x0a""                b: long\x0a""            }\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_import() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test import... "}).value));
    Array str = ((Array){14, "import module"});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){21, "import module as mod"});
    res = _0b8ef353_parse(str);
    str = ((Array){21, "import a as foo, bar"});
    res = _0b8ef353_parse(str);
    str = ((Array){89, "\x0a""        import \x0a""            Module as mod,\x0a""            foo,\x0a""            bar as baz\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_enum() {
    printf((((Array){3, "%s"}).value), (((Array){15, ">Test enum... "}).value));
    Array str = ((Array){88, "\x0a""        type T = enum {\x0a""            FOO\x0a""            BAR\x0a""            BAZ\x0a""        }\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){77, "\x0a""        type T = enum {\x0a""            FOO = 10\x0a""            BAR\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){67, "\x0a""        type T = enum: long {\x0a""            FOO; BAR\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_switch_stmt() {
    printf((((Array){3, "%s"}).value), (((Array){27, ">Test switch statement... "}).value));
    Array str = ((Array){30, "\x0a""        switch value {}\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){113, "\x0a""        switch value {\x0a""            case 1: one\x0a""            case 2: two\x0a""            case: default\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){187, "\x0a""        switch value {\x0a""            case 1:\x0a""                print(foo)\x0a""                print(bar)\x0a""            case 2:\x0a""                print(bar)\x0a""                print(foo)\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){142, "\x0a""        switch value {\x0a""            case 1..10:\x0a""                print(foo)\x0a""            case 11..20:\x0a""                print(bar)\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){137, "\x0a""        switch value {\x0a""            case 10, 20:\x0a""                one\x0a""            case 20..30, 30..40:\x0a""                two\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_def() {
    printf((((Array){3, "%s"}).value), (((Array){14, ">Test def... "}).value));
    Array str = ((Array){23, "\x0a""        def test\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){31, "\x0a""        def test(a: int)\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){55, "\x0a""        def test(type T, var a: int, let b: int)\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){37, "\x0a""        def test -> int, float\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){56, "\x0a""        def test() {\x0a""            return\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){75, "\x0a""        def test(var a: int) -> int {\x0a""            return a\x0a""        }\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){50, "\x0a""        def test(type T = *int, a: int = 0)\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_array_literal() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test array literal... "}).value));
    Array str = ((Array){24, "\x0a""        [1, 2, 3]\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){70, "\x0a""        [\x0a""            1,\x0a""            2,\x0a""            3\x0a""        ]\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_struct_literal() {
    printf((((Array){3, "%s"}).value), (((Array){25, ">Test struct literal... "}).value));
    Array str = ((Array){33, "\x0a""        {foo, bar} !Struct\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    str = ((Array){48, "\x0a""        {foo, bar = 20, baz = 40} !Struct\x0a""    "});
    res = _0b8ef353_parse(str);
    str = ((Array){94, "\x0a""        {\x0a""            foo,\x0a""            bar = 20,\x0a""            baz = 40\x0a""        } !Struct\x0a""    "});
    res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _0b8ef353_test_bug_1() {
    printf((((Array){3, "%s"}).value), (((Array){16, ">Test bug 1... "}).value));
    Array str = ((Array){118, "\x0a""        type T = struct {\x0a""            a: int\x0a""            // New line here\x0a""        }\x0a""        type E = struct { }\x0a""    "});
    parser_Node *res = _0b8ef353_parse(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
DLL_EXPORT void test_parser_test() {
    printf((((Array){3, "%s"}).value), (((Array){28, "Running tests on Parser...\x0a"""}).value));
    _0b8ef353_test_operators();
    _0b8ef353_test_simple_types();
    _0b8ef353_test_function_types();
    _0b8ef353_test_pointer_types();
    _0b8ef353_test_array_types();
    _0b8ef353_test_vardecl();
    _0b8ef353_test_typedecl();
    _0b8ef353_test_func_call();
    _0b8ef353_test_assign_op();
    _0b8ef353_test_statements();
    _0b8ef353_test_struct();
    _0b8ef353_test_import();
    _0b8ef353_test_enum();
    _0b8ef353_test_switch_stmt();
    _0b8ef353_test_def();
    _0b8ef353_test_array_literal();
    _0b8ef353_test_struct_literal();
    _0b8ef353_test_bug_1();
};
DLL_EXPORT void test_parser_p_main(Array args) {
    test_parser_print_ast = false;
};


#endif
