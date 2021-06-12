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
 void _fe23cc40_convert_to_charp(Array values, compiler_State *state) {
    for (int i = 0;(i < (values.size));(i += 1)) {
        if (typechecking_equals(((((compiler_Value *)values.value)[i]).tpe), builtins_string_)) {
            (((compiler_Value *)values.value)[i]) = compiler_charp_str((((compiler_Value *)values.value)[i]), state);
        }  ;
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
 compiler_Value _fe23cc40_forward_to_function(Array args, typechecking_Type *tpe, string name, compiler_State *state) {
    compiler_Value ret = compiler_NO_VALUE;
    if (tpe) {
        ret = compiler_make_local_value(tpe, NULL, state);
    }  ;
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = name }), .ret = ret, .args = args });
    compiler_push_insn(call, state);
    return ret;
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
    (((compiler_Value *)args.value)[0]) = compiler_charp((((string *)(((*node).loc).lines).value)[(((*node).loc).line)]), state);
    (((compiler_Value *)args.value)[1]) = compiler_charp((((*node).loc).filename), state);
    (((compiler_Value *)args.value)[2]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (((*node).loc).line), .sign = 1, .tpe = builtins_int_ });
    Array current_function = ((Array){5, "main"});
    if (((*state).current_function)) {
        current_function = ((*((*state).current_function)).unmangled);
    }  ;
    (((compiler_Value *)args.value)[3]) = compiler_charp(current_function, state);
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
        if (typechecking_is_enum(tpe)) {
            tpe = ((*tpe).tpe);
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
 compiler_Value _fe23cc40_print_convert_types(compiler_Value value, compiler_State *state) {
    if ((!(value.tpe))) {
        return compiler_NO_VALUE;
    }  ;
    if (((((*(value.tpe)).kind) == typechecking_TypeKind_STATIC_ARRAY) && ((bool)typechecking_equals(((*(value.tpe)).tpe), builtins_char_)))) {
        return compiler_charp_static((value.addr), state);
    } else if (typechecking_equals((value.tpe), builtins_string_)) {
        return compiler_charp_str(value, state);
    } ;
    return value;
};
 compiler_Value _fe23cc40__print(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "printf"}));
    string *fmt = _fe23cc40_format_str(((((*node).value).func_call).args));
    if ((!fmt)) {
        return compiler_NO_VALUE;
    }  ;
    Array args = ((Array){(((int64)(argsv.size)) + ((int64)1)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)(argsv.size)) + ((int64)1))))});
    (((compiler_Value *)args.value)[0]) = compiler_charp((*fmt), state);
    for (int i = 0;(i < (argsv.size));(i += 1)) {
        (((compiler_Value *)args.value)[(i + 1)]) = _fe23cc40_print_convert_types((((compiler_Value *)argsv.value)[i]), state);
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
 compiler_Value _fe23cc40__error(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){8, "fprintf"}));
    string *fmt = _fe23cc40_format_str(((((*node).value).func_call).args));
    if ((!fmt)) {
        return compiler_NO_VALUE;
    }  ;
    compiler_Value load_ret = compiler_make_local_value(builtins_File_, NULL, state);
    compiler_Insn *load = malloc((sizeof(compiler_Insn)));
    ((*load).kind) = compiler_InsnKind_LOAD;
    (((*load).value).load) = ((compiler_InsnLoad){ .value = load_ret, .loc = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "stderr"}), .tpe = typechecking_pointer(builtins_File_) }) });
    compiler_push_insn(load, state);
    Array args = ((Array){(((int64)(argsv.size)) + ((int64)2)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)(argsv.size)) + ((int64)2))))});
    (((compiler_Value *)args.value)[0]) = load_ret;
    (((compiler_Value *)args.value)[1]) = compiler_charp((*fmt), state);
    for (int i = 0;(i < (argsv.size));(i += 1)) {
        (((compiler_Value *)args.value)[(i + 2)]) = _fe23cc40_print_convert_types((((compiler_Value *)argsv.value)[i]), state);
    }
    ;
    compiler_Value ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    Array proto = ((Array){3, malloc((((int64)(sizeof(typechecking_NamedParameter))) * ((int64)3)))});
    (((typechecking_NamedParameter *)proto.value)[0]) = (*_fe23cc40_param(((Array){1, ""}), builtins_File_));
    (((typechecking_NamedParameter *)proto.value)[1]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[2]) = (*_fe23cc40_varargs(((Array){1, ""}), NULL));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){8, "fprintf"}) }), .ret = ret, .args = args, .proto = proto });
    compiler_push_insn(call, state);
    return ret;
};
 compiler_Value _fe23cc40__concat(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "concat"}));
    vector_Vector *fargs = ((((*node).value).func_call).args);
    if ((vector_length(((((*node).value).func_call).kwargs)) == 0)) {
        fargs = vector_tail(fargs);
    }  ;
    string *fmt = _fe23cc40_format_str(fargs);
    if ((!fmt)) {
        return compiler_NO_VALUE;
    }  ;
    Array args = ((Array){(((int64)(argsv.size)) + ((int64)1)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)(argsv.size)) + ((int64)1))))});
    (((compiler_Value *)args.value)[0]) = compiler_charp_str((((compiler_Value *)argsv.value)[0]), state);
    (((compiler_Value *)args.value)[1]) = compiler_charp((*fmt), state);
    for (int i = 0;(i < (((int64)(argsv.size)) - ((int64)1)));(i += 1)) {
        (((compiler_Value *)args.value)[(i + 2)]) = _fe23cc40_print_convert_types((((compiler_Value *)argsv.value)[(i + 1)]), state);
    }
    ;
    compiler_Value ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    Array proto = ((Array){3, malloc((((int64)(sizeof(typechecking_NamedParameter))) * ((int64)3)))});
    (((typechecking_NamedParameter *)proto.value)[0]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[1]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[2]) = (*_fe23cc40_varargs(((Array){1, ""}), NULL));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "concat"}) }), .ret = ret, .args = args, .proto = proto });
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
    (((*sub).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = len, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .sign = 1, .tpe = builtins_size_t_ }) });
    compiler_push_insn(sub, state);
    return ret;
};
 compiler_Value _fe23cc40__allocate_size(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "malloc"}));
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "malloc"}), state);
};
 compiler_Value _fe23cc40__allocate_type(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "malloc"}));
    typechecking_Type *tpe = ((((compiler_Value *)argsv.value)[0]).value_tpe);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .tpe = builtins_size_t_ });
    compiler_Value call_ret = _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "malloc"}), state);
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
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    compiler_Value size = (((compiler_Value *)argsv.value)[1]);
    compiler_Value sizev = compiler_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *mul = malloc((sizeof(compiler_Insn)));
    ((*mul).kind) = compiler_InsnKind_MUL;
    (((*mul).value).arith) = ((compiler_InsnArithmetic){ .ret = sizev, .left = size, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .sign = 1, .tpe = builtins_size_t_ }) });
    compiler_push_insn(mul, state);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = sizev;
    compiler_Value call_ret = _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "malloc"}), state);
    return _fe23cc40_allocate_make_array(call_ret, size, tpe, state);
};
 vector_Vector * _fe23cc40__allocate_array_proto(vector_Vector *args, vector_Vector *kwargs, typechecking_State *state) {
    vector_Vector *rets = vector_make();
    parser_Node *arg = _fe23cc40_get_arg(args, kwargs, 0, ((Array){4, "tpe"}));
    typechecking_Type *tpe = typechecking_type_lookup(arg, state);
    vector_push(rets, typechecking_array(tpe));
    return rets;
};
 compiler_Value _fe23cc40__zero_allocate_size(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "calloc"}));
    Array args = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)args.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .sign = 1, .tpe = builtins_size_t_ });
    (((compiler_Value *)args.value)[1]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "calloc"}), state);
};
 compiler_Value _fe23cc40__zero_allocate_type(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "calloc"}));
    typechecking_Type *tpe = ((((compiler_Value *)argsv.value)[0]).value_tpe);
    Array args = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)args.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .sign = 1, .tpe = builtins_size_t_ });
    (((compiler_Value *)args.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .tpe = builtins_size_t_ });
    compiler_Value call_ret = _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "calloc"}), state);
    compiler_Value ret = compiler_make_local_value(typechecking_pointer(tpe), NULL, state);
    compiler_Insn *bitcast = malloc((sizeof(compiler_Insn)));
    ((*bitcast).kind) = compiler_InsnKind_BITCAST;
    (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = ret, .value = call_ret });
    compiler_push_insn(bitcast, state);
    return ret;
};
 compiler_Value _fe23cc40__zero_allocate_array(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "calloc"}));
    typechecking_Type *tpe = ((((compiler_Value *)argsv.value)[0]).value_tpe);
    compiler_Value size = (((compiler_Value *)argsv.value)[1]);
    Array args = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)args.value)[0]) = size;
    (((compiler_Value *)args.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).size), .tpe = builtins_size_t_ });
    compiler_Value call_ret = _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "calloc"}), state);
    return _fe23cc40_allocate_make_array(call_ret, size, tpe, state);
};
 compiler_Value _fe23cc40__reallocate(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){8, "realloc"}));
    return _fe23cc40_forward_to_function(argsv, ((((compiler_Value *)argsv.value)[0]).tpe), ((Array){8, "realloc"}), state);
};
 vector_Vector * _fe23cc40__reallocate_proto(vector_Vector *args, vector_Vector *kwargs, typechecking_State *state) {
    vector_Vector *rets = vector_make();
    parser_Node *arg = _fe23cc40_get_arg(args, kwargs, 0, ((Array){4, "ptr"}));
    vector_push(rets, ((*arg).tpe));
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
    return _fe23cc40_forward_to_function(args, NULL, ((Array){5, "free"}), state);
};
 compiler_Value _fe23cc40__free_pointer(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "free"}));
    compiler_Value arg = (((compiler_Value *)argsv.value)[0]);
    Array args = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)args.value)[0]) = arg;
    return _fe23cc40_forward_to_function(args, NULL, ((Array){5, "free"}), state);
};
 compiler_Value _fe23cc40__open(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fopen"}));
    _fe23cc40_convert_to_charp(argsv, state);
    return _fe23cc40_forward_to_function(argsv, builtins_File_, ((Array){6, "fopen"}), state);
};
 compiler_Value _fe23cc40__reopen(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){8, "freopen"}));
    _fe23cc40_convert_to_charp(argsv, state);
    return _fe23cc40_forward_to_function(argsv, builtins_File_, ((Array){8, "freopen"}), state);
};
 compiler_Value _fe23cc40__close(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fclose"}));
    return _fe23cc40_forward_to_function(argsv, builtins_int_, ((Array){7, "fclose"}), state);
};
 compiler_Value _fe23cc40_read_write_array(parser_Node *node, Array argsv, string name, compiler_State *state) {
    parser_Node *arrayn = _fe23cc40_get_arg(((((*node).value).func_call).args), ((((*node).value).func_call).kwargs), 1, ((Array){7, "buffer"}));
    compiler_Value size = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*((*((*arrayn).tpe)).tpe)).size), .sign = 1, .tpe = builtins_size_t_ });
    compiler_Value array = (((compiler_Value *)argsv.value)[1]);
    compiler_Value len = compiler_make_local_value(builtins_size_t_, NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 0;
    compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
    ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .index = index, .value = array, .ret = len });
    compiler_push_insn(extract, state);
    compiler_Value ptr = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
    Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index2.value)[0]) = 1;
    compiler_Insn *extract2 = malloc((sizeof(compiler_Insn)));
    ((*extract2).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract2).value).extract_value) = ((compiler_InsnExtractValue){ .index = index2, .value = array, .ret = ptr });
    compiler_push_insn(extract2, state);
    Array args = ((Array){4, malloc((((int64)(sizeof(compiler_Value))) * ((int64)4)))});
    (((compiler_Value *)args.value)[0]) = ptr;
    (((compiler_Value *)args.value)[1]) = size;
    (((compiler_Value *)args.value)[2]) = len;
    (((compiler_Value *)args.value)[3]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, builtins_size_t_, name, state);
};
 compiler_Value _fe23cc40__read_array(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fread"}));
    return _fe23cc40_read_write_array(node, argsv, ((Array){6, "fread"}), state);
};
 compiler_Value _fe23cc40__write_array(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fwrite"}));
    return _fe23cc40_read_write_array(node, argsv, ((Array){7, "fwrite"}), state);
};
 compiler_Value _fe23cc40_read_write_array_n(parser_Node *node, Array argsv, string name, compiler_State *state) {
    parser_Node *arrayn = _fe23cc40_get_arg(((((*node).value).func_call).args), ((((*node).value).func_call).kwargs), 1, ((Array){7, "buffer"}));
    compiler_Value size = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*((*((*arrayn).tpe)).tpe)).size), .sign = 1, .tpe = builtins_size_t_ });
    compiler_Value array = (((compiler_Value *)argsv.value)[1]);
    compiler_Value ptr = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
    Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index2.value)[0]) = 1;
    compiler_Insn *extract2 = malloc((sizeof(compiler_Insn)));
    ((*extract2).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract2).value).extract_value) = ((compiler_InsnExtractValue){ .index = index2, .value = array, .ret = ptr });
    compiler_push_insn(extract2, state);
    Array args = ((Array){4, malloc((((int64)(sizeof(compiler_Value))) * ((int64)4)))});
    (((compiler_Value *)args.value)[0]) = ptr;
    (((compiler_Value *)args.value)[1]) = size;
    (((compiler_Value *)args.value)[2]) = (((compiler_Value *)argsv.value)[2]);
    (((compiler_Value *)args.value)[3]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, builtins_size_t_, name, state);
};
 compiler_Value _fe23cc40__read_array_n(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fread"}));
    return _fe23cc40_read_write_array_n(node, argsv, ((Array){6, "fread"}), state);
};
 compiler_Value _fe23cc40__write_array_n(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fwrite"}));
    return _fe23cc40_read_write_array_n(node, argsv, ((Array){7, "fwrite"}), state);
};
 compiler_Value _fe23cc40_read_write_pointer(parser_Node *node, Array argsv, string name, compiler_State *state) {
    parser_Node *ptrn = _fe23cc40_get_arg(((((*node).value).func_call).args), ((((*node).value).func_call).kwargs), 1, ((Array){4, "ptr"}));
    compiler_Value size = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*((*((*ptrn).tpe)).tpe)).size), .sign = 1, .tpe = builtins_size_t_ });
    compiler_Value ptr = (((compiler_Value *)argsv.value)[1]);
    Array args = ((Array){4, malloc((((int64)(sizeof(compiler_Value))) * ((int64)4)))});
    (((compiler_Value *)args.value)[0]) = ptr;
    (((compiler_Value *)args.value)[1]) = size;
    (((compiler_Value *)args.value)[2]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .sign = 1, .tpe = builtins_size_t_ });
    (((compiler_Value *)args.value)[3]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, builtins_size_t_, name, state);
};
 compiler_Value _fe23cc40__read_pointer(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fread"}));
    return _fe23cc40_read_write_pointer(node, argsv, ((Array){6, "fread"}), state);
};
 compiler_Value _fe23cc40__write_pointer(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fwrite"}));
    return _fe23cc40_read_write_pointer(node, argsv, ((Array){7, "fwrite"}), state);
};
 compiler_Value _fe23cc40__write_string(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){8, "fprintf"}));
    string *fmt = _fe23cc40_format_str(vector_tail(((((*node).value).func_call).args)));
    if ((!fmt)) {
        return compiler_NO_VALUE;
    }  ;
    Array args = ((Array){(((int64)(argsv.size)) + ((int64)1)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)(argsv.size)) + ((int64)1))))});
    (((compiler_Value *)args.value)[0]) = (((compiler_Value *)argsv.value)[0]);
    (((compiler_Value *)args.value)[1]) = compiler_charp((*fmt), state);
    for (int i = 0;(i < (((int64)(argsv.size)) - ((int64)1)));(i += 1)) {
        (((compiler_Value *)args.value)[(i + 2)]) = _fe23cc40_print_convert_types((((compiler_Value *)argsv.value)[(i + 1)]), state);
    }
    ;
    compiler_Value ret = compiler_make_local_value(builtins_int_, NULL, state);
    Array proto = ((Array){3, malloc((((int64)(sizeof(typechecking_NamedParameter))) * ((int64)3)))});
    (((typechecking_NamedParameter *)proto.value)[0]) = (*_fe23cc40_param(((Array){1, ""}), builtins_File_));
    (((typechecking_NamedParameter *)proto.value)[1]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[2]) = (*_fe23cc40_varargs(((Array){1, ""}), NULL));
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){8, "fprintf"}) }), .ret = ret, .args = args, .proto = proto });
    compiler_push_insn(call, state);
    return ret;
};
 compiler_Value _fe23cc40__read_line(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fgets"}));
    compiler_Value extract_ret = compiler_make_local_value(builtins_size_t_, NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 0;
    compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
    ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .index = index, .value = (((compiler_Value *)argsv.value)[1]), .ret = extract_ret });
    compiler_push_insn(extract, state);
    compiler_Value len = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *convert = malloc((sizeof(compiler_Insn)));
    ((*convert).kind) = compiler_InsnKind_TRUNC;
    (((*convert).value).convert) = ((compiler_InsnConvert){ .ret = len, .value = extract_ret });
    compiler_push_insn(convert, state);
    Array args = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
    (((compiler_Value *)args.value)[0]) = compiler_charp_str((((compiler_Value *)argsv.value)[1]), state);
    (((compiler_Value *)args.value)[1]) = len;
    (((compiler_Value *)args.value)[2]) = (((compiler_Value *)argsv.value)[0]);
    return _fe23cc40_forward_to_function(args, typechecking_pointer(builtins_char_), ((Array){6, "fgets"}), state);
};
 compiler_Value _fe23cc40__scanf(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "fscanf"}));
    _fe23cc40_convert_to_charp(argsv, state);
    compiler_Value ret = compiler_make_local_value(builtins_int_, NULL, state);
    Array proto = ((Array){3, malloc((((int64)(sizeof(typechecking_NamedParameter))) * ((int64)3)))});
    (((typechecking_NamedParameter *)proto.value)[0]) = (*_fe23cc40_param(((Array){1, ""}), builtins_File_));
    (((typechecking_NamedParameter *)proto.value)[1]) = (*_fe23cc40_param(((Array){1, ""}), typechecking_pointer(builtins_char_)));
    (((typechecking_NamedParameter *)proto.value)[2]) = (*_fe23cc40_varargs(((Array){1, ""}), NULL));
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "fscanf"}) }), .ret = ret, .args = argsv, .proto = proto });
    compiler_push_insn(call, state);
    return ret;
};
 compiler_Value _fe23cc40__rewind(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "rewind"}));
    return _fe23cc40_forward_to_function(argsv, NULL, ((Array){7, "rewind"}), state);
};
 compiler_Value _fe23cc40__seek(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "fseek"}));
    return _fe23cc40_forward_to_function(argsv, builtins_int_, ((Array){6, "fseek"}), state);
};
 compiler_Value _fe23cc40__tell(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "ftell"}));
    return _fe23cc40_forward_to_function(argsv, builtins_long_, ((Array){6, "ftell"}), state);
};
 compiler_Value _fe23cc40__strlen(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "strlen"}));
    _fe23cc40_convert_to_charp(argsv, state);
    return _fe23cc40_forward_to_function(argsv, builtins_size_t_, ((Array){7, "strlen"}), state);
};
 compiler_Value _fe23cc40__max(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "fmax"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){5, "fmax"}), state);
};
 compiler_Value _fe23cc40__min(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "fmin"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){5, "fmin"}), state);
};
 compiler_Value _fe23cc40__ceil(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "ceil"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){5, "ceil"}), state);
};
 compiler_Value _fe23cc40__floor(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){6, "floor"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){6, "floor"}), state);
};
 compiler_Value _fe23cc40__pow(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){4, "pow"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){4, "pow"}), state);
};
 compiler_Value _fe23cc40__sqrt(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "sqrt"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){5, "sqrt"}), state);
};
 compiler_Value _fe23cc40__log2(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "log2"}));
    return _fe23cc40_forward_to_function(argsv, builtins_double_, ((Array){5, "log2"}), state);
};
 compiler_Value _fe23cc40__memcopy(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "memcpy"}));
    Array args = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
    (((compiler_Value *)args.value)[0]) = (((compiler_Value *)argsv.value)[1]);
    (((compiler_Value *)args.value)[1]) = (((compiler_Value *)argsv.value)[0]);
    (((compiler_Value *)args.value)[2]) = (((compiler_Value *)argsv.value)[2]);
    return _fe23cc40_forward_to_function(args, typechecking_pointer(NULL), ((Array){7, "memcpy"}), state);
};
 compiler_Value _fe23cc40__exit(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){5, "exit"}));
    return _fe23cc40_forward_to_function(argsv, NULL, ((Array){5, "exit"}), state);
};
 compiler_Value _fe23cc40__system(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){7, "system"}));
    _fe23cc40_convert_to_charp(argsv, state);
    return _fe23cc40_forward_to_function(argsv, builtins_int_, ((Array){7, "system"}), state);
};
 compiler_Value _fe23cc40__starts_with(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){12, "starts_with"}));
    _fe23cc40_convert_to_charp(argsv, state);
    compiler_Value value = _fe23cc40_forward_to_function(argsv, builtins_int8_, ((Array){12, "starts_with"}), state);
    compiler_Value trunc_ret = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *trunc = malloc((sizeof(compiler_Insn)));
    ((*trunc).kind) = compiler_InsnKind_TRUNC;
    (((*trunc).value).convert) = ((compiler_InsnConvert){ .ret = trunc_ret, .value = value });
    compiler_push_insn(trunc, state);
    return trunc_ret;
};
 compiler_Value _fe23cc40__executable_file(parser_Node *node, Array argsv, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){16, "executable_file"}));
    return _fe23cc40_forward_to_function(argsv, NULL, ((Array){16, "executable_file"}), state);
};
DLL_EXPORT void builtin_functions_p_main(Array args) {
    compiler_p_main(args);
    _fe23cc40_create_function(((Array){7, "assert"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){10, "assertion"}), builtins_bool_) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__assert), NULL);
    _fe23cc40_create_function(((Array){6, "print"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__print), NULL);
    _fe23cc40_create_function(((Array){6, "error"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__error), NULL);
    _fe23cc40_create_function(((Array){7, "concat"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "str"}), builtins_string_), _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__concat), NULL);
    _fe23cc40_create_function(((Array){7, "length"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "str"}), typechecking_array(builtins_char_)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__length), NULL);
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__allocate_size), NULL);
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__allocate_type), (&_fe23cc40__allocate_type_proto));
    _fe23cc40_create_function(((Array){9, "allocate"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_array(NULL) }}), (&_fe23cc40__allocate_array), (&_fe23cc40__allocate_array_proto));
    _fe23cc40_create_function(((Array){14, "zero_allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__zero_allocate_size), NULL);
    _fe23cc40_create_function(((Array){14, "zero_allocate"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__zero_allocate_type), (&_fe23cc40__allocate_type_proto));
    _fe23cc40_create_function(((Array){14, "zero_allocate"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "tpe"}), typechecking_type_), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_array(NULL) }}), (&_fe23cc40__zero_allocate_array), (&_fe23cc40__allocate_array_proto));
    _fe23cc40_create_function(((Array){11, "reallocate"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "ptr"}), typechecking_pointer(NULL)), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__reallocate), (&_fe23cc40__reallocate_proto));
    _fe23cc40_create_function(((Array){5, "free"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), typechecking_array(NULL)) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__free_array), NULL);
    _fe23cc40_create_function(((Array){5, "free"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), typechecking_pointer(NULL)) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__free_pointer), NULL);
    _fe23cc40_create_function(((Array){5, "open"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){5, "file"}), builtins_string_), _fe23cc40_param(((Array){5, "mode"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_File_ }}), (&_fe23cc40__open), NULL);
    _fe23cc40_create_function(((Array){7, "reopen"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){5, "file"}), builtins_string_), _fe23cc40_param(((Array){5, "mode"}), builtins_string_), _fe23cc40_param(((Array){3, "fp"}), builtins_File_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_File_ }}), (&_fe23cc40__reopen), NULL);
    _fe23cc40_create_function(((Array){6, "close"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__close), NULL);
    _fe23cc40_create_function(((Array){5, "read"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){7, "buffer"}), typechecking_array(NULL)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__read_array), NULL);
    _fe23cc40_create_function(((Array){6, "write"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){7, "buffer"}), typechecking_array(NULL)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__write_array), NULL);
    _fe23cc40_create_function(((Array){5, "read"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){7, "buffer"}), typechecking_array(NULL)), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__read_array_n), NULL);
    _fe23cc40_create_function(((Array){6, "write"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){7, "buffer"}), typechecking_array(NULL)), _fe23cc40_param(((Array){5, "size"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__write_array_n), NULL);
    _fe23cc40_create_function(((Array){5, "read"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){4, "ptr"}), typechecking_pointer(NULL)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__read_pointer), NULL);
    _fe23cc40_create_function(((Array){6, "write"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){4, "ptr"}), typechecking_pointer(NULL)) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__write_pointer), NULL);
    _fe23cc40_create_function(((Array){13, "write_string"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__write_string), NULL);
    _fe23cc40_create_function(((Array){10, "read_line"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){4, "str"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(builtins_char_) }}), (&_fe23cc40__read_line), NULL);
    _fe23cc40_create_function(((Array){6, "scanf"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){4, "fmt"}), builtins_string_), _fe23cc40_varargs(((Array){1, ""}), NULL) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__scanf), NULL);
    _fe23cc40_create_function(((Array){7, "rewind"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__rewind), NULL);
    _fe23cc40_create_function(((Array){5, "seek"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_), _fe23cc40_param(((Array){7, "offset"}), builtins_long_), _fe23cc40_param(((Array){7, "whence"}), builtins_int_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__seek), NULL);
    _fe23cc40_create_function(((Array){5, "tell"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){3, "fp"}), builtins_File_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_long_ }}), (&_fe23cc40__tell), NULL);
    _fe23cc40_create_function(((Array){7, "strlen"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){4, "str"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_size_t_ }}), (&_fe23cc40__strlen), NULL);
    _fe23cc40_create_function(((Array){4, "max"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){2, "a"}), builtins_double_), _fe23cc40_param(((Array){2, "b"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__max), NULL);
    _fe23cc40_create_function(((Array){4, "min"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){2, "a"}), builtins_double_), _fe23cc40_param(((Array){2, "b"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__min), NULL);
    _fe23cc40_create_function(((Array){5, "ceil"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__ceil), NULL);
    _fe23cc40_create_function(((Array){6, "floor"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__floor), NULL);
    _fe23cc40_create_function(((Array){4, "pow"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){2, "a"}), builtins_double_), _fe23cc40_param(((Array){2, "b"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__pow), NULL);
    _fe23cc40_create_function(((Array){5, "sqrt"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__sqrt), NULL);
    _fe23cc40_create_function(((Array){5, "log2"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){6, "value"}), builtins_double_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_double_ }}), (&_fe23cc40__log2), NULL);
    _fe23cc40_create_function(((Array){8, "memcopy"}), ((Array){3, (typechecking_NamedParameter *[3]){ _fe23cc40_param(((Array){4, "src"}), typechecking_pointer(NULL)), _fe23cc40_param(((Array){5, "dest"}), typechecking_pointer(NULL)), _fe23cc40_param(((Array){2, "n"}), builtins_size_t_) }}), ((Array){1, (typechecking_Type *[1]){ typechecking_pointer(NULL) }}), (&_fe23cc40__memcopy), NULL);
    _fe23cc40_create_function(((Array){5, "exit"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){7, "status"}), builtins_int_) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__exit), NULL);
    _fe23cc40_create_function(((Array){7, "system"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){8, "command"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_int_ }}), (&_fe23cc40__system), NULL);
    _fe23cc40_create_function(((Array){12, "starts_with"}), ((Array){2, (typechecking_NamedParameter *[2]){ _fe23cc40_param(((Array){4, "str"}), builtins_string_), _fe23cc40_param(((Array){4, "pre"}), builtins_string_) }}), ((Array){1, (typechecking_Type *[1]){ builtins_bool_ }}), (&_fe23cc40__starts_with), NULL);
    _fe23cc40_create_function(((Array){16, "executable_file"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){9, "resolved"}), typechecking_pointer(builtins_char_)) }}), ((Array){0, (typechecking_Type *[]){  }}), (&_fe23cc40__executable_file), NULL);
};


#endif
