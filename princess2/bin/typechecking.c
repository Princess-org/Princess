/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _typechecking_H
#define _typechecking_H
#include "map.c"
#include "vector.c"
#include "parser.c"
#include "buffer.c"
#include "util.c"
typedef enum typechecking_TypeKind {typechecking_TypeKind_TYPE = 0, typechecking_TypeKind_WORD = 1, typechecking_TypeKind_FLOAT = 2, typechecking_TypeKind_BOOL = 3, typechecking_TypeKind_STRUCT = 4, typechecking_TypeKind_UNION = 5, typechecking_TypeKind_ENUM = 6, typechecking_TypeKind_FUNCTION = 7, typechecking_TypeKind_TUPLE = 8, typechecking_TypeKind_POINTER = 9, typechecking_TypeKind_REFERENCE = 10, typechecking_TypeKind_STATIC_ARRAY = 11, typechecking_TypeKind_ARRAY = 12, typechecking_TypeKind_RANGE = 13, typechecking_TypeKind_RANGE_INC = 14, typechecking_TypeKind_NAMESPACE = 15, typechecking_TypeKind_STUB = 16} typechecking_TypeKind;
typedef struct typechecking_Type typechecking_Type;
typedef struct typechecking_State typechecking_State;
typedef struct typechecking_StructMember {string name; struct typechecking_Type *tpe; size_t offset;} typechecking_StructMember;
typedef struct compiler_State compiler_State;
typedef struct compiler_Value compiler_Value;
typedef struct scope_Scope scope_Scope;
typedef struct typechecking_Type {enum typechecking_TypeKind kind; string name; string type_name; size_t size; size_t align; bool unsig; size_t length; struct typechecking_Type *tpe; bool packed; Array fields; struct vector_Vector *return_t; struct vector_Vector *parameter_t; compiler_Value (*macro)(parser_Node *, Array, compiler_State *); vector_Vector * (*proto)(vector_Vector *, vector_Vector *, typechecking_State *);} typechecking_Type;
typedef struct typechecking_NamedParameter {string name; struct typechecking_Type *value; bool varargs;} typechecking_NamedParameter;
typedef struct typechecking_State {string filename; string module; struct scope_Scope *scope; struct vector_Vector *function_stack;} typechecking_State;
DLL_EXPORT void typechecking_errorn(parser_Node *node, string msg);
DLL_EXPORT typechecking_Type * typechecking_common_type(typechecking_Type *a, typechecking_Type *b);
DLL_EXPORT typechecking_Type * typechecking_type_lookup(parser_Node *node, typechecking_State *state);
 typechecking_Type * _3700c937_current_function(typechecking_State *state) {
    int length = vector_length(((*state).function_stack));
    if ((length == 0)) {
        return NULL;
    }  else {
        return ((typechecking_Type *)vector_get(((*state).function_stack), (length - ((int)1))));
    };
};
 void _3700c937_push_function(typechecking_State *state, typechecking_Type *tpe) {
    vector_push(((*state).function_stack), tpe);
};
 typechecking_Type * _3700c937_pop_function(typechecking_State *state) {
    return ((typechecking_Type *)vector_pop(((*state).function_stack)));
};
DLL_EXPORT bool typechecking_is_function(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((*tpe).kind) == typechecking_TypeKind_FUNCTION);
};
DLL_EXPORT bool typechecking_is_integer(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return ((((*tpe).kind) == typechecking_TypeKind_WORD) || (((*tpe).kind) == typechecking_TypeKind_BOOL));
};
DLL_EXPORT bool typechecking_is_arithmetic(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (typechecking_is_integer(tpe) || (((*tpe).kind) == typechecking_TypeKind_FLOAT));
};
DLL_EXPORT bool typechecking_is_float(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((*tpe).kind) == typechecking_TypeKind_FLOAT);
};
DLL_EXPORT bool typechecking_is_boolean(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((((((*tpe).kind) == typechecking_TypeKind_BOOL) || (((*tpe).kind) == typechecking_TypeKind_WORD)) || (((*tpe).kind) == typechecking_TypeKind_FLOAT)) || (((*tpe).kind) == typechecking_TypeKind_POINTER)) || (((*tpe).kind) == typechecking_TypeKind_REFERENCE));
};
DLL_EXPORT bool typechecking_is_pointer(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((*tpe).kind) == typechecking_TypeKind_POINTER);
};
DLL_EXPORT bool typechecking_is_struct(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return ((((*tpe).kind) == typechecking_TypeKind_STRUCT) || (((*tpe).kind) == typechecking_TypeKind_UNION));
};
DLL_EXPORT bool typechecking_is_enum(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((*tpe).kind) == typechecking_TypeKind_ENUM);
};
DLL_EXPORT bool typechecking_is_type(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return (((*tpe).kind) == typechecking_TypeKind_TYPE);
};
DLL_EXPORT bool typechecking_is_array(typechecking_Type *tpe) {
    if ((!tpe)) {
        return false;
    }  ;
    return ((((*tpe).kind) == typechecking_TypeKind_ARRAY) || (((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY));
};
DLL_EXPORT typechecking_Type * typechecking_pointer(typechecking_Type *tpe) {
    typechecking_Type *t = malloc((sizeof(typechecking_Type)));
    ((*t).kind) = typechecking_TypeKind_POINTER;
    ((*t).tpe) = tpe;
    ((*t).size) = (sizeof(void *));
    ((*t).align) = (alignof(void *));
    return t;
};
DLL_EXPORT typechecking_Type * typechecking_array(typechecking_Type *tpe) {
    typechecking_Type *t = malloc((sizeof(typechecking_Type)));
    ((*t).kind) = typechecking_TypeKind_ARRAY;
    ((*t).tpe) = tpe;
    ((*t).size) = (sizeof(string));
    ((*t).align) = (alignof(string));
};
 string _3700c937_append_module(string name, string module) {
    buffer_Buffer buf = buffer_make_buffer();
    if ((((module.size) - 1) > 0)) {
        buffer_append_str((&buf), module);
        buffer_append_str((&buf), ((Array){3, "::"}));
    }  ;
    buffer_append_str((&buf), name);
    return buffer_to_string((&buf));
};
DLL_EXPORT typechecking_Type * typechecking_make_type(typechecking_TypeKind kind, parser_Node *node) {
    assert((((*node).kind) == parser_NodeKind_IDENTIFIER));
    string name = parser_identifier_to_str(node);
    typechecking_Type *t = malloc((sizeof(typechecking_Type)));
    ((*t).kind) = kind;
    ((*t).type_name) = _3700c937_append_module(name, (((*node).loc).module));
    ((*t).name) = name;
    return t;
};
int _3700c937_counter;
 string _3700c937_make_unique_name() {
    string s = util_int_to_str(_3700c937_counter);
    (_3700c937_counter += 1);
    return s;
};
DLL_EXPORT typechecking_Type * typechecking_make_anonymous_type(typechecking_TypeKind kind) {
    typechecking_Type *t = malloc((sizeof(typechecking_Type)));
    ((*t).kind) = kind;
    ((*t).type_name) = ((Array){1, ""});
    ((*t).name) = ((Array){1, ""});
    return t;
};
typechecking_Type *typechecking_type_;
DLL_EXPORT typechecking_Type * typechecking_copy(typechecking_Type *a) {
    if ((!a)) {
        return NULL;
    }  ;
    typechecking_Type *t = malloc((sizeof(typechecking_Type)));
    (*t) = (*a);
    return t;
};
DLL_EXPORT bool typechecking_equals(typechecking_Type *a, typechecking_Type *b) {
    if ((a == b)) {
        return true;
    }  ;
    if ((((bool)(!a)) || ((bool)(!b)))) {
        return false;
    }  ;
    if ((((*a).kind) != ((*b).kind))) {
        return false;
    }  ;
    typechecking_TypeKind kind = ((*a).kind);
    if (((kind == typechecking_TypeKind_BOOL) || (kind == typechecking_TypeKind_TYPE))) {
        return true;
    }  ;
    if ((kind == typechecking_TypeKind_WORD)) {
        return ((((*a).size) == ((*b).size)) && (((*a).unsig) == ((*b).unsig)));
    }  ;
    if ((kind == typechecking_TypeKind_FLOAT)) {
        return (((*a).size) == ((*b).size));
    }  ;
    if ((((kind == typechecking_TypeKind_ENUM) || (kind == typechecking_TypeKind_STRUCT)) || (kind == typechecking_TypeKind_UNION))) {
        return (strcmp((((*a).type_name).value), (((*b).type_name).value)) == 0);
    }  ;
    if ((((kind == typechecking_TypeKind_ARRAY) || (kind == typechecking_TypeKind_POINTER)) || (kind == typechecking_TypeKind_REFERENCE))) {
        return typechecking_equals(((*a).tpe), ((*b).tpe));
    }  ;
    if ((kind == typechecking_TypeKind_STATIC_ARRAY)) {
        return ((((*a).length) == ((*b).length)) && typechecking_equals(((*a).tpe), ((*b).tpe)));
    }  ;
    if ((kind == typechecking_TypeKind_FUNCTION)) {
        if (((vector_length(((*a).parameter_t)) != vector_length(((*b).parameter_t))) || (vector_length(((*a).return_t)) != vector_length(((*b).return_t))))) {
            return false;
        }  ;
        for (int i = 0;(i < vector_length(((*a).parameter_t)));(i += 1)) {
            typechecking_NamedParameter *param_a = ((typechecking_NamedParameter *)vector_get(((*a).parameter_t), i));
            typechecking_NamedParameter *param_b = ((typechecking_NamedParameter *)vector_get(((*b).parameter_t), i));
            if ((!typechecking_equals(((*param_a).value), ((*param_b).value)))) {
                return false;
            }  ;
        }
        ;
        for (int i = 0;(i < vector_length(((*a).return_t)));(i += 1)) {
            if ((!typechecking_equals(vector_get(((*a).return_t), i), vector_get(((*b).return_t), i)))) {
                return false;
            }  ;
        }
        ;
        return true;
    }  ;
    assert(false);
};
 bool _3700c937_is_assignable(typechecking_Type *a, typechecking_Type *b) {
    if (typechecking_equals(a, b)) {
        return true;
    }  ;
    if ((((*a).kind) == typechecking_TypeKind_WORD)) {
        if ((((*b).kind) == typechecking_TypeKind_WORD)) {
            return (((*a).size) >= ((*b).size));
        }  ;
    }  ;
    if ((((*a).kind) == typechecking_TypeKind_FLOAT)) {
        if (((((*b).kind) == typechecking_TypeKind_WORD) || (((*b).kind) == typechecking_TypeKind_FLOAT))) {
            return true;
        }  ;
    }  ;
    if ((((*a).kind) == typechecking_TypeKind_ARRAY)) {
        if ((((*b).kind) == typechecking_TypeKind_STATIC_ARRAY)) {
            return typechecking_equals(((*a).tpe), ((*b).tpe));
        }  ;
    }  ;
    if (((((*a).kind) == typechecking_TypeKind_POINTER) && (((*a).tpe) == NULL))) {
        return (((*b).kind) == typechecking_TypeKind_POINTER);
    }  ;
    if (((((*a).kind) == typechecking_TypeKind_REFERENCE) && (((*a).tpe) == NULL))) {
        return (((*b).kind) == typechecking_TypeKind_REFERENCE);
    }  ;
    return false;
};
 int _3700c937_convert_type_score(typechecking_Type *a, typechecking_Type *b) {
    if ((((bool)(!a)) || ((bool)(!b)))) {
        return 0;
    }  ;
    if (typechecking_equals(a, b)) {
        return 0;
    }  ;
    if ((((((*a).kind) == typechecking_TypeKind_WORD) && (((*b).kind) == typechecking_TypeKind_WORD)) && (((*a).size) >= ((*b).size)))) {
        return (((int)log2(((*a).size))) - ((int)log2(((*b).size))));
    }  ;
    if (((((*a).kind) == typechecking_TypeKind_FLOAT) && (((*b).kind) == typechecking_TypeKind_FLOAT))) {
        return 1;
    }  ;
    if (((((*a).kind) == typechecking_TypeKind_FLOAT) && (((*b).kind) == typechecking_TypeKind_WORD))) {
        return 10;
    }  ;
    if (((((((*a).kind) == typechecking_TypeKind_POINTER) && (((*b).kind) == typechecking_TypeKind_POINTER)) || ((((*a).kind) == typechecking_TypeKind_REFERENCE) && (((*b).kind) == typechecking_TypeKind_REFERENCE))) && (((*a).tpe) == NULL))) {
        return 1;
    }  ;
    if ((((*a).kind) == typechecking_TypeKind_ARRAY)) {
        if (((((*b).kind) == typechecking_TypeKind_STATIC_ARRAY) && typechecking_equals(((*a).tpe), ((*b).tpe)))) {
            return 1;
        }  ;
        if (((((*a).tpe) == NULL) && ((((*b).kind) == typechecking_TypeKind_ARRAY) || (((*b).kind) == typechecking_TypeKind_STATIC_ARRAY)))) {
            return 1;
        }  ;
    }  ;
    return (-1);
};
DLL_EXPORT int typechecking_overload_score(typechecking_Type *a, vector_Vector *param_b, bool positional) {
    assert(typechecking_is_function(a));
    vector_Vector *param_a = ((*a).parameter_t);
    if ((vector_length(param_a) > vector_length(param_b))) {
        if ((vector_length(param_a) == (vector_length(param_b) + ((int)1)))) {
            if ((!((*((typechecking_NamedParameter *)vector_peek(param_a))).varargs))) {
                return (-1);
            }  ;
        }  else {
            return (-1);
        };
    }  ;
    int sum = 0;
    for (int i = 0;(i < vector_length(param_b));(i += 1)) {
        typechecking_NamedParameter *right = ((typechecking_NamedParameter *)vector_get(param_b, i));
        typechecking_NamedParameter *left = NULL;
        if (((((((*right).name).size) - 1) > 0) && (!positional))) {
            for (int i = 0;(i < vector_length(param_a));(i += 1)) {
                typechecking_NamedParameter *param = ((typechecking_NamedParameter *)vector_get(param_a, i));
                if ((strcmp((((*right).name).value), (((*param).name).value)) == 0)) {
                    left = param;
                    break;
                }  ;
            }
            ;
            if ((!left)) {
                return (-1);
            }  ;
        }  else {
            if ((i < vector_length(param_a))) {
                left = ((typechecking_NamedParameter *)vector_get(param_a, i));
            } else if ((vector_length(param_a) > 0)) {
                left = ((typechecking_NamedParameter *)vector_peek(param_a));
                if ((!((*left).varargs))) {
                    return (-1);
                }  ;
            } else {
                return (-1);
            };
        };
        int score = _3700c937_convert_type_score(((*left).value), ((*right).value));
        if ((score < 0)) {
            return (-1);
        }  ;
        (sum += score);
    }
    ;
    return sum;
};
DLL_EXPORT string typechecking_type_to_str(typechecking_Type *tpe) {
    if ((!tpe)) {
        return ((Array){7, "(null)"});
    }  ;
    buffer_Buffer buf = buffer_make_buffer();
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_WORD:
        if (((*tpe).unsig)) {
            buffer_append_char((&buf), 'u');
        }  ;
        buffer_append_char((&buf), 'i');
        buffer_append_str((&buf), util_int_to_str((((int64)((*tpe).size)) * ((int64)8))));
        break;
        case typechecking_TypeKind_FLOAT:
        buffer_append_char((&buf), 'f');
        buffer_append_str((&buf), util_int_to_str((((int64)((*tpe).size)) * ((int64)8))));
        break;
        case typechecking_TypeKind_BOOL:
        buffer_append_char((&buf), 'b');
        break;
        case typechecking_TypeKind_STRUCT:
        buffer_append_char((&buf), 'S');
        buffer_append_str((&buf), util_int_to_str(((((*tpe).type_name).size) - 1)));
        buffer_append_str((&buf), ((*tpe).type_name));
        break;
        case typechecking_TypeKind_UNION:
        buffer_append_char((&buf), 'U');
        buffer_append_str((&buf), util_int_to_str(((((*tpe).type_name).size) - 1)));
        buffer_append_str((&buf), ((*tpe).type_name));
        break;
        case typechecking_TypeKind_ENUM:
        buffer_append_char((&buf), 'E');
        buffer_append_str((&buf), util_int_to_str(((((*tpe).type_name).size) - 1)));
        buffer_append_str((&buf), ((*tpe).type_name));
        break;
        case typechecking_TypeKind_FUNCTION:
        buffer_append_char((&buf), 'F');
        for (int i = 0;(i < vector_length(((*tpe).parameter_t)));(i += 1)) {
            typechecking_NamedParameter *parameter = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
            buffer_append_str((&buf), typechecking_type_to_str(((*parameter).value)));
        }
        ;
        buffer_append_char((&buf), '_');
        for (int i = 0;(i < vector_length(((*tpe).return_t)));(i += 1)) {
            buffer_append_str((&buf), typechecking_type_to_str(((typechecking_Type *)vector_get(((*tpe).return_t), i))));
        }
        ;
        buffer_append_char((&buf), '$');
        break;
        case typechecking_TypeKind_POINTER:
        buffer_append_char((&buf), 'P');
        buffer_append_str((&buf), typechecking_type_to_str(((*tpe).tpe)));
        break;
        case typechecking_TypeKind_REFERENCE:
        buffer_append_char((&buf), 'R');
        buffer_append_str((&buf), typechecking_type_to_str(((*tpe).tpe)));
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        buffer_append_char((&buf), 'a');
        buffer_append_str((&buf), util_int_to_str(((*tpe).length)));
        buffer_append_str((&buf), typechecking_type_to_str(((*tpe).tpe)));
        break;
        case typechecking_TypeKind_ARRAY:
        buffer_append_char((&buf), 'A');
        buffer_append_str((&buf), typechecking_type_to_str(((*tpe).tpe)));
        break;
        default:
        assert(false);
    }
    ;
    return buffer_to_string((&buf));
};
DLL_EXPORT string typechecking_mangle_function_name(string name, vector_Vector *parameter_t) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_str((&buf), ((Array){3, "_F"}));
    buffer_append_str((&buf), util_int_to_str(((name.size) - 1)));
    buffer_append_str((&buf), name);
    buffer_append_str((&buf), ((Array){3, "__"}));
    for (int i = 0;(i < vector_length(parameter_t));(i += 1)) {
        buffer_append_str((&buf), typechecking_type_to_str(((*((typechecking_NamedParameter *)vector_get(parameter_t, i))).value)));
    }
    ;
    return buffer_to_string((&buf));
};
DLL_EXPORT string typechecking_last_ident_to_str(parser_Node *node) {
    assert((((*node).kind) == parser_NodeKind_IDENTIFIER));
    if ((vector_length((((*node).value).body)) > 1)) {
        typechecking_errorn(node, ((Array){40, "Expected plain identifier without path\x0a"""}));
    }  ;
    return (*((string *)vector_get((((*node).value).body), 0)));
};
#include "scope.c"
#include "builtins.c"
#include "debug.c"
typedef struct toolchain_Module toolchain_Module;
DLL_EXPORT void typechecking_typecheck(toolchain_Module *module);
#include "toolchain.c"
 bool _3700c937_check_is_identifier_assignable(parser_Node *ident, typechecking_State *state) {
    if ((((*ident).kind) == parser_NodeKind_IDENTIFIER)) {
        scope_Value *value = scope_get(((*state).scope), ident);
        if (value) {
            if ((((*value).modifier) != parser_VarDecl_VAR)) {
                typechecking_errorn(ident, ((Array){23, "Assignment to non var\x0a"""}));
                return false;
            }  ;
        }  else {
            typechecking_errorn(ident, ((Array){19, "Unknown variable \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(ident).value), (((Array){2, "\x0a"""}).value));
            return false;
        };
    }  ;
    return true;
};
 void * _3700c937_evaluate_constant(parser_Node *node, typechecking_Type *tpe, typechecking_State *state) {
    if ((((*node).kind) == parser_NodeKind_INTEGER)) {
        uint64 *i = malloc((sizeof(uint64)));
        (*i) = (((*node).value).i);
        return i;
    } else if ((((*node).kind) == parser_NodeKind_IDENTIFIER)) {
        scope_Value *value = scope_get_const_value(((*node).scope), node);
        return ((*value).value);
    } ;
    assert(false);
};
DLL_EXPORT typechecking_Type * typechecking_type_lookup(parser_Node *node, typechecking_State *state) {
    if ((!node)) {
        return NULL;
    }  ;
    if ((((*node).kind) == parser_NodeKind_IDENTIFIER)) {
        return scope_get_type(((*state).scope), node);
    } else if ((((*node).kind) == parser_NodeKind_PTR_T)) {
        typechecking_Type *tpe = typechecking_type_lookup(((((*node).value).t_parr).tpe), state);
        return typechecking_pointer(tpe);
    }
    else if ((((*node).kind) == parser_NodeKind_STRUCT_T)) {
        typechecking_Type *tpe = typechecking_make_anonymous_type(typechecking_TypeKind_STRUCT);
        ((*tpe).packed) = false;
        int length = vector_length((((*node).value).body));
        if ((length == 0)) {
            typechecking_errorn(node, ((Array){26, "Empty struct not allowed\x0a"""}));
            return NULL;
        }  ;
        Array fields = ((Array){length, malloc((((int64)(sizeof(typechecking_StructMember))) * ((int64)length)))});
        int offset = 0;
        int align = 1;
        for (int i = 0;(i < length);(i += 1)) {
            parser_Node *field = ((parser_Node *)vector_get((((*node).value).body), i));
            assert((((*field).kind) == parser_NodeKind_ID_DECL_STRUCT));
            string name = typechecking_last_ident_to_str(((((*field).value).id_decl_struct).ident));
            typechecking_Type *tpe = typechecking_type_lookup(((((*field).value).id_decl_struct).tpe), state);
            if ((!tpe)) {
                continue;
            }  ;
            offset = ((int)(ceil((((double)offset) / ((double)((*tpe).align)))) * ((double)((*tpe).align))));
            align = util_lcm(align, ((*tpe).align));
            (((typechecking_StructMember *)fields.value)[i]) = ((typechecking_StructMember){ name, tpe, offset });
            (offset += ((*tpe).size));
        }
        ;
        offset = ((int)(ceil((((double)offset) / ((double)align))) * ((double)align)));
        ((*tpe).size) = offset;
        ((*tpe).align) = align;
        ((*tpe).fields) = fields;
        return tpe;
    }
    else if ((((*node).kind) == parser_NodeKind_UNION_T)) {
        typechecking_Type *tpe = typechecking_make_anonymous_type(typechecking_TypeKind_UNION);
        int length = vector_length((((*node).value).body));
        if ((length == 0)) {
            typechecking_errorn(node, ((Array){25, "Empty union not allowed\x0a"""}));
            return NULL;
        }  ;
        Array fields = ((Array){length, malloc((((int64)(sizeof(typechecking_StructMember))) * ((int64)length)))});
        int size = 0;
        int align = 1;
        for (int i = 0;(i < length);(i += 1)) {
            parser_Node *field = ((parser_Node *)vector_get((((*node).value).body), i));
            assert((((*field).kind) == parser_NodeKind_ID_DECL_STRUCT));
            string name = typechecking_last_ident_to_str(((((*field).value).id_decl_struct).ident));
            typechecking_Type *tpe = typechecking_type_lookup(((((*field).value).id_decl_struct).tpe), state);
            (((typechecking_StructMember *)fields.value)[i]) = ((typechecking_StructMember){ name, tpe, 0 });
            size = ((int)fmax(((*tpe).size), size));
            align = ((int)fmax(((*tpe).align), align));
        }
        ;
        ((*tpe).size) = size;
        ((*tpe).align) = align;
        ((*tpe).fields) = fields;
        return tpe;
    }
    else if ((((*node).kind) == parser_NodeKind_ENUM_T)) {
        typechecking_Type *enum_tpe = builtins_int_;
        if (((((*node).value).t_enum).tpe)) {
            enum_tpe = typechecking_type_lookup(((((*node).value).t_enum).tpe), state);
        }  ;
        typechecking_Type *tpe = typechecking_make_anonymous_type(typechecking_TypeKind_ENUM);
        ((*tpe).tpe) = enum_tpe;
        ((*tpe).size) = ((*enum_tpe).size);
        ((*tpe).align) = ((*enum_tpe).align);
        return tpe;
    }
    else if ((((*node).kind) == parser_NodeKind_ARRAY_T)) {
        typechecking_Type *array_tpe = typechecking_type_lookup(((((*node).value).t_parr).tpe), state);
        typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
        ((*tpe).kind) = typechecking_TypeKind_ARRAY;
        ((*tpe).tpe) = array_tpe;
        ((*tpe).size) = (sizeof(string));
        ((*tpe).align) = (alignof(string));
        return tpe;
    }
    else if ((((*node).kind) == parser_NodeKind_ARRAY_STATIC_T)) {
        typechecking_Type *array_tpe = typechecking_type_lookup(((((*node).value).t_arrs).tpe), state);
        typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
        ((*tpe).kind) = typechecking_TypeKind_STATIC_ARRAY;
        ((*tpe).tpe) = array_tpe;
        ((*tpe).length) = (((*((((*node).value).t_arrs).n)).value).i);
        ((*tpe).size) = (((*tpe).length) * ((*array_tpe).size));
        ((*tpe).align) = ((*array_tpe).align);
        return tpe;
    } ;
    return NULL;
};
DLL_EXPORT typechecking_Type * typechecking_common_type(typechecking_Type *a, typechecking_Type *b) {
    if ((((bool)(!a)) || ((bool)(!b)))) {
        return NULL;
    }  ;
    if (((((*a).kind) == typechecking_TypeKind_FLOAT) && (((*b).kind) == typechecking_TypeKind_WORD))) {
        return a;
    } else if (((((*a).kind) == typechecking_TypeKind_WORD) && (((*b).kind) == typechecking_TypeKind_FLOAT))) {
        return b;
    } ;
    if ((((*a).kind) == ((*b).kind))) {
        if ((((*a).size) == ((*b).size))) {
            if (((*b).unsig)) {
                return b;
            }  else {
                return a;
            };
        } else if ((((*a).size) > ((*b).size))) {
            return a;
        } else {
            return b;
        };
    }  ;
    return NULL;
};
 void _3700c937_walk(parser_Node *node, typechecking_State *state);
 void _3700c937_walk_Null(parser_Node *node, typechecking_State *state) {
    typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
    ((*tpe).kind) = typechecking_TypeKind_POINTER;
    ((*tpe).tpe) = NULL;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_Integer(parser_Node *node, typechecking_State *state) {
    ((*node).tpe) = builtins_int_;
};
 void _3700c937_walk_Boolean(parser_Node *node, typechecking_State *state) {
    ((*node).tpe) = builtins_bool_;
};
 void _3700c937_walk_Float(parser_Node *node, typechecking_State *state) {
    ((*node).tpe) = builtins_double_;
};
 void _3700c937_walk_String(parser_Node *node, typechecking_State *state) {
    typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
    ((*tpe).kind) = typechecking_TypeKind_STATIC_ARRAY;
    ((*tpe).tpe) = builtins_char_;
    ((*tpe).length) = ((((*node).value).str).size);
    ((*tpe).size) = (((*tpe).length) * (sizeof(char)));
    ((*tpe).align) = (sizeof(char));
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_Char(parser_Node *node, typechecking_State *state) {
    ((*node).tpe) = builtins_char_;
};
 void _3700c937_walk_Range(parser_Node *node, typechecking_State *state) {
    _3700c937_walk(((((*node).value).bin_op).left), state);
    _3700c937_walk(((((*node).value).bin_op).right), state);
    typechecking_Type *tpe = NULL;
    tpe = malloc((sizeof(typechecking_Type)));
    if ((((*node).kind) == parser_NodeKind_RANGE_INC)) {
        ((*tpe).kind) = typechecking_TypeKind_RANGE_INC;
    }  else {
        ((*tpe).kind) = typechecking_TypeKind_RANGE;
    };
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_Identifier(parser_Node *node, typechecking_State *state) {
    scope_Value *value = scope_get(((*state).scope), node);
    if ((!value)) {
        typechecking_errorn(node, ((Array){20, "Unknown identifier "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(node).value), (((Array){2, "\x0a"""}).value));
    }  else {
        ((*node).tpe) = ((*value).tpe);
    };
};
 void _3700c937_collapse_types(vector_Vector *right, vector_Vector *types, vector_Vector *nodes, typechecking_State *state) {
    for (int i = 0;(i < vector_length(right));(i += 1)) {
        parser_Node *value = ((parser_Node *)vector_get(right, i));
        if ((!value)) {
            continue;
        }  ;
        _3700c937_walk(value, state);
        typechecking_Type *tpe = ((*value).tpe);
        if ((((bool)tpe) && (((*tpe).kind) == typechecking_TypeKind_TUPLE))) {
            for (int j = 0;(j < vector_length(((*tpe).return_t)));(j += 1)) {
                typechecking_Type *t = ((typechecking_Type *)vector_get(((*tpe).return_t), j));
                vector_push(types, t);
                vector_push(nodes, value);
            }
            ;
        }  else {
            vector_push(types, tpe);
            vector_push(nodes, value);
        };
    }
    ;
};
 typechecking_Type * _3700c937_implicit_conversion(parser_Node *node, typechecking_Type *tpe, typechecking_Type *rhstpe) {
    if (((((((*node).kind) == parser_NodeKind_NULL) && typechecking_is_pointer(tpe)) || ((((*node).kind) == parser_NodeKind_STRUCT_LIT) && typechecking_is_struct(tpe))) || (typechecking_is_arithmetic(tpe) && ((((*node).kind) == parser_NodeKind_INTEGER) || (((((*node).kind) == parser_NodeKind_USUB) || (((*node).kind) == parser_NodeKind_UADD)) && (((*(((*node).value).expr)).kind) == parser_NodeKind_INTEGER)))))) {
        ((*node).tpe) = tpe;
        return tpe;
    }  ;
    return rhstpe;
};
 void _3700c937_walk_Assign(parser_Node *node, typechecking_State *state) {
    vector_Vector *left = ((((*node).value).assign).left);
    vector_Vector *right = ((((*node).value).assign).right);
    vector_Vector *types = vector_make();
    vector_Vector *nodes = vector_make();
    _3700c937_collapse_types(right, types, nodes, state);
    if ((vector_length(types) != vector_length(left))) {
        typechecking_errorn(node, ((Array){23, "Unbalanced assignment\x0a"""}));
        return ;
    }  ;
    for (int i = 0;(i < vector_length(left));(i += 1)) {
        parser_Node *node = ((parser_Node *)vector_get(left, i));
        _3700c937_walk(node, state);
        if ((!_3700c937_check_is_identifier_assignable(node, state))) {
            continue;
        }  ;
        typechecking_Type *tpe = ((typechecking_Type *)vector_get(types, i));
        parser_Node *n = ((parser_Node *)vector_get(nodes, i));
        tpe = _3700c937_implicit_conversion(n, ((*node).tpe), tpe);
        if ((((bool)(!tpe)) || ((bool)(!((*node).tpe))))) {
            continue;
        }  ;
        if ((!_3700c937_is_assignable(((*node).tpe), tpe))) {
            typechecking_errorn(node, ((Array){20, "Incompatible types "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(((*node).tpe)).value), (((Array){6, " and "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
        }  ;
    }
    ;
    ((*node).tpe) = ((typechecking_Type *)vector_head(types));
};
 void _3700c937_walk_VarDecl(parser_Node *node, typechecking_State *state) {
    parser_ShareMarker share = ((((*node).value).var_decl).share);
    parser_VarDecl kw = ((((*node).value).var_decl).kw);
    vector_Vector *left = ((((*node).value).var_decl).left);
    vector_Vector *right = ((((*node).value).var_decl).right);
    if (_3700c937_current_function(state)) {
        if ((share != parser_ShareMarker_NONE)) {
            typechecking_errorn(node, ((Array){36, "Can't share non top level variable\x0a"""}));
        }  ;
    }  ;
    vector_Vector *types = vector_make();
    vector_Vector *nodes = vector_make();
    _3700c937_collapse_types(right, types, nodes, state);
    if ((((kw == parser_VarDecl_CONST) || (kw == parser_VarDecl_LET)) && (vector_length(types) != vector_length(left)))) {
        typechecking_errorn(node, ((Array){23, "Unbalanced assignment\x0a"""}));
        return ;
    }  ;
    if ((vector_length(types) > vector_length(left))) {
        typechecking_errorn(node, ((Array){27, "Too many values to assign\x0a"""}));
        return ;
    }  ;
    for (int i = 0;(i < vector_length(left));(i += 1)) {
        parser_Node *node = ((parser_Node *)vector_get(left, i));
        if ((((*node).kind) == parser_NodeKind_ID_DECL)) {
            parser_Node *tpe_node = ((((*node).value).id_decl).tpe);
            typechecking_Type *tpe = NULL;
            if (tpe_node) {
                tpe = typechecking_type_lookup(tpe_node, state);
                if ((i < vector_length(types))) {
                    typechecking_Type *rhstpe = ((typechecking_Type *)vector_get(types, i));
                    parser_Node *n = ((parser_Node *)vector_get(nodes, i));
                    rhstpe = _3700c937_implicit_conversion(n, tpe, rhstpe);
                    if ((((bool)(!tpe)) || ((bool)(!rhstpe)))) {
                        continue;
                    }  ;
                    if ((!_3700c937_is_assignable(tpe, rhstpe))) {
                        typechecking_errorn(node, ((Array){20, "Incompatible types "}));
                        fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){6, " and "}).value), (debug_type_to_str(rhstpe).value), (((Array){2, "\x0a"""}).value));
                    }  ;
                }  ;
            }  else {
                if ((i < vector_length(types))) {
                    tpe = ((typechecking_Type *)vector_get(types, i));
                }  else {
                    typechecking_errorn(node, ((Array){24, "Need to specify a type\x0a"""}));
                    continue;
                };
            };
            parser_Node *ident = ((((*node).value).id_decl).value);
            assert((((*ident).kind) == parser_NodeKind_IDENTIFIER));
            ((*ident).scope) = ((*state).scope);
            ((*ident).tpe) = tpe;
            scope_create_variable(((*state).scope), ident, share, kw, tpe, NULL);
        } else if ((((*node).kind) == parser_NodeKind_ID_ASSIGN)) {
            parser_Node *n = (((*node).value).expr);
            _3700c937_walk(n, state);
            if ((!_3700c937_check_is_identifier_assignable(n, state))) {
                continue;
            }  ;
            typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
            if ((!tpe)) {
                continue;
            }  ;
            if ((i >= vector_length(types))) {
                typechecking_errorn(node, ((Array){21, "Must assign a value\x0a"""}));
                continue;
            }  ;
            typechecking_Type *rhstpe = ((typechecking_Type *)vector_get(types, i));
            parser_Node *n2 = ((parser_Node *)vector_get(nodes, i));
            rhstpe = _3700c937_implicit_conversion(n2, tpe, rhstpe);
            if ((((bool)(!tpe)) || ((bool)(!rhstpe)))) {
                continue;
            }  ;
            if ((!_3700c937_is_assignable(tpe, rhstpe))) {
                typechecking_errorn(node, ((Array){20, "Incompatible types "}));
                fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){6, " and "}).value), (debug_type_to_str(rhstpe).value), (((Array){2, "\x0a"""}).value));
            }  ;
        } else {
            assert(false);
        };
    }
    ;
};
 void _3700c937_walk_Not(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!typechecking_is_boolean(tpe))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){24, ", must be boolean type\x0a"""}).value));
    }  ;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_BNot(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!typechecking_is_integer(tpe))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){24, ", must be integer type\x0a"""}).value));
    }  ;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_UAdd(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!typechecking_is_arithmetic(tpe))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){27, ", must be arithmetic type\x0a"""}).value));
    }  ;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_USub(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!typechecking_is_arithmetic(tpe))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){27, ", must be arithmetic type\x0a"""}).value));
    }  ;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_ArithmeticOp(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return ;
    }  ;
    ((*node).tpe) = typechecking_common_type(((*left).tpe), ((*right).tpe));
};
 void _3700c937_walk_BitwiseOp(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return ;
    }  ;
    if (((!typechecking_is_integer(((*left).tpe))) || (!typechecking_is_integer(((*right).tpe))))) {
        typechecking_errorn(node, ((Array){26, "Invalid operands of type "}));
        fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){6, " and "}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){21, " to bitwise operator"}).value));
    }  ;
    ((*node).tpe) = typechecking_common_type(((*left).tpe), ((*right).tpe));
};
 void _3700c937_walk_BooleanOp(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return ;
    }  ;
    if (((!typechecking_is_boolean(((*left).tpe))) || (!typechecking_is_boolean(((*right).tpe))))) {
        typechecking_errorn(node, ((Array){26, "Invalid operands of type "}));
        fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){6, " and "}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){21, " to boolean operator"}).value));
    }  ;
    ((*node).tpe) = builtins_bool_;
};
 void _3700c937_walk_AssignEqArithmetic(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((!_3700c937_check_is_identifier_assignable(left, state))) {
        return ;
    }  ;
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return ;
    }  ;
    if ((!typechecking_is_arithmetic(((*right).tpe)))) {
        typechecking_errorn(right, ((Array){50, "Incompatible type, expected arithmetic type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    if ((!typechecking_is_arithmetic(((*left).tpe)))) {
        typechecking_errorn(right, ((Array){50, "Incompatible type, expected arithmetic type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    ((*node).tpe) = ((*left).tpe);
};
 void _3700c937_walk_AssignEqBitwise(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((!_3700c937_check_is_identifier_assignable(left, state))) {
        return ;
    }  ;
    if ((!typechecking_is_integer(((*right).tpe)))) {
        typechecking_errorn(right, ((Array){42, "Incompatible type, expected integer, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    if ((!typechecking_is_integer(((*left).tpe)))) {
        typechecking_errorn(right, ((Array){47, "Incompatible type, expected integer type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    ((*node).tpe) = ((*left).tpe);
};
 void _3700c937_walk_AssignEqPtr(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((!_3700c937_check_is_identifier_assignable(left, state))) {
        return ;
    }  ;
    if ((!typechecking_is_integer(((*right).tpe)))) {
        typechecking_errorn(right, ((Array){42, "Incompatible type, expected integer, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    if ((!typechecking_is_pointer(((*left).tpe)))) {
        typechecking_errorn(right, ((Array){47, "Incompatible type, expected pointer type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    ((*node).tpe) = ((*left).tpe);
};
 void _3700c937_walk_Cast(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return ;
    }  ;
    ((*node).tpe) = typechecking_type_lookup(right, state);
    if ((((*left).kind) == parser_NodeKind_STRUCT_LIT)) {
        ((*left).tpe) = ((*node).tpe);
    }  ;
    _3700c937_walk(left, state);
};
 void _3700c937_walk_Import(parser_Node *node, typechecking_State *state) {
    if ((_3700c937_current_function(state) != NULL)) {
        typechecking_errorn(node, ((Array){30, "Can only import at top level\x0a"""}));
        return ;
    }  ;
    vector_Vector *imports = (((*node).value).body);
    for (int i = 0;(i < vector_length(imports));(i += 1)) {
        parser_Node *imprt = ((parser_Node *)vector_get(imports, i));
        parser_Node *name = ((((*imprt).value).import_module).name);
        parser_Node *alias = ((((*imprt).value).import_module).alias);
        if ((!alias)) {
            alias = name;
        }  ;
        toolchain_Module *module = toolchain_compile_module(name);
        if ((!module)) {
            typechecking_errorn(name, ((Array){8, "Module "}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(name).value), (((Array){21, " could not be found\x0a"""}).value));
            return ;
        }  ;
        scope_insert_module(((*state).scope), alias, module);
    }
    ;
};
 void _3700c937_walk_Def(parser_Node *node, typechecking_State *state) {
    parser_ShareMarker share = ((((*node).value).def_).share);
    vector_Vector *body = ((((*node).value).def_).body);
    parser_Node *name = ((((*node).value).def_).name);
    vector_Vector *params = ((((*node).value).def_).params);
    vector_Vector *returns = ((((*node).value).def_).returns);
    scope_Scope *outer_scope = ((*state).scope);
    if (_3700c937_current_function(state)) {
        if ((share != parser_ShareMarker_NONE)) {
            typechecking_errorn(node, ((Array){36, "Can't share non top level function\x0a"""}));
        }  ;
    }  ;
    bool forward_declare = true;
    if (body) {
        forward_declare = false;
        ((*state).scope) = scope_enter_function_scope(((*state).scope));
    }  ;
    vector_Vector *parameter_t = vector_make();
    vector_Vector *return_t = vector_make();
    for (int i = 0;(i < vector_length(params));(i += 1)) {
        parser_Node *param = ((parser_Node *)vector_get(params, i));
        assert((((*param).kind) == parser_NodeKind_PARAMETER));
        typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
        parser_Node *name = ((((*param).value).param).name);
        typechecking_Type *tpe = typechecking_type_lookup(((((*param).value).param).tpe), state);
        ((*named).name) = typechecking_last_ident_to_str(name);
        ((*named).value) = tpe;
        ((*named).varargs) = false;
        if (body) {
            scope_create_variable(((*state).scope), name, parser_ShareMarker_NONE, parser_VarDecl_VAR, tpe, NULL);
        }  ;
        vector_push(parameter_t, named);
    }
    ;
    for (int i = 0;(i < vector_length(returns));(i += 1)) {
        vector_push(return_t, typechecking_type_lookup(((parser_Node *)vector_get(returns, i)), state));
    }
    ;
    typechecking_Type *tpe = typechecking_make_type(typechecking_TypeKind_FUNCTION, name);
    ((*tpe).size) = (sizeof(void *));
    ((*tpe).align) = (alignof(void *));
    ((*tpe).parameter_t) = parameter_t;
    ((*tpe).return_t) = return_t;
    ((*tpe).macro) = NULL;
    ((*tpe).proto) = NULL;
    if (_3700c937_current_function(state)) {
        scope_create_variable(outer_scope, name, share, parser_VarDecl_CONST, tpe, NULL);
    }  else {
        scope_create_function(outer_scope, name, share, tpe, forward_declare);
    };
    if (body) {
        _3700c937_push_function(state, tpe);
        for (int i = 0;(i < vector_length(body));(i += 1)) {
            _3700c937_walk(((parser_Node *)vector_get(body, i)), state);
        }
        ;
        ((*node).scope) = ((*state).scope);
        ((*state).scope) = scope_exit_scope(((*state).scope));
        _3700c937_pop_function(state);
    }  ;
    ((*node).tpe) = tpe;
};
 void _3700c937_walk_TypeDecl(parser_Node *node, typechecking_State *state) {
    parser_ShareMarker share = ((((*node).value).type_decl).share);
    vector_Vector *left = ((((*node).value).type_decl).left);
    vector_Vector *right = ((((*node).value).type_decl).right);
    if ((vector_length(left) < vector_length(right))) {
        typechecking_errorn(node, ((Array){27, "Too many values to assign\x0a"""}));
        return ;
    }  ;
    for (int i = 0;(i < vector_length(left));(i += 1)) {
        parser_Node *name = ((parser_Node *)vector_get(left, i));
        parser_Node *value = NULL;
        if ((i < vector_length(right))) {
            value = vector_get(right, i);
        }  ;
        typechecking_Type *tpe = typechecking_make_type(typechecking_TypeKind_STUB, name);
        if ((!scope_create_type(((*state).scope), name, share, tpe))) {
            continue;
        }  ;
        if (value) {
            tpe = typechecking_copy(typechecking_type_lookup(value, state));
            if ((!tpe)) {
                return ;
            }  ;
            ((*tpe).name) = parser_identifier_to_str(name);
            if ((((((*value).kind) == parser_NodeKind_STRUCT_T) || (((*value).kind) == parser_NodeKind_UNION_T)) || (((*value).kind) == parser_NodeKind_ENUM_T))) {
                ((*tpe).type_name) = _3700c937_append_module(((*tpe).name), (((*node).loc).module));
            }  ;
            if ((((*value).kind) == parser_NodeKind_ENUM_T)) {
                scope_Scope *scpe = scope_enter_scope(((*state).scope));
                uint64 last_value = 0;
                for (int i = 0;(i < vector_length(((((*value).value).t_enum).body)));(i += 1)) {
                    parser_Node *iddecl = ((parser_Node *)vector_get(((((*value).value).t_enum).body), i));
                    uint64 *constant = NULL;
                    if (((((*iddecl).value).id_decl_enum).value)) {
                        constant = ((uint64 *)_3700c937_evaluate_constant(((((*iddecl).value).id_decl_enum).value), ((*tpe).tpe), state));
                    }  else {
                        constant = malloc((sizeof(uint64)));
                        (*constant) = last_value;
                    };
                    scope_create_variable(scpe, ((((*iddecl).value).id_decl_enum).ident), share, parser_VarDecl_CONST, tpe, constant);
                    last_value = (((int64)(*constant)) + ((int64)1));
                }
                ;
                scope_create_type_scope(((*state).scope), name, share, tpe, scpe);
            }  else {
                scope_create_type(((*state).scope), name, share, tpe);
            };
        }  ;
        ((*name).tpe) = tpe;
    }
    ;
};
 void _3700c937_walk_Return(parser_Node *node, typechecking_State *state) {
    typechecking_Type *current_fun = _3700c937_current_function(state);
    vector_Vector *body = (((*node).value).body);
    if ((!current_fun)) {
        typechecking_errorn(node, ((Array){30, "return outside of a function\x0a"""}));
        return ;
    }  ;
    vector_Vector *types = vector_make();
    vector_Vector *nodes = vector_make();
    _3700c937_collapse_types(body, types, nodes, state);
    vector_Vector *returns = ((*current_fun).return_t);
    if ((vector_length(types) != vector_length(returns))) {
        typechecking_errorn(node, ((Array){37, "Wrong number of arguments to return\x0a"""}));
    }  ;
    for (int i = 0;(i < vector_length(returns));(i += 1)) {
        typechecking_Type *argtpe = ((typechecking_Type *)vector_get(returns, i));
        typechecking_Type *rettpe = ((typechecking_Type *)vector_get(types, i));
        parser_Node *n = ((parser_Node *)vector_get(nodes, i));
        rettpe = _3700c937_implicit_conversion(n, argtpe, rettpe);
        if ((((bool)(!argtpe)) || ((bool)(!rettpe)))) {
            continue;
        }  ;
        if ((!_3700c937_is_assignable(argtpe, rettpe))) {
            typechecking_errorn(node, ((Array){36, "Wrong type of return argument, got "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(rettpe).value), (((Array){12, ", expected "}).value), (debug_type_to_str(argtpe).value), (((Array){2, "\x0a"""}).value));
        }  ;
    }
    ;
    ((*node).tpe) = current_fun;
};
 void _3700c937_walk_Call(parser_Node *node, typechecking_State *state) {
    vector_Vector *arguments = vector_make();
    for (int i = 0;(i < vector_length(((((*node).value).func_call).args)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).args), i));
        _3700c937_walk(n, state);
        typechecking_NamedParameter *np = malloc((sizeof(typechecking_NamedParameter)));
        ((*np).name) = ((Array){1, ""});
        ((*np).value) = ((*n).tpe);
        ((*np).varargs) = false;
        vector_push(arguments, np);
    }
    ;
    map_Map *parameter_map = map_make();
    for (int i = 0;(i < vector_length(((((*node).value).func_call).kwargs)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).kwargs), i));
        _3700c937_walk(((((*n).value).named_arg).value), state);
        string name = typechecking_last_ident_to_str(((((*n).value).named_arg).name));
        if (map_contains(parameter_map, name)) {
            typechecking_errorn(n, ((Array){92, "Cannot have the same parameter name multiple times in a function call. Parameter name was \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (name.value), (((Array){4, "\".\x0a"""}).value));
            break;
        }  else {
            map_put(parameter_map, name, map_sentinel);
            typechecking_NamedParameter *np = malloc((sizeof(typechecking_NamedParameter)));
            ((*np).name) = name;
            ((*np).value) = ((*((((*n).value).named_arg).value)).tpe);
            ((*np).varargs) = false;
            vector_push(arguments, np);
        };
    }
    ;
    parser_Node *left = ((((*node).value).func_call).left);
    scope_Value *function = scope_get_function(((*state).scope), left, arguments);
    if ((!function)) {
        typechecking_errorn(left, ((Array){11, "Function \""}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(left).value), (((Array){37, "\" not found. Arguments were of type "}).value));
        int len = vector_length(arguments);
        for (int i = 0;(i < len);(i += 1)) {
            typechecking_NamedParameter *arg = ((typechecking_NamedParameter *)vector_get(arguments, i));
            fprintf(stderr, (((Array){3, "%s"}).value), (debug_type_to_str(((*arg).value)).value));
            if ((i < (len - ((int)1)))) {
                fprintf(stderr, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
            }  ;
        }
        ;
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    }  else {
        typechecking_Type *tpe = ((*function).tpe);
        vector_Vector *parameter_t = ((*tpe).parameter_t);
        ((*node).function) = tpe;
        for (int i = 0;(i < vector_length(((((*node).value).func_call).args)));(i += 1)) {
            parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).args), i));
            typechecking_Type *rhstpe;
            if ((i < vector_length(parameter_t))) {
                rhstpe = ((*((typechecking_NamedParameter *)vector_get(parameter_t, i))).value);
            }  else {
                typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_peek(parameter_t));
                assert(((*np).varargs));
                rhstpe = ((*np).value);
            };
            _3700c937_implicit_conversion(n, rhstpe, NULL);
        }
        ;
        for (int i = 0;(i < vector_length(((((*node).value).func_call).kwargs)));(i += 1)) {
            parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).kwargs), i));
            string name = typechecking_last_ident_to_str(((((*n).value).named_arg).name));
            parser_Node *arg = ((((*n).value).named_arg).value);
            typechecking_Type *rhstpe;
            for (int j = 0;(j < vector_length(parameter_t));(j += 1)) {
                typechecking_NamedParameter *param = ((typechecking_NamedParameter *)vector_get(parameter_t, j));
                if ((strcmp((((*param).name).value), (name.value)) == 0)) {
                    rhstpe = ((*param).value);
                    break;
                }  ;
            }
            ;
            _3700c937_implicit_conversion(arg, rhstpe, NULL);
        }
        ;
        vector_Vector *return_t = ((*tpe).return_t);
        if (((*tpe).proto)) {
            return_t = ((*tpe).proto)(((((*node).value).func_call).args), ((((*node).value).func_call).kwargs), state);
        }  ;
        int len = vector_length(return_t);
        if ((len > 1)) {
            typechecking_Type *return_tpe = malloc((sizeof(typechecking_Type)));
            ((*return_tpe).kind) = typechecking_TypeKind_TUPLE;
            ((*return_tpe).return_t) = return_t;
            ((*node).tpe) = return_tpe;
        } else if ((len == 1)) {
            ((*node).tpe) = vector_peek(return_t);
        } else {
            ((*node).tpe) = NULL;
        };
    };
};
 void _3700c937_walk_Switch(parser_Node *node, typechecking_State *state) {
    ;
};
 void _3700c937_walk_If(parser_Node *node, typechecking_State *state) {
    parser_Node *cond = ((((*node).value).if_).cond);
    _3700c937_walk(cond, state);
    typechecking_Type *tpe = ((*cond).tpe);
    if ((!typechecking_is_boolean(tpe))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){24, ", must be boolean type\x0a"""}).value));
    }  ;
    ((*state).scope) = scope_enter_scope(((*state).scope));
    for (int i = 0;(i < vector_length(((((*node).value).if_).body)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).if_).body), i));
        _3700c937_walk(n, state);
    }
    ;
    ((*state).scope) = scope_exit_scope(((*state).scope));
    for (int i = 0;(i < vector_length(((((*node).value).if_).else_if)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).if_).else_if), i));
        parser_Node *cond = ((((*n).value).else_if).cond);
        _3700c937_walk(cond, state);
        typechecking_Type *tpe = ((*cond).tpe);
        if ((!typechecking_is_boolean(tpe))) {
            typechecking_errorn(n, ((Array){19, "Incompatible type "}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){24, ", must be boolean type\x0a"""}).value));
        }  ;
        ((*state).scope) = scope_enter_scope(((*state).scope));
        for (int i = 0;(i < vector_length(((((*n).value).else_if).body)));(i += 1)) {
            void *n2 = vector_get(((((*n).value).else_if).body), i);
            _3700c937_walk(n2, state);
        }
        ;
        ((*state).scope) = scope_exit_scope(((*state).scope));
    }
    ;
    parser_Node *else_ = ((((*node).value).if_).else_);
    if (else_) {
        ((*state).scope) = scope_enter_scope(((*state).scope));
        for (int i = 0;(i < vector_length((((*else_).value).body)));(i += 1)) {
            parser_Node *n = ((parser_Node *)vector_get((((*else_).value).body), i));
            _3700c937_walk(n, state);
        }
        ;
        ((*state).scope) = scope_exit_scope(((*state).scope));
    }  ;
};
 void _3700c937_walk_Loop(parser_Node *node, typechecking_State *state) {
    ((*state).scope) = scope_enter_scope(((*state).scope));
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        void *n = vector_get((((*node).value).body), i);
        _3700c937_walk(n, state);
    }
    ;
    ((*state).scope) = scope_exit_scope(((*state).scope));
};
 void _3700c937_walk_While(parser_Node *node, typechecking_State *state) {
    parser_Node *expr = ((((*node).value).while_loop).expr);
    _3700c937_walk(expr, state);
    if ((!typechecking_is_boolean(((*expr).tpe)))) {
        typechecking_errorn(node, ((Array){19, "Incompatible type "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*expr).tpe)).value), (((Array){24, ", must be boolean type\x0a"""}).value));
    }  ;
    ((*state).scope) = scope_enter_scope(((*state).scope));
    for (int i = 0;(i < vector_length(((((*node).value).while_loop).body)));(i += 1)) {
        void *n = vector_get(((((*node).value).while_loop).body), i);
        _3700c937_walk(n, state);
    }
    ;
    ((*state).scope) = scope_exit_scope(((*state).scope));
};
 void _3700c937_walk_For(parser_Node *node, typechecking_State *state) {
    parser_Node *expr = ((((*node).value).for_loop).expr);
    _3700c937_walk(expr, state);
    ((*state).scope) = scope_enter_scope(((*state).scope));
    parser_Node *iddecl = ((((*node).value).for_loop).iddecl);
    typechecking_Type *tpe = builtins_int_;
    if (typechecking_is_array(((*expr).tpe))) {
        tpe = ((*((*expr).tpe)).tpe);
    }  ;
    if ((((*iddecl).kind) == parser_NodeKind_FOR_ID_DECL)) {
        ((*iddecl).tpe) = tpe;
        ((*iddecl).scope) = ((*state).scope);
        scope_create_variable(((*state).scope), ((((*iddecl).value).for_id_decl).ident), parser_ShareMarker_NONE, ((((*iddecl).value).for_id_decl).kw), tpe, NULL);
    }  else {
        _3700c937_walk(iddecl, state);
        if ((!typechecking_equals(tpe, ((*iddecl).tpe)))) {
            typechecking_errorn(iddecl, ((Array){29, "Type didn't match, expected "}));
            fprintf(stderr, (((Array){7, "%s%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){7, ", got "}).value), (debug_type_to_str(((*iddecl).tpe)).value));
        }  ;
    };
    for (int i = 0;(i < vector_length(((((*node).value).for_loop).body)));(i += 1)) {
        void *n = vector_get(((((*node).value).for_loop).body), i);
        _3700c937_walk(n, state);
    }
    ;
    ((*state).scope) = scope_exit_scope(((*state).scope));
};
 void _3700c937_walk_Deref(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!tpe)) {
        return ;
    }  ;
    if ((!typechecking_is_pointer(tpe))) {
        typechecking_errorn(node, ((Array){33, "Needs to be a pointer type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
        return ;
    }  ;
    ((*node).tpe) = ((*tpe).tpe);
};
 void _3700c937_walk_Ptr(parser_Node *node, typechecking_State *state) {
    _3700c937_walk((((*node).value).expr), state);
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    ((*node).tpe) = typechecking_pointer(tpe);
};
 void _3700c937_walk_MemberAccess(parser_Node *node, typechecking_State *state) {
    _3700c937_walk(((((*node).value).bin_op).left), state);
    parser_Node *right = ((((*node).value).bin_op).right);
    typechecking_Type *tpe = ((*((((*node).value).bin_op).left)).tpe);
    if ((!tpe)) {
        return ;
    }  ;
    if (((((*tpe).kind) == typechecking_TypeKind_STRUCT) || (((*tpe).kind) == typechecking_TypeKind_UNION))) {
        string name = typechecking_last_ident_to_str(right);
        typechecking_Type *rtpe;
        for (int i = 0;(i < (((*tpe).fields).size));(i += 1)) {
            typechecking_StructMember member = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
            if ((strcmp(((member.name).value), (name.value)) == 0)) {
                rtpe = (member.tpe);
                break;
            }  ;
        }
        ;
        if ((!rtpe)) {
            typechecking_errorn(node, ((Array){16, "Unknown field \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
            return ;
        }  ;
        ((*node).tpe) = rtpe;
    } else if (((((*tpe).kind) == typechecking_TypeKind_ARRAY) || (((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY))) {
        string name = typechecking_last_ident_to_str(right);
        if ((strcmp((name.value), (((Array){5, "size"}).value)) == 0)) {
            ((*node).tpe) = builtins_size_t_;
        } else if ((strcmp((name.value), (((Array){6, "value"}).value)) == 0)) {
            ((*node).tpe) = typechecking_pointer(((*tpe).tpe));
        } else {
            typechecking_errorn(node, ((Array){24, "Expected size or value\x0a"""}));
        };
    } else {
        typechecking_errorn(node, ((Array){30, "Expected aggregate type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
    };
};
 void _3700c937_walk_ArraySubscript(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    typechecking_Type *tpe = ((*left).tpe);
    if (((typechecking_is_pointer(tpe) || (((*tpe).kind) == typechecking_TypeKind_ARRAY)) || (((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY))) {
        ((*node).tpe) = ((*tpe).tpe);
    }  else {
        typechecking_errorn(left, ((Array){37, "Expected array or pointer type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
    };
    if ((!typechecking_is_arithmetic(((*right).tpe)))) {
        typechecking_errorn(right, ((Array){31, "Expected arithmetic type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
};
 void _3700c937_walk_StructLit(parser_Node *node, typechecking_State *state) {
    for (int i = 0;(i < vector_length(((((*node).value).struct_lit).args)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).struct_lit).args), i));
        _3700c937_walk(n, state);
    }
    ;
    for (int i = 0;(i < vector_length(((((*node).value).struct_lit).kwargs)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).struct_lit).kwargs), i));
        _3700c937_walk(((((*n).value).named_arg).value), state);
    }
    ;
};
 void _3700c937_walk_ArrayLit(parser_Node *node, typechecking_State *state) {
    typechecking_Type *tpe = NULL;
    int len = vector_length((((*node).value).body));
    for (int i = 0;(i < len);(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get((((*node).value).body), i));
        _3700c937_walk(n, state);
        typechecking_Type *t = ((*n).tpe);
        if ((!tpe)) {
            tpe = t;
        }  else {
            if ((!typechecking_equals(tpe, t))) {
                typechecking_errorn(n, ((Array){79, "Incompatible types, all array elements need to have the same type. Array type "}));
                fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){7, ", got "}).value), (debug_type_to_str(t).value), (((Array){2, "\x0a"""}).value));
                break;
            }  ;
        };
    }
    ;
    typechecking_Type *ret_tpe = malloc((sizeof(typechecking_Type)));
    ((*ret_tpe).kind) = typechecking_TypeKind_STATIC_ARRAY;
    ((*ret_tpe).length) = len;
    ((*ret_tpe).tpe) = tpe;
    ((*node).tpe) = ret_tpe;
};
 void _3700c937_walk_SizeOf(parser_Node *node, typechecking_State *state) {
    parser_Node *expr = (((*node).value).expr);
    if ((((*expr).kind) == parser_NodeKind_IDENTIFIER)) {
        scope_Value *value = scope_get(((*state).scope), expr);
        if ((!value)) {
            typechecking_errorn(expr, ((Array){21, "Unknown identifier \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(expr).value), (((Array){3, "\"\x0a"""}).value));
            return ;
        }  ;
        if ((((*value).modifier) == parser_VarDecl_TYPE)) {
            ((*expr).tpe) = ((typechecking_Type *)((*value).value));
        }  else {
            ((*expr).tpe) = ((*value).tpe);
        };
    }  else {
        ((*expr).tpe) = typechecking_type_lookup(expr, state);
        if ((!((*expr).tpe))) {
            _3700c937_walk(expr, state);
        }  ;
    };
    ((*node).tpe) = builtins_size_t_;
};
 void _3700c937_walk_AlignOf(parser_Node *node, typechecking_State *state) {
    parser_Node *expr = (((*node).value).expr);
    if ((((*expr).kind) == parser_NodeKind_IDENTIFIER)) {
        scope_Value *value = scope_get(((*state).scope), expr);
        if ((!value)) {
            typechecking_errorn(expr, ((Array){21, "Unknown identifier \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(expr).value), (((Array){3, "\"\x0a"""}).value));
            return ;
        }  ;
        if ((((*value).modifier) == parser_VarDecl_TYPE)) {
            ((*expr).tpe) = ((typechecking_Type *)((*value).value));
        }  else {
            ((*expr).tpe) = ((*value).tpe);
        };
    }  else {
        ((*expr).tpe) = typechecking_type_lookup(expr, state);
        if ((!((*expr).tpe))) {
            _3700c937_walk(expr, state);
        }  ;
    };
    ((*node).tpe) = builtins_size_t_;
};
 void _3700c937_walk_ComparisionOp(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    ((*node).tpe) = builtins_bool_;
};
 void _3700c937_walk_PAdd(parser_Node *node, typechecking_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    _3700c937_walk(left, state);
    _3700c937_walk(right, state);
    if ((!typechecking_is_pointer(((*left).tpe)))) {
        typechecking_errorn(left, ((Array){27, "Must be pointer type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*left).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    if ((!typechecking_is_arithmetic(((*right).tpe)))) {
        typechecking_errorn(left, ((Array){30, "Must be arithmetic type, got "}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(((*right).tpe)).value), (((Array){2, "\x0a"""}).value));
    }  ;
    ((*node).tpe) = ((*left).tpe);
};
 void _3700c937_walk_PSub(parser_Node *node, typechecking_State *state) {
    _3700c937_walk_PAdd(node, state);
};
 void _3700c937_walk(parser_Node *node, typechecking_State *state) {
    if ((!node)) {
        return ;
    }  ;
    ((*node).scope) = ((*state).scope);
    switch (((int)((*node).kind))) {
        break;
        case parser_NodeKind_NULL:
        _3700c937_walk_Null(node, state);
        break;
        case parser_NodeKind_INTEGER:
        _3700c937_walk_Integer(node, state);
        break;
        case parser_NodeKind_BOOLEAN:
        _3700c937_walk_Boolean(node, state);
        break;
        case parser_NodeKind_STRING:
        _3700c937_walk_String(node, state);
        break;
        case parser_NodeKind_CHAR:
        _3700c937_walk_Char(node, state);
        break;
        case parser_NodeKind_FLOAT:
        _3700c937_walk_Float(node, state);
        break;
        case parser_NodeKind_RANGE ... parser_NodeKind_RANGE_INC:
        _3700c937_walk_Range(node, state);
        break;
        case parser_NodeKind_IDENTIFIER:
        _3700c937_walk_Identifier(node, state);
        break;
        case parser_NodeKind_SIZE_OF:
        _3700c937_walk_SizeOf(node, state);
        break;
        case parser_NodeKind_ALIGN_OF:
        _3700c937_walk_AlignOf(node, state);
        break;
        case parser_NodeKind_LOOP:
        _3700c937_walk_Loop(node, state);
        break;
        case parser_NodeKind_WHILE:
        _3700c937_walk_While(node, state);
        break;
        case parser_NodeKind_FOR:
        _3700c937_walk_For(node, state);
        break;
        case parser_NodeKind_IF:
        _3700c937_walk_If(node, state);
        break;
        case parser_NodeKind_DEF:
        _3700c937_walk_Def(node, state);
        break;
        case parser_NodeKind_IMPORT:
        _3700c937_walk_Import(node, state);
        break;
        case parser_NodeKind_CAST:
        _3700c937_walk_Cast(node, state);
        break;
        case parser_NodeKind_ASSIGN:
        _3700c937_walk_Assign(node, state);
        break;
        case parser_NodeKind_VAR_DECL:
        _3700c937_walk_VarDecl(node, state);
        break;
        case parser_NodeKind_UADD:
        _3700c937_walk_UAdd(node, state);
        break;
        case parser_NodeKind_USUB:
        _3700c937_walk_USub(node, state);
        break;
        case parser_NodeKind_BNOT:
        _3700c937_walk_BNot(node, state);
        break;
        case parser_NodeKind_NOT:
        _3700c937_walk_Not(node, state);
        break;
        case parser_NodeKind_ADD ... parser_NodeKind_MOD:
        _3700c937_walk_ArithmeticOp(node, state);
        break;
        case parser_NodeKind_BAND ... parser_NodeKind_SHR:
        _3700c937_walk_BitwiseOp(node, state);
        break;
        case parser_NodeKind_AND ... parser_NodeKind_OR:
        _3700c937_walk_BooleanOp(node, state);
        break;
        case parser_NodeKind_EQ ... parser_NodeKind_LEQ:
        _3700c937_walk_ComparisionOp(node, state);
        break;
        case parser_NodeKind_ADD_EQ ... parser_NodeKind_MOD_EQ:
        _3700c937_walk_AssignEqArithmetic(node, state);
        break;
        case parser_NodeKind_AND_EQ ... parser_NodeKind_SHR_EQ:
        _3700c937_walk_AssignEqBitwise(node, state);
        break;
        case parser_NodeKind_PADD_EQ ... parser_NodeKind_PSUB_EQ:
        _3700c937_walk_AssignEqPtr(node, state);
        break;
        case parser_NodeKind_PADD:
        _3700c937_walk_PAdd(node, state);
        break;
        case parser_NodeKind_PSUB:
        _3700c937_walk_PSub(node, state);
        break;
        case parser_NodeKind_DEREF:
        _3700c937_walk_Deref(node, state);
        break;
        case parser_NodeKind_PTR:
        _3700c937_walk_Ptr(node, state);
        break;
        case parser_NodeKind_TYPE_DECL:
        _3700c937_walk_TypeDecl(node, state);
        break;
        case parser_NodeKind_RETURN:
        _3700c937_walk_Return(node, state);
        break;
        case parser_NodeKind_FUNC_CALL:
        _3700c937_walk_Call(node, state);
        break;
        case parser_NodeKind_BREAK ... parser_NodeKind_CONTINUE:
        NULL;
        break;
        case parser_NodeKind_MEMBER_ACCESS:
        _3700c937_walk_MemberAccess(node, state);
        break;
        case parser_NodeKind_ARRAY_SUBSCRIPT:
        _3700c937_walk_ArraySubscript(node, state);
        break;
        case parser_NodeKind_STRUCT_LIT:
        _3700c937_walk_StructLit(node, state);
        break;
        case parser_NodeKind_ARRAY_LIT:
        _3700c937_walk_ArrayLit(node, state);
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*node).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
};
DLL_EXPORT void typechecking_typecheck(toolchain_Module *module) {
    parser_Node *node = ((*module).node);
    assert((((*node).kind) == parser_NodeKind_PROGRAM));
    typechecking_State state;
    (state.filename) = ((*module).filename);
    (state.module) = ((*module).module);
    (state.scope) = ((*module).scope);
    (state.function_stack) = vector_make();
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        _3700c937_walk(((parser_Node *)vector_get((((*node).value).body), i)), (&state));
    }
    ;
    ((*node).scope) = (state.scope);
};
DLL_EXPORT void typechecking_errorn(parser_Node *node, string msg) {
    if ((!node)) {
        assert(false);
    }  ;
    string filename = (((*node).loc).filename);
    int line = (((*node).loc).line);
    int column = (((*node).loc).column);
    fprintf(stderr, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    fprintf(stderr, (((Array){13, "%s%s%d%s%d%s"}).value), (filename.value), (((Array){2, "@"}).value), (line + 1), (((Array){2, ":"}).value), (column + 1), (((Array){2, "\x0a"""}).value));
    fprintf(stderr, (((Array){5, "%s%s"}).value), ((((string *)(((*node).loc).lines).value)[line]).value), (((Array){2, "\x0a"""}).value));
    for (int i = 0;(i < column);(i += 1)) {
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    }
    ;
    fprintf(stderr, (((Array){3, "%s"}).value), (((Array){3, "^\x0a"""}).value));
    fprintf(stderr, (((Array){3, "%s"}).value), (msg.value));
    (toolchain_error_count += 1);
};
DLL_EXPORT void typechecking_p_main(Array args) {
    ;
    _3700c937_counter = 0;
    typechecking_type_ = typechecking_make_anonymous_type(typechecking_TypeKind_TYPE);
    scope_p_main(args);
    builtins_p_main(args);
    debug_p_main(args);
};


#endif
