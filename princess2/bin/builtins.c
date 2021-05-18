/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _builtins_H
#define _builtins_H
#include "parser.c"
#include "scope.c"
#include "map.c"
#include "vector.c"
#include "typechecking.c"
scope_Scope *builtins_builtins;
 typechecking_Type * _a69ecad8_create_int_type(string name, int size, bool unsig) {
    parser_Node *ident = parser_make_identifier(((Array){1, (string[1]){ name }}));
    typechecking_Type *tpe = typechecking_make_type(typechecking_TypeKind_WORD, ident);
    ((*tpe).size) = size;
    ((*tpe).align) = size;
    ((*tpe).unsig) = unsig;
    scope_create_type(builtins_builtins, ident, parser_ShareMarker_NONE, tpe);
    return tpe;
};
 typechecking_Type * _a69ecad8_create_float_type(string name, int size) {
    parser_Node *ident = parser_make_identifier(((Array){1, (string[1]){ name }}));
    typechecking_Type *tpe = typechecking_make_type(typechecking_TypeKind_FLOAT, ident);
    ((*tpe).size) = size;
    ((*tpe).align) = size;
    ((*tpe).unsig) = false;
    scope_create_type(builtins_builtins, ident, parser_ShareMarker_NONE, tpe);
    return tpe;
};
typechecking_Type *builtins_char_;
parser_Node *_a69ecad8_bool_ident;
typechecking_Type *builtins_bool_;
parser_Node *_a69ecad8_str_ident;
typechecking_Type *builtins_string_;
typechecking_Type *builtins_float_;
typechecking_Type *builtins_double_;
typechecking_Type *builtins_float32_;
typechecking_Type *builtins_float64_;
typechecking_Type *builtins_byte_;
typechecking_Type *builtins_short_;
typechecking_Type *builtins_int_;
typechecking_Type *builtins_long_;
typechecking_Type *builtins_ubyte_;
typechecking_Type *builtins_ushort_;
typechecking_Type *builtins_uint_;
typechecking_Type *builtins_ulong_;
typechecking_Type *builtins_int8_;
typechecking_Type *builtins_int16_;
typechecking_Type *builtins_int32_;
typechecking_Type *builtins_int64_;
typechecking_Type *builtins_uint8_;
typechecking_Type *builtins_uint16_;
typechecking_Type *builtins_uint32_;
typechecking_Type *builtins_uint64_;
typechecking_Type *builtins_size_t_;
#include "builtin_functions.c"
DLL_EXPORT void builtins_p_main(Array args) {
    builtins_builtins = scope_enter_scope(NULL);
    builtins_char_ = _a69ecad8_create_int_type(((Array){5, "char"}), (sizeof(char)), false);
    _a69ecad8_bool_ident = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "bool"}) }}));
    builtins_bool_ = typechecking_make_type(typechecking_TypeKind_BOOL, _a69ecad8_bool_ident);
    ((*builtins_bool_).size) = (sizeof(bool));
    ((*builtins_bool_).align) = (alignof(bool));
    ((*builtins_bool_).unsig) = true;
    scope_create_type(builtins_builtins, _a69ecad8_bool_ident, parser_ShareMarker_NONE, builtins_bool_);
    _a69ecad8_str_ident = parser_make_identifier(((Array){1, (Array[1]){ ((Array){7, "string"}) }}));
    builtins_string_ = typechecking_make_type(typechecking_TypeKind_ARRAY, _a69ecad8_str_ident);
    ((*builtins_string_).size) = (sizeof(string));
    ((*builtins_string_).align) = (alignof(string));
    ((*builtins_string_).tpe) = builtins_char_;
    scope_create_type(builtins_builtins, _a69ecad8_str_ident, parser_ShareMarker_NONE, builtins_string_);
    builtins_float_ = _a69ecad8_create_float_type(((Array){6, "float"}), (sizeof(float)));
    builtins_double_ = _a69ecad8_create_float_type(((Array){7, "double"}), (sizeof(double)));
    builtins_float32_ = _a69ecad8_create_float_type(((Array){8, "float32"}), (sizeof(float32)));
    builtins_float64_ = _a69ecad8_create_float_type(((Array){8, "float64"}), (sizeof(float64)));
    builtins_byte_ = _a69ecad8_create_int_type(((Array){5, "byte"}), (sizeof(byte)), false);
    builtins_short_ = _a69ecad8_create_int_type(((Array){6, "short"}), (sizeof(short)), false);
    builtins_int_ = _a69ecad8_create_int_type(((Array){4, "int"}), (sizeof(int)), false);
    builtins_long_ = _a69ecad8_create_int_type(((Array){5, "long"}), (sizeof(long)), false);
    builtins_ubyte_ = _a69ecad8_create_int_type(((Array){6, "ubyte"}), (sizeof(ubyte)), true);
    builtins_ushort_ = _a69ecad8_create_int_type(((Array){7, "ushort"}), (sizeof(ushort)), true);
    builtins_uint_ = _a69ecad8_create_int_type(((Array){5, "uint"}), (sizeof(uint)), true);
    builtins_ulong_ = _a69ecad8_create_int_type(((Array){6, "ulong"}), (sizeof(ulong)), true);
    builtins_int8_ = _a69ecad8_create_int_type(((Array){5, "int8"}), (sizeof(int8)), false);
    builtins_int16_ = _a69ecad8_create_int_type(((Array){6, "int16"}), (sizeof(int16)), false);
    builtins_int32_ = _a69ecad8_create_int_type(((Array){6, "int32"}), (sizeof(int32)), false);
    builtins_int64_ = _a69ecad8_create_int_type(((Array){6, "int64"}), (sizeof(int64)), false);
    builtins_uint8_ = _a69ecad8_create_int_type(((Array){6, "uint8"}), (sizeof(uint8)), true);
    builtins_uint16_ = _a69ecad8_create_int_type(((Array){7, "uint16"}), (sizeof(uint16)), true);
    builtins_uint32_ = _a69ecad8_create_int_type(((Array){7, "uint32"}), (sizeof(uint32)), true);
    builtins_uint64_ = _a69ecad8_create_int_type(((Array){7, "uint64"}), (sizeof(uint64)), true);
    builtins_size_t_ = _a69ecad8_create_int_type(((Array){7, "size_t"}), (sizeof(size_t)), true);
    builtin_functions_p_main(args);
};


#endif
