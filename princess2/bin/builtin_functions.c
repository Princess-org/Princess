/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _builtin_functions_H
#define _builtin_functions_H
#include "vector.c"
#include "map.c"
#include "builtins.c"
#include "parser.c"
#include "typechecking.c"
#include "compiler.c"
#include "scope.c"
 typechecking_NamedParameter * _fe23cc40_param(string name, typechecking_Type *tpe) {
    typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
    ((*named).name) = name;
    ((*named).value) = tpe;
    return named;
};
 typechecking_Type * _fe23cc40_make_function_type(string name, Array parameter_t, Array return_t, compiler_Value (*macro)(parser_Node *, compiler_State *)) {
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
    return tpe;
};
 void _fe23cc40_create_function(string name, Array parameter_t, Array return_t, compiler_Value (*macro)(parser_Node *, compiler_State *)) {
    scope_create_function(builtins_builtins, parser_make_identifier(((Array){1, (string[1]){ name }})), parser_ShareMarker_EXPORT, _fe23cc40_make_function_type(name, parameter_t, return_t, macro), false);
};
 void _fe23cc40_import_function(compiler_State *state, string function) {
    map_put(((*((*state).module)).imported), function, map_sentinel);
};
 compiler_Value _fe23cc40__assert(parser_Node *node, compiler_State *state) {
    _fe23cc40_import_function(state, ((Array){14, "__assert_fail"}));
    compiler_Value insn = compiler_walk_expression(vector_peek(((((*node).value).func_call).args)), state);
    compiler_Label if_false = compiler_make_label(state);
    compiler_Label if_true = compiler_make_label(state);
    compiler_Insn *br = malloc((sizeof(compiler_Insn)));
    ((*br).kind) = compiler_InsnKind_BR;
    (((*br).value).br) = ((compiler_InsnBr){ .cond = insn, .if_true = if_true, .if_false = if_false });
    compiler_push_insn(br, state);
    compiler_push_label(if_false, state);
    Array args = ((Array){4, malloc((((int64)(sizeof(compiler_Value))) * ((int64)4)))});
    (((compiler_Value *)args.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = (((string *)(((*node).loc).lines).value)[(((*node).loc).line)]), .tpe = builtins_string_ });
    (((compiler_Value *)args.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = (((*node).loc).filename), .tpe = builtins_string_ });
    (((compiler_Value *)args.value)[2]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (((*node).loc).line), .tpe = builtins_int_ });
    Array current_function = ((Array){5, "main"});
    if (((*state).current_function)) {
        current_function = ((*((*state).current_function)).name);
    }  ;
    (((compiler_Value *)args.value)[3]) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = current_function, .tpe = builtins_string_ });
    compiler_Insn *call = malloc((sizeof(compiler_Insn)));
    ((*call).kind) = compiler_InsnKind_CALL;
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){14, "__assert_fail"}) }), .ret = compiler_NO_VALUE, .args = args });
    compiler_push_insn(call, state);
    compiler_push_label(if_true, state);
    return compiler_NO_VALUE;
};
DLL_EXPORT void builtin_functions_p_main(Array args) {
    _fe23cc40_create_function(((Array){7, "assert"}), ((Array){1, (typechecking_NamedParameter *[1]){ _fe23cc40_param(((Array){10, "assertion"}), builtins_bool_) }}), ((Array){0, (typechecking_Type[]){  }}), (&_fe23cc40__assert));
};


#endif
