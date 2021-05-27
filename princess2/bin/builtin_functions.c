/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _builtin_functions_H
#define _builtin_functions_H
#include "vector.c"
#include "buffer.c"
#include "map.c"
#include "util.c"
#include "parser.c"
#include "typechecking.c"
#include "compiler.c"
#include "scope.c"
#include "debug.c"
#include "builtins.c"
 typechecking_NamedParameter * _fe23cc40_param(string name, typechecking_Type *tpe) {
    typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
    ((*named).name) = name;
    ((*named).value) = tpe;
    ((*named).varargs) = false;
    return named;
};
 typechecking_NamedParameter * _fe23cc40_varargs(string name, typechecking_Type *tpe) {
    typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
    ((*named).name) = name;
    ((*named).value) = tpe;
    ((*named).varargs) = true;
    return named;
};
 typechecking_Type * _fe23cc40_make_function_type(string name, Array parameter_t, Array return_t, compiler_Value (*macro)(parser_Node *, Array, compiler_State *), vector_Vector * (*proto)(vector_Vector *, vector_Vector *, typechecking_State *)) {
    vector_Vector *pars = vector_make();
    for (int i = 0;(i < (parameter_t.size));(i += 1)) {
        vector_push(pars, (((typechecking_NamedParameter **)parameter_t.value)[i]));
    }
    ;
    vector_Vector *rets = vector_make();
    for (int i = 0;(i < (return_t.size));(i += 1)) {
        vector_push(rets, (((typechecking_Type **)return_t.value)[i]));
    }
    ;
    typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
    ((*tpe).kind) = typechecking_TypeKind_FUNCTION;
    ((*tpe).name) = name;
    ((*tpe).type_name) = name;
    ((*tpe).parameter_t) = pars;
    ((*tpe).return_t) = rets;
    ((*tpe).macro) = macro;
    ((*tpe).proto) = proto;
    return tpe;
};
 void _fe23cc40_create_function(string name, Array parameter_t, Array return_t, compiler_Value (*macro)(parser_Node *, Array, compiler_State *), vector_Vector * (*proto)(vector_Vector *, vector_Vector *, typechecking_State *)) {
    scope_create_function(builtins_builtins, parser_make_identifier(((Array){1, (string[1]){ name }})), parser_ShareMarker_EXPORT, _fe23cc40_make_function_type(name, parameter_t, return_t, macro, proto), false);
};
 void _fe23cc40_import_function(compiler_State *state, string function) {
    map_put(((*((*state).module)).imported), function, map_sentinel);
};
 compiler_Value _fe23cc40_charp_str(compiler_Value value, compiler_State *state) {
    compiler_Value local = compiler_make_local_value(typechecking_pointer(builtins_char_), NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 1;
    compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
    ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .ret = local, .value = value, .index = index });
    compiler_push_insn(extract, state);
    return local;
};
 compiler_Value _fe23cc40_charp_static(compiler_Value *global, compiler_State *state) {
    compiler_Value local = compiler_make_local_value(typechecking_pointer(builtins_char_), global, state);
    Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
    (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
    compiler_Insn *gep = malloc((sizeof(compiler_Insn)));
    ((*gep).kind) = compiler_InsnKind_GETELEMENTPTR;
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = local, .tpe = ((*((*global).tpe)).tpe), .value = (*global), .index = index });
    compiler_push_insn(gep, state);
    return local;
};
 compiler_Value _fe23cc40_charp(string str, compiler_State *state) {
    typechecking_Type *tpe = malloc((sizeof(typechecking_Type)));
    ((*tpe).kind) = typechecking_TypeKind_STATIC_ARRAY;
    ((*tpe).tpe) = builtins_char_;
    ((*tpe).length) = (str.size);
    ((*tpe).size) = (((*tpe).length) * ((size_t)(sizeof(char))));
    ((*tpe).align) = (sizeof(char));
    compiler_Value *value = malloc((sizeof(compiler_Value)));
    (*value) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = str, .tpe = tpe });
    compiler_Value global = compiler_make_global_value(tpe, ((Array){4, "str"}), value, state);
    compiler_Value *globalp = malloc((sizeof(compiler_Value)));
    (*globalp) = global;
    return _fe23cc40_charp_static(globalp, state);
};
 void _fe23cc40_convert_to_charp(Array values, compiler_State *state) {
    for (int i = 0;(i < (values.size));(i += 1)) {
        (((compiler_Value *)values.value)[i]) = _fe23cc40_charp_str((((compiler_Value *)values.value)[i]), state);
    }
    ;
};
 parser_Node * _fe23cc40_get_arg(vector_Vector *args, vector_Vector *kwargs, int index, string name) {
    if ((index < vector_length(args))) {
        return ((parser_Node *)vector_get(args, index));
    }  ;
    for (int i = 0;(i < vector_length(kwargs));(i += 1)) {
        parser_Node *kwarg = ((parser_Node *)vector_get(kwargs, i));
        string nname = typechecking_last_ident_to_str(((((*kwarg).value).named_arg).name));
        if ((strcmp((nname.value), (name.value)) == 0)) {
            return ((((*kwarg).value).named_arg).value);
        }  ;
    }
    ;
    return NULL;
};
 compiler_Value _fe23cc40__assert(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){14, "__assert_fail"}));
    compiler_Value insn = (((compiler_Value *)argsv.value)[0]);
    if ((!(insn.tpe))) {
        return compiler_NO_VALUE;
    }  ;
    compiler_Label if_false = compiler_make_label(state);
    compiler_Insn *br = malloc((sizeof(compiler_Insn)));
    ((*br).kind) = compiler_InsnKind_BR;
    (((*br).value).br) = ((compiler_InsnBr){ .cond = insn, .if_false = if_false });
    compiler_push_insn(br, state);
    compiler_push_label(if_false, state);
    Array args = ((Array){4, malloc((((int64)(sizeof(compiler_Value))) * ((int64)4)))});
    (((compiler_Value *)args.value)[0]) = _fe23cc40_charp((((string *)(((*node).loc).lines).value)[(((*node).loc).line)]), state);
    (((compiler_Value *)args.value)[1]) = _fe23cc40_charp((((*node).loc).filename), state);
    (((compiler_Value *)args.value)[2]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (((*node).loc).line), .tpe = builtins_int_ });
    Array current_function = ((Array){5, "main"});
    if (((*state).current_function)) {
        current_function = ((*((*state).current_function)).unmangled);
    }  ;
    (((compiler_Value *)args.value)[3]) = _fe23cc40_charp(current_function, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){14, "__assert_fail"}) }), .ret = compiler_NO_VALUE, .args = args });
    compiler_push_insn(call, state);
    compiler_Insn *unreachable = malloc((sizeof(compiler_Insn)));
    ((*unreachable).kind) = compiler_InsnKind_UNREACHABLE;
    compiler_push_insn(unreachable, state);
    compiler_Label if_true = compiler_make_label(state);
    compiler_push_label(if_true, state);
    ((((*br).value).br).if_true) = if_true;
    return compiler_NO_VALUE;
};
 string * _fe23cc40_format_str(vector_Vector *args) {
    buffer_Buffer buf = buffer_make_buffer();
    for (int i = 0;(i < vector_length(args));(i += 1)) {
        parser_Node *arg = ((parser_Node *)vector_get(args, i));
        typechecking_Type *tpe = ((*arg).tpe);
        if ((!tpe)) {
            return NULL;
        }  ;
        if ((tpe == builtins_size_t_)) {
            buffer_append_str((&buf), ((Array){4, "%zu"}));
        } else if ((tpe == builtins_char_)) {
            buffer_append_str((&buf), ((Array){3, "%c"}));
        }
        else if (((((bool)typechecking_equals(tpe, builtins_string_)) || ((bool)typechecking_equals(tpe, typechecking_pointer(builtins_char_)))) || ((((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY) && ((bool)typechecking_equals(((*tpe).tpe), builtins_char_))))) {
            buffer_append_str((&buf), ((Array){3, "%s"}));
        }
        else if (typechecking_is_pointer(tpe)) {
            buffer_append_str((&buf), ((Array){3, "%p"}));
        }
        else if (typechecking_equals(tpe, builtins_int8_)) {
            buffer_append_str((&buf), ((Array){5, "%hhd"}));
        }
        else if (typechecking_equals(tpe, builtins_uint8_)) {
            buffer_append_str((&buf), ((Array){5, "%hhu"}));
        }
        else if (typechecking_equals(tpe, builtins_int16_)) {
            buffer_append_str((&buf), ((Array){4, "%hd"}));
        }
        else if (typechecking_equals(tpe, builtins_uint16_)) {
            buffer_append_str((&buf), ((Array){4, "%hu"}));
        }
        else if (typechecking_equals(tpe, builtins_int32_)) {
            buffer_append_str((&buf), ((Array){3, "%d"}));
        }
        else if (typechecking_equals(tpe, builtins_uint32_)) {
            buffer_append_str((&buf), ((Array){3, "%u"}));
        }
        else if (typechecking_equals(tpe, builtins_int64_)) {
            buffer_append_str((&buf), ((Array){4, "%ld"}));
        }
        else if (typechecking_equals(tpe, builtins_uint64_)) {
            buffer_append_str((&buf), ((Array){4, "%lu"}));
        }
        else if (typechecking_equals(tpe, builtins_float32_)) {
            buffer_append_str((&buf), ((Array){3, "%f"}));
        }
        else if (typechecking_equals(tpe, builtins_float64_)) {
            buffer_append_str((&buf), ((Array){3, "%f"}));
        } else {
            typechecking_errorn(arg, ((Array){12, "Print type "}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (debug_type_to_str(tpe).value), (((Array){16, " not supported\x0a"""}).value));
            return NULL;
        };
    }
    ;
    return util_copy_string(buffer_to_string((&buf)));
};
 compiler_Value _fe23cc40__print(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "printf"}));
    string *fmt = _fe23cc40_format_str(((((*node).value).func_call).args));
    if ((!fmt)) {
        return compiler_NO_VALUE;
    }  ;
    Array args = ((Array){(((int64)(argsv.size)) + ((int64)1)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)(argsv.size)) + ((int64)1))))});
    (((compiler_Value *)args.value)[0]) = _fe23cc40_charp((*fmt), state);
    for (int i = 0;(i < (argsv.size));(i += 1)) {
        compiler_Value value = (((compiler_Value *)argsv.value)[i]);
        if ((!(value.tpe))) {
            return compiler_NO_VALUE;
        }  ;
        if (((((*(value.tpe)).kind) == typechecking_TypeKind_STATIC_ARRAY) && ((bool)typechecking_equals(((*(value.tpe)).tpe), builtins_char_)))) {
            value = _fe23cc40_charp_static((value.addr), state);
        } else if (typechecking_equals((value.tpe), builtins_string_)) {
            value = _fe23cc40_charp_str(value, state);
        } ;
        (((compiler_Value *)args.value)[(i + 1)]) = value;
    }
    ;
    compiler_Value ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    Array proto = ((Array){2, malloc((((int64)(sizeof(typechecking_NamedParameter))) * ((int64)2)))});
    (((typechecking_NamedParameter *)proto.value)[0]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[1]) = (*_fe23cc40_varargs(((Array){1, ""}), NULL));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "printf"}) }), .ret = ret, .args = args, .proto = proto });
    compiler_push_insn(call, state);
    return ret;
};
 compiler_Value _fe23cc40__length(parser_Node *node, Array argsv, compiler_State *state) {
    compiler_Value array = (((compiler_Value *)argsv.value)[0]);
    compiler_Value len = compiler_make_local_value(builtins_size_t_, NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 0;
    compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
    ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .index = index, .value = array, .ret = len });
    compiler_push_insn(extract, state);
    compiler_Value ret = compiler_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *sub = malloc((sizeof(compiler_Insn)));
    ((*sub).kind) = compiler_InsnKind_SUB;
    (((*sub).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = len, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .tpe = builtins_size_t_ }) });
    compiler_push_insn(sub, state);
    return ret;
};
 compiler_Value _fe23cc40__allocate_size(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "malloc"}));
    compiler_Value arg = (((compiler_Value *)argsv.value)[0]);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = arg;
    compiler_Value ret = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "malloc"}) }), .ret = ret, .args = args });
    compiler_push_insn(call, state);
    return ret;
};
 compiler_Value _fe23cc40__allocate_type(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "malloc"}));
    typechecking_Type *tpe = ((((compiler_Value *)argsv.value)[0]).value_tpe);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .tpe = builtins_size_t_ });
    compiler_Value call_ret = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "malloc"}) }), .ret = call_ret, .args = args });
    compiler_push_insn(call, state);
    compiler_Value ret = compiler_make_local_value(typechecking_pointer(tpe), NULL, state);
    compiler_Insn *bitcast = malloc((sizeof(compiler_Insn)));
    ((*bitcast).kind) = compiler_InsnKind_BITCAST;
    (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = ret, .value = call_ret });
    compiler_push_insn(bitcast, state);
    return ret;
};
 vector_Vector * _fe23cc40__allocate_type_proto(vector_Vector *args, vector_Vector *kwargs, typechecking_State *state) {
    vector_Vector *rets = vector_make();
    parser_Node *arg = _fe23cc40_get_arg(args, kwargs, 0, ((Array){4, "tpe"}));
    if ((!arg)) {
        return rets;
    }  ;
    typechecking_Type *tpe = typechecking_type_lookup(arg, state);
    vector_push(rets, typechecking_pointer(tpe));
    return rets;
};
 compiler_Value _fe23cc40_allocate_make_array(compiler_Value call_ret, compiler_Value size, typechecking_Type *tpe, compiler_State *state) {
    compiler_Value bitcast_ret = compiler_make_local_value(typechecking_pointer(tpe), NULL, state);
    compiler_Insn *bitcast = malloc((sizeof(compiler_Insn)));
    ((*bitcast).kind) = compiler_InsnKind_BITCAST;
    (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = bitcast_ret, .value = call_ret });
    compiler_push_insn(bitcast, state);
    Array index1 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index1.value)[0]) = 1;
    compiler_Value insert1_ret = compiler_make_local_value(typechecking_array(tpe), NULL, state);
    compiler_Insn *insert1 = malloc((sizeof(compiler_Insn)));
    ((*insert1).kind) = compiler_InsnKind_INSERTVALUE;
    (((*insert1).value).insert_value) = ((compiler_InsnInsertValue){ .ret = insert1_ret, .value = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .undef = true, .tpe = typechecking_array(tpe) }), .element = bitcast_ret, .index = index1 });
    compiler_push_insn(insert1, state);
    Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index2.value)[0]) = 0;
    compiler_Value insert2_ret = compiler_make_local_value(typechecking_array(tpe), NULL, state);
    compiler_Insn *insert2 = malloc((sizeof(compiler_Insn)));
    ((*insert2).kind) = compiler_InsnKind_INSERTVALUE;
    (((*insert2).value).insert_value) = ((compiler_InsnInsertValue){ .ret = insert2_ret, .value = insert1_ret, .element = size, .index = index2 });
    compiler_push_insn(insert2, state);
    return insert2_ret;
};
 compiler_Value _fe23cc40__allocate_array(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "malloc"}));
    typechecking_Type *tpe = ((((compiler_Value *)argsv.value)[0]).value_tpe);
    compiler_Value size = (((compiler_Value *)argsv.value)[1]);
    compiler_Value sizev = compiler_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *mul = malloc((sizeof(compiler_Insn)));
    ((*mul).kind) = compiler_InsnKind_MUL;
    (((*mul).value).arith) = ((compiler_InsnArithmetic){ .ret = sizev, .left = size, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .tpe = builtins_size_t_ }) });
    compiler_push_insn(mul, state);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = sizev;
    compiler_Value call_ret = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "malloc"}) }), .ret = call_ret, .args = args });
    compiler_push_insn(call, state);
    return _fe23cc40_allocate_make_array(call_ret, size, tpe, state);
};
 vector_Vector * _fe23cc40__allocate_array_proto(vector_Vector *args, vector_Vector *kwargs, typechecking_State *state) {
    vector_Vector *rets = vector_make();
    parser_Node *arg = _fe23cc40_get_arg(args, kwargs, 0, ((Array){4, "tpe"}));
    if ((!arg)) {
        return rets;
    }  ;
    typechecking_Type *tpe = typechecking_type_lookup(arg, state);
    vector_push(rets, typechecking_array(tpe));
    return rets;
};
 compiler_Value _fe23cc40__free_array(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "free"}));
    compiler_Value arg = (((compiler_Value *)argsv.value)[0]);
    compiler_Value ret_extract = compiler_make_local_value(typechecking_pointer(((*(arg.tpe)).tpe)), NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 1;
    compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
    ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .ret = ret_extract, .value = arg, .index = index });
    compiler_push_insn(extract, state);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = ret_extract;
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){5, "free"}) }), .ret = compiler_NO_VALUE, .args = args });
    compiler_push_insn(call, state);
    return compiler_NO_VALUE;
};
 compiler_Value _fe23cc40__free_pointer(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "free"}));
    compiler_Value arg = (((compiler_Value *)argsv.value)[0]);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = arg;
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){5, "free"}) }), .ret = compiler_NO_VALUE, .args = args });
    compiler_push_insn(call, state);
    return compiler_NO_VALUE;
};
 compiler_Value _fe23cc40__open(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fopen"}));
    _fe23cc40_convert_to_charp(argsv, state);
    compiler_Value call_ret = compiler_make_local_value(builtins_File_, NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){6, "fopen"}) }), .ret = call_ret, .args = argsv });
    compiler_push_insn(call, state);
    return call_ret;
};
 compiler_Value _fe23cc40__close(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fclose"}));
    compiler_Value call_ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "fclose"}) }), .ret = call_ret, .args = argsv });
    compiler_push_insn(call, state);
    return call_ret;
};
DLL_EXPORT void builtin_functions_p_main(Array args) {
    compiler_p_main(args);
    _fe23cc40_create_function(((Array){7, "assert"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){10, "assertion"}), builtins_bool_) }}), ((Array){0, (typechecking_Type[]){  }}), (&_fe23cc40__assert), NULL);
    _fe23cc40_create_function(((Array){6, "print"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__print), NULL);
    _fe23cc40_create_function(((Array){7, "length"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "str"}), typechecking_array(builtins_char_)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__length), NULL);
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__allocate_size), NULL);
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__allocate_type), (&_fe23cc40__allocate_type_proto));
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_array(NULL) }}), (&_fe23cc40__allocate_array), (&_fe23cc40__allocate_array_proto));
    _fe23cc40_create_function(((Array){5, "free"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), typechecking_array(NULL)) }}), ((Array){0, (typechecking_Type[]){  }}), (&_fe23cc40__free_array), NULL);
    _fe23cc40_create_function(((Array){5, "free"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), typechecking_pointer(NULL)) }}), ((Array){0, (typechecking_Type[]){  }}), (&_fe23cc40__free_pointer), NULL);
    _fe23cc40_create_function(((Array){5, "open"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){5, "file"}), builtins_string_), _fe23cc40_param(((Array){5, "mode"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_File_ }}), (&_fe23cc40__open), NULL);
    _fe23cc40_create_function(((Array){6, "close"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__close), NULL);
};


#endif
