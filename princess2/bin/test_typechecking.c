/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _test_typechecking_H
#define _test_typechecking_H
#include "vector.c"
#include "map.c"
#include "util.c"
#include "lexer.c"
#include "parser.c"
#include "typechecking.c"
#include "scope.c"
#include "builtins.c"
#include "debug.c"
#include "codegen.c"
#include "toolchain.c"
typedef struct _1f7978b0_Result {struct scope_Scope *scope; struct parser_Node *node;} _1f7978b0_Result;
 _1f7978b0_Result _1f7978b0_typecheck(string s) {
    toolchain_outfolder = ((Array){6, "./bin"});
    Array main = ((Array){5, "main"});
    lexer_TokenList *tokens = lexer_lex(s);
    Array lines = util_split_lines(s);
    parser_Node *node = parser_parse(tokens, lines, main, main);
    scope_Scope *scope = scope_enter_function_scope(builtins_builtins);
    toolchain_Module *module = malloc((sizeof(toolchain_Module)));
    ((*module).filename) = main;
    ((*module).module) = main;
    ((*module).node) = node;
    ((*module).scope) = scope;
    ((*module).imported) = map_make();
    typechecking_typecheck(module);
    return ((_1f7978b0_Result){ scope, node });
};
 string _1f7978b0_next_error_msg(vector_Vector *errors) {
    debug_Error *error = ((debug_Error *)vector_pop(errors));
    return ((*error).msg);
};
 void _1f7978b0_test_vardecl() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test vardecl... "}).value));
    Array str = ((Array){32, "\x0a""        var foo: byte = 5\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *v1 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){4, "foo"}) }})))).tpe);
    assert((v1 == builtins_byte_));
    str = ((Array){58, "\x0a""        var bar: long\x0a""        let foo, (bar) = 0, 1\x0a""    "});
    res = _1f7978b0_typecheck(str);
    typechecking_Type *v2 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){4, "bar"}) }})))).tpe);
    typechecking_Type *v3 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){4, "foo"}) }})))).tpe);
    assert((v2 == builtins_long_));
    assert((v3 == builtins_int_));
    debug_redirect_stderr();
    str = ((Array){133, "\x0a""        const a, b = 20\x0a""        var c, d = 10, 20, 30\x0a""        var c = 10\x0a""        var e, (c) = 10\x0a""        var f: int = \"string\"\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){37, "Incompatible types int and [7; char]"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){20, "Must assign a value"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){26, "Too many values to assign"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){22, "Unbalanced assignment"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_literals() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test literals... "}).value));
    Array str = ((Array){119, "\x0a""        let v1 = \"string\"\x0a""        let v2 = 'c'\x0a""        let v3 = 0.0\x0a""        let v4 = 0xFF\x0a""        let v5 = false\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *v1 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v1"}) }})))).tpe);
    typechecking_Type *v2 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v2"}) }})))).tpe);
    typechecking_Type *v3 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v3"}) }})))).tpe);
    typechecking_Type *v4 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v4"}) }})))).tpe);
    typechecking_Type *v5 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v5"}) }})))).tpe);
    assert((((*v1).kind) == typechecking_TypeKind_STATIC_ARRAY));
    assert((((*v1).tpe) == builtins_char_));
    assert((v2 == builtins_char_));
    assert((v3 == builtins_double_));
    assert((v4 == builtins_int_));
    assert((v5 == builtins_bool_));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_assign() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test assignment... "}).value));
    Array str = ((Array){174, "\x0a""        var foo = 5\x0a""        var bar = 10\x0a""\x0a""        foo, bar = 10, 20\x0a""\x0a""        def function -> int, int {\x0a""            return 0, 0\x0a""        }\x0a""        foo, bar = function()\x0a""    "});
    _1f7978b0_typecheck(str);
    debug_redirect_stderr();
    str = ((Array){102, "\x0a""        var v\x0a""        let foo = 20\x0a""        foo = 40\x0a""        var bar: int\x0a""        bar = \"string\"\x0a""    "});
    _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){37, "Incompatible types int and [7; char]"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){22, "Assignment to non var"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){23, "Need to specify a type"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_operators() {
    printf((((Array){3, "%s"}).value), (((Array){20, ">Test operators... "}).value));
    Array str = ((Array){71, "\x0a""        let foo = 0\x0a""        let bar = -foo\x0a""        let baz = +50\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *v1 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){4, "foo"}) }})))).tpe);
    typechecking_Type *v2 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){4, "baz"}) }})))).tpe);
    assert((v1 == builtins_int_));
    assert((v2 == builtins_int_));
    str = ((Array){130, "\x0a""        let v3 = 10 + 20\x0a""        let v4 = v3 + 0 !short\x0a""        let v5 = 0 !long - 0 !int\x0a""        let v6 = 0 !long & 0 !int\x0a""    "});
    res = _1f7978b0_typecheck(str);
    typechecking_Type *v3 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v3"}) }})))).tpe);
    typechecking_Type *v4 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v4"}) }})))).tpe);
    typechecking_Type *v5 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v5"}) }})))).tpe);
    typechecking_Type *v6 = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){3, "v6"}) }})))).tpe);
    assert((v3 == builtins_int_));
    assert((v4 == builtins_int_));
    assert((v5 == builtins_long_));
    assert((v6 == builtins_long_));
    debug_redirect_stderr();
    str = ((Array){118, "\x0a""        var a = 0 !float\x0a""        var b = 1\x0a""        var c = a & b\x0a""        var d = \"string\"\x0a""        var e = not d\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){50, "Incompatible type [7; char], must be boolean type"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){59, "Invalid operands of type float and int to bitwise operator"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_def() {
    printf((((Array){3, "%s"}).value), (((Array){14, ">Test def... "}).value));
    Array str = ((Array){25, "\x0a""        def foo {}\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    str = ((Array){41, "\x0a""        def foo\x0a""        def foo {}\x0a""    "});
    res = _1f7978b0_typecheck(str);
    str = ((Array){54, "\x0a""        def foo {}\x0a""        def foo(a: float) {}\x0a""    "});
    res = _1f7978b0_typecheck(str);
    debug_redirect_stderr();
    str = ((Array){44, "\x0a""        def foo {}\x0a""        def foo {}\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){64, "Function \"foo\" was already declared previously (same arguments)"}).value)) == 0));
    debug_redirect_stderr();
    str = ((Array){108, "\x0a""        def foo {\x0a""            export var foo: int\x0a""            export def nested_function {}\x0a""        }\x0a""    "});
    res = _1f7978b0_typecheck(str);
    errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){35, "Can't share non top level function"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){35, "Can't share non top level variable"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_typedecl() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test typedecl... "}).value));
    Array str = ((Array){68, "\x0a""        type A = int\x0a""        type B = A\x0a""\x0a""        var a: B = 0\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    str = ((Array){94, "\x0a""        type A\x0a""        type A = int\x0a""        type module::A\x0a""        type module::A = int\x0a""    "});
    res = _1f7978b0_typecheck(str);
    debug_redirect_stderr();
    str = ((Array){89, "\x0a""        type A = int\x0a""        type A = float\x0a""        var B = 0\x0a""        type B = int\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){21, "Redeclaration of \"B\""}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){21, "Redeclaration of \"A\""}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_struct() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test struct... "}).value));
    Array str = ((Array){300, "\x0a""        type A = struct {\x0a""            a: int32\x0a""            b: int64\x0a""            c: int16\x0a""            d: int8\x0a""        }\x0a""        type B = struct {\x0a""            a: int8\x0a""            b: int16\x0a""        }\x0a""        type C = struct {\x0a""            a: int16\x0a""            b: int8\x0a""            c: int32\x0a""        }\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *s1 = ((typechecking_Type *)((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "A"}) }})))).value));
    assert((((*s1).size) == 24));
    assert((((*s1).align) == 8));
    typechecking_Type *s2 = ((typechecking_Type *)((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "B"}) }})))).value));
    assert((((*s2).size) == 4));
    assert((((*s2).align) == 2));
    typechecking_Type *s3 = ((typechecking_Type *)((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "C"}) }})))).value));
    assert((((*s3).size) == 8));
    assert((((*s3).align) == 4));
    str = ((Array){111, "\x0a""        type A = struct #union {\x0a""            a: int8\x0a""            b: int32\x0a""            c: int64\x0a""        }\x0a""    "});
    res = _1f7978b0_typecheck(str);
    typechecking_Type *s4 = ((typechecking_Type *)((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "A"}) }})))).value));
    assert((((*s4).size) == 8));
    assert((((*s4).align) == 8));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_import() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test import... "}).value));
    Array str = ((Array){117, "\x0a""        import test::a\x0a""        test::a::multiply_by_2(4)\x0a""        multiply_by_2(10)\x0a""        multiply_by_2(10.5)\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    str = ((Array){207, "\x0a""        import test::a\x0a""        def multiply_by_2(a: int) -> int {\x0a""            return a * 2\x0a""        }\x0a""        multiply_by_2(10)\x0a""        test::a::multiply_by_2(10)\x0a""        multiply_by_2(10.5) // test::a\x0a""    "});
    res = _1f7978b0_typecheck(str);
    debug_redirect_stderr();
    str = ((Array){106, "\x0a""        import test::a\x0a""        import test::b\x0a""        multiply_by_2(10)\x0a""        multiply_by_2(10.5)\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){20, "Ambiguous reference"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_return() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test return... "}).value));
    Array str = ((Array){62, "\x0a""        def foo -> int {\x0a""            return 0\x0a""        }\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    str = ((Array){140, "\x0a""        def foo -> int, bool {\x0a""            return 0, true\x0a""        }\x0a""        def bar -> int, bool {\x0a""            return foo()\x0a""        }\x0a""    "});
    res = _1f7978b0_typecheck(str);
    debug_redirect_stderr();
    str = ((Array){77, "\x0a""        def foo -> int, bool {\x0a""            return false, 'c'\x0a""        }\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){55, "Wrong type of return argument, got char, expected bool"}).value)) == 0));
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){54, "Wrong type of return argument, got bool, expected int"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_pointers() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test pointers... "}).value));
    Array str = ((Array){63, "\x0a""        let a = 10\x0a""        let b = *a\x0a""        let c = @b\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *a = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "a"}) }})))).tpe);
    typechecking_Type *b = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "b"}) }})))).tpe);
    typechecking_Type *c = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "c"}) }})))).tpe);
    assert((a == builtins_int_));
    assert(typechecking_equals(b, typechecking_pointer(builtins_int_)));
    assert((c == builtins_int_));
    debug_redirect_stderr();
    str = ((Array){44, "\x0a""        let a = 10\x0a""        let b = @a\x0a""    "});
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){36, "Needs to be a pointer type, got int"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_member_access() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test member access... "}).value));
    Array str = ((Array){146, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: double\x0a""        }\x0a""        var foo: T\x0a""        let a = foo.a\x0a""        let b = foo.b\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *a = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "a"}) }})))).tpe);
    typechecking_Type *b = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "b"}) }})))).tpe);
    assert((a == builtins_int_));
    assert((b == builtins_double_));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_array_subscript() {
    printf((((Array){3, "%s"}).value), (((Array){26, ">Test array subscript... "}).value));
    Array str = ((Array){111, "\x0a""        var a: [4; int]\x0a""        let b = a[2]\x0a""\x0a""        var c = 10\x0a""        var d = *c\x0a""        let e = d[2]\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *b = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "b"}) }})))).tpe);
    typechecking_Type *e = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "e"}) }})))).tpe);
    assert((b == builtins_int_));
    assert((e == builtins_int_));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_array_lit() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test array literal... "}).value));
    Array str = ((Array){60, "\x0a""        let a = [1, 2, 3, 4]\x0a""        let b: [int] = a\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *a = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "a"}) }})))).tpe);
    typechecking_Type *b = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "b"}) }})))).tpe);
    assert((((*a).kind) == typechecking_TypeKind_STATIC_ARRAY));
    assert((((*a).tpe) == builtins_int_));
    assert((((*a).length) == 4));
    assert((((*b).kind) == typechecking_TypeKind_ARRAY));
    assert((((*b).tpe) == builtins_int_));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_array_size_and_value() {
    printf((((Array){3, "%s"}).value), (((Array){31, ">Test array size and value... "}).value));
    Array str = ((Array){155, "\x0a""        let a = [1, 2, 3, 4]\x0a""        let b: [int] = a\x0a""        let c = a.size\x0a""        let d = a.value\x0a""        let e = b.size\x0a""        let f = b.value \x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    typechecking_Type *c = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "c"}) }})))).tpe);
    typechecking_Type *d = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "d"}) }})))).tpe);
    typechecking_Type *e = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "e"}) }})))).tpe);
    typechecking_Type *f = ((*scope_get((res.scope), parser_make_identifier(((Array){1, (Array[1]){ ((Array){2, "f"}) }})))).tpe);
    assert(((c == builtins_size_t_) && (e == builtins_size_t_)));
    assert((((bool)typechecking_is_pointer(d)) && ((bool)typechecking_is_pointer(f))));
    assert(((((*d).tpe) == builtins_int_) && (((*f).tpe) == builtins_int_)));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _1f7978b0_test_call() {
    printf((((Array){3, "%s"}).value), (((Array){30, ">Testing function calling... "}).value));
    Array str = ((Array){240, "\x0a""        def demo_function_1\x0a""        def demo_function_2(a: int)\x0a""        demo_function_1() // empty function\x0a""        demo_function_2(42) // function with unnamed parameter\x0a""        demo_function_2(a=42) // function with named parameter\x0a""    "});
    _1f7978b0_Result res = _1f7978b0_typecheck(str);
    str = ((Array){117, "\x0a""        def demo_function_2(a: int)\x0a""        demo_function_2(a=42, a=11) // function with named parameter twice\x0a""    "});
    debug_redirect_stderr();
    res = _1f7978b0_typecheck(str);
    vector_Vector *errors = debug_catch_errors();
    assert((strcmp((_1f7978b0_next_error_msg(errors).value), (((Array){94, "Cannot have the same parameter name multiple times in a function call. Paramter name was \"a\"."}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
DLL_EXPORT void test_typechecking_test() {
    printf((((Array){3, "%s"}).value), (((Array){34, "Running tests on Typechecking...\x0a"""}).value));
    _1f7978b0_test_vardecl();
    _1f7978b0_test_literals();
    _1f7978b0_test_operators();
    _1f7978b0_test_assign();
    _1f7978b0_test_def();
    _1f7978b0_test_typedecl();
    _1f7978b0_test_struct();
    _1f7978b0_test_import();
    _1f7978b0_test_return();
    _1f7978b0_test_pointers();
    _1f7978b0_test_member_access();
    _1f7978b0_test_array_subscript();
    _1f7978b0_test_array_lit();
    _1f7978b0_test_array_size_and_value();
    _1f7978b0_test_call();
};
DLL_EXPORT void test_typechecking_p_main(Array args) {

};


#endif
