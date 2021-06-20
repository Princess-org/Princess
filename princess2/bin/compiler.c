/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _compiler_H
#define _compiler_H
#include "buffer.c"
#include "parser.c"
#include "vector.c"
#include "map.c"
#include "scope.c"
#include "util.c"
#include "debug.c"
#include "toolchain.c"
#include "builtins.c"
#include "typechecking.c"
typedef struct compiler_Label {string name;} compiler_Label;
typedef enum compiler_DebugValueKind {compiler_DebugValueKind_BOOL = 0, compiler_DebugValueKind_INT = 1, compiler_DebugValueKind_STRING = 2, compiler_DebugValueKind_METADATA = 3, compiler_DebugValueKind_CONST = 4, compiler_DebugValueKind_DIEXP = 5} compiler_DebugValueKind;
typedef struct compiler_DebugValue {enum compiler_DebugValueKind kind; string name; string s; int64 i;} compiler_DebugValue;
typedef struct compiler_DebugParam {string name; struct compiler_DebugValue value;} compiler_DebugParam;
typedef enum compiler_ValueKind {compiler_ValueKind_NULL = 0, compiler_ValueKind_ZEROINITIALIZER = 1, compiler_ValueKind_UNDEF = 2, compiler_ValueKind_LOCAL = 3, compiler_ValueKind_GLOBAL = 4, compiler_ValueKind_BOOL = 5, compiler_ValueKind_INT = 6, compiler_ValueKind_FLOAT = 7, compiler_ValueKind_STRING = 8, compiler_ValueKind_ARRAY = 9, compiler_ValueKind_STRUCT = 10, compiler_ValueKind_UNION = 11, compiler_ValueKind_TYPE = 12, compiler_ValueKind_METADATA = 13, compiler_ValueKind_DEBUG_INFO = 14} compiler_ValueKind;
typedef struct compiler_Value {enum compiler_ValueKind kind; bool metadata; bool distinct; string name; int sign; uint64 i; double f; string s; struct typechecking_Type *value_tpe; struct compiler_Value *value; Array values; Array debug_values; struct compiler_Value *addr; struct typechecking_Type *tpe;} compiler_Value;
compiler_Value compiler_NO_VALUE;
typedef enum compiler_InsnKind {compiler_InsnKind_ADD = 0, compiler_InsnKind_SUB = 1, compiler_InsnKind_MUL = 2, compiler_InsnKind_SREM = 3, compiler_InsnKind_UREM = 4, compiler_InsnKind_SDIV = 5, compiler_InsnKind_UDIV = 6, compiler_InsnKind_FADD = 7, compiler_InsnKind_FSUB = 8, compiler_InsnKind_FMUL = 9, compiler_InsnKind_FREM = 10, compiler_InsnKind_FDIV = 11, compiler_InsnKind_ASHR = 12, compiler_InsnKind_SHL = 13, compiler_InsnKind_AND = 14, compiler_InsnKind_OR = 15, compiler_InsnKind_XOR = 16, compiler_InsnKind_FCMP = 17, compiler_InsnKind_ICMP = 18, compiler_InsnKind_FNEG = 19, compiler_InsnKind_RET = 20, compiler_InsnKind_LOAD = 21, compiler_InsnKind_STORE = 22, compiler_InsnKind_ALLOCA = 23, compiler_InsnKind_INSERTVALUE = 24, compiler_InsnKind_EXTRACTVALUE = 25, compiler_InsnKind_GETELEMENTPTR = 26, compiler_InsnKind_TRUNC = 27, compiler_InsnKind_ZEXT = 28, compiler_InsnKind_SEXT = 29, compiler_InsnKind_FPTRUNC = 30, compiler_InsnKind_FPEXT = 31, compiler_InsnKind_FPTOUI = 32, compiler_InsnKind_FPTOSI = 33, compiler_InsnKind_UITOFP = 34, compiler_InsnKind_SITOFP = 35, compiler_InsnKind_PTRTOINT = 36, compiler_InsnKind_INTTOPTR = 37, compiler_InsnKind_BITCAST = 38, compiler_InsnKind_SWITCH = 39, compiler_InsnKind_CALL = 40, compiler_InsnKind_BR_UNC = 41, compiler_InsnKind_BR = 42, compiler_InsnKind_UNREACHABLE = 43} compiler_InsnKind;
ARRAY(compiler_f_ueq, char, 4);
ARRAY(compiler_f_ugt, char, 4);
ARRAY(compiler_f_uge, char, 4);
ARRAY(compiler_f_ult, char, 4);
ARRAY(compiler_f_ule, char, 4);
ARRAY(compiler_f_une, char, 4);
ARRAY(compiler_i_eq, char, 3);
ARRAY(compiler_i_ne, char, 3);
ARRAY(compiler_i_ugt, char, 4);
ARRAY(compiler_i_uge, char, 4);
ARRAY(compiler_i_ult, char, 4);
ARRAY(compiler_i_ule, char, 4);
ARRAY(compiler_i_sgt, char, 4);
ARRAY(compiler_i_sge, char, 4);
ARRAY(compiler_i_slt, char, 4);
ARRAY(compiler_i_sle, char, 4);
typedef struct compiler_InsnCmp {string op; struct compiler_Value ret; struct compiler_Value left; struct compiler_Value right;} compiler_InsnCmp;
typedef struct compiler_SwitchValue {struct compiler_Value value; struct compiler_Label label_;} compiler_SwitchValue;
typedef struct compiler_InsnSwitch {struct compiler_Value value; struct compiler_Label otherwise; struct vector_Vector *switch_values;} compiler_InsnSwitch;
typedef struct compiler_InsnFneg {struct compiler_Value ret; struct compiler_Value value;} compiler_InsnFneg;
typedef struct compiler_InsnInsertValue {struct compiler_Value ret; struct compiler_Value value; struct compiler_Value element; Array index;} compiler_InsnInsertValue;
typedef struct compiler_InsnGetElementPtr {struct compiler_Value ret; struct typechecking_Type *tpe; struct compiler_Value value; Array index;} compiler_InsnGetElementPtr;
typedef struct compiler_InsnConvert {struct compiler_Value ret; struct compiler_Value value;} compiler_InsnConvert;
typedef struct compiler_InsnExtractValue {struct compiler_Value ret; struct compiler_Value value; Array index;} compiler_InsnExtractValue;
typedef struct compiler_InsnStore {struct compiler_Value value; struct compiler_Value loc;} compiler_InsnStore;
typedef struct compiler_InsnLoad {struct compiler_Value value; struct compiler_Value loc;} compiler_InsnLoad;
typedef struct compiler_InsnReturn {struct compiler_Value value;} compiler_InsnReturn;
typedef struct compiler_InsnArithmetic {struct compiler_Value ret; struct compiler_Value left; struct compiler_Value right;} compiler_InsnArithmetic;
typedef struct compiler_InsnAlloca {struct compiler_Value ret;} compiler_InsnAlloca;
typedef struct compiler_InsnCall {struct compiler_Value name; struct compiler_Value ret; Array args; Array proto;} compiler_InsnCall;
typedef struct compiler_InsnBrUnc {struct compiler_Label label_;} compiler_InsnBrUnc;
typedef struct compiler_InsnBr {struct compiler_Value cond; struct compiler_Label if_true; struct compiler_Label if_false;} compiler_InsnBr;
typedef union compiler_InsnValue {struct compiler_InsnArithmetic arith; struct compiler_InsnReturn ret; struct compiler_InsnStore store; struct compiler_InsnLoad load; struct compiler_InsnAlloca alloca; struct compiler_InsnCall call; struct compiler_InsnBrUnc br_unc; struct compiler_InsnBr br; struct compiler_InsnInsertValue insert_value; struct compiler_InsnExtractValue extract_value; struct compiler_InsnGetElementPtr gep; struct compiler_InsnConvert convert; struct compiler_InsnCmp cmp; struct compiler_InsnFneg fneg; struct compiler_InsnSwitch switch_;} compiler_InsnValue;
typedef struct compiler_Insn {enum compiler_InsnKind kind; union compiler_InsnValue value; struct compiler_Value *debug;} compiler_Insn;
typedef struct compiler_Block {string label_; struct vector_Vector *insn; struct compiler_Block *next;} compiler_Block;
typedef struct compiler_Function {string name; string unmangled; struct vector_Vector *args; struct typechecking_Type *ret; bool multiple_returns; bool forward_declare; struct compiler_Block *block; struct compiler_Value *debug;} compiler_Function;
typedef struct compiler_Result {struct map_Map *functions; struct map_Map *structures; struct map_Map *globals; struct map_Map *constants; struct map_Map *metadata;} compiler_Result;
typedef struct compiler_Global {bool external; bool private; string name; struct typechecking_Type *tpe; struct compiler_Value *value; int line; struct compiler_Value *debug;} compiler_Global;
typedef struct _87f75ce3_LoopState {struct compiler_Insn *break_insn; struct compiler_Insn *continue_insn;} _87f75ce3_LoopState;
typedef struct compiler_State {struct toolchain_Module *module; int counter; int global_counter; int meta_counter; struct compiler_Function *current_function; struct compiler_Block *current_block; struct vector_Vector *loops; struct compiler_Result *result; struct map_Map *ditypes; struct compiler_Value *difile; struct compiler_Value *diunit; struct vector_Vector *discope;} compiler_State;
 compiler_Value * _87f75ce3_di_type(typechecking_Type *tpe, compiler_State *state);
DLL_EXPORT compiler_Insn * compiler_make_insn_dbg(compiler_InsnKind kind, compiler_Value *debug) {
    compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
    ((*insn).kind) = kind;
    if (toolchain_debug_sym) {
        ((*insn).debug) = debug;
    }  else {
        ((*insn).debug) = NULL;
    };
    return insn;
};
DLL_EXPORT compiler_Insn * compiler_make_insn(compiler_InsnKind kind) {
    return compiler_make_insn_dbg(kind, NULL);
};
 compiler_Value _87f75ce3_make_value(typechecking_Type *tpe, void *value) {
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_TYPE:
        return ((compiler_Value){ .kind = compiler_ValueKind_TYPE, .tpe = typechecking_type_, .value_tpe = ((typechecking_Type *)value) });
        break;
        case typechecking_TypeKind_WORD:
        return ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = builtins_int_, .sign = 1, .i = (*((uint64 *)value)) });
        break;
        case typechecking_TypeKind_FLOAT:
        return ((compiler_Value){ .kind = compiler_ValueKind_FLOAT, .tpe = builtins_double_, .f = (*((double *)value)) });
        break;
        case typechecking_TypeKind_BOOL:
        return ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .tpe = builtins_bool_, .sign = 1, .i = (*((uint64 *)value)) });
        break;
        case typechecking_TypeKind_ENUM:
        return ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = tpe, .sign = 1, .i = (*((uint64 *)value)) });
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*tpe).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
};
 compiler_Insn * _87f75ce3_get_break_insn(compiler_State *state) {
    if ((vector_length(((*state).loops)) > 0)) {
        return ((*((_87f75ce3_LoopState *)vector_peek(((*state).loops)))).break_insn);
    }  ;
    return NULL;
};
 compiler_Insn * _87f75ce3_get_continue_insn(compiler_State *state) {
    if ((vector_length(((*state).loops)) > 0)) {
        return ((*((_87f75ce3_LoopState *)vector_peek(((*state).loops)))).continue_insn);
    }  ;
    return NULL;
};
 void _87f75ce3_push_loop_state(compiler_State *state) {
    _87f75ce3_LoopState *loops = malloc((sizeof(_87f75ce3_LoopState)));
    compiler_Insn *break_insn = compiler_make_insn(compiler_InsnKind_BR_UNC);
    compiler_Insn *continue_insn = compiler_make_insn(compiler_InsnKind_BR_UNC);
    ((*loops).break_insn) = break_insn;
    ((*loops).continue_insn) = continue_insn;
    vector_push(((*state).loops), loops);
};
 void _87f75ce3_pop_loop_state(compiler_State *state) {
    vector_pop(((*state).loops));
};
 compiler_Value * _87f75ce3_make_meta(compiler_State *state) {
    string s = util_int_to_str(((*state).meta_counter));
    (((*state).meta_counter) += 1);
    compiler_Value *value = malloc((sizeof(compiler_Value)));
    (*value) = ((compiler_Value){ .kind = compiler_ValueKind_METADATA, .name = s });
    return value;
};
 compiler_Value * _87f75ce3_push_meta(compiler_Value *meta, compiler_State *state) {
    compiler_Value *val = _87f75ce3_make_meta(state);
    map_put(((*((*state).result)).metadata), ((*val).name), meta);
    return val;
};
 compiler_DebugValue _87f75ce3_meta_to_debug_value(compiler_Value *meta) {
    if ((!meta)) {
        return ((compiler_DebugValue){  });
    }  ;
    assert((((*meta).kind) == compiler_ValueKind_METADATA));
    return ((compiler_DebugValue){ .kind = compiler_DebugValueKind_METADATA, .name = ((*meta).name) });
};
DLL_EXPORT compiler_Value * compiler_make_location(parser_Node *node, compiler_State *state) {
    if ((!toolchain_debug_sym)) {
        return NULL;
    }  ;
    Array debug_values = ((Array){3, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)3)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = ((((*node).loc).line) + ((int)1)) }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){7, "column"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = ((((*node).loc).column) + ((int)1)) }) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){6, "scope"}), .value = _87f75ce3_meta_to_debug_value(((compiler_Value *)vector_peek(((*state).discope)))) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){11, "DILocation"}), .debug_values = debug_values });
    return _87f75ce3_push_meta(di, state);
};
DLL_EXPORT compiler_Label compiler_make_label(compiler_State *state) {
    string s = util_int_to_str(((*state).counter));
    (((*state).counter) += 1);
    return ((compiler_Label){ .name = s });
};
DLL_EXPORT string compiler_make_unique_name(compiler_State *state) {
    string s = util_int_to_str(((*state).counter));
    (((*state).counter) += 1);
    return s;
};
DLL_EXPORT void compiler_push_label(compiler_Label label_, compiler_State *state) {
    compiler_Block *block = malloc((sizeof(compiler_Block)));
    ((*block).label_) = (label_.name);
    ((*block).insn) = vector_make();
    ((*block).next) = NULL;
    ((*((*state).current_block)).next) = block;
    ((*state).current_block) = block;
};
DLL_EXPORT void compiler_push_insn(compiler_Insn *insn, compiler_State *state) {
    vector_push(((*((*state).current_block)).insn), insn);
};
 void _87f75ce3_push_declare_arg(parser_Node *node, compiler_Value val, string name, int arg, compiler_State *state) {
    if ((!toolchain_debug_sym)) {
        return ;
    }  ;
    int line = (((*node).loc).line);
    Array debug_values;
    if ((arg >= 0)) {
        debug_values = ((Array){6, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)6)))});
    }  else {
        debug_values = ((Array){5, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)5)))});
    };
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = name }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){6, "scope"}), .value = _87f75ce3_meta_to_debug_value(((compiler_Value *)vector_peek(((*state).discope)))) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
    (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (line + ((int)1)) }) });
    (((compiler_DebugParam *)debug_values.value)[4]) = ((compiler_DebugParam){ .name = ((Array){5, "type"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_type(((*(val.tpe)).tpe), state)) });
    if ((arg >= 0)) {
        (((compiler_DebugParam *)debug_values.value)[5]) = ((compiler_DebugParam){ .name = ((Array){4, "arg"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = arg }) });
    }  ;
    compiler_Value *value = malloc((sizeof(compiler_Value)));
    (*value) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){16, "DILocalVariable"}), .debug_values = debug_values });
    Array args = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
    (((compiler_Value *)args.value)[0]) = val;
    ((((compiler_Value *)args.value)[0]).metadata) = true;
    (((compiler_Value *)args.value)[1]) = (*_87f75ce3_push_meta(value, state));
    ((((compiler_Value *)args.value)[1]).metadata) = true;
    (((compiler_Value *)args.value)[2]) = ((compiler_Value){ .metadata = true, .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){13, "DIExpression"}), .debug_values = ((Array){0, (compiler_DebugParam[]){  }}) });
    compiler_Insn *call = compiler_make_insn_dbg(compiler_InsnKind_CALL, compiler_make_location(node, state));
    (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){17, "llvm.dbg.declare"}) }), .ret = compiler_NO_VALUE, .args = args });
    compiler_push_insn(call, state);
};
 void _87f75ce3_push_declare(parser_Node *node, compiler_Value val, string name, compiler_State *state) {
    _87f75ce3_push_declare_arg(node, val, name, (-1), state);
};
DLL_EXPORT compiler_Value compiler_make_int_value(int v) {
    int i = v;
    int sign = 1;
    if ((i < 0)) {
        i = (-i);
        sign = (-1);
    }  ;
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = i, .sign = sign, .tpe = builtins_int_ });
    if ((v < 0)) {
        (value.sign) = (-1);
    }  else {
        (value.sign) = 1;
    };
    return value;
};
DLL_EXPORT compiler_Value compiler_make_local_value(typechecking_Type *tpe, compiler_Value *addr, compiler_State *state) {
    return ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = compiler_make_unique_name(state), .tpe = tpe, .addr = addr });
};
DLL_EXPORT compiler_Value compiler_make_global_value(typechecking_Type *tpe, string name, compiler_Value *value, compiler_State *state) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_str((&buf), name);
    buffer_append_char((&buf), '.');
    buffer_append_str((&buf), util_int_to_str(((*state).global_counter)));
    name = buffer_to_string((&buf));
    (((*state).global_counter) += 1);
    compiler_Global *global = malloc((sizeof(compiler_Global)));
    (*global) = ((compiler_Global){ .private = true, .name = name, .tpe = tpe, .value = value, .line = (-1) });
    map_put(((*((*state).result)).constants), ((*global).name), global);
    return ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = name, .tpe = typechecking_pointer(tpe), .addr = NULL });
};
DLL_EXPORT compiler_Value compiler_charp_str(compiler_Value value, compiler_State *state) {
    compiler_Value local = compiler_make_local_value(typechecking_pointer(builtins_char_), NULL, state);
    Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index.value)[0]) = 1;
    compiler_Insn *extract = compiler_make_insn(compiler_InsnKind_EXTRACTVALUE);
    (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .ret = local, .value = value, .index = index });
    compiler_push_insn(extract, state);
    return local;
};
DLL_EXPORT compiler_Value compiler_charp_static(compiler_Value *global, compiler_State *state) {
    compiler_Value local = compiler_make_local_value(typechecking_pointer(builtins_char_), global, state);
    Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
    (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
    compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = local, .tpe = ((*((*global).tpe)).tpe), .value = (*global), .index = index });
    compiler_push_insn(gep, state);
    return local;
};
DLL_EXPORT compiler_Value compiler_charp(string str, compiler_State *state) {
    typechecking_Type *tpe = typechecking_make_type_raw(typechecking_TypeKind_STATIC_ARRAY);
    ((*tpe).tpe) = builtins_char_;
    ((*tpe).length) = (str.size);
    ((*tpe).size) = (((*tpe).length) * ((size_t)(sizeof(char))));
    ((*tpe).align) = (sizeof(char));
    compiler_Value *value = malloc((sizeof(compiler_Value)));
    (*value) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = str, .tpe = tpe });
    compiler_Value global = compiler_make_global_value(tpe, ((Array){4, "str"}), value, state);
    compiler_Value *globalp = malloc((sizeof(compiler_Value)));
    (*globalp) = global;
    return compiler_charp_static(globalp, state);
};
 typechecking_Type * _87f75ce3_make_return_type(typechecking_Type *tpe) {
    typechecking_Type *ret_tpe = typechecking_make_anonymous_type(typechecking_TypeKind_STRUCT);
    ((*ret_tpe).packed) = false;
    size_t length = vector_length(((*tpe).return_t));
    Array fields = ((Array){length, malloc(((sizeof(typechecking_StructMember)) * ((size_t)length)))});
    int offset = 0;
    int align = 1;
    for (int i = 0;(i < length);(i += 1)) {
        typechecking_Type *t = ((typechecking_Type *)vector_get(((*tpe).return_t), i));
        string name = util_int_to_str(i);
        offset = ((int)(ceil((((double)offset) / ((double)((*t).align)))) * ((double)((*tpe).align))));
        align = util_lcm(align, ((int)((*t).align)));
        (((typechecking_StructMember *)fields.value)[i]) = ((typechecking_StructMember){ ((*tpe).line), name, t, offset });
        (offset += ((*t).size));
    }
    ;
    offset = ((int)(ceil((((double)offset) / ((double)align))) * ((double)align)));
    ((*ret_tpe).size) = offset;
    ((*ret_tpe).align) = align;
    ((*ret_tpe).fields) = fields;
    return ret_tpe;
};
DLL_EXPORT compiler_Value compiler_walk_expression(parser_Node *node, compiler_State *state);
DLL_EXPORT void compiler_walk(parser_Node *node, compiler_State *state);
 compiler_Value _87f75ce3_walk_Null(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Boolean(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .i = (((*node).value).i), .sign = 1, .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Integer(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (((*node).value).i), .sign = 1, .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Float(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_FLOAT, .f = (((*node).value).f), .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Char(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    char v = ((char)(((*node).value).i));
    int sign = 1;
    if ((v < 0)) {
        v = (-v);
        sign = (-1);
    }  ;
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = v, .sign = sign, .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_String(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    typechecking_Type *strtpe = typechecking_make_type_raw(typechecking_TypeKind_STATIC_ARRAY);
    ((*strtpe).tpe) = builtins_char_;
    ((*strtpe).length) = ((((*node).value).str).size);
    ((*strtpe).size) = (((*tpe).length) * ((size_t)(sizeof(char))));
    ((*strtpe).align) = (sizeof(char));
    compiler_Value *str_value = malloc((sizeof(compiler_Value)));
    (*str_value) = ((compiler_Value){ .kind = compiler_ValueKind_STRING, .s = (((*node).value).str), .tpe = tpe });
    compiler_Value global = compiler_make_global_value(strtpe, ((Array){4, "str"}), str_value, state);
    Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
    ((((compiler_Value *)index.value)[0]).tpe) = builtins_size_t_;
    (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
    ((((compiler_Value *)index.value)[1]).tpe) = builtins_size_t_;
    compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(((*tpe).tpe)), NULL, state);
    compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = strtpe, .value = global, .index = index });
    compiler_push_insn(gep, state);
    compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
    Array values = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
    (((compiler_Value *)values.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = builtins_size_t_, .i = ((((*node).value).str).size), .sign = 1 });
    (((compiler_Value *)values.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = typechecking_pointer(((*tpe).tpe)) });
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = values, .tpe = tpe });
    Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
    (((int *)index2.value)[0]) = 1;
    compiler_Insn *insert = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
    (((*insert).value).insert_value) = ((compiler_InsnInsertValue){ .ret = ret, .value = value, .element = gep_ret, .index = index2 });
    compiler_push_insn(insert, state);
    return ret;
};
 compiler_Value _87f75ce3_convert_to(parser_Node *node, compiler_Value value, typechecking_Type *tpe, compiler_State *state) {
    if ((((bool)(!(value.tpe))) || ((bool)(!tpe)))) {
        return value;
    }  ;
    if (typechecking_equals((value.tpe), tpe)) {
        return value;
    }  ;
    if (typechecking_is_enum(tpe)) {
        tpe = ((*tpe).tpe);
    }  ;
    if (typechecking_is_enum((value.tpe))) {
        (value.tpe) = ((*(value.tpe)).tpe);
    }  ;
    compiler_InsnKind kind;
    if ((((*tpe).kind) == typechecking_TypeKind_ARRAY)) {
        if (((((*(value.tpe)).kind) == typechecking_TypeKind_STATIC_ARRAY) && (((*(value.tpe)).length) == 0))) {
            Array values = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)values.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = builtins_size_t_, .i = ((*(value.tpe)).length), .sign = 1 });
            (((compiler_Value *)values.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = typechecking_pointer(((*tpe).tpe)) });
            return ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = values, .tpe = tpe });
        } else if (((((*(value.tpe)).kind) == typechecking_TypeKind_STATIC_ARRAY) && (((bool)(!((*tpe).tpe))) || ((bool)typechecking_equals(((*tpe).tpe), ((*(value.tpe)).tpe)))))) {
            compiler_Value local = compiler_make_local_value(typechecking_pointer(((*(value.tpe)).tpe)), NULL, state);
            Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
            ((((compiler_Value *)index.value)[0]).tpe) = builtins_size_t_;
            (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
            ((((compiler_Value *)index.value)[1]).tpe) = builtins_size_t_;
            compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
            (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = local, .tpe = (value.tpe), .value = (*(value.addr)), .index = index });
            compiler_push_insn(gep, state);
            if ((!((*tpe).tpe))) {
                compiler_Value local1 = local;
                local = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
                compiler_Insn *bitcast = compiler_make_insn(compiler_InsnKind_BITCAST);
                (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = local, .value = local1 });
                compiler_push_insn(bitcast, state);
            }  ;
            compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
            Array values = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)values.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = builtins_size_t_, .i = ((*(value.tpe)).length), .sign = 1 });
            (((compiler_Value *)values.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = typechecking_pointer(((*tpe).tpe)) });
            compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = values, .tpe = tpe });
            Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index2.value)[0]) = 1;
            compiler_Insn *insert = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
            (((*insert).value).insert_value) = ((compiler_InsnInsertValue){ .ret = ret, .value = value, .element = local, .index = index2 });
            compiler_push_insn(insert, state);
            return ret;
        }
        else if ((((bool)(!((*tpe).tpe))) && (((*(value.tpe)).kind) == typechecking_TypeKind_ARRAY))) {
            Array index1 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index1.value)[0]) = 0;
            compiler_Value size = compiler_make_local_value(builtins_size_t_, NULL, state);
            compiler_Insn *extract1 = compiler_make_insn(compiler_InsnKind_EXTRACTVALUE);
            (((*extract1).value).extract_value) = ((compiler_InsnExtractValue){ .ret = size, .value = value, .index = index1 });
            compiler_push_insn(extract1, state);
            Array index2 = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index2.value)[0]) = 1;
            compiler_Value ptr = compiler_make_local_value(typechecking_pointer(((*(value.tpe)).tpe)), NULL, state);
            compiler_Insn *extract2 = compiler_make_insn(compiler_InsnKind_EXTRACTVALUE);
            (((*extract2).value).extract_value) = ((compiler_InsnExtractValue){ .ret = ptr, .value = value, .index = index2 });
            compiler_push_insn(extract2, state);
            compiler_Value bitcast_ret = compiler_make_local_value(typechecking_pointer(NULL), NULL, state);
            compiler_Insn *bitcast = compiler_make_insn(compiler_InsnKind_BITCAST);
            (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = bitcast_ret, .value = ptr });
            compiler_push_insn(bitcast, state);
            compiler_Value insert1_ret = compiler_make_local_value(tpe, NULL, state);
            compiler_Insn *insert1 = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
            (((*insert1).value).insert_value) = ((compiler_InsnInsertValue){ .ret = insert1_ret, .value = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = tpe }), .element = size, .index = index1 });
            compiler_push_insn(insert1, state);
            compiler_Value insert2_ret = compiler_make_local_value(tpe, NULL, state);
            compiler_Insn *insert2 = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
            (((*insert2).value).insert_value) = ((compiler_InsnInsertValue){ .ret = insert2_ret, .value = insert1_ret, .element = bitcast_ret, .index = index2 });
            compiler_push_insn(insert2, state);
            return insert2_ret;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    } else if ((((*tpe).kind) == typechecking_TypeKind_BOOL)) {
        if (typechecking_is_pointer((value.tpe))) {
            value = _87f75ce3_convert_to(node, value, builtins_size_t_, state);
        }  ;
        if (typechecking_is_float((value.tpe))) {
            compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
            compiler_Insn *insn = compiler_make_insn(compiler_InsnKind_FCMP);
            (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = compiler_f_une, .ret = ret, .left = value, .right = ((compiler_Value){ .kind = compiler_ValueKind_FLOAT, .tpe = (value.tpe), .f = 0.0 }) });
            compiler_push_insn(insn, state);
            return ret;
        } else if (typechecking_is_integer((value.tpe))) {
            compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
            compiler_Insn *insn = compiler_make_insn(compiler_InsnKind_ICMP);
            (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = compiler_i_ne, .ret = ret, .left = value, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = (value.tpe), .i = 0, .sign = 1 }) });
            compiler_push_insn(insn, state);
            return ret;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    }
    else if (typechecking_is_integer(tpe)) {
        if (typechecking_is_integer((value.tpe))) {
            if ((((*(value.tpe)).size) == ((*tpe).size))) {
                return value;
            } else if ((((*(value.tpe)).size) > ((*tpe).size))) {
                kind = compiler_InsnKind_TRUNC;
            }
            else if (((*tpe).unsig)) {
                kind = compiler_InsnKind_ZEXT;
            } else {
                kind = compiler_InsnKind_SEXT;
            };
        } else if (typechecking_is_float((value.tpe))) {
            if (((*tpe).unsig)) {
                kind = compiler_InsnKind_FPTOUI;
            }  else {
                kind = compiler_InsnKind_FPTOSI;
            };
        }
        else if (typechecking_is_pointer((value.tpe))) {
            kind = compiler_InsnKind_PTRTOINT;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    }
    else if (typechecking_is_float(tpe)) {
        if (typechecking_is_integer((value.tpe))) {
            if (((*(value.tpe)).unsig)) {
                kind = compiler_InsnKind_UITOFP;
            }  else {
                kind = compiler_InsnKind_SITOFP;
            };
        } else if (typechecking_is_float((value.tpe))) {
            if ((((*(value.tpe)).size) > ((*tpe).size))) {
                kind = compiler_InsnKind_FPTRUNC;
            }  else {
                kind = compiler_InsnKind_FPEXT;
            };
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    }
    else if (typechecking_is_pointer(tpe)) {
        if ((((*(value.tpe)).kind) == typechecking_TypeKind_NULL)) {
            return ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = tpe });
        } else if ((((bool)typechecking_is_pointer((value.tpe))) || (((*(value.tpe)).kind) == typechecking_TypeKind_NULL))) {
            kind = compiler_InsnKind_BITCAST;
        }
        else if (typechecking_is_integer((value.tpe))) {
            kind = compiler_InsnKind_INTTOPTR;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    } else {
        typechecking_errorn(node, ((Array){15, "Can't convert "}));
        fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
        return value;
    };
    compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
    compiler_Insn *insn = compiler_make_insn(kind);
    (((*insn).value).convert) = ((compiler_InsnConvert){ .ret = ret, .value = value });
    compiler_push_insn(insn, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Cast(parser_Node *node, compiler_State *state) {
    compiler_Value value = compiler_walk_expression((((*node).value).expr), state);
    return _87f75ce3_convert_to(node, value, ((*node).tpe), state);
};
 compiler_Value _87f75ce3_walk_StructLitUnion(parser_Node *node, compiler_State *state) {
    vector_Vector *args = ((((*node).value).struct_lit).args);
    vector_Vector *kwargs = ((((*node).value).struct_lit).kwargs);
    typechecking_Type *tpe = ((*node).tpe);
    size_t largs = vector_length(args);
    size_t lkwargs = vector_length(kwargs);
    if ((((largs > 1) || (lkwargs > 1)) || ((largs == 1) && (lkwargs == 1)))) {
        typechecking_errorn(node, ((Array){44, "Union initalizer can only have one argument"}));
        return compiler_NO_VALUE;
    } else if (((largs == 0) && (lkwargs == 0))) {
        typechecking_Type *arraytpe = typechecking_make_static_array(builtins_char_, ((*tpe).size));
        Array values = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)values.value)[0]) = ((compiler_Value){ .kind = compiler_ValueKind_ZEROINITIALIZER, .tpe = arraytpe });
        return ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .tpe = tpe, .values = values });
    } ;
    parser_Node *arg = NULL;
    typechecking_Type *arg_tpe = NULL;
    if ((largs == 1)) {
        arg = ((parser_Node *)vector_get(args, 0));
        arg_tpe = ((((typechecking_StructMember *)((*tpe).fields).value)[0]).tpe);
    }  else {
        parser_Node *kwarg = ((parser_Node *)vector_get(kwargs, 0));
        arg = ((((*kwarg).value).named_arg).value);
        string name = typechecking_last_ident_to_str(((((*kwarg).value).named_arg).name));
        for (int j = 0;(j < (((*tpe).fields).size));(j += 1)) {
            typechecking_StructMember field = (((typechecking_StructMember *)((*tpe).fields).value)[j]);
            if ((strcmp(((field.name).value), (name.value)) == 0)) {
                arg_tpe = (field.tpe);
                break;
            }  ;
        }
        ;
    };
    compiler_Value value = _87f75ce3_convert_to(arg, compiler_walk_expression(arg, state), arg_tpe, state);
    compiler_Value alloca_ret = compiler_make_local_value(tpe, NULL, state);
    compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
    (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = alloca_ret });
    compiler_push_insn(alloca, state);
    (alloca_ret.tpe) = typechecking_pointer(tpe);
    Array index = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
    (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
    (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
    (((compiler_Value *)index.value)[2]) = compiler_make_int_value(0);
    compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(builtins_char_), NULL, state);
    compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = alloca_ret, .index = index });
    compiler_push_insn(gep, state);
    compiler_Value bitcast_ret = compiler_make_local_value(typechecking_pointer(arg_tpe), NULL, state);
    compiler_Insn *bitcast = compiler_make_insn(compiler_InsnKind_BITCAST);
    (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = bitcast_ret, .value = gep_ret });
    compiler_push_insn(bitcast, state);
    compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store).value).store) = ((compiler_InsnStore){ .loc = bitcast_ret, .value = value });
    compiler_push_insn(store, state);
    compiler_Value load_ret = compiler_make_local_value(tpe, NULL, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = load_ret, .loc = alloca_ret });
    compiler_push_insn(load, state);
    return load_ret;
};
 compiler_Value _87f75ce3_walk_StructLit(parser_Node *node, compiler_State *state) {
    vector_Vector *args = ((((*node).value).struct_lit).args);
    vector_Vector *kwargs = ((((*node).value).struct_lit).kwargs);
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    if ((((*tpe).kind) == typechecking_TypeKind_UNION)) {
        return _87f75ce3_walk_StructLitUnion(node, state);
    }  ;
    Array values = ((Array){(((*tpe).fields).size), malloc(((sizeof(compiler_Value)) * (((*tpe).fields).size)))});
    for (int i = 0;(i < (values.size));(i += 1)) {
        (((compiler_Value *)values.value)[i]) = ((compiler_Value){ .kind = compiler_ValueKind_ZEROINITIALIZER, .tpe = ((((typechecking_StructMember *)((*tpe).fields).value)[i]).tpe) });
    }
    ;
    for (int i = 0;(i < vector_length(args));(i += 1)) {
        parser_Node *arg = ((parser_Node *)vector_get(args, i));
        compiler_Value value = compiler_walk_expression(arg, state);
        (((compiler_Value *)values.value)[i]) = _87f75ce3_convert_to(arg, value, ((((typechecking_StructMember *)((*tpe).fields).value)[i]).tpe), state);
    }
    ;
    for (int i = 0;(i < vector_length(kwargs));(i += 1)) {
        parser_Node *kwarg = ((parser_Node *)vector_get(kwargs, i));
        string name = typechecking_last_ident_to_str(((((*kwarg).value).named_arg).name));
        compiler_Value value = compiler_walk_expression(((((*kwarg).value).named_arg).value), state);
        for (int j = 0;(j < (((*tpe).fields).size));(j += 1)) {
            typechecking_StructMember field = (((typechecking_StructMember *)((*tpe).fields).value)[j]);
            if ((strcmp(((field.name).value), (name.value)) == 0)) {
                (((compiler_Value *)values.value)[j]) = _87f75ce3_convert_to(kwarg, value, (field.tpe), state);
                break;
            }  ;
        }
        ;
    }
    ;
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = values, .tpe = tpe });
    for (int i = 0;(i < (values.size));(i += 1)) {
        compiler_Value val = (((compiler_Value *)values.value)[i]);
        if ((((val.kind) == compiler_ValueKind_LOCAL) || ((val.kind) == compiler_ValueKind_GLOBAL))) {
            (((compiler_Value *)values.value)[i]) = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = (val.tpe) });
            compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
            Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index.value)[0]) = i;
            compiler_Insn *insert = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
            (((*insert).value).insert_value) = ((compiler_InsnInsertValue){ .ret = ret, .value = value, .element = val, .index = index });
            compiler_push_insn(insert, state);
            value = ret;
        }  ;
    }
    ;
    return value;
};
 compiler_Value _87f75ce3_walk_ArrayLit(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    size_t len = vector_length((((*node).value).body));
    Array values = ((Array){len, malloc(((sizeof(compiler_Value)) * ((size_t)len)))});
    for (int i = 0;(i < len);(i += 1)) {
        parser_Node *v = ((parser_Node *)vector_get((((*node).value).body), i));
        (((compiler_Value *)values.value)[i]) = compiler_walk_expression(v, state);
    }
    ;
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_ARRAY, .values = values, .tpe = tpe });
    for (int i = 0;(i < len);(i += 1)) {
        compiler_Value val = (((compiler_Value *)values.value)[i]);
        if ((((val.kind) == compiler_ValueKind_LOCAL) || ((val.kind) == compiler_ValueKind_GLOBAL))) {
            (((compiler_Value *)values.value)[i]) = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = (val.tpe) });
            compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
            Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index.value)[0]) = i;
            compiler_Insn *insert = compiler_make_insn(compiler_InsnKind_INSERTVALUE);
            (((*insert).value).insert_value) = ((compiler_InsnInsertValue){ .ret = ret, .value = value, .element = val, .index = index });
            compiler_push_insn(insert, state);
            value = ret;
        }  ;
    }
    ;
    compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
    compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
    (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ret });
    compiler_push_insn(alloca, state);
    (ret.tpe) = typechecking_pointer(tpe);
    compiler_Value *retp = malloc((sizeof(compiler_Value)));
    (*retp) = ret;
    (value.addr) = retp;
    compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store).value).store) = ((compiler_InsnStore){ .value = value, .loc = ret });
    compiler_push_insn(store, state);
    return value;
};
 compiler_Value _87f75ce3_walk_ArithmeticOp(parser_Node *node, compiler_InsnKind insn_kind, typechecking_Type *tpe, compiler_State *state) {
    compiler_Value left = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).left), state), tpe, state);
    compiler_Value right = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).right), state), tpe, state);
    compiler_Value value = compiler_make_local_value(tpe, NULL, state);
    compiler_Insn *insn = compiler_make_insn(insn_kind);
    (((*insn).value).arith) = ((compiler_InsnArithmetic){ .left = left, .right = right, .ret = value });
    compiler_push_insn(insn, state);
    return value;
};
 compiler_Value _87f75ce3_walk_USub(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value expr = compiler_walk_expression((((*node).value).expr), state);
    compiler_Value ret = compiler_make_local_value(tpe, NULL, state);
    if ((((*tpe).kind) == typechecking_TypeKind_FLOAT)) {
        compiler_Insn *fneg = compiler_make_insn(compiler_InsnKind_FNEG);
        (((*fneg).value).fneg) = ((compiler_InsnFneg){ .ret = ret, .value = expr });
        compiler_push_insn(fneg, state);
    }  else {
        compiler_Insn *sub = compiler_make_insn(compiler_InsnKind_SUB);
        (((*sub).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 0, .sign = 1, .tpe = tpe }), .right = expr });
        compiler_push_insn(sub, state);
    };
    return ret;
};
 compiler_Value _87f75ce3_walk_UAdd(parser_Node *node, compiler_State *state) {
    return compiler_walk_expression((((*node).value).expr), state);
};
 compiler_Value _87f75ce3_walk_Not(parser_Node *node, compiler_State *state) {
    compiler_Value expr = _87f75ce3_convert_to(node, compiler_walk_expression((((*node).value).expr), state), builtins_bool_, state);
    compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *xor = compiler_make_insn(compiler_InsnKind_XOR);
    (((*xor).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = expr, .right = ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .i = 1, .sign = 1, .tpe = builtins_bool_ }) });
    compiler_push_insn(xor, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_And(parser_Node *node, compiler_State *state) {
    compiler_Value left = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).left), state), builtins_bool_, state);
    compiler_Value ret_alloca = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
    (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ret_alloca });
    (ret_alloca.tpe) = typechecking_pointer(builtins_bool_);
    compiler_push_insn(alloca, state);
    compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
    (((*br).value).br) = ((compiler_InsnBr){ .cond = left });
    compiler_Insn *to_end = compiler_make_insn(compiler_InsnKind_BR_UNC);
    compiler_push_insn(br, state);
    compiler_Label if_false = compiler_make_label(state);
    compiler_push_label(if_false, state);
    compiler_Insn *store1 = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store1).value).store) = ((compiler_InsnStore){ .value = ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .i = 0, .sign = 1, .tpe = builtins_bool_ }), .loc = ret_alloca });
    compiler_push_insn(store1, state);
    compiler_push_insn(to_end, state);
    compiler_Label if_true = compiler_make_label(state);
    compiler_push_label(if_true, state);
    compiler_Value right = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).right), state), builtins_bool_, state);
    compiler_Insn *store2 = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store2).value).store) = ((compiler_InsnStore){ .value = right, .loc = ret_alloca });
    compiler_push_insn(store2, state);
    compiler_push_insn(to_end, state);
    compiler_Label end = compiler_make_label(state);
    compiler_push_label(end, state);
    ((((*br).value).br).if_true) = if_true;
    ((((*br).value).br).if_false) = if_false;
    ((((*to_end).value).br_unc).label_) = end;
    compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = ret_alloca });
    compiler_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Or(parser_Node *node, compiler_State *state) {
    compiler_Value left = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).left), state), builtins_bool_, state);
    compiler_Value ret_alloca = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
    (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ret_alloca });
    (ret_alloca.tpe) = typechecking_pointer(builtins_bool_);
    compiler_push_insn(alloca, state);
    compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
    (((*br).value).br) = ((compiler_InsnBr){ .cond = left });
    compiler_Insn *to_end = compiler_make_insn(compiler_InsnKind_BR_UNC);
    compiler_push_insn(br, state);
    compiler_Label if_true = compiler_make_label(state);
    compiler_push_label(if_true, state);
    compiler_Insn *store1 = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store1).value).store) = ((compiler_InsnStore){ .value = ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .i = 1, .sign = 1, .tpe = builtins_bool_ }), .loc = ret_alloca });
    compiler_push_insn(store1, state);
    compiler_push_insn(to_end, state);
    compiler_Label if_false = compiler_make_label(state);
    compiler_push_label(if_false, state);
    compiler_Value right = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).right), state), builtins_bool_, state);
    compiler_Insn *store2 = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store2).value).store) = ((compiler_InsnStore){ .value = right, .loc = ret_alloca });
    compiler_push_insn(store2, state);
    compiler_push_insn(to_end, state);
    compiler_Label end = compiler_make_label(state);
    compiler_push_label(end, state);
    ((((*br).value).br).if_true) = if_true;
    ((((*br).value).br).if_false) = if_false;
    ((((*to_end).value).br_unc).label_) = end;
    compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = ret_alloca });
    compiler_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Add(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_ADD;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FADD;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Sub(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SUB;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FSUB;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Mul(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_MUL;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FMUL;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Mod(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SREM;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FREM;
    } else if (((*tpe).unsig)) {
        insn_kind = compiler_InsnKind_UREM;
    } ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Div(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SDIV;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FDIV;
    } else if (((*tpe).unsig)) {
        insn_kind = compiler_InsnKind_UDIV;
    } ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Shl(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_SHL, tpe, state);
};
 compiler_Value _87f75ce3_walk_Shr(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_ASHR, tpe, state);
};
 compiler_Value _87f75ce3_walk_BAnd(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_AND, tpe, state);
};
 compiler_Value _87f75ce3_walk_BOr(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_OR, tpe, state);
};
 compiler_Value _87f75ce3_walk_BXor(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_XOR, tpe, state);
};
 compiler_Value _87f75ce3_walk_Call(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*node).function);
    bool is_fp = false;
    if (typechecking_is_function_pointer(tpe)) {
        tpe = ((*tpe).tpe);
        is_fp = true;
    }  ;
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    vector_Vector *parameter_t = ((*tpe).parameter_t);
    Array args = ((Array){(vector_length(((((*node).value).func_call).args)) + vector_length(((((*node).value).func_call).kwargs))), malloc(((sizeof(compiler_Value)) * ((size_t)(vector_length(((((*node).value).func_call).args)) + vector_length(((((*node).value).func_call).kwargs))))))});
    for (int i = 0;(i < vector_length(((((*node).value).func_call).args)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).args), i));
        typechecking_NamedParameter *p = NULL;
        if ((i < vector_length(parameter_t))) {
            p = ((typechecking_NamedParameter *)vector_get(parameter_t, i));
        }  else {
            p = ((typechecking_NamedParameter *)vector_peek(parameter_t));
            if ((!((*p).varargs))) {
                return compiler_NO_VALUE;
            }  ;
        };
        compiler_Value expr = compiler_walk_expression(n, state);
        expr = _87f75ce3_convert_to(n, expr, ((*p).value), state);
        (((compiler_Value *)args.value)[i]) = expr;
    }
    ;
    for (int i = 0;(i < vector_length(((((*node).value).func_call).kwargs)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).kwargs), i));
        assert((((*n).kind) == parser_NodeKind_NAMED_ARG));
        string name = typechecking_last_ident_to_str(((((*n).value).named_arg).name));
        parser_Node *value = ((((*n).value).named_arg).value);
        for (int j = 0;(j < vector_length(parameter_t));(j += 1)) {
            typechecking_NamedParameter *p = ((typechecking_NamedParameter *)vector_get(parameter_t, j));
            if ((strcmp((((*p).name).value), (name.value)) == 0)) {
                compiler_Value expr = compiler_walk_expression(value, state);
                expr = _87f75ce3_convert_to(n, expr, ((*p).value), state);
                (((compiler_Value *)args.value)[j]) = expr;
            }  ;
        }
        ;
    }
    ;
    if (((*tpe).macro)) {
        return ((*tpe).macro)(node, args, state);
    }  ;
    compiler_Value name_v;
    typechecking_Type *ret = NULL;
    if (is_fp) {
        if ((vector_length(((*tpe).return_t)) > 1)) {
            ret = _87f75ce3_make_return_type(tpe);
        }  else {
            ret = ((typechecking_Type *)vector_peek(((*tpe).return_t)));
        };
        name_v = compiler_walk_expression(((((*node).value).func_call).left), state);
    }  else {
        string name = ((*tpe).type_name);
        name = typechecking_mangle_function_name(name, parameter_t);
        compiler_Function *function = ((compiler_Function *)map_get(((*((*state).result)).functions), name));
        if ((!function)) {
            return compiler_NO_VALUE;
        }  ;
        ret = ((*function).ret);
        name_v = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = name });
    };
    compiler_Value addr = compiler_NO_VALUE;
    compiler_Value value = compiler_NO_VALUE;
    if (ret) {
        addr = compiler_make_local_value(ret, NULL, state);
        compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
        (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = addr });
        compiler_push_insn(alloca, state);
        (addr.tpe) = typechecking_pointer(ret);
        compiler_Value *addrp = malloc((sizeof(compiler_Value)));
        (*addrp) = addr;
        value = compiler_make_local_value(ret, addrp, state);
    }  ;
    compiler_Insn *insn = compiler_make_insn_dbg(compiler_InsnKind_CALL, compiler_make_location(node, state));
    (((*insn).value).call) = ((compiler_InsnCall){ .name = name_v, .ret = value, .args = args });
    compiler_push_insn(insn, state);
    if (ret) {
        compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
        (((*store).value).store) = ((compiler_InsnStore){ .value = value, .loc = addr });
        compiler_push_insn(store, state);
    }  ;
    return value;
};
 compiler_Value _87f75ce3_walk_Identifier(parser_Node *node, compiler_State *state) {
    scope_Value *val = ((*node).svalue);
    if ((!val)) {
        return compiler_NO_VALUE;
    }  ;
    if (((*val).value)) {
        return _87f75ce3_make_value(((*val).tpe), ((*val).value));
    }  ;
    typechecking_Type *tpe = ((*node).tpe);
    string name = ((*val).assembly_name);
    int kind = compiler_ValueKind_LOCAL;
    if (((*val).global)) {
        kind = compiler_ValueKind_GLOBAL;
    }  ;
    compiler_Value *loc = malloc((sizeof(compiler_Value)));
    (*loc) = ((compiler_Value){ .kind = kind, .name = name, .tpe = typechecking_pointer(tpe) });
    if ((!typechecking_is_function(tpe))) {
        compiler_Value value = compiler_make_local_value(tpe, loc, state);
        compiler_Insn *insn = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*insn).value).load) = ((compiler_InsnLoad){ .value = value, .loc = (*loc) });
        compiler_push_insn(insn, state);
        return value;
    }  else {
        ((*loc).name) = typechecking_mangle_function_name(((*tpe).type_name), ((*tpe).parameter_t));
        compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = tpe, .addr = loc });
        return value;
    };
};
 compiler_Value _87f75ce3_walk_Assign(parser_Node *node, compiler_State *state) {
    ;
    vector_Vector *right = ((((*node).value).assign).right);
    vector_Vector *left = ((((*node).value).assign).left);
    compiler_Value last_value = compiler_NO_VALUE;
    int j = 0;
    for (int i = 0;(i < vector_length(right));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(right, i));
        if ((!n)) {
            break;
        }  ;
        compiler_Value value = compiler_walk_expression(n, state);
        typechecking_Type *tpe = ((*n).tpe);
        if ((!tpe)) {
            continue;
        }  ;
        if ((((*tpe).kind) == typechecking_TypeKind_TUPLE)) {
            for (int k = 0;(k < vector_length(((*tpe).return_t)));(k += 1)) {
                typechecking_Type *t = ((typechecking_Type *)vector_get(((*tpe).return_t), k));
                if ((j >= vector_length(left))) {
                    return compiler_NO_VALUE;
                }  ;
                parser_Node *l = ((parser_Node *)vector_get(left, j));
                compiler_Value *addr = (compiler_walk_expression(l, state).addr);
                if ((!addr)) {
                    typechecking_errorn(l, ((Array){41, "Can't assign, expression has no address\x0a"""}));
                    return compiler_NO_VALUE;
                }  ;
                compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(t), NULL, state);
                Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
                (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
                (((compiler_Value *)index.value)[1]) = compiler_make_int_value(k);
                compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
                (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = (value.tpe), .value = (*(value.addr)), .index = index });
                compiler_push_insn(gep, state);
                compiler_Value *gep_retp = malloc((sizeof(compiler_Value)));
                (*gep_retp) = gep_ret;
                compiler_Value ret = compiler_make_local_value(t, gep_retp, state);
                compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
                (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
                compiler_push_insn(load, state);
                ret = _87f75ce3_convert_to(n, ret, ((*l).tpe), state);
                compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
                (((*store).value).store) = ((compiler_InsnStore){ .value = ret, .loc = (*addr) });
                compiler_push_insn(store, state);
                last_value = ret;
                (j += 1);
            }
            ;
        }  else {
            if ((j >= vector_length(left))) {
                return compiler_NO_VALUE;
            }  ;
            parser_Node *l = ((parser_Node *)vector_get(left, j));
            compiler_Value *addr = (compiler_walk_expression(l, state).addr);
            if ((!addr)) {
                typechecking_errorn(l, ((Array){41, "Can't assign, expression has no address\x0a"""}));
                return compiler_NO_VALUE;
            }  ;
            value = _87f75ce3_convert_to(n, value, ((*l).tpe), state);
            compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
            (((*store).value).store) = ((compiler_InsnStore){ .value = value, .loc = (*addr) });
            compiler_push_insn(store, state);
            last_value = value;
            (j += 1);
        };
    }
    ;
    return last_value;
};
 compiler_Value _87f75ce3_walk_AssignEq(parser_Node *node, compiler_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    parser_NodeKind kind;
    switch (((int)((*node).kind))) {
        break;
        case parser_NodeKind_PADD_EQ:
        kind = parser_NodeKind_PADD;
        break;
        case parser_NodeKind_PSUB_EQ:
        kind = parser_NodeKind_PSUB;
        break;
        case parser_NodeKind_ADD_EQ:
        kind = parser_NodeKind_ADD;
        break;
        case parser_NodeKind_SUB_EQ:
        kind = parser_NodeKind_SUB;
        break;
        case parser_NodeKind_MUL_EQ:
        kind = parser_NodeKind_MUL;
        break;
        case parser_NodeKind_DIV_EQ:
        kind = parser_NodeKind_DIV;
        break;
        case parser_NodeKind_MOD_EQ:
        kind = parser_NodeKind_MOD;
        break;
        case parser_NodeKind_AND_EQ:
        kind = parser_NodeKind_BAND;
        break;
        case parser_NodeKind_OR_EQ:
        kind = parser_NodeKind_BOR;
        break;
        case parser_NodeKind_XOR_EQ:
        kind = parser_NodeKind_BXOR;
        break;
        case parser_NodeKind_SHL_EQ:
        kind = parser_NodeKind_SHL;
        break;
        case parser_NodeKind_SHR_EQ:
        kind = parser_NodeKind_SHR;
        break;
        default:
        assert(false);
    }
    ;
    parser_Node *arithmetic = malloc((sizeof(parser_Node)));
    ((*arithmetic).kind) = kind;
    ((*arithmetic).loc) = ((*node).loc);
    ((*arithmetic).scope) = ((*node).scope);
    ((*arithmetic).tpe) = ((*node).tpe);
    (((*arithmetic).value).bin_op) = ((parser_NodeBinaryOp){ .left = left, .right = right });
    vector_Vector *left_vec = vector_make();
    vector_push(left_vec, left);
    vector_Vector *right_vec = vector_make();
    vector_push(right_vec, arithmetic);
    parser_Node *assign_eq_node = malloc((sizeof(parser_Node)));
    ((*assign_eq_node).kind) = parser_NodeKind_ASSIGN;
    ((*assign_eq_node).loc) = ((*node).loc);
    ((*assign_eq_node).scope) = ((*node).scope);
    (((*assign_eq_node).value).assign) = ((parser_NodeAssign){ .left = left_vec, .right = right_vec });
    return compiler_walk_expression(assign_eq_node, state);
};
 compiler_Value _87f75ce3_walk_Deref(parser_Node *node, compiler_State *state) {
    compiler_Value value = compiler_walk_expression((((*node).value).expr), state);
    typechecking_Type *tpe = (value.tpe);
    if ((!tpe)) {
        return compiler_NO_VALUE;
    }  ;
    compiler_Value *addr = malloc((sizeof(compiler_Value)));
    (*addr) = value;
    compiler_Value ret = compiler_make_local_value(((*tpe).tpe), addr, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = value });
    compiler_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Ptr(parser_Node *node, compiler_State *state) {
    compiler_Value value = compiler_walk_expression((((*node).value).expr), state);
    if ((!(value.addr))) {
        return compiler_NO_VALUE;
    }  ;
    return (*(value.addr));
};
 compiler_Value _87f75ce3_walk_MemberAccess_gep(parser_Node *node, typechecking_Type *tpe, compiler_Value value, Array index, compiler_State *state) {
    compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
    compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = (*(value.addr)), .index = index });
    compiler_push_insn(gep, state);
    compiler_Value *addr = malloc((sizeof(compiler_Value)));
    (*addr) = gep_ret;
    compiler_Value ret = compiler_make_local_value(((*node).tpe), addr, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
    compiler_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_MemberAccess(parser_Node *node, compiler_State *state) {
    if ((!((*node).tpe))) {
        return compiler_NO_VALUE;
    }  ;
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    compiler_Value value = compiler_walk_expression(left, state);
    if ((!(value.addr))) {
        typechecking_errorn(node, ((Array){52, "Can't use member access, expression has no address\x0a"""}));
        return compiler_NO_VALUE;
    }  ;
    typechecking_Type *tpe = ((*left).tpe);
    string name = typechecking_last_ident_to_str(right);
    if ((((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY)) {
        if ((strcmp((name.value), (((Array){5, "size"}).value)) == 0)) {
            compiler_Value i = compiler_make_int_value(((int)((*tpe).length)));
            (i.tpe) = builtins_size_t_;
            return i;
        } else if ((strcmp((name.value), (((Array){6, "value"}).value)) == 0)) {
            Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
            ((((compiler_Value *)index.value)[0]).tpe) = builtins_size_t_;
            (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
            ((((compiler_Value *)index.value)[1]).tpe) = builtins_size_t_;
            compiler_Value gep_ret = compiler_make_local_value(((*node).tpe), NULL, state);
            compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
            (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = (*(value.addr)), .index = index });
            compiler_push_insn(gep, state);
            return gep_ret;
        } else {
            assert(false);
        };
    } else if ((((*tpe).kind) == typechecking_TypeKind_ARRAY)) {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
        if ((strcmp((name.value), (((Array){5, "size"}).value)) == 0)) {
            (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
        } else if ((strcmp((name.value), (((Array){6, "value"}).value)) == 0)) {
            (((compiler_Value *)index.value)[1]) = compiler_make_int_value(1);
        } else {
            assert(false);
        };
        return _87f75ce3_walk_MemberAccess_gep(node, tpe, value, index, state);
    }
    else if ((((*tpe).kind) == typechecking_TypeKind_UNION)) {
        typechecking_StructMember member;
        for (int i = 0;(i < (((*tpe).fields).size));(i += 1)) {
            typechecking_StructMember m = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
            if ((strcmp(((m.name).value), (name.value)) == 0)) {
                member = m;
                break;
            }  ;
        }
        ;
        Array index = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
        (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
        (((compiler_Value *)index.value)[1]) = compiler_make_int_value(0);
        (((compiler_Value *)index.value)[2]) = compiler_make_int_value(0);
        compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(builtins_char_), NULL, state);
        compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
        (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = (*(value.addr)), .index = index });
        compiler_push_insn(gep, state);
        compiler_Value bitcast_ret = compiler_make_local_value(typechecking_pointer((member.tpe)), NULL, state);
        compiler_Insn *bitcast = compiler_make_insn(compiler_InsnKind_BITCAST);
        (((*bitcast).value).convert) = ((compiler_InsnConvert){ .ret = bitcast_ret, .value = gep_ret });
        compiler_push_insn(bitcast, state);
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = bitcast_ret;
        compiler_Value load_ret = compiler_make_local_value((member.tpe), addr, state);
        compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*load).value).load) = ((compiler_InsnLoad){ .value = load_ret, .loc = bitcast_ret });
        compiler_push_insn(load, state);
        return load_ret;
    } else {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
        bool found = false;
        for (int i = 0;(i < (((*tpe).fields).size));(i += 1)) {
            typechecking_StructMember member = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
            if ((strcmp(((member.name).value), (name.value)) == 0)) {
                (((compiler_Value *)index.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .sign = 1, .i = i, .tpe = builtins_int_ });
                found = true;
                break;
            }  ;
        }
        ;
        if ((!found)) {
            assert(false);
        }  ;
        return _87f75ce3_walk_MemberAccess_gep(node, tpe, value, index, state);
    };
};
 compiler_Value _87f75ce3_walk_ArraySubscript(parser_Node *node, compiler_State *state) {
    if ((!((*node).tpe))) {
        return compiler_NO_VALUE;
    }  ;
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    typechecking_Type *array_tpe = ((*left).tpe);
    compiler_Value left_value = compiler_walk_expression(left, state);
    compiler_Value right_value = compiler_walk_expression(right, state);
    if ((((*array_tpe).kind) == typechecking_TypeKind_ARRAY)) {
        Array index1 = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index1.value)[0]) = compiler_make_int_value(0);
        (((compiler_Value *)index1.value)[1]) = compiler_make_int_value(1);
        compiler_Value gep_ret1 = compiler_make_local_value(typechecking_pointer(typechecking_pointer(((*node).tpe))), NULL, state);
        compiler_Insn *gep1 = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
        (((*gep1).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret1, .tpe = array_tpe, .value = (*(left_value.addr)), .index = index1 });
        compiler_Value load1_value = compiler_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *load1 = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*load1).value).load) = ((compiler_InsnLoad){ .value = load1_value, .loc = gep_ret1 });
        Array index2 = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)index2.value)[0]) = right_value;
        compiler_Value gep_ret2 = compiler_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep2 = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
        (((*gep2).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret2, .tpe = ((*node).tpe), .value = load1_value, .index = index2 });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret2;
        compiler_Value ret = compiler_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load2 = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*load2).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret2 });
        compiler_push_insn(gep1, state);
        compiler_push_insn(load1, state);
        compiler_push_insn(gep2, state);
        compiler_push_insn(load2, state);
        return ret;
    } else if ((((*array_tpe).kind) == typechecking_TypeKind_STATIC_ARRAY)) {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = compiler_make_int_value(0);
        (((compiler_Value *)index.value)[1]) = right_value;
        compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
        (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = array_tpe, .value = (*(left_value.addr)), .index = index });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret;
        compiler_Value ret = compiler_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
        compiler_push_insn(gep, state);
        compiler_push_insn(load, state);
        return ret;
    }
    else if (typechecking_is_pointer(array_tpe)) {
        Array index = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)index.value)[0]) = right_value;
        compiler_Value gep_ret = compiler_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep = compiler_make_insn(compiler_InsnKind_GETELEMENTPTR);
        (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = ((*node).tpe), .value = left_value, .index = index });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret;
        compiler_Value ret = compiler_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
        (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
        compiler_push_insn(gep, state);
        compiler_push_insn(load, state);
        return ret;
    } else {
        assert(false);
    };
};
 compiler_Value _87f75ce3_walk_SizeOf(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!tpe)) {
        typechecking_errorn(node, ((Array){20, "Invalid expression\x0a"""}));
        return compiler_NO_VALUE;
    }  ;
    compiler_Value value = compiler_make_int_value(((int)((*tpe).size)));
    (value.tpe) = builtins_size_t_;
    return value;
};
 compiler_Value _87f75ce3_walk_AlignOf(parser_Node *node, compiler_State *state) {
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!tpe)) {
        typechecking_errorn(node, ((Array){20, "Invalid expression\x0a"""}));
        return compiler_NO_VALUE;
    }  ;
    compiler_Value value = compiler_make_int_value(((int)((*tpe).align)));
    (value.tpe) = builtins_size_t_;
    return value;
};
 compiler_Value _87f75ce3_compare(parser_Node *node, compiler_Value left, compiler_Value right, compiler_State *state) {
    typechecking_Type *tpe = NULL;
    if (typechecking_is_enum((left.tpe))) {
        (left.tpe) = ((*(left.tpe)).tpe);
    }  ;
    if (typechecking_is_enum((right.tpe))) {
        (right.tpe) = ((*(right.tpe)).tpe);
    }  ;
    if (typechecking_is_pointer((left.tpe))) {
        left = _87f75ce3_convert_to(node, left, builtins_size_t_, state);
    }  ;
    if (typechecking_is_pointer((right.tpe))) {
        right = _87f75ce3_convert_to(node, right, builtins_size_t_, state);
    }  ;
    if ((((*(left.tpe)).kind) == typechecking_TypeKind_NULL)) {
        left = compiler_make_int_value(0);
        (left.tpe) = builtins_size_t_;
    }  ;
    if ((((*(right.tpe)).kind) == typechecking_TypeKind_NULL)) {
        right = compiler_make_int_value(0);
        (right.tpe) = builtins_size_t_;
    }  ;
    if ((((bool)typechecking_is_arithmetic((left.tpe))) && ((bool)typechecking_is_arithmetic((right.tpe))))) {
        tpe = typechecking_common_type((left.tpe), (right.tpe));
        left = _87f75ce3_convert_to(node, left, tpe, state);
        right = _87f75ce3_convert_to(node, right, tpe, state);
        compiler_InsnKind kind;
        string op;
        if (typechecking_is_float(tpe)) {
            kind = compiler_InsnKind_FCMP;
            switch (((int)((*node).kind))) {
                break;
                case parser_NodeKind_EQ:
                op = compiler_f_ueq;
                break;
                case parser_NodeKind_NEQ:
                op = compiler_f_une;
                break;
                case parser_NodeKind_GT:
                op = compiler_f_ugt;
                break;
                case parser_NodeKind_LT:
                op = compiler_f_ult;
                break;
                case parser_NodeKind_GEQ:
                op = compiler_f_uge;
                break;
                case parser_NodeKind_LEQ:
                op = compiler_f_ule;
                break;
                default:
                assert(false);
            }
            ;
        }  else {
            kind = compiler_InsnKind_ICMP;
            if (((*tpe).unsig)) {
                switch (((int)((*node).kind))) {
                    break;
                    case parser_NodeKind_EQ:
                    op = compiler_i_eq;
                    break;
                    case parser_NodeKind_NEQ:
                    op = compiler_i_ne;
                    break;
                    case parser_NodeKind_GT:
                    op = compiler_i_ugt;
                    break;
                    case parser_NodeKind_LT:
                    op = compiler_i_ult;
                    break;
                    case parser_NodeKind_GEQ:
                    op = compiler_i_uge;
                    break;
                    case parser_NodeKind_LEQ:
                    op = compiler_i_ule;
                    break;
                    default:
                    assert(false);
                }
                ;
            }  else {
                switch (((int)((*node).kind))) {
                    break;
                    case parser_NodeKind_EQ:
                    op = compiler_i_eq;
                    break;
                    case parser_NodeKind_NEQ:
                    op = compiler_i_ne;
                    break;
                    case parser_NodeKind_GT:
                    op = compiler_i_sgt;
                    break;
                    case parser_NodeKind_LT:
                    op = compiler_i_slt;
                    break;
                    case parser_NodeKind_GEQ:
                    op = compiler_i_sge;
                    break;
                    case parser_NodeKind_LEQ:
                    op = compiler_i_sle;
                    break;
                    default:
                    assert(false);
                }
                ;
            };
        };
        compiler_Value ret = compiler_make_local_value(((*node).tpe), NULL, state);
        compiler_Insn *insn = compiler_make_insn(kind);
        (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = op, .ret = ret, .left = left, .right = right });
        compiler_push_insn(insn, state);
        return ret;
    } else if (typechecking_equals((left.tpe), (right.tpe))) {
        if (typechecking_equals((left.tpe), builtins_string_)) {
            map_put(((*((*state).module)).imported), ((Array){7, "strcmp"}), map_sentinel);
            Array args = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)args.value)[0]) = compiler_charp_str(left, state);
            (((compiler_Value *)args.value)[1]) = compiler_charp_str(right, state);
            compiler_Value call_ret = compiler_make_local_value(builtins_int_, NULL, state);
            compiler_Insn *call = compiler_make_insn(compiler_InsnKind_CALL);
            (((*call).value).call) = ((compiler_InsnCall){ .name = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = ((Array){7, "strcmp"}) }), .ret = call_ret, .args = args });
            compiler_push_insn(call, state);
            string op;
            switch (((int)((*node).kind))) {
                break;
                case parser_NodeKind_EQ:
                op = compiler_i_eq;
                break;
                case parser_NodeKind_NEQ:
                op = compiler_i_ne;
                break;
                case parser_NodeKind_GT:
                op = compiler_i_ugt;
                break;
                case parser_NodeKind_LT:
                op = compiler_i_ult;
                break;
                case parser_NodeKind_GEQ:
                op = compiler_i_uge;
                break;
                case parser_NodeKind_LEQ:
                op = compiler_i_ule;
                break;
                default:
                assert(false);
            }
            ;
            compiler_Value cmp_ret = compiler_make_local_value(builtins_bool_, NULL, state);
            compiler_Insn *cmp = compiler_make_insn(compiler_InsnKind_ICMP);
            (((*cmp).value).cmp) = ((compiler_InsnCmp){ .op = op, .ret = cmp_ret, .left = call_ret, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = builtins_int_, .i = 0, .sign = 1 }) });
            compiler_push_insn(cmp, state);
            return cmp_ret;
        }  ;
    } ;
    return compiler_NO_VALUE;
};
 compiler_Value _87f75ce3_walk_ComparisionOp(parser_Node *node, compiler_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return compiler_NO_VALUE;
    }  ;
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return compiler_NO_VALUE;
    }  ;
    if (((((*left).kind) >= parser_NodeKind_EQ) && (((*left).kind) <= parser_NodeKind_LEQ))) {
        compiler_Value value_left = compiler_walk_expression(left, state);
        compiler_Value value_leftc = compiler_walk_expression(((((*left).value).bin_op).right), state);
        compiler_Value value_rightc = compiler_walk_expression(right, state);
        compiler_Value value = _87f75ce3_compare(node, value_leftc, value_rightc, state);
        compiler_Value ret = compiler_make_local_value(builtins_bool_, NULL, state);
        compiler_Insn *insn_and = compiler_make_insn(compiler_InsnKind_AND);
        (((*insn_and).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = value_left, .right = value });
        compiler_push_insn(insn_and, state);
        return ret;
    }  else {
        compiler_Value value_left = compiler_walk_expression(left, state);
        compiler_Value value_right = compiler_walk_expression(right, state);
        return _87f75ce3_compare(node, value_left, value_right, state);
    };
};
 compiler_Value _87f75ce3_walk_PointerOp(parser_Node *node, compiler_InsnKind kind, compiler_State *state) {
    compiler_Value value_left = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).left), state), builtins_size_t_, state);
    compiler_Value value_right = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).bin_op).right), state), builtins_size_t_, state);
    compiler_Value ret_arith = compiler_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *arith = compiler_make_insn(kind);
    (((*arith).value).arith) = ((compiler_InsnArithmetic){ .ret = ret_arith, .left = value_left, .right = value_right });
    compiler_push_insn(arith, state);
    compiler_Value ret_inttoptr = compiler_make_local_value(((*node).tpe), NULL, state);
    compiler_Insn *inttoptr = compiler_make_insn(compiler_InsnKind_INTTOPTR);
    (((*inttoptr).value).convert) = ((compiler_InsnConvert){ .ret = ret_inttoptr, .value = ret_arith });
    compiler_push_insn(inttoptr, state);
    return ret_inttoptr;
};
DLL_EXPORT compiler_Value compiler_walk_expression(parser_Node *node, compiler_State *state) {
    if ((!node)) {
        return compiler_NO_VALUE;
    }  ;
    switch (((int)((*node).kind))) {
        break;
        case parser_NodeKind_NULL:
        return _87f75ce3_walk_Null(node, state);
        break;
        case parser_NodeKind_IDENTIFIER:
        return _87f75ce3_walk_Identifier(node, state);
        break;
        case parser_NodeKind_INTEGER:
        return _87f75ce3_walk_Integer(node, state);
        break;
        case parser_NodeKind_FLOAT:
        return _87f75ce3_walk_Float(node, state);
        break;
        case parser_NodeKind_BOOLEAN:
        return _87f75ce3_walk_Boolean(node, state);
        break;
        case parser_NodeKind_CHAR:
        return _87f75ce3_walk_Char(node, state);
        break;
        case parser_NodeKind_STRING:
        return _87f75ce3_walk_String(node, state);
        break;
        case parser_NodeKind_SIZE_OF:
        return _87f75ce3_walk_SizeOf(node, state);
        break;
        case parser_NodeKind_ALIGN_OF:
        return _87f75ce3_walk_AlignOf(node, state);
        break;
        case parser_NodeKind_CAST:
        return _87f75ce3_walk_Cast(node, state);
        break;
        case parser_NodeKind_USUB:
        return _87f75ce3_walk_USub(node, state);
        break;
        case parser_NodeKind_UADD:
        return _87f75ce3_walk_UAdd(node, state);
        break;
        case parser_NodeKind_NOT:
        return _87f75ce3_walk_Not(node, state);
        break;
        case parser_NodeKind_AND:
        return _87f75ce3_walk_And(node, state);
        break;
        case parser_NodeKind_OR:
        return _87f75ce3_walk_Or(node, state);
        break;
        case parser_NodeKind_ADD:
        return _87f75ce3_walk_Add(node, state);
        break;
        case parser_NodeKind_SUB:
        return _87f75ce3_walk_Sub(node, state);
        break;
        case parser_NodeKind_MUL:
        return _87f75ce3_walk_Mul(node, state);
        break;
        case parser_NodeKind_MOD:
        return _87f75ce3_walk_Mod(node, state);
        break;
        case parser_NodeKind_DIV:
        return _87f75ce3_walk_Div(node, state);
        break;
        case parser_NodeKind_SHL:
        return _87f75ce3_walk_Shl(node, state);
        break;
        case parser_NodeKind_SHR:
        return _87f75ce3_walk_Shr(node, state);
        break;
        case parser_NodeKind_BAND:
        return _87f75ce3_walk_BAnd(node, state);
        break;
        case parser_NodeKind_BOR:
        return _87f75ce3_walk_BOr(node, state);
        break;
        case parser_NodeKind_BXOR:
        return _87f75ce3_walk_BXor(node, state);
        break;
        case parser_NodeKind_PADD:
        return _87f75ce3_walk_PointerOp(node, compiler_InsnKind_ADD, state);
        break;
        case parser_NodeKind_PSUB:
        return _87f75ce3_walk_PointerOp(node, compiler_InsnKind_SUB, state);
        break;
        case parser_NodeKind_EQ ... parser_NodeKind_LEQ:
        return _87f75ce3_walk_ComparisionOp(node, state);
        break;
        case parser_NodeKind_FUNC_CALL:
        return _87f75ce3_walk_Call(node, state);
        break;
        case parser_NodeKind_ASSIGN:
        return _87f75ce3_walk_Assign(node, state);
        break;
        case parser_NodeKind_PADD_EQ ... parser_NodeKind_SHR_EQ:
        return _87f75ce3_walk_AssignEq(node, state);
        break;
        case parser_NodeKind_DEREF:
        return _87f75ce3_walk_Deref(node, state);
        break;
        case parser_NodeKind_PTR:
        return _87f75ce3_walk_Ptr(node, state);
        break;
        case parser_NodeKind_MEMBER_ACCESS:
        return _87f75ce3_walk_MemberAccess(node, state);
        break;
        case parser_NodeKind_ARRAY_SUBSCRIPT:
        return _87f75ce3_walk_ArraySubscript(node, state);
        break;
        case parser_NodeKind_STRUCT_LIT:
        return _87f75ce3_walk_StructLit(node, state);
        break;
        case parser_NodeKind_ARRAY_LIT:
        return _87f75ce3_walk_ArrayLit(node, state);
        break;
        case parser_NodeKind_PTR_T:
        return ((compiler_Value){ .kind = compiler_ValueKind_TYPE, .tpe = typechecking_type_, .value_tpe = typechecking_pointer((compiler_walk_expression(((((*node).value).t_parr).tpe), state).value_tpe)) });
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*node).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
};
 void _87f75ce3_walk_If(parser_Node *node, compiler_State *state) {
    compiler_Value cond = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).if_).cond), state), builtins_bool_, state);
    compiler_Label entry_label = compiler_make_label(state);
    compiler_Insn *entry = compiler_make_insn(compiler_InsnKind_BR);
    (((*entry).value).br) = ((compiler_InsnBr){ .cond = cond, .if_true = entry_label });
    compiler_Insn *exit = compiler_make_insn(compiler_InsnKind_BR_UNC);
    compiler_push_insn(entry, state);
    compiler_push_label(entry_label, state);
    for (int i = 0;(i < vector_length(((((*node).value).if_).body)));(i += 1)) {
        parser_Node *stmt = ((parser_Node *)vector_get(((((*node).value).if_).body), i));
        compiler_walk(stmt, state);
    }
    ;
    compiler_push_insn(exit, state);
    for (int i = 0;(i < vector_length(((((*node).value).if_).else_if)));(i += 1)) {
        compiler_Label br_label = compiler_make_label(state);
        ((((*entry).value).br).if_false) = br_label;
        compiler_push_label(br_label, state);
        parser_Node *else_if = ((parser_Node *)vector_get(((((*node).value).if_).else_if), i));
        compiler_Value cond = compiler_walk_expression(((((*else_if).value).else_if).cond), state);
        entry = compiler_make_insn(compiler_InsnKind_BR);
        (((*entry).value).br) = ((compiler_InsnBr){ .cond = cond });
        compiler_push_insn(entry, state);
        compiler_Label entry_label = compiler_make_label(state);
        ((((*entry).value).br).if_true) = entry_label;
        compiler_push_label(entry_label, state);
        for (int i = 0;(i < vector_length(((((*else_if).value).else_if).body)));(i += 1)) {
            parser_Node *stmt = ((parser_Node *)vector_get(((((*else_if).value).else_if).body), i));
            compiler_walk(stmt, state);
        }
        ;
        compiler_push_insn(exit, state);
    }
    ;
    parser_Node *else_ = ((((*node).value).if_).else_);
    if (else_) {
        compiler_Label entry_label = compiler_make_label(state);
        ((((*entry).value).br).if_false) = entry_label;
        compiler_push_label(entry_label, state);
        for (int i = 0;(i < vector_length((((*else_).value).body)));(i += 1)) {
            parser_Node *stmt = ((parser_Node *)vector_get((((*else_).value).body), i));
            compiler_walk(stmt, state);
        }
        ;
        compiler_push_insn(exit, state);
    }  ;
    compiler_Label exit_label = compiler_make_label(state);
    if ((!else_)) {
        ((((*entry).value).br).if_false) = exit_label;
    }  ;
    ((((*exit).value).br_unc).label_) = exit_label;
    compiler_push_label(exit_label, state);
};
int _87f75ce3_max_cases;
 void _87f75ce3_walk_Switch(parser_Node *node, compiler_State *state) {
    compiler_Value swexpr = compiler_walk_expression(((((*node).value).switch_).expr), state);
    typechecking_Type *tpe = ((*((((*node).value).switch_).expr)).tpe);
    vector_Vector *switch_values = vector_make();
    compiler_Insn *swtch = compiler_make_insn(compiler_InsnKind_SWITCH);
    (((*swtch).value).switch_) = ((compiler_InsnSwitch){ .value = swexpr, .switch_values = switch_values });
    compiler_push_insn(swtch, state);
    compiler_Insn *end = compiler_make_insn(compiler_InsnKind_BR_UNC);
    parser_Node *otherwise = NULL;
    vector_Vector *if_stmts = vector_make();
    for (int i = 0;(i < vector_length(((((*node).value).switch_).body)));(i += 1)) {
        parser_Node *cse = ((parser_Node *)vector_get(((((*node).value).switch_).body), i));
        size_t len = vector_length(((((*cse).value).case_).expr));
        if ((len == 0)) {
            if (otherwise) {
                typechecking_errorn(cse, ((Array){28, "More than one default case\x0a"""}));
                return ;
            }  else {
                otherwise = cse;
            };
        }  else {
            bool out_of_bounds = false;
            for (int j = 0;(j < len);(j += 1)) {
                parser_Node *expr = ((parser_Node *)vector_get(((((*cse).value).case_).expr), j));
                if (((((*expr).kind) == parser_NodeKind_RANGE) || (((*expr).kind) == parser_NodeKind_RANGE_INC))) {
                    parser_Node *left = ((((*expr).value).bin_op).left);
                    parser_Node *right = ((((*expr).value).bin_op).right);
                    uint64 min = (*((uint64 *)typechecking_evaluate_constant(left)));
                    uint64 max = (*((uint64 *)typechecking_evaluate_constant(right)));
                    if (((max >= min) && ((max - min) > _87f75ce3_max_cases))) {
                        vector_push(if_stmts, cse);
                        out_of_bounds = true;
                        break;
                    }  ;
                }  ;
            }
            ;
            if ((!out_of_bounds)) {
                compiler_Label start = compiler_make_label(state);
                compiler_push_label(start, state);
                for (int j = 0;(j < len);(j += 1)) {
                    parser_Node *expr = ((parser_Node *)vector_get(((((*cse).value).case_).expr), j));
                    if (((((*expr).kind) == parser_NodeKind_RANGE) || (((*expr).kind) == parser_NodeKind_RANGE_INC))) {
                        parser_Node *left = ((((*expr).value).bin_op).left);
                        parser_Node *right = ((((*expr).value).bin_op).right);
                        uint64 min = (*((uint64 *)typechecking_evaluate_constant(left)));
                        uint64 max = (*((uint64 *)typechecking_evaluate_constant(right)));
                        if ((max >= min)) {
                            if ((((*expr).kind) == parser_NodeKind_RANGE_INC)) {
                                (max += 1);
                            }  ;
                            for (uint64 k = min;(k < max);(k += 1)) {
                                compiler_SwitchValue *svalue = malloc((sizeof(compiler_SwitchValue)));
                                ((*svalue).label_) = start;
                                ((*svalue).value) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = k, .sign = 1, .tpe = tpe });
                                vector_push(switch_values, svalue);
                            }
                            ;
                        }  else {
                            typechecking_errorn(expr, ((Array){15, "Invalid range\x0a"""}));
                            return ;
                        };
                    }  else {
                        uint64 value = (*((uint64 *)typechecking_evaluate_constant(expr)));
                        compiler_SwitchValue *svalue = malloc((sizeof(compiler_SwitchValue)));
                        ((*svalue).label_) = start;
                        ((*svalue).value) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = value, .sign = 1, .tpe = tpe });
                        vector_push(switch_values, svalue);
                    };
                }
                ;
                for (int j = 0;(j < vector_length(((((*cse).value).case_).body)));(j += 1)) {
                    parser_Node *expr = ((parser_Node *)vector_get(((((*cse).value).case_).body), j));
                    compiler_walk(expr, state);
                }
                ;
                compiler_push_insn(end, state);
            }  ;
        };
    }
    ;
    compiler_Label olabel = compiler_make_label(state);
    compiler_push_label(olabel, state);
    for (int i = 0;(i < vector_length(if_stmts));(i += 1)) {
        parser_Node *cse = ((parser_Node *)vector_get(if_stmts, i));
        size_t len = vector_length(((((*cse).value).case_).expr));
        vector_Vector *brs = vector_make();
        compiler_Insn *last = NULL;
        for (int j = 0;(j < len);(j += 1)) {
            if (last) {
                compiler_Label lbl = compiler_make_label(state);
                compiler_push_label(lbl, state);
                ((((*last).value).br).if_false) = lbl;
            }  ;
            parser_Node *expr = ((parser_Node *)vector_get(((((*cse).value).case_).expr), j));
            if (((((*expr).kind) == parser_NodeKind_RANGE) || (((*expr).kind) == parser_NodeKind_RANGE_INC))) {
                parser_Node *left = ((((*expr).value).bin_op).left);
                parser_Node *right = ((((*expr).value).bin_op).right);
                uint64 min = (*((uint64 *)typechecking_evaluate_constant(left)));
                uint64 max = (*((uint64 *)typechecking_evaluate_constant(right)));
                if ((max < min)) {
                    typechecking_errorn(expr, ((Array){15, "Invalid range\x0a"""}));
                    return ;
                }  ;
                compiler_Value sub_ret = compiler_make_local_value(tpe, NULL, state);
                compiler_Insn *sub = compiler_make_insn(compiler_InsnKind_SUB);
                (((*sub).value).arith) = ((compiler_InsnArithmetic){ .ret = sub_ret, .left = swexpr, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = min, .sign = 1, .tpe = tpe }) });
                compiler_push_insn(sub, state);
                Array op = compiler_i_ule;
                if ((((*expr).kind) == parser_NodeKind_RANGE)) {
                    op = compiler_i_ult;
                }  ;
                compiler_Value cmp_ret = compiler_make_local_value(builtins_bool_, NULL, state);
                compiler_Insn *cmp = compiler_make_insn(compiler_InsnKind_ICMP);
                (((*cmp).value).cmp) = ((compiler_InsnCmp){ .op = op, .ret = cmp_ret, .left = sub_ret, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (max - min), .sign = 1, .tpe = tpe }) });
                compiler_push_insn(cmp, state);
                compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
                (((*br).value).br) = ((compiler_InsnBr){ .cond = cmp_ret });
                compiler_push_insn(br, state);
                last = br;
                vector_push(brs, br);
            }  else {
                uint64 value = (*((uint64 *)typechecking_evaluate_constant(expr)));
                compiler_Value cmp_ret = compiler_make_local_value(builtins_bool_, NULL, state);
                compiler_Insn *cmp = compiler_make_insn(compiler_InsnKind_ICMP);
                (((*cmp).value).cmp) = ((compiler_InsnCmp){ .op = compiler_i_eq, .ret = cmp_ret, .left = swexpr, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = value, .sign = 1, .tpe = tpe }) });
                compiler_push_insn(cmp, state);
                compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
                (((*br).value).br) = ((compiler_InsnBr){ .cond = cmp_ret });
                compiler_push_insn(br, state);
                last = br;
                vector_push(brs, br);
            };
        }
        ;
        compiler_Label lbl = compiler_make_label(state);
        compiler_push_label(lbl, state);
        for (int i = 0;(i < vector_length(brs));(i += 1)) {
            compiler_Insn *br = ((compiler_Insn *)vector_get(brs, i));
            ((((*br).value).br).if_true) = lbl;
        }
        ;
        for (int j = 0;(j < vector_length(((((*cse).value).case_).body)));(j += 1)) {
            parser_Node *expr = ((parser_Node *)vector_get(((((*cse).value).case_).body), j));
            compiler_walk(expr, state);
        }
        ;
        compiler_push_insn(end, state);
        if (last) {
            compiler_Label lbl = compiler_make_label(state);
            compiler_push_label(lbl, state);
            ((((*last).value).br).if_false) = lbl;
        }  ;
    }
    ;
    if (otherwise) {
        for (int i = 0;(i < vector_length(((((*otherwise).value).case_).body)));(i += 1)) {
            parser_Node *expr = ((parser_Node *)vector_get(((((*otherwise).value).case_).body), i));
            compiler_walk(expr, state);
        }
        ;
    }  ;
    compiler_push_insn(end, state);
    ((((*swtch).value).switch_).otherwise) = olabel;
    compiler_Label end_label = compiler_make_label(state);
    compiler_push_label(end_label, state);
    ((((*end).value).br_unc).label_) = end_label;
};
 void _87f75ce3_walk_Return(parser_Node *node, compiler_State *state) {
    compiler_Function *current_function = ((*state).current_function);
    if ((!current_function)) {
        return ;
    }  ;
    compiler_Value value = compiler_NO_VALUE;
    if (((*current_function).multiple_returns)) {
        Array ret_args = ((Array){vector_length((((*node).value).body)), malloc(((sizeof(compiler_Value)) * ((size_t)vector_length((((*node).value).body)))))});
        for (int i = 0;(i < (ret_args.size));(i += 1)) {
            parser_Node *n = ((parser_Node *)vector_get((((*node).value).body), i));
            typechecking_Type *tpe = ((((typechecking_StructMember *)((*((*current_function).ret)).fields).value)[i]).tpe);
            (((compiler_Value *)ret_args.value)[i]) = _87f75ce3_convert_to(n, compiler_walk_expression(n, state), tpe, state);
        }
        ;
        value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = ret_args, .tpe = ((*current_function).ret) });
    }  else {
        typechecking_Type *tpe = ((*current_function).ret);
        if (tpe) {
            parser_Node *arg = ((parser_Node *)vector_peek((((*node).value).body)));
            value = _87f75ce3_convert_to(arg, compiler_walk_expression(arg, state), tpe, state);
        }  ;
    };
    compiler_Insn *ret = compiler_make_insn(compiler_InsnKind_RET);
    ((((*ret).value).ret).value) = value;
    compiler_push_insn(ret, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Break(parser_Node *node, compiler_State *state) {
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    if ((!break_insn)) {
        typechecking_errorn(node, ((Array){30, "break used outside of a loop\x0a"""}));
        return ;
    }  ;
    compiler_push_insn(break_insn, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Continue(parser_Node *node, compiler_State *state) {
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    if ((!continue_insn)) {
        typechecking_errorn(node, ((Array){33, "continue used outside of a loop\x0a"""}));
        return ;
    }  ;
    compiler_push_insn(continue_insn, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Loop(parser_Node *node, compiler_State *state) {
    _87f75ce3_push_loop_state(state);
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    compiler_push_insn(continue_insn, state);
    compiler_Label start_label = compiler_make_label(state);
    compiler_push_label(start_label, state);
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get((((*node).value).body), i));
        compiler_walk(n, state);
    }
    ;
    compiler_push_insn(continue_insn, state);
    compiler_Label end_label = compiler_make_label(state);
    compiler_push_label(end_label, state);
    ((((*continue_insn).value).br_unc).label_) = start_label;
    ((((*break_insn).value).br_unc).label_) = end_label;
    _87f75ce3_pop_loop_state(state);
};
 void _87f75ce3_walk_While(parser_Node *node, compiler_State *state) {
    _87f75ce3_push_loop_state(state);
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    compiler_push_insn(continue_insn, state);
    compiler_Label start_label = compiler_make_label(state);
    compiler_push_label(start_label, state);
    compiler_Value cond = _87f75ce3_convert_to(node, compiler_walk_expression(((((*node).value).while_loop).expr), state), builtins_bool_, state);
    compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
    (((*br).value).br) = ((compiler_InsnBr){ .cond = cond });
    compiler_push_insn(br, state);
    compiler_Label inner = compiler_make_label(state);
    compiler_push_label(inner, state);
    ((((*br).value).br).if_true) = inner;
    for (int i = 0;(i < vector_length(((((*node).value).while_loop).body)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).while_loop).body), i));
        compiler_walk(n, state);
    }
    ;
    compiler_push_insn(continue_insn, state);
    compiler_Label end_label = compiler_make_label(state);
    compiler_push_label(end_label, state);
    ((((*br).value).br).if_false) = end_label;
    ((((*continue_insn).value).br_unc).label_) = start_label;
    ((((*break_insn).value).br_unc).label_) = end_label;
    _87f75ce3_pop_loop_state(state);
};
 void _87f75ce3_walk_For(parser_Node *node, compiler_State *state) {
    parser_Node *range = ((((*node).value).for_loop).expr);
    assert(((((*range).kind) == parser_NodeKind_RANGE) || (((*range).kind) == parser_NodeKind_RANGE_INC)));
    Array op = compiler_i_slt;
    if ((((*range).kind) == parser_NodeKind_RANGE_INC)) {
        op = compiler_i_sle;
    }  ;
    parser_Node *iddecl = ((((*node).value).for_loop).iddecl);
    typechecking_Type *tpe = ((*iddecl).tpe);
    parser_Node *left = ((((*range).value).bin_op).left);
    parser_Node *right = ((((*range).value).bin_op).right);
    compiler_Value startv = _87f75ce3_convert_to(left, compiler_walk_expression(((((*range).value).bin_op).left), state), tpe, state);
    compiler_Value endv = _87f75ce3_convert_to(right, compiler_walk_expression(right, state), tpe, state);
    compiler_Value loc;
    if ((((*iddecl).kind) == parser_NodeKind_FOR_ID_DECL)) {
        scope_Value *value = scope_get(((*iddecl).scope), ((((*iddecl).value).for_id_decl).ident));
        if ((!value)) {
            return ;
        }  ;
        compiler_Value ret = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = ((*value).assembly_name), .tpe = tpe });
        compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
        (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ret });
        compiler_push_insn(alloca, state);
        (ret.tpe) = typechecking_pointer(tpe);
        _87f75ce3_push_declare(((((*iddecl).value).for_id_decl).ident), ret, ((*value).name), state);
        loc = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = ((*value).assembly_name), .tpe = typechecking_pointer(tpe) });
    }  else {
        compiler_Value *addr = (compiler_walk_expression(iddecl, state).addr);
        if ((!addr)) {
            return ;
        }  ;
        loc = (*addr);
    };
    compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store).value).store) = ((compiler_InsnStore){ .loc = loc, .value = startv });
    compiler_push_insn(store, state);
    _87f75ce3_push_loop_state(state);
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    compiler_Insn *start_insn = compiler_make_insn(compiler_InsnKind_BR_UNC);
    compiler_push_insn(start_insn, state);
    compiler_Label start_label = compiler_make_label(state);
    compiler_push_label(start_label, state);
    compiler_Value load_ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *load = compiler_make_insn(compiler_InsnKind_LOAD);
    (((*load).value).load) = ((compiler_InsnLoad){ .value = load_ret, .loc = loc });
    compiler_push_insn(load, state);
    typechecking_Type *tpe2 = typechecking_common_type((load_ret.tpe), (endv.tpe));
    compiler_Value left2 = _87f75ce3_convert_to(node, load_ret, tpe2, state);
    compiler_Value right2 = _87f75ce3_convert_to(node, endv, tpe2, state);
    compiler_Value cmp_ret = compiler_make_local_value(builtins_bool_, NULL, state);
    compiler_Insn *cmp = compiler_make_insn(compiler_InsnKind_ICMP);
    (((*cmp).value).cmp) = ((compiler_InsnCmp){ .op = op, .ret = cmp_ret, .left = left2, .right = right2 });
    compiler_push_insn(cmp, state);
    compiler_Insn *br = compiler_make_insn(compiler_InsnKind_BR);
    (((*br).value).br) = ((compiler_InsnBr){ .cond = cmp_ret });
    compiler_push_insn(br, state);
    compiler_Label inner = compiler_make_label(state);
    compiler_push_label(inner, state);
    ((((*br).value).br).if_true) = inner;
    for (int i = 0;(i < vector_length(((((*node).value).for_loop).body)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).for_loop).body), i));
        compiler_walk(n, state);
    }
    ;
    compiler_push_insn(continue_insn, state);
    compiler_Label inc_label = compiler_make_label(state);
    compiler_push_label(inc_label, state);
    compiler_Value add_ret = compiler_make_local_value(builtins_int_, NULL, state);
    compiler_Insn *add = compiler_make_insn(compiler_InsnKind_ADD);
    (((*add).value).arith) = ((compiler_InsnArithmetic){ .ret = add_ret, .left = load_ret, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = 1, .tpe = builtins_int_ }) });
    compiler_push_insn(add, state);
    compiler_Insn *store2 = compiler_make_insn(compiler_InsnKind_STORE);
    (((*store2).value).store) = ((compiler_InsnStore){ .loc = loc, .value = add_ret });
    compiler_push_insn(store2, state);
    compiler_push_insn(start_insn, state);
    compiler_Label end_label = compiler_make_label(state);
    compiler_push_label(end_label, state);
    ((((*br).value).br).if_false) = end_label;
    ((((*start_insn).value).br_unc).label_) = start_label;
    ((((*continue_insn).value).br_unc).label_) = inc_label;
    ((((*break_insn).value).br_unc).label_) = end_label;
    _87f75ce3_pop_loop_state(state);
};
 void _87f75ce3_walk_VarDecl(parser_Node *node, compiler_State *state) {
    vector_Vector *left = ((((*node).value).var_decl).left);
    vector_Vector *right = ((((*node).value).var_decl).right);
    vector_Vector *assign_left = vector_make();
    for (int i = 0;(i < vector_length(left));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(left, i));
        if ((((*n).kind) == parser_NodeKind_ID_DECL)) {
            parser_Node *v = ((((*n).value).id_decl).value);
            typechecking_Type *tpe = ((*v).tpe);
            scope_Value *value = scope_get(((*node).scope), v);
            if ((!value)) {
                continue;
            }  ;
            string name = ((*value).assembly_name);
            compiler_Value ret = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = tpe });
            compiler_Insn *insn = compiler_make_insn(compiler_InsnKind_ALLOCA);
            (((*insn).value).alloca) = ((compiler_InsnAlloca){ .ret = ret });
            compiler_push_insn(insn, state);
            (ret.tpe) = typechecking_pointer(tpe);
            _87f75ce3_push_declare(v, ret, ((*value).name), state);
            vector_push(assign_left, v);
        }  else {
            vector_push(assign_left, (((*n).value).expr));
        };
    }
    ;
    if ((vector_length(right) > 0)) {
        parser_Node *assign = malloc((sizeof(parser_Node)));
        ((*assign).kind) = parser_NodeKind_ASSIGN;
        ((*assign).loc) = ((*node).loc);
        ((*assign).scope) = ((*node).scope);
        (((*assign).value).assign) = ((parser_NodeAssign){ .left = assign_left, .right = right });
        _87f75ce3_walk_Assign(assign, state);
    }  ;
};
DLL_EXPORT void compiler_walk(parser_Node *node, compiler_State *state) {
    if ((!node)) {
        return ;
    }  ;
    switch (((int)((*node).kind))) {
        break;
        case parser_NodeKind_VAR_DECL:
        _87f75ce3_walk_VarDecl(node, state);
        break;
        case parser_NodeKind_RETURN:
        _87f75ce3_walk_Return(node, state);
        break;
        case parser_NodeKind_BREAK:
        _87f75ce3_walk_Break(node, state);
        break;
        case parser_NodeKind_CONTINUE:
        _87f75ce3_walk_Continue(node, state);
        break;
        case parser_NodeKind_IF:
        _87f75ce3_walk_If(node, state);
        break;
        case parser_NodeKind_SWITCH:
        _87f75ce3_walk_Switch(node, state);
        break;
        case parser_NodeKind_LOOP:
        _87f75ce3_walk_Loop(node, state);
        break;
        case parser_NodeKind_WHILE:
        _87f75ce3_walk_While(node, state);
        break;
        case parser_NodeKind_FOR:
        _87f75ce3_walk_For(node, state);
        break;
        default:
        compiler_walk_expression(node, state);
    }
    ;
};
 compiler_Value * _87f75ce3_di_basic_type(typechecking_Type *tpe, string name, string c, compiler_State *state) {
    Array debug_values = ((Array){4, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)4)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = name }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)((*tpe).size)) * ((int64)8)) }) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){6, "align"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)((*tpe).align)) * ((int64)8)) }) });
    (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){9, "encoding"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = c }) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){12, "DIBasicType"}), .debug_values = debug_values });
    return di;
};
 compiler_Value * _87f75ce3_di_composite_type(compiler_Value *value, typechecking_Type *tpe, string name, string c, compiler_State *state) {
    Array elementsarr = ((Array){(((*tpe).fields).size), malloc(((sizeof(compiler_Value)) * (((*tpe).fields).size)))});
    for (int i = 0;(i < (((*tpe).fields).size));(i += 1)) {
        typechecking_StructMember elem = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
        Array debug_values = ((Array){8, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)8)))});
        (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "tag"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){14, "DW_TAG_member"}) }) });
        (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = (elem.name) }) });
        (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){6, "scope"}), .value = _87f75ce3_meta_to_debug_value(value) });
        (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
        (((compiler_DebugParam *)debug_values.value)[4]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = ((elem.line) + ((int)1)) }) });
        (((compiler_DebugParam *)debug_values.value)[5]) = ((compiler_DebugParam){ .name = ((Array){9, "baseType"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_type((elem.tpe), state)) });
        (((compiler_DebugParam *)debug_values.value)[6]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)((*(elem.tpe)).size)) * ((int64)8)) }) });
        (((compiler_DebugParam *)debug_values.value)[7]) = ((compiler_DebugParam){ .name = ((Array){7, "offset"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)(elem.offset)) * ((int64)8)) }) });
        compiler_Value *di = malloc((sizeof(compiler_Value)));
        (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){14, "DIDerivedType"}), .debug_values = debug_values });
        (((compiler_Value *)elementsarr.value)[i]) = (*_87f75ce3_push_meta(di, state));
    }
    ;
    compiler_Value *elements = malloc((sizeof(compiler_Value)));
    (*elements) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = elementsarr });
    compiler_Value *elementsp = _87f75ce3_push_meta(elements, state);
    Array debug_values = ((Array){6, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)6)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "tag"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = c }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((*tpe).line) + ((int)1)) }) });
    (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)((*tpe).size)) * ((int64)8)) }) });
    (((compiler_DebugParam *)debug_values.value)[4]) = ((compiler_DebugParam){ .name = ((Array){9, "elements"}), .value = _87f75ce3_meta_to_debug_value(elementsp) });
    (((compiler_DebugParam *)debug_values.value)[5]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = name }) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){16, "DICompositeType"}), .debug_values = debug_values });
    return di;
};
 compiler_Value * _87f75ce3_di_subroutine_type(typechecking_Type *tpe, compiler_State *state) {
    Array values = ((Array){(((int64)vector_length(((*tpe).parameter_t))) + ((int64)1)), malloc((((int64)(sizeof(compiler_Value))) * (((int64)vector_length(((*tpe).parameter_t))) + ((int64)1))))});
    typechecking_Type *ret_tpe = NULL;
    if ((vector_length(((*tpe).return_t)) > 1)) {
        ret_tpe = _87f75ce3_make_return_type(tpe);
    } else if ((vector_length(((*tpe).return_t)) == 1)) {
        ret_tpe = ((typechecking_Type *)vector_get(((*tpe).return_t), 0));
    } ;
    if (ret_tpe) {
        (((compiler_Value *)values.value)[0]) = (*_87f75ce3_di_type(ret_tpe, state));
    }  else {
        (((compiler_Value *)values.value)[0]) = compiler_NO_VALUE;
    };
    for (int i = 0;(i < vector_length(((*tpe).parameter_t)));(i += 1)) {
        typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
        (((compiler_Value *)values.value)[(i + 1)]) = (*_87f75ce3_di_type(((*np).value), state));
    }
    ;
    compiler_Value *types = malloc((sizeof(compiler_Value)));
    (*types) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values });
    compiler_Value *typesp = _87f75ce3_push_meta(types, state);
    Array debug_values = ((Array){1, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)1)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){6, "types"}), .value = _87f75ce3_meta_to_debug_value(typesp) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){17, "DISubroutineType"}), .debug_values = debug_values });
    return _87f75ce3_push_meta(di, state);
};
 compiler_Value * _87f75ce3_di_function_type(typechecking_Type *tpe, compiler_State *state) {
    compiler_Value *diftpe = _87f75ce3_di_subroutine_type(tpe, state);
    Array debug_values = ((Array){3, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)3)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "tag"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){20, "DW_TAG_pointer_type"}) }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){9, "baseType"}), .value = _87f75ce3_meta_to_debug_value(diftpe) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)(sizeof(void (*)()))) * ((int64)8)) }) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){14, "DIDerivedType"}), .debug_values = debug_values });
    return di;
};
 compiler_Value * _87f75ce3_di_pointer_type(typechecking_Type *tpe, compiler_State *state) {
    Array debug_values = ((Array){3, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)3)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "tag"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){20, "DW_TAG_pointer_type"}) }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){9, "baseType"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_type(((*tpe).tpe), state)) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)(sizeof(void *))) * ((int64)8)) }) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){14, "DIDerivedType"}), .debug_values = debug_values });
    return di;
};
 compiler_Value * _87f75ce3_di_static_array_type(typechecking_Type *tpe, compiler_State *state) {
    Array debug_values1 = ((Array){1, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)1)))});
    (((compiler_DebugParam *)debug_values1.value)[0]) = ((compiler_DebugParam){ .name = ((Array){6, "count"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = ((*tpe).length) }) });
    compiler_Value *value = malloc((sizeof(compiler_Value)));
    (*value) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){11, "DISubrange"}), .debug_values = debug_values1 });
    Array values = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
    (((compiler_Value *)values.value)[0]) = (*_87f75ce3_push_meta(value, state));
    compiler_Value *elements = malloc((sizeof(compiler_Value)));
    (*elements) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values });
    Array debug_values = ((Array){4, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)4)))});
    (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "tag"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){18, "DW_TAG_array_type"}) }) });
    (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){9, "baseType"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_type(((*tpe).tpe), state)) });
    (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "size"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((int64)((*tpe).size)) * ((int64)8)) }) });
    (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){9, "elements"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_push_meta(elements, state)) });
    compiler_Value *di = malloc((sizeof(compiler_Value)));
    (*di) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){16, "DICompositeType"}), .debug_values = debug_values });
    return di;
};
 compiler_Value * _87f75ce3_di_array_type(compiler_Value *value, typechecking_Type *tpe, compiler_State *state) {
    typechecking_Type *array = typechecking_copy(builtins_array);
    ((((typechecking_StructMember *)((*array).fields).value)[1]).tpe) = typechecking_pointer(((*tpe).tpe));
    return _87f75ce3_di_composite_type(value, array, ((Array){8, "<array>"}), ((Array){22, "DW_TAG_structure_type"}), state);
};
 compiler_Value * _87f75ce3_di_type(typechecking_Type *tpe, compiler_State *state) {
    if ((!tpe)) {
        return NULL;
    }  ;
    bool anonymous = (((((*tpe).type_name).size) - 1) == 0);
    compiler_Value *ditpe = NULL;
    if ((!anonymous)) {
        ditpe = ((compiler_Value *)map_get(((*state).ditypes), ((*tpe).type_name)));
    }  ;
    if (ditpe) {
        return ditpe;
    }  ;
    string name = ((*tpe).type_name);
    if (anonymous) {
        name = ((Array){12, "<anonymous>"});
    }  ;
    ditpe = malloc((sizeof(compiler_Value)));
    compiler_Value *ditpep = _87f75ce3_push_meta(ditpe, state);
    if ((!anonymous)) {
        map_put(((*state).ditypes), ((*tpe).type_name), ditpep);
    }  ;
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_WORD:
        if (((*tpe).unsig)) {
            (*ditpe) = (*_87f75ce3_di_basic_type(tpe, name, ((Array){16, "DW_ATE_unsigned"}), state));
        }  else {
            (*ditpe) = (*_87f75ce3_di_basic_type(tpe, name, ((Array){14, "DW_ATE_signed"}), state));
        };
        break;
        case typechecking_TypeKind_FLOAT:
        (*ditpe) = (*_87f75ce3_di_basic_type(tpe, name, ((Array){13, "DW_ATE_float"}), state));
        break;
        case typechecking_TypeKind_BOOL:
        (*ditpe) = (*_87f75ce3_di_basic_type(tpe, name, ((Array){16, "DW_ATE_unsigned"}), state));
        break;
        case typechecking_TypeKind_STRUCT:
        (*ditpe) = (*_87f75ce3_di_composite_type(ditpep, tpe, name, ((Array){22, "DW_TAG_structure_type"}), state));
        break;
        case typechecking_TypeKind_UNION:
        (*ditpe) = (*_87f75ce3_di_composite_type(ditpep, tpe, name, ((Array){18, "DW_TAG_union_type"}), state));
        break;
        case typechecking_TypeKind_ENUM:
        if (((*((*tpe).tpe)).unsig)) {
            (*ditpe) = (*_87f75ce3_di_basic_type(((*tpe).tpe), name, ((Array){16, "DW_ATE_unsigned"}), state));
        }  else {
            (*ditpe) = (*_87f75ce3_di_basic_type(((*tpe).tpe), name, ((Array){14, "DW_ATE_signed"}), state));
        };
        break;
        case typechecking_TypeKind_FUNCTION:
        (*ditpe) = (*_87f75ce3_di_function_type(tpe, state));
        break;
        case typechecking_TypeKind_POINTER:
        (*ditpe) = (*_87f75ce3_di_pointer_type(tpe, state));
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        (*ditpe) = (*_87f75ce3_di_static_array_type(tpe, state));
        break;
        case typechecking_TypeKind_ARRAY:
        (*ditpe) = (*_87f75ce3_di_array_type(ditpep, tpe, state));
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*tpe).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
    return ditpep;
};
 void _87f75ce3_create_function(parser_Node *node, typechecking_Type *tpe, vector_Vector *body, scope_Scope *scpe, compiler_State *state) {
    int line = (-1);
    if (node) {
        line = (((*node).loc).line);
    }  ;
    compiler_Function *function = malloc((sizeof(compiler_Function)));
    ((*function).name) = typechecking_mangle_function_name(((*tpe).type_name), ((*tpe).parameter_t));
    ((*function).unmangled) = ((*tpe).type_name);
    ((*function).multiple_returns) = false;
    ((*function).forward_declare) = true;
    ((*function).debug) = NULL;
    if (body) {
        ((*function).forward_declare) = false;
    }  ;
    if ((((bool)toolchain_debug_sym) && ((bool)body))) {
        Array debug_values = ((Array){7, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)7)))});
        (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = ((*tpe).type_name) }) });
        (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){6, "scope"}), .value = _87f75ce3_meta_to_debug_value(((compiler_Value *)vector_peek(((*state).discope)))) });
        (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
        (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (line + 1) }) });
        (((compiler_DebugParam *)debug_values.value)[4]) = ((compiler_DebugParam){ .name = ((Array){5, "type"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_subroutine_type(tpe, state)) });
        (((compiler_DebugParam *)debug_values.value)[5]) = ((compiler_DebugParam){ .name = ((Array){10, "scopeLine"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (line + 1) }) });
        (((compiler_DebugParam *)debug_values.value)[6]) = ((compiler_DebugParam){ .name = ((Array){5, "unit"}), .value = _87f75ce3_meta_to_debug_value(((*state).diunit)) });
        compiler_Value *disub = malloc((sizeof(compiler_Value)));
        (*disub) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){13, "DISubprogram"}), .distinct = true, .debug_values = debug_values });
        compiler_Value *disubp = _87f75ce3_push_meta(disub, state);
        ((*function).debug) = disubp;
        vector_push(((*state).discope), disubp);
    }  ;
    if ((vector_length(((*tpe).return_t)) > 1)) {
        ((*function).ret) = _87f75ce3_make_return_type(tpe);
        ((*function).multiple_returns) = true;
    }  else {
        ((*function).ret) = ((typechecking_Type *)vector_peek(((*tpe).return_t)));
    };
    ((*function).args) = vector_make();
    for (int i = 0;(i < vector_length(((*tpe).parameter_t)));(i += 1)) {
        typechecking_NamedParameter *np = malloc((sizeof(typechecking_NamedParameter)));
        (*np) = (*((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i)));
        vector_push(((*function).args), np);
    }
    ;
    map_put(((*((*state).result)).functions), ((*function).name), function);
    if (body) {
        ((*state).current_function) = function;
        ((*state).counter) = 0;
        compiler_Block *block = malloc((sizeof(compiler_Block)));
        ((*block).label_) = ((Array){6, "start"});
        ((*block).insn) = vector_make();
        ((*block).next) = NULL;
        ((*function).block) = block;
        ((*state).current_block) = block;
        for (int i = 0;(i < vector_length(((*function).args)));(i += 1)) {
            typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_get(((*function).args), i));
            string oldname = ((*np).name);
            string name = ((*scope_get(scpe, parser_make_identifier(((Array){1, (string[1]){ ((*np).name) }})))).assembly_name);
            buffer_Buffer buf = buffer_make_buffer();
            buffer_append_str((&buf), name);
            buffer_append_str((&buf), ((Array){7, ".value"}));
            ((*np).name) = buffer_to_string((&buf));
            compiler_Value ret = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = ((*np).value) });
            compiler_Insn *alloca = compiler_make_insn(compiler_InsnKind_ALLOCA);
            (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ret });
            compiler_push_insn(alloca, state);
            if (((*np).node)) {
                (ret.tpe) = typechecking_pointer(((*np).value));
                _87f75ce3_push_declare_arg(((*np).node), ret, oldname, (i + 1), state);
            }  ;
            compiler_Insn *store = compiler_make_insn(compiler_InsnKind_STORE);
            (((*store).value).store) = ((compiler_InsnStore){ .value = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = ((*np).name), .tpe = ((*np).value) }), .loc = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = typechecking_pointer(((*np).value)) }) });
            compiler_push_insn(store, state);
        }
        ;
        for (int i = 0;(i < vector_length(body));(i += 1)) {
            parser_Node *node = ((parser_Node *)vector_get(body, i));
            compiler_walk(node, state);
        }
        ;
        compiler_Insn *last_insn = ((compiler_Insn *)vector_peek(((*((*state).current_block)).insn)));
        if ((((bool)(!last_insn)) || (((*last_insn).kind) != compiler_InsnKind_RET))) {
            compiler_Value value = compiler_NO_VALUE;
            if (((*function).ret)) {
                value = ((compiler_Value){ .kind = compiler_ValueKind_UNDEF, .tpe = ((*function).ret) });
            }  ;
            compiler_Insn *ret = compiler_make_insn(compiler_InsnKind_RET);
            ((((*ret).value).ret).value) = value;
            compiler_push_insn(ret, state);
        }  ;
        if (toolchain_debug_sym) {
            vector_pop(((*state).discope));
        }  ;
    }  ;
};
 void _87f75ce3_walk_Def(parser_Node *node, compiler_State *state) {
    _87f75ce3_create_function(node, ((*node).tpe), ((((*node).value).def_).body), ((*node).scope), state);
};
 void _87f75ce3_walk_TypeDecl(parser_Node *node, compiler_State *state) {
    vector_Vector *left = ((((*node).value).type_decl).left);
    for (int i = 0;(i < vector_length(left));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(left, i));
        typechecking_Type *tpe = ((*n).tpe);
        if ((!tpe)) {
            continue;
        }  ;
        if (((((*tpe).kind) == typechecking_TypeKind_STRUCT) || (((*tpe).kind) == typechecking_TypeKind_UNION))) {
            map_put(((*((*state).result)).structures), ((*tpe).type_name), tpe);
        }  ;
    }
    ;
};
 void _87f75ce3_walk_top_VarDecl(parser_Node *node, vector_Vector *body, compiler_State *state) {
    vector_Vector *left = vector_make();
    for (int i = 0;(i < vector_length(((((*node).value).var_decl).left)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).var_decl).left), i));
        if ((((*n).kind) == parser_NodeKind_ID_DECL)) {
            parser_Node *v = ((((*n).value).id_decl).value);
            scope_Value *value = scope_get(((*node).scope), v);
            if ((!value)) {
                continue;
            }  ;
            string name = ((*value).assembly_name);
            compiler_Global *global = malloc((sizeof(compiler_Global)));
            (*global) = ((compiler_Global){ .name = name, .tpe = ((*v).tpe), .line = (((*v).loc).line) });
            map_put(((*((*state).result)).globals), ((*global).name), global);
            vector_push(left, ((((*n).value).id_decl).value));
        }  else {
            vector_push(left, (((*n).value).expr));
        };
    }
    ;
    if ((vector_length(((((*node).value).var_decl).right)) > 0)) {
        parser_Node *node_assign = malloc((sizeof(parser_Node)));
        ((*node_assign).kind) = parser_NodeKind_ASSIGN;
        ((*node_assign).loc) = ((*node).loc);
        ((*node_assign).scope) = ((*node).scope);
        (((*node_assign).value).assign) = ((parser_NodeAssign){ .left = left, .right = ((((*node).value).var_decl).right) });
        vector_push(body, node_assign);
    }  ;
};
map_Map *_87f75ce3_imported_modules;
 void _87f75ce3_walk_top_Import(parser_Node *node, vector_Vector *body, compiler_State *state) {
    vector_Vector *imports = (((*node).value).body);
    for (int i = 0;(i < vector_length(imports));(i += 1)) {
        parser_Node *imprt = ((parser_Node *)vector_get(imports, i));
        parser_Node *name = ((((*imprt).value).import_module).name);
        parser_Node *alias = ((((*imprt).value).import_module).alias);
        if ((!alias)) {
            alias = name;
        }  ;
        string filename = toolchain_find_module_file(name);
        if ((((filename.size) - 1) == 0)) {
            continue;
        }  ;
        if (map_contains(_87f75ce3_imported_modules, filename)) {
            continue;
        }  ;
        vector_Vector *args = vector_make();
        parser_Node *arg = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "args"}) }}));
        ((*arg).scope) = ((*node).scope);
        ((*arg).tpe) = typechecking_array(builtins_string_);
        ((*arg).svalue) = scope_get(((*arg).scope), arg);
        vector_push(args, arg);
        size_t name_size = vector_length((((*name).value).body));
        Array array = ((Array){(((int64)name_size) + ((int64)1)), malloc((((int64)(sizeof(string))) * (((int64)name_size) + ((int64)1))))});
        for (int j = 0;(j < name_size);(j += 1)) {
            (((string *)array.value)[j]) = (*((string *)vector_get((((*name).value).body), j)));
        }
        ;
        (((string *)array.value)[(((int64)(array.size)) - ((int64)1))]) = ((Array){5, "main"});
        parser_Node *ident = parser_make_identifier(array);
        ((*ident).scope) = ((*node).scope);
        scope_Scope *sc = ((*scope_get(((*node).scope), alias)).scope);
        scope_Value *main_value = ((scope_Value *)map_get(((*sc).fields), ((Array){5, "main"})));
        if ((!main_value)) {
            continue;
        }  ;
        parser_Node *call = malloc((sizeof(parser_Node)));
        ((*call).kind) = parser_NodeKind_FUNC_CALL;
        ((*call).scope) = ((*node).scope);
        ((*call).tpe) = NULL;
        ((*call).function) = ((*main_value).tpe);
        ((*call).loc) = ((*node).loc);
        (((*call).value).func_call) = ((parser_NodeFuncCall){ .left = ident, .args = args, .kwargs = vector_make() });
        vector_push(body, call);
        map_put(_87f75ce3_imported_modules, filename, map_sentinel);
    }
    ;
};
DLL_EXPORT compiler_Result * compiler_compile(toolchain_Module *module) {
    parser_Node *node = ((*module).node);
    assert((((*node).kind) == parser_NodeKind_PROGRAM));
    vector_Vector *body = vector_make();
    compiler_State *state = malloc((sizeof(compiler_State)));
    (*state) = ((compiler_State){ .module = module, .counter = 0, .global_counter = 0, .meta_counter = 0, .loops = vector_make(), .result = malloc((sizeof(compiler_Result))), .ditypes = map_make(), .discope = vector_make() });
    (*((*state).result)) = ((compiler_Result){ .functions = map_make(), .structures = map_make(), .globals = map_make(), .constants = map_make(), .metadata = map_make() });
    compiler_Value *globals = NULL;
    if (toolchain_debug_sym) {
        Array abspath = ((Array){PATH_MAX, malloc((((int64)(sizeof(char))) * ((int64)PATH_MAX)))});
        absolute_path((util_dirname(((*module).filename)).value), (abspath.value));
        (abspath.size) = (((int64)strlen((abspath.value))) + ((int64)1));
        string file = util_basename(((*module).filename));
        Array dvalues1 = ((Array){2, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)2)))});
        (((compiler_DebugParam *)dvalues1.value)[0]) = ((compiler_DebugParam){ .name = ((Array){9, "filename"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = file }) });
        (((compiler_DebugParam *)dvalues1.value)[1]) = ((compiler_DebugParam){ .name = ((Array){10, "directory"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = abspath }) });
        compiler_Value *difile = malloc((sizeof(compiler_Value)));
        (*difile) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .metadata = true, .name = ((Array){7, "DIFile"}), .debug_values = dvalues1 });
        ((*state).difile) = _87f75ce3_push_meta(difile, state);
        vector_push(((*state).discope), ((*state).difile));
        globals = malloc((sizeof(compiler_Value)));
        Array dvalues2 = ((Array){6, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)6)))});
        (((compiler_DebugParam *)dvalues2.value)[0]) = ((compiler_DebugParam){ .name = ((Array){9, "language"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){12, "DW_LANG_C99"}) }) });
        (((compiler_DebugParam *)dvalues2.value)[1]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
        (((compiler_DebugParam *)dvalues2.value)[2]) = ((compiler_DebugParam){ .name = ((Array){9, "producer"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = toolchain_version }) });
        (((compiler_DebugParam *)dvalues2.value)[3]) = ((compiler_DebugParam){ .name = ((Array){12, "isOptimized"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_BOOL, .i = 0 }) });
        (((compiler_DebugParam *)dvalues2.value)[4]) = ((compiler_DebugParam){ .name = ((Array){13, "emissionKind"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_CONST, .name = ((Array){10, "FullDebug"}) }) });
        (((compiler_DebugParam *)dvalues2.value)[5]) = ((compiler_DebugParam){ .name = ((Array){8, "globals"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_push_meta(globals, state)) });
        compiler_Value *diunit = malloc((sizeof(compiler_Value)));
        (*diunit) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .metadata = true, .distinct = true, .name = ((Array){14, "DICompileUnit"}), .debug_values = dvalues2 });
        ((*state).diunit) = _87f75ce3_push_meta(diunit, state);
        Array values = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)values.value)[0]) = (*((*state).diunit));
        compiler_Value *dbgcu = malloc((sizeof(compiler_Value)));
        (*dbgcu) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values });
        map_put(((*((*state).result)).metadata), ((Array){12, "llvm.dbg.cu"}), dbgcu);
        Array values2 = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
        (((compiler_Value *)values2.value)[0]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 7, .sign = 1, .tpe = builtins_int_ });
        (((compiler_Value *)values2.value)[1]) = ((compiler_Value){ compiler_ValueKind_STRING, .metadata = true, .s = ((Array){14, "Dwarf Version"}) });
        (((compiler_Value *)values2.value)[2]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 4, .sign = 1, .tpe = builtins_int_ });
        compiler_Value *dwarfv = malloc((sizeof(compiler_Value)));
        (*dwarfv) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values2 });
        compiler_Value *dwarfvp = _87f75ce3_push_meta(dwarfv, state);
        Array values3 = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
        (((compiler_Value *)values3.value)[0]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 2, .sign = 1, .tpe = builtins_int_ });
        (((compiler_Value *)values3.value)[1]) = ((compiler_Value){ compiler_ValueKind_STRING, .metadata = true, .s = ((Array){19, "Debug Info Version"}) });
        (((compiler_Value *)values3.value)[2]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 3, .sign = 1, .tpe = builtins_int_ });
        compiler_Value *div = malloc((sizeof(compiler_Value)));
        (*div) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values3 });
        compiler_Value *divp = _87f75ce3_push_meta(div, state);
        Array values4 = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
        (((compiler_Value *)values4.value)[0]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 1, .sign = 1, .tpe = builtins_int_ });
        (((compiler_Value *)values4.value)[1]) = ((compiler_Value){ compiler_ValueKind_STRING, .metadata = true, .s = ((Array){11, "wchar_size"}) });
        (((compiler_Value *)values4.value)[2]) = ((compiler_Value){ compiler_ValueKind_INT, .i = 4, .sign = 1, .tpe = builtins_int_ });
        compiler_Value *wchars = malloc((sizeof(compiler_Value)));
        (*wchars) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values4 });
        compiler_Value *wcharsp = _87f75ce3_push_meta(wchars, state);
        Array values5 = ((Array){3, malloc((((int64)(sizeof(compiler_Value))) * ((int64)3)))});
        (((compiler_Value *)values5.value)[0]) = (*dwarfvp);
        (((compiler_Value *)values5.value)[1]) = (*divp);
        (((compiler_Value *)values5.value)[2]) = (*wcharsp);
        compiler_Value *flags = malloc((sizeof(compiler_Value)));
        (*flags) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values5 });
        map_put(((*((*state).result)).metadata), ((Array){18, "llvm.module.flags"}), flags);
        Array values6 = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)values6.value)[0]) = ((compiler_Value){ compiler_ValueKind_STRING, .metadata = true, .s = toolchain_version });
        compiler_Value *identv = malloc((sizeof(compiler_Value)));
        (*identv) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values6 });
        compiler_Value *identp = _87f75ce3_push_meta(identv, state);
        Array values7 = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)values7.value)[0]) = (*identp);
        compiler_Value *ident = malloc((sizeof(compiler_Value)));
        (*ident) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values7 });
        map_put(((*((*state).result)).metadata), ((Array){11, "llvm.ident"}), ident);
    }  ;
    scope_Scope *sc = ((*node).scope);
    if (((*sc).imports)) {
        for (int i = 0;(i < vector_length(((*sc).imports)));(i += 1)) {
            toolchain_Module *module = ((toolchain_Module *)vector_get(((*sc).imports), i));
            scope_Scope *m_scope = ((*module).scope);
            Array keys = map_keys(((*m_scope).fields));
            for (int i = 0;(i < (keys.size));(i += 1)) {
                scope_Value *value = ((scope_Value *)map_get(((*m_scope).fields), (((string *)keys.value)[i])));
                if ((((int)((*value).share)) & ((int)parser_ShareMarker_EXPORT))) {
                    if (typechecking_is_function(((*value).tpe))) {
                        _87f75ce3_create_function(NULL, ((*value).tpe), NULL, sc, state);
                    } else if ((!typechecking_is_type(((*value).tpe)))) {
                        string name = ((*value).assembly_name);
                        compiler_Global *global = malloc((sizeof(compiler_Global)));
                        (*global) = ((compiler_Global){ .name = name, .tpe = ((*value).tpe), .external = true, .line = (-1) });
                        map_put(((*((*state).result)).globals), name, global);
                    } ;
                }  ;
            }
            ;
        }
        ;
    }  ;
    parser_Node *ident = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "main"}) }}));
    (((*ident).loc).module) = ((*module).module);
    (((*ident).loc).filename) = ((*module).filename);
    (((*ident).loc).line) = 0;
    (((*ident).loc).column) = 0;
    typechecking_Type *main_tpe = typechecking_make_type(typechecking_TypeKind_FUNCTION, ident);
    typechecking_Type *string_array_tpe = typechecking_array(builtins_string_);
    typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
    ((*named).name) = ((Array){5, "args"});
    ((*named).value) = string_array_tpe;
    ((*named).varargs) = false;
    ((*named).node) = NULL;
    vector_Vector *args = vector_make();
    vector_push(args, named);
    ((*main_tpe).parameter_t) = args;
    ((*main_tpe).return_t) = vector_make();
    ((*main_tpe).macro) = NULL;
    ((*main_tpe).proto) = NULL;
    scope_create_function(((*node).scope), ident, parser_ShareMarker_EXPORT, main_tpe, false);
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get((((*node).value).body), i));
        switch (((int)((*n).kind))) {
            break;
            case parser_NodeKind_DEF:
            _87f75ce3_walk_Def(n, state);
            break;
            case parser_NodeKind_TYPE_DECL:
            _87f75ce3_walk_TypeDecl(n, state);
            break;
            case parser_NodeKind_VAR_DECL:
            _87f75ce3_walk_top_VarDecl(n, body, state);
            break;
            case parser_NodeKind_IMPORT:
            _87f75ce3_walk_top_Import(n, body, state);
            break;
            default:
            vector_push(body, n);
        }
        ;
    }
    ;
    _87f75ce3_create_function(ident, main_tpe, body, ((*node).scope), state);
    if (toolchain_debug_sym) {
        Array keys = map_keys(((*((*state).result)).globals));
        Array values = ((Array){(keys.size), malloc(((sizeof(compiler_Value)) * (keys.size)))});
        for (int i = 0;(i < (keys.size));(i += 1)) {
            compiler_Global *global = ((compiler_Global *)map_get(((*((*state).result)).globals), (((string *)keys.value)[i])));
            Array debug_values = ((Array){6, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)6)))});
            (((compiler_DebugParam *)debug_values.value)[0]) = ((compiler_DebugParam){ .name = ((Array){5, "name"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_STRING, .s = ((*global).name) }) });
            (((compiler_DebugParam *)debug_values.value)[1]) = ((compiler_DebugParam){ .name = ((Array){6, "scope"}), .value = _87f75ce3_meta_to_debug_value(((*state).diunit)) });
            (((compiler_DebugParam *)debug_values.value)[2]) = ((compiler_DebugParam){ .name = ((Array){5, "file"}), .value = _87f75ce3_meta_to_debug_value(((*state).difile)) });
            (((compiler_DebugParam *)debug_values.value)[3]) = ((compiler_DebugParam){ .name = ((Array){5, "line"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_INT, .i = (((*global).line) + 1) }) });
            (((compiler_DebugParam *)debug_values.value)[4]) = ((compiler_DebugParam){ .name = ((Array){5, "type"}), .value = _87f75ce3_meta_to_debug_value(_87f75ce3_di_type(((*global).tpe), state)) });
            (((compiler_DebugParam *)debug_values.value)[5]) = ((compiler_DebugParam){ .name = ((Array){13, "isDefinition"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_BOOL, .i = ((int)(!((*global).external))) }) });
            compiler_Value *diglobal = malloc((sizeof(compiler_Value)));
            (*diglobal) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){17, "DIGlobalVariable"}), .debug_values = debug_values, .distinct = true });
            compiler_Value *diglobalp = _87f75ce3_push_meta(diglobal, state);
            Array debug_values2 = ((Array){2, malloc((((int64)(sizeof(compiler_DebugParam))) * ((int64)2)))});
            (((compiler_DebugParam *)debug_values2.value)[0]) = ((compiler_DebugParam){ .name = ((Array){4, "var"}), .value = _87f75ce3_meta_to_debug_value(diglobalp) });
            (((compiler_DebugParam *)debug_values2.value)[1]) = ((compiler_DebugParam){ .name = ((Array){5, "expr"}), .value = ((compiler_DebugValue){ .kind = compiler_DebugValueKind_DIEXP }) });
            compiler_Value *diglobal_expr = malloc((sizeof(compiler_Value)));
            (*diglobal_expr) = ((compiler_Value){ .kind = compiler_ValueKind_DEBUG_INFO, .name = ((Array){27, "DIGlobalVariableExpression"}), .debug_values = debug_values2 });
            compiler_Value *diglobal_exprp = _87f75ce3_push_meta(diglobal_expr, state);
            (((compiler_Value *)values.value)[i]) = (*diglobal_exprp);
            ((*global).debug) = diglobal_exprp;
        }
        ;
        (*globals) = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .metadata = true, .values = values });
    }  ;
    return ((*state).result);
};
DLL_EXPORT void compiler_p_main(Array args) {
    ;
    compiler_NO_VALUE = ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = NULL });
    memcpy((compiler_f_ueq.value), (((Array){4, "ueq"}).value), ((sizeof(char)) * (compiler_f_ueq.size)));
    memcpy((compiler_f_ugt.value), (((Array){4, "ugt"}).value), ((sizeof(char)) * (compiler_f_ugt.size)));
    memcpy((compiler_f_uge.value), (((Array){4, "uge"}).value), ((sizeof(char)) * (compiler_f_uge.size)));
    memcpy((compiler_f_ult.value), (((Array){4, "ult"}).value), ((sizeof(char)) * (compiler_f_ult.size)));
    memcpy((compiler_f_ule.value), (((Array){4, "ule"}).value), ((sizeof(char)) * (compiler_f_ule.size)));
    memcpy((compiler_f_une.value), (((Array){4, "une"}).value), ((sizeof(char)) * (compiler_f_une.size)));
    memcpy((compiler_i_eq.value), (((Array){3, "eq"}).value), ((sizeof(char)) * (compiler_i_eq.size)));
    memcpy((compiler_i_ne.value), (((Array){3, "ne"}).value), ((sizeof(char)) * (compiler_i_ne.size)));
    memcpy((compiler_i_ugt.value), (((Array){4, "ugt"}).value), ((sizeof(char)) * (compiler_i_ugt.size)));
    memcpy((compiler_i_uge.value), (((Array){4, "uge"}).value), ((sizeof(char)) * (compiler_i_uge.size)));
    memcpy((compiler_i_ult.value), (((Array){4, "ult"}).value), ((sizeof(char)) * (compiler_i_ult.size)));
    memcpy((compiler_i_ule.value), (((Array){4, "ule"}).value), ((sizeof(char)) * (compiler_i_ule.size)));
    memcpy((compiler_i_sgt.value), (((Array){4, "sgt"}).value), ((sizeof(char)) * (compiler_i_sgt.size)));
    memcpy((compiler_i_sge.value), (((Array){4, "sge"}).value), ((sizeof(char)) * (compiler_i_sge.size)));
    memcpy((compiler_i_slt.value), (((Array){4, "slt"}).value), ((sizeof(char)) * (compiler_i_slt.size)));
    memcpy((compiler_i_sle.value), (((Array){4, "sle"}).value), ((sizeof(char)) * (compiler_i_sle.size)));
    _87f75ce3_max_cases = 25;
    _87f75ce3_imported_modules = map_make();
};


#endif
