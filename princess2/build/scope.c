/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _scope_H
#define _scope_H
#include "map.c"
#include "typechecking.c"
#include "parser.c"
#include "vector.c"
#include "buffer.c"
#include "util.c"
#include "toolchain.c"
typedef struct scope_Scope scope_Scope;
typedef struct scope_Value {enum parser_ShareMarker share; enum parser_VarDecl modifier; string name; string assembly_name; struct typechecking_Type *tpe; void *value; struct scope_Scope *scope; struct scope_Value *next; bool forward_declare; bool global;} scope_Value;
typedef struct scope_Scope {int scope_count; struct scope_Scope *parent; struct map_Map *fields; struct vector_Vector *imports;} scope_Scope;
 int * _31a1fd14_get_scope_count(scope_Scope *scope) {
    if ((!scope)) {
        return NULL;
    }  ;
    if ((((*scope).scope_count) >= 0)) {
        return (&((*scope).scope_count));
    }  ;
    return _31a1fd14_get_scope_count(((*scope).parent));
};
 bool _31a1fd14_is_global(scope_Scope *scope) {
    if ((((*scope).parent) == NULL)) {
        return true;
    }  ;
    scope = ((*scope).parent);
    if ((((*scope).parent) == NULL)) {
        return true;
    }  ;
    return false;
};
DLL_EXPORT scope_Scope * scope_enter_scope(scope_Scope *scope) {
    scope_Scope *s = malloc((sizeof(scope_Scope)));
    int *scope_count = _31a1fd14_get_scope_count(scope);
    if (scope_count) {
        ((*scope_count) += 1);
    }  ;
    ((*s).scope_count) = (-1);
    ((*s).parent) = scope;
    ((*s).fields) = map_make();
    ((*s).imports) = NULL;
    return s;
};
DLL_EXPORT scope_Scope * scope_enter_function_scope(scope_Scope *scope) {
    scope_Scope *s = scope_enter_scope(scope);
    ((*s).scope_count) = 0;
    return s;
};
DLL_EXPORT scope_Scope * scope_exit_scope(scope_Scope *scope) {
    scope_Scope *parent = ((*scope).parent);
    int *scope_count = _31a1fd14_get_scope_count(parent);
    if (scope_count) {
        ((*scope_count) += 1);
    }  ;
    return parent;
};
DLL_EXPORT scope_Value * scope_get(scope_Scope *scope, parser_Node *id);
 scope_Value * _31a1fd14_find_function(parser_Node *node, scope_Value *v, vector_Vector *parameter_t, int *score) {
    if ((!v)) {
        return NULL;
    }  ;
    if ((!typechecking_is_function(((*v).tpe)))) {
        return NULL;
    }  ;
    scope_Value *found = NULL;
    bool d = false;
    while (true) {
        int s = typechecking_overload_score(((*v).tpe), parameter_t, false);
        if ((s >= 0)) {
            if ((s < (*score))) {
                (*score) = s;
                found = v;
                d = false;
            } else if ((s == (*score))) {
                d = true;
            } ;
        }  ;
        v = ((*v).next);
        if ((!v)) {
            break;
        }  ;
    }
    ;
    if (d) {
        typechecking_errorn(node, ((Array){21, "Ambiguous reference\x0a"""}));
    }  ;
    return found;
};
DLL_EXPORT scope_Value * scope_get_function(scope_Scope *scope, parser_Node *id, vector_Vector *parameter_t) {
    assert((((*id).kind) == parser_NodeKind_IDENTIFIER));
    if ((vector_length((((*id).value).body)) == 1)) {
        string name = (*((string *)vector_get((((*id).value).body), 0)));
        int score = ((int)util_MAX_INT32);
        scope_Value *first_value = _31a1fd14_find_function(id, ((scope_Value *)map_get(((*scope).fields), name)), parameter_t, (&score));
        int first_score = score;
        scope_Value *value = first_value;
        bool d = false;
        if (((*scope).imports)) {
            for (int i = 0;(i < vector_length(((*scope).imports)));(i += 1)) {
                toolchain_Module *module = ((toolchain_Module *)vector_get(((*scope).imports), i));
                scope_Scope *scope2 = ((*module).scope);
                int new_score = ((int)util_MAX_INT32);
                scope_Value *new_value = _31a1fd14_find_function(id, ((scope_Value *)map_get(((*scope2).fields), name)), parameter_t, (&new_score));
                if ((((bool)new_value) && ((bool)(((int)((*new_value).share)) & ((int)parser_ShareMarker_EXPORT))))) {
                    if ((score == new_score)) {
                        d = true;
                    } else if ((new_score < score)) {
                        score = new_score;
                        value = new_value;
                        d = false;
                    } ;
                }  ;
            }
            ;
            if ((((bool)first_value) && (first_score == score))) {
                return first_value;
            }  ;
            if (d) {
                typechecking_errorn(id, ((Array){21, "Ambiguous reference\x0a"""}));
            }  ;
        }  ;
        if (value) {
            return value;
        }  ;
        if (((*scope).parent)) {
            return scope_get_function(((*scope).parent), id, parameter_t);
        }  ;
        return NULL;
    }  else {
        vector_Vector *head = vector_head_vec((((*id).value).body));
        vector_Vector *tail = vector_tail((((*id).value).body));
        parser_Node *id_head = parser_copy_node(id);
        (((*id_head).value).body) = head;
        parser_Node *id_tail = parser_copy_node(id);
        (((*id_tail).value).body) = tail;
        scope_Value *s = scope_get(scope, id_head);
        if (s) {
            if ((!((*s).scope))) {
                typechecking_errorn(id, ((Array){28, "Use of :: on non namespace\x0a"""}));
                return NULL;
            }  ;
            return scope_get_function(((*s).scope), id_tail, parameter_t);
        }  ;
        return NULL;
    };
};
DLL_EXPORT scope_Value * scope_get(scope_Scope *scope, parser_Node *id) {
    if ((!scope)) {
        return NULL;
    }  ;
    assert((((*id).kind) == parser_NodeKind_IDENTIFIER));
    if ((vector_length((((*id).value).body)) == 1)) {
        string name = (*((string *)vector_get((((*id).value).body), 0)));
        scope_Value *value = ((scope_Value *)map_get(((*scope).fields), name));
        if (value) {
            return value;
        }  ;
        if (((*scope).imports)) {
            for (int i = 0;(i < vector_length(((*scope).imports)));(i += 1)) {
                toolchain_Module *module = ((toolchain_Module *)vector_get(((*scope).imports), i));
                scope_Scope *scope2 = ((*module).scope);
                scope_Value *value2 = ((scope_Value *)map_get(((*scope2).fields), name));
                if ((((bool)value2) && ((bool)(((int)((*value2).share)) & ((int)parser_ShareMarker_EXPORT))))) {
                    if (value) {
                        typechecking_errorn(id, ((Array){21, "Ambiguous reference\x0a"""}));
                        return NULL;
                    }  ;
                    value = value2;
                }  ;
            }
            ;
        }  ;
        if (value) {
            return value;
        }  ;
        if (((*scope).parent)) {
            return scope_get(((*scope).parent), id);
        }  ;
        return NULL;
    }  else {
        vector_Vector *head = vector_head_vec((((*id).value).body));
        vector_Vector *tail = vector_tail((((*id).value).body));
        parser_Node *id_head = parser_copy_node(id);
        (((*id_head).value).body) = head;
        parser_Node *id_tail = parser_copy_node(id);
        (((*id_tail).value).body) = tail;
        scope_Value *s = scope_get(scope, id_head);
        if (s) {
            if ((!((*s).scope))) {
                typechecking_errorn(id, ((Array){28, "Use of :: on non namespace\x0a"""}));
                return NULL;
            }  ;
            return scope_get(((*s).scope), id_tail);
        }  ;
        return NULL;
    };
};
DLL_EXPORT scope_Value * scope_get_const_value(scope_Scope *scope, parser_Node *id) {
    scope_Value *value = scope_get(scope, id);
    if ((!value)) {
        typechecking_errorn(id, ((Array){21, "Unknown identifier \""}));
        fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(id).value), (((Array){3, "\"\x0a"""}).value));
        return NULL;
    }  ;
    assert(((((*value).modifier) == parser_VarDecl_CONST) || (((*value).modifier) == parser_VarDecl_TYPE)));
    return value;
};
DLL_EXPORT typechecking_Type * scope_get_type(scope_Scope *scope, parser_Node *id) {
    scope_Value *value = scope_get_const_value(scope, id);
    if ((!value)) {
        return NULL;
    }  ;
    assert((((*value).modifier) == parser_VarDecl_TYPE));
    return ((typechecking_Type *)((*value).value));
};
DLL_EXPORT scope_Scope * scope_enter_namespace(scope_Scope *scope, parser_Node *node);
 scope_Scope * _31a1fd14_create_path(scope_Scope *scope, parser_Node *node) {
    assert((((*node).kind) == parser_NodeKind_IDENTIFIER));
    size_t length = vector_length((((*node).value).body));
    for (int i = 0;(i < (((int64)length) - ((int64)1)));(i += 1)) {
        string *ident = ((string *)vector_get((((*node).value).body), i));
        scope_Value *scope_v = ((scope_Value *)map_get(((*scope).fields), (*ident)));
        if ((!scope_v)) {
            parser_Node *n = parser_copy_node(node);
            vector_Vector *vec = vector_make();
            vector_push(vec, ident);
            (((*n).value).body) = vec;
            scope = scope_enter_namespace(scope, n);
        }  else {
            if ((!((*scope_v).scope))) {
                typechecking_errorn(node, ((Array){24, "Illegal declaration of "}));
                fprintf(stderr, (((Array){5, "%s%s"}).value), (parser_identifier_to_str(node).value), (((Array){2, "\x0a"""}).value));
                return NULL;
            }  else {
                scope = ((*scope_v).scope);
            };
        };
    }
    ;
    return scope;
};
 string _31a1fd14_last_path_element(parser_Node *node) {
    assert((((*node).kind) == parser_NodeKind_IDENTIFIER));
    size_t length = vector_length((((*node).value).body));
    return (*((string *)vector_get((((*node).value).body), (((int64)length) - ((int64)1)))));
};
#include "debug.c"
DLL_EXPORT void scope_create_function(scope_Scope *scope, parser_Node *node, parser_ShareMarker share, typechecking_Type *tpe, bool forward_declare) {
    assert((((*tpe).kind) == typechecking_TypeKind_FUNCTION));
    scope = _31a1fd14_create_path(scope, node);
    if ((!scope)) {
        return ;
    }  ;
    string name = _31a1fd14_last_path_element(node);
    scope_Value *v = malloc((sizeof(scope_Value)));
    ((*v).share) = share;
    ((*v).modifier) = parser_VarDecl_CONST;
    ((*v).name) = name;
    ((*v).assembly_name) = name;
    ((*v).tpe) = tpe;
    ((*v).value) = NULL;
    ((*v).next) = NULL;
    ((*v).forward_declare) = forward_declare;
    ((*v).global) = _31a1fd14_is_global(scope);
    if (map_contains(((*scope).fields), name)) {
        scope_Value *val = ((scope_Value *)map_get(((*scope).fields), name));
        if ((!typechecking_is_function(((*val).tpe)))) {
            typechecking_errorn(node, ((Array){18, "Redeclaration of "}));
            fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
        }  ;
        scope_Value *next = val;
        while (next) {
            if ((typechecking_overload_score(((*next).tpe), ((*tpe).parameter_t), true) == 0)) {
                if ((!((*next).forward_declare))) {
                    typechecking_errorn(node, ((Array){10, "Function "}));
                    fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), (name.value), (((Array){52, "\" was already declared previously (same arguments)\x0a"""}).value));
                } else if ((!forward_declare)) {
                    ((*next).forward_declare) = false;
                } ;
                return ;
            }  ;
            if (((*next).next)) {
                next = ((*next).next);
            }  else {
                break;
            };
        }
        ;
        ((*next).next) = v;
    }  else {
        map_put(((*scope).fields), name, v);
    };
};
 string _31a1fd14_append_scope_count(scope_Scope *scope, string name) {
    int *scope_count = _31a1fd14_get_scope_count(scope);
    if (scope_count) {
        buffer_Buffer buf = buffer_make_buffer();
        buffer_append_str((&buf), name);
        buffer_append_char((&buf), '.');
        buffer_append_str((&buf), util_int_to_str((*scope_count)));
        return buffer_to_string((&buf));
    }  ;
    return name;
};
DLL_EXPORT void scope_create_variable(scope_Scope *scope, parser_Node *node, parser_ShareMarker share, parser_VarDecl modifier, typechecking_Type *tpe, void *value) {
    scope = _31a1fd14_create_path(scope, node);
    if ((!scope)) {
        return ;
    }  ;
    string name = _31a1fd14_last_path_element(node);
    bool global = _31a1fd14_is_global(scope);
    scope_Value *v = malloc((sizeof(scope_Value)));
    ((*v).share) = share;
    ((*v).modifier) = modifier;
    ((*v).name) = name;
    if (global) {
        ((*v).assembly_name) = typechecking_append_module(name, (((*node).loc).module));
    }  else {
        ((*v).assembly_name) = _31a1fd14_append_scope_count(scope, name);
    };
    ((*v).tpe) = tpe;
    ((*v).value) = value;
    ((*v).scope) = NULL;
    ((*v).next) = NULL;
    ((*v).global) = global;
    if (map_contains(((*scope).fields), name)) {
        typechecking_errorn(node, ((Array){18, "Redeclaration of "}));
        fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
    }  else {
        map_put(((*scope).fields), name, v);
    };
};
DLL_EXPORT bool scope_create_type_scope(scope_Scope *scope, parser_Node *node, parser_ShareMarker share, typechecking_Type *tpe, scope_Scope *vscope) {
    scope = _31a1fd14_create_path(scope, node);
    if ((!scope)) {
        return false;
    }  ;
    string name = _31a1fd14_last_path_element(node);
    scope_Value *v = malloc((sizeof(scope_Value)));
    ((*v).share) = share;
    ((*v).modifier) = parser_VarDecl_TYPE;
    ((*v).name) = name;
    ((*v).assembly_name) = name;
    ((*v).tpe) = typechecking_type_;
    ((*v).value) = tpe;
    ((*v).scope) = vscope;
    ((*v).next) = NULL;
    ((*v).global) = _31a1fd14_is_global(scope);
    scope_Value *value = ((scope_Value *)map_get(((*scope).fields), name));
    if (value) {
        typechecking_Type *tpe2 = ((typechecking_Type *)((*value).value));
        if (((((*((*value).tpe)).kind) != typechecking_TypeKind_TYPE) || ((((*tpe2).kind) != typechecking_TypeKind_STUB) && (((*tpe).kind) != typechecking_TypeKind_STUB)))) {
            typechecking_errorn(node, ((Array){18, "Redeclaration of "}));
            fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
            return false;
        } else if (((((*tpe2).kind) == typechecking_TypeKind_STUB) && (((*tpe).kind) != typechecking_TypeKind_STUB))) {
            (*tpe2) = (*tpe);
            (*value) = (*v);
        } ;
    }  else {
        map_put(((*scope).fields), name, v);
    };
    return true;
};
DLL_EXPORT bool scope_create_type(scope_Scope *scope, parser_Node *node, parser_ShareMarker share, typechecking_Type *tpe) {
    return scope_create_type_scope(scope, node, share, tpe, NULL);
};
DLL_EXPORT scope_Scope * scope_enter_namespace(scope_Scope *scope, parser_Node *node) {
    scope = _31a1fd14_create_path(scope, node);
    if ((!scope)) {
        return NULL;
    }  ;
    string name = _31a1fd14_last_path_element(node);
    typechecking_Type *tpe = typechecking_make_type(typechecking_TypeKind_NAMESPACE, node);
    scope_Scope *scope2 = scope_enter_scope(scope);
    scope_Value *v = malloc((sizeof(scope_Value)));
    ((*v).share) = parser_ShareMarker_NONE;
    ((*v).modifier) = parser_VarDecl_CONST;
    ((*v).name) = name;
    ((*v).assembly_name) = name;
    ((*v).tpe) = tpe;
    ((*v).value) = NULL;
    ((*v).scope) = scope2;
    ((*v).next) = NULL;
    ((*v).global) = _31a1fd14_is_global(scope);
    if (map_contains(((*scope).fields), name)) {
        typechecking_errorn(node, ((Array){18, "Redeclaration of "}));
        fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
    }  else {
        map_put(((*scope).fields), name, v);
    };
    return scope2;
};
DLL_EXPORT void scope_insert_module(scope_Scope *scope, parser_Node *alias, toolchain_Module *module) {
    if (((*scope).imports)) {
        for (int i = 0;(i < vector_length(((*scope).imports)));(i += 1)) {
            toolchain_Module *module2 = ((toolchain_Module *)vector_get(((*scope).imports), i));
            if ((strcmp((((*module).filename).value), (((*module2).filename).value)) == 0)) {
                return ;
            }  ;
        }
        ;
    }  ;
    scope_Value *v = scope_get(scope, alias);
    scope_Scope *ns = NULL;
    if ((((bool)v) && (((*((*v).tpe)).kind) == typechecking_TypeKind_NAMESPACE))) {
        ns = ((*v).scope);
    }  else {
        ns = scope_enter_namespace(scope, alias);
    };
    if ((!ns)) {
        return ;
    }  ;
    Array values = map_keys(((*((*module).scope)).fields));
    for (int i = 0;(i < (values.size));(i += 1)) {
        scope_Value *value = ((scope_Value *)map_get(((*((*module).scope)).fields), (((string *)values.value)[i])));
        if ((((int)((*value).share)) & ((int)parser_ShareMarker_EXPORT))) {
            map_put(((*ns).fields), (((string *)values.value)[i]), value);
        }  ;
    }
    ;
    if ((!((*scope).imports))) {
        ((*scope).imports) = vector_make();
    }  ;
    vector_push(((*scope).imports), module);
};
DLL_EXPORT void scope_p_main(Array args) {
    ;
};


#endif
