/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess2/princess.h"
#ifndef _tests_H
#define _tests_H
#include "buffer.c"
#include "util.c"
#include "parser.c"
#include "vector.c"
#include "map.c"
#include "test_lexer.c"
#include "test_parser.c"
#include "test_typechecking.c"
#include "test_compiler.c"
 void _b61a6d54_test_buffer() {
    printf((((Array){3, "%s"}).value), (((Array){28, "Running tests on Buffer...\x0a"""}).value));
    Array str = ((Array){15, "this is a test"});
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_str((&buf), str);
    string res = buffer_to_string((&buf));
    assert((strcmp((res.value), (str.value)) == 0));
    buffer_append_char((&buf), 't');
    res = buffer_to_string((&buf));
    assert((strcmp((res.value), (((Array){16, "this is a testt"}).value)) == 0));
};
 void _b61a6d54_test_vector() {
    printf((((Array){3, "%s"}).value), (((Array){28, "Running tests on Vector...\x0a"""}).value));
    vector_Vector *vec = vector_make();
    int *i1 = malloc((sizeof(int)));
    (*i1) = 0;
    vector_push(vec, i1);
    int *i2 = malloc((sizeof(int)));
    (*i2) = 1;
    vector_push(vec, i2);
    int *i3 = malloc((sizeof(int)));
    (*i3) = 2;
    vector_push(vec, i3);
    assert(((*((int *)vector_get(vec, 0))) == 0));
    assert(((*((int *)vector_get(vec, 1))) == 1));
    assert(((*((int *)vector_get(vec, 2))) == 2));
    int *i4 = malloc((sizeof(int)));
    (*i4) = 3;
    vector_set(vec, 0, i4);
    assert(((*((int *)vector_get(vec, 0))) == 3));
};
 void _b61a6d54_test_split_lines() {
    printf((((Array){3, "%s"}).value), (((Array){22, ">Test split_lines... "}).value));
    Array str = ((Array){15, "this\x0a""is\x0a""a\x0a""test"});
    Array res = util_split_lines(str);
    assert(((res.size) == 4));
    assert((strcmp(((((string *)res.value)[0]).value), (((Array){5, "this"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[1]).value), (((Array){3, "is"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[2]).value), (((Array){2, "a"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[3]).value), (((Array){5, "test"}).value)) == 0));
    str = ((Array){15, "this is a test"});
    res = util_split_lines(str);
    assert(((res.size) == 1));
    assert((strcmp(((((string *)res.value)[0]).value), (((Array){15, "this is a test"}).value)) == 0));
    str = ((Array){18, "this\x0d""\x0a""is\x0d""\x0a""a\x0d""\x0a""test"});
    res = util_split_lines(str);
    assert(((res.size) == 4));
    assert((strcmp(((((string *)res.value)[0]).value), (((Array){5, "this"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[1]).value), (((Array){3, "is"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[2]).value), (((Array){2, "a"}).value)) == 0));
    assert((strcmp(((((string *)res.value)[3]).value), (((Array){5, "test"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_int_to_str() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test int_to_str... "}).value));
    assert((strcmp((util_int_to_str(0).value), (((Array){2, "0"}).value)) == 0));
    assert((strcmp((util_int_to_str((-55)).value), (((Array){4, "-55"}).value)) == 0));
    assert((strcmp((util_int_to_str(125).value), (((Array){4, "125"}).value)) == 0));
    assert((strcmp((util_int_to_str(2147483647).value), (((Array){11, "2147483647"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_find_substr() {
    printf((((Array){3, "%s"}).value), (((Array){22, ">Test find_substr... "}).value));
    Array str = ((Array){14, "foo%%bar%%baz"});
    assert((util_find_substr(str, ((Array){7, "banana"}), 0) == (-1)));
    assert((util_find_substr(str, ((Array){3, "%%"}), 0) == 3));
    assert((util_find_substr(str, ((Array){3, "%%"}), 4) == 8));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_replace_all() {
    printf((((Array){3, "%s"}).value), (((Array){22, ">Test replace_all... "}).value));
    Array str = ((Array){14, "foo%%bar%%baz"});
    assert((strcmp((util_replace_all(str, ((Array){3, "%%"}), ((Array){3, ", "})).value), (((Array){14, "foo, bar, baz"}).value)) == 0));
    str = ((Array){3, "%%"});
    assert((strcmp((util_replace_all(str, ((Array){3, "%%"}), ((Array){1, ""})).value), (((Array){1, ""}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_util() {
    printf((((Array){3, "%s"}).value), (((Array){26, "Running tests on Util...\x0a"""}).value));
    _b61a6d54_test_split_lines();
    _b61a6d54_test_int_to_str();
    _b61a6d54_test_find_substr();
    _b61a6d54_test_replace_all();
};
 int * _b61a6d54_allocate_int(int a) {
    int *i = malloc((sizeof(int)));
    (*i) = a;
    return i;
};
 void _b61a6d54_test_map_simple() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test map simple... "}).value));
    map_Map *m = map_make();
    map_put(m, ((Array){4, "foo"}), _b61a6d54_allocate_int(20));
    map_put(m, ((Array){4, "bar"}), _b61a6d54_allocate_int(50));
    assert((map_size(m) == 2));
    int *val = ((int *)map_get(m, ((Array){4, "foo"})));
    assert(((*val) == 20));
    val = ((int *)map_get(m, ((Array){4, "bar"})));
    assert(((*val) == 50));
    map_remove(m, ((Array){4, "foo"}));
    assert((map_size(m) == 1));
    assert((map_get(m, ((Array){4, "foo"})) == NULL));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_map_collision() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test map collision... "}).value));
    map_Map *m = map_make();
    map_put(m, ((Array){7, "JUvEoj"}), _b61a6d54_allocate_int(20));
    map_put(m, ((Array){7, "JVVdoj"}), _b61a6d54_allocate_int(50));
    assert((map_size(m) == 2));
    int *val = ((int *)map_get(m, ((Array){7, "JUvEoj"})));
    assert(((*val) == 20));
    val = ((int *)map_get(m, ((Array){7, "JVVdoj"})));
    assert(((*val) == 50));
    map_remove(m, ((Array){7, "JVVdoj"}));
    assert((map_size(m) == 1));
    assert((map_get(m, ((Array){7, "JVVdoj"})) == NULL));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_map_resize() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test map resize... "}).value));
    map_Map *m = map_make_size(2);
    map_put(m, ((Array){2, "1"}), _b61a6d54_allocate_int(1));
    map_put(m, ((Array){2, "2"}), _b61a6d54_allocate_int(2));
    map_put(m, ((Array){2, "3"}), _b61a6d54_allocate_int(3));
    map_put(m, ((Array){2, "4"}), _b61a6d54_allocate_int(4));
    assert((map_size(m) == 4));
    int *val = ((int *)map_get(m, ((Array){2, "1"})));
    assert(((*val) == 1));
    val = ((int *)map_get(m, ((Array){2, "2"})));
    assert(((*val) == 2));
    val = ((int *)map_get(m, ((Array){2, "3"})));
    assert(((*val) == 3));
    val = ((int *)map_get(m, ((Array){2, "4"})));
    assert(((*val) == 4));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 bool _b61a6d54_is_in(Array array, string key) {
    for (int i = 0;(i < (array.size));(i += 1)) {
        string value = (((string *)array.value)[i]);
        if ((strcmp((value.value), (key.value)) == 0)) {
            return true;
        }  ;
    }
    ;
    return false;
};
 void _b61a6d54_test_map_keys() {
    printf((((Array){3, "%s"}).value), (((Array){19, ">Test map keys... "}).value));
    map_Map *m = map_make();
    map_put(m, ((Array){7, "JUvEoj"}), _b61a6d54_allocate_int(20));
    map_put(m, ((Array){7, "JVVdoj"}), _b61a6d54_allocate_int(50));
    map_put(m, ((Array){4, "foo"}), _b61a6d54_allocate_int(0));
    map_put(m, ((Array){4, "bar"}), _b61a6d54_allocate_int(1));
    Array keys = map_keys(m);
    assert(((keys.size) == 4));
    assert(_b61a6d54_is_in(keys, ((Array){7, "JUvEoj"})));
    assert(_b61a6d54_is_in(keys, ((Array){7, "JVVdoj"})));
    assert(_b61a6d54_is_in(keys, ((Array){4, "foo"})));
    assert(_b61a6d54_is_in(keys, ((Array){4, "bar"})));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _b61a6d54_test_map() {
    printf((((Array){3, "%s"}).value), (((Array){25, "Running tests on Map...\x0a"""}).value));
    _b61a6d54_test_map_simple();
    _b61a6d54_test_map_collision();
    _b61a6d54_test_map_resize();
    _b61a6d54_test_map_keys();
};
DLL_EXPORT void tests_run_test_suite() {
    _b61a6d54_test_buffer();
    _b61a6d54_test_util();
    _b61a6d54_test_vector();
    _b61a6d54_test_map();
    test_lexer_test();
    test_parser_test();
    test_typechecking_test();
    test_compiler_test();
};
DLL_EXPORT void tests_p_main(Array args) {
    parser_p_main(args);
    test_lexer_p_main(args);
    test_typechecking_p_main(args);
};


#endif
