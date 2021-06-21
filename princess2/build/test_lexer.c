/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess2/princess.h"
#ifndef _test_lexer_H
#define _test_lexer_H
#include "lexer.c"
 lexer_Token _090a6e22_next_value(lexer_TokenList **list, lexer_TokenType tpe) {
    lexer_Token value = ((*(*list)).value);
    if (((value.tpe) == lexer_TokenType_ERROR)) {
        fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){8, "Error: "}).value), (((value.value).str).value), (((Array){2, "\x0a"""}).value));
        exit((-1));
    }  ;
    assert(((value.tpe) == tpe));
    (*list) = ((*(*list)).next);
    return value;
};
 char _090a6e22_next_char(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_CHAR).value).ch);
};
 uint64 _090a6e22_next_long(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_INTEGER).value).i);
};
 double _090a6e22_next_double(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_FLOAT).value).f);
};
 string _090a6e22_next_string(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_STRING).value).str);
};
 string _090a6e22_next_identifier(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_IDENTIFIER).value).str);
};
 string _090a6e22_next_comment(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_COMMENT).value).str);
};
 string _090a6e22_next_pragma(lexer_TokenList **list) {
    return ((_090a6e22_next_value(list, lexer_TokenType_PRAGMA).value).str);
};
 string _090a6e22_next_error(lexer_TokenList **list) {
    lexer_Token value = ((*(*list)).value);
    if (((value.tpe) != lexer_TokenType_ERROR)) {
        fprintf(stderr, (((Array){7, "%s%d%s"}).value), (((Array){28, "Error: Invalid token type: "}).value), (value.tpe), (((Array){2, "\x0a"""}).value));
        exit((-1));
    }  ;
    string s = ((value.value).str);
    (*list) = ((*(*list)).next);
    return s;
};
 void _090a6e22_test_float_literal() {
    printf((((Array){3, "%s"}).value), (((Array){24, ">Test float literal... "}).value));
    Array str = ((Array){5, "10.5"});
    lexer_TokenList *result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 10.5));
    str = ((Array){3, ".5"});
    result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 0.5));
    str = ((Array){4, "10."});
    result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 10.0));
    str = ((Array){6, "10E10"});
    result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 100000000000.0));
    str = ((Array){7, "10.e10"});
    result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 100000000000.0));
    str = ((Array){7, "10E+10"});
    result = lexer_lex(str);
    assert((_090a6e22_next_double((&result)) == 100000000000.0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_int_literal() {
    printf((((Array){3, "%s"}).value), (((Array){22, ">Test int literal... "}).value));
    Array str = ((Array){4, "156"});
    lexer_TokenList *result = lexer_lex(str);
    assert((_090a6e22_next_long((&result)) == 156));
    str = ((Array){9, "0b100100"});
    result = lexer_lex(str);
    assert((_090a6e22_next_long((&result)) == 36));
    str = ((Array){11, "0xDEADBABE"});
    result = lexer_lex(str);
    assert((_090a6e22_next_long((&result)) == 3735927486));
    str = ((Array){6, "0o172"});
    result = lexer_lex(str);
    assert((_090a6e22_next_long((&result)) == 122));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_char_literal() {
    printf((((Array){3, "%s"}).value), (((Array){23, ">Test char literal... "}).value));
    Array str = ((Array){4, "'A'"});
    lexer_TokenList *result = lexer_lex(str);
    assert((_090a6e22_next_char((&result)) == 'A'));
    str = ((Array){8, "'A' 'B'"});
    result = lexer_lex(str);
    assert((_090a6e22_next_char((&result)) == 'A'));
    _090a6e22_next_value((&result), lexer_TokenType_WHITESPACE);
    assert((_090a6e22_next_char((&result)) == 'B'));
    str = ((Array){5, "'\\a'"});
    result = lexer_lex(str);
    assert((_090a6e22_next_char((&result)) == '\x07'));
    str = ((Array){7, "'\\xFF'"});
    result = lexer_lex(str);
    assert((_090a6e22_next_char((&result)) == '\xff'));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_char_literal_error() {
    printf((((Array){3, "%s"}).value), (((Array){29, ">Test char literal error... "}).value));
    Array str = ((Array){3, "'A"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){48, "Unexpected end of file while parsing character\x0a"""}).value)) == 0));
    str = ((Array){5, "'\\d'"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){25, "Invalid escape sequence\x0a"""}).value)) == 0));
    str = ((Array){4, "'\\x"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){25, "Invalid escape sequence\x0a"""}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_string_literal() {
    printf((((Array){3, "%s"}).value), (((Array){25, ">Test string literal... "}).value));
    Array str = ((Array){17, "\"this is a test\""});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){15, "this is a test"}).value)) == 0));
    str = ((Array){14, "\"test\" \"more\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){5, "test"}).value)) == 0));
    _090a6e22_next_value((&result), lexer_TokenType_WHITESPACE);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){5, "more"}).value)) == 0));
    str = ((Array){23, "\"\\a\\b\\f\\n\\r\\t\\v\\'\\\"\\\\\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){11, "\x07""\x08""\x0c""\x0a""\x0d""\x09""\x0b""'\"\\"}).value)) == 0));
    str = ((Array){7, "\"\\xFF\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){2, "\xff"""}).value)) == 0));
    str = ((Array){9, "\"\\u01FF\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){2, "\u01ff"}).value)) == 0));
    str = ((Array){9, "\"\\u88AA\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){2, "\u88aa"}).value)) == 0));
    str = ((Array){13, "\"\\U0010FFFF\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){2, "\U0010ffff"}).value)) == 0));
    str = ((Array){5, "\"\x0a""\x0a""\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_string((&result)).value), (((Array){3, "\x0a""\x0a"""}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_string_literal_error() {
    printf((((Array){3, "%s"}).value), (((Array){31, ">Test string literal error... "}).value));
    Array str = ((Array){16, "\"this is a test"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){53, "Unexpected end of file while parsing string literal\x0a"""}).value)) == 0));
    str = ((Array){11, "\"test \\d \""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){25, "Invalid escape sequence\x0a"""}).value)) == 0));
    str = ((Array){9, "\"\\UGHRR\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){25, "Invalid escape sequence\x0a"""}).value)) == 0));
    str = ((Array){13, "\"\\UFF0000FF\""});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_error((&result)).value), (((Array){26, "Invalid unicode sequence\x0a"""}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_identifier() {
    printf((((Array){3, "%s"}).value), (((Array){21, ">Test identifier... "}).value));
    Array str = ((Array){8, "foo_bar"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){8, "foo_bar"}).value)) == 0));
    str = ((Array){8, "foo bar"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){4, "foo"}).value)) == 0));
    _090a6e22_next_value((&result), lexer_TokenType_WHITESPACE);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){4, "bar"}).value)) == 0));
    str = ((Array){8, "def foo"});
    result = lexer_lex(str);
    _090a6e22_next_value((&result), lexer_TokenType_K_DEF);
    _090a6e22_next_value((&result), lexer_TokenType_WHITESPACE);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){4, "foo"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_pragma() {
    printf((((Array){3, "%s"}).value), (((Array){17, ">Test pragma... "}).value));
    Array str = ((Array){7, "#union"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_pragma((&result)).value), (((Array){7, "#union"}).value)) == 0));
    str = ((Array){15, "##compiler_dep"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_pragma((&result)).value), (((Array){15, "##compiler_dep"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_comment() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test comment... "}).value));
    Array str = ((Array){17, "//This is a test"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_comment((&result)).value), (((Array){17, "//This is a test"}).value)) == 0));
    str = ((Array){30, "//This\x0a""           //Test\x0a""    "});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_comment((&result)).value), (((Array){7, "//This"}).value)) == 0));
    _090a6e22_next_value((&result), lexer_TokenType_NEW_LINE);
    _090a6e22_next_value((&result), lexer_TokenType_WHITESPACE);
    assert((strcmp((_090a6e22_next_comment((&result)).value), (((Array){7, "//Test"}).value)) == 0));
    str = ((Array){9, "/*This*/"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_comment((&result)).value), (((Array){9, "/*This*/"}).value)) == 0));
    str = ((Array){22, "/*Nested/*Comment*/*/"});
    result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_comment((&result)).value), (((Array){22, "/*Nested/*Comment*/*/"}).value)) == 0));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_symbols() {
    printf((((Array){3, "%s"}).value), (((Array){18, ">Test symbols... "}).value));
    Array str = ((Array){8, "foo+bar"});
    lexer_TokenList *result = lexer_lex(str);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){4, "foo"}).value)) == 0));
    _090a6e22_next_value((&result), lexer_TokenType_OP_ADD);
    assert((strcmp((_090a6e22_next_identifier((&result)).value), (((Array){4, "bar"}).value)) == 0));
    str = ((Array){5, "1..2"});
    result = lexer_lex(str);
    assert((_090a6e22_next_long((&result)) == 1));
    _090a6e22_next_value((&result), lexer_TokenType_OP_RANGE);
    assert((_090a6e22_next_long((&result)) == 2));
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
 void _090a6e22_test_complex() {
    printf((((Array){3, "%s"}).value), (((Array){26, ">Test complex example... "}).value));
    Array str = ((Array){266, "\x0a""        type T = struct {\x0a""            a: int\x0a""            b: string\x0a""        }\x0a""\x0a""        def main(a: int, b: unsigned word) -> T {\x0a""            print(\"A: \", a, \" B: \", b)\x0a""            var t: T = {\x0a""                a = 0, b = \"Test string\"\x0a""            } !T\x0a""        }\x0a""    "});
    lexer_TokenList *result = lexer_lex(str);
    printf((((Array){3, "%s"}).value), (((Array){4, "OK\x0a"""}).value));
};
DLL_EXPORT void test_lexer_test() {
    printf((((Array){3, "%s"}).value), (((Array){27, "Running tests on Lexer...\x0a"""}).value));
    _090a6e22_test_string_literal();
    _090a6e22_test_string_literal_error();
    _090a6e22_test_char_literal();
    _090a6e22_test_char_literal_error();
    _090a6e22_test_int_literal();
    _090a6e22_test_float_literal();
    _090a6e22_test_identifier();
    _090a6e22_test_pragma();
    _090a6e22_test_comment();
    _090a6e22_test_symbols();
    _090a6e22_test_complex();
};
DLL_EXPORT void test_lexer_p_main(Array args) {

};


#endif
