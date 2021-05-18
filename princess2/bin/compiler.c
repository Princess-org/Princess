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
#include "typechecking.c"
#include "util.c"
#include "builtins.c"
#include "debug.c"
#include "toolchain.c"
typedef struct compiler_Label {string name;} compiler_Label;
typedef enum compiler_ValueKind {compiler_ValueKind_NULL = 0, compiler_ValueKind_LOCAL = 1, compiler_ValueKind_GLOBAL = 2, compiler_ValueKind_BOOL = 3, compiler_ValueKind_INT = 4, compiler_ValueKind_FLOAT = 5, compiler_ValueKind_STRING = 6, compiler_ValueKind_ARRAY = 7, compiler_ValueKind_STRUCT = 8, compiler_ValueKind_UNION = 9} compiler_ValueKind;
typedef struct compiler_Value {enum compiler_ValueKind kind; string name; int sign; uint64 i; double f; string s; bool undef; Array values; struct compiler_Value *addr; struct typechecking_Type *tpe;} compiler_Value;
compiler_Value _87f75ce3_NO_VALUE;
typedef enum compiler_InsnKind {compiler_InsnKind_ADD = 0, compiler_InsnKind_SUB = 1, compiler_InsnKind_MUL = 2, compiler_InsnKind_SREM = 3, compiler_InsnKind_UREM = 4, compiler_InsnKind_SDIV = 5, compiler_InsnKind_UDIV = 6, compiler_InsnKind_FADD = 7, compiler_InsnKind_FSUB = 8, compiler_InsnKind_FMUL = 9, compiler_InsnKind_FREM = 10, compiler_InsnKind_FDIV = 11, compiler_InsnKind_ASHR = 12, compiler_InsnKind_SHL = 13, compiler_InsnKind_AND = 14, compiler_InsnKind_OR = 15, compiler_InsnKind_XOR = 16, compiler_InsnKind_FCMP = 17, compiler_InsnKind_ICMP = 18, compiler_InsnKind_RET = 19, compiler_InsnKind_LOAD = 20, compiler_InsnKind_STORE = 21, compiler_InsnKind_ALLOCA = 22, compiler_InsnKind_INSERTVALUE = 23, compiler_InsnKind_EXTRACTVALUE = 24, compiler_InsnKind_GETELEMENTPTR = 25, compiler_InsnKind_TRUNC = 26, compiler_InsnKind_ZEXT = 27, compiler_InsnKind_SEXT = 28, compiler_InsnKind_FPTRUNC = 29, compiler_InsnKind_FPEXT = 30, compiler_InsnKind_FPTOUI = 31, compiler_InsnKind_FPTOSI = 32, compiler_InsnKind_UITOFP = 33, compiler_InsnKind_SITOFP = 34, compiler_InsnKind_PTRTOINT = 35, compiler_InsnKind_INTTOPTR = 36, compiler_InsnKind_BITCAST = 37, compiler_InsnKind_CALL = 38, compiler_InsnKind_BR_UNC = 39, compiler_InsnKind_BR = 40} compiler_InsnKind;
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
typedef struct compiler_InsnInsertValue {struct compiler_Value ret; struct compiler_Value value; struct compiler_Value element; Array index;} compiler_InsnInsertValue;
typedef struct compiler_InsnGetElementPtr {struct compiler_Value ret; struct typechecking_Type *tpe; struct compiler_Value value; Array index;} compiler_InsnGetElementPtr;
typedef struct compiler_InsnConvert {struct compiler_Value ret; struct compiler_Value value;} compiler_InsnConvert;
typedef struct compiler_InsnExtractValue {struct compiler_Value ret; struct compiler_Value value; Array index;} compiler_InsnExtractValue;
typedef struct compiler_InsnStore {struct compiler_Value value; struct compiler_Value loc;} compiler_InsnStore;
typedef struct compiler_InsnLoad {struct compiler_Value value; struct compiler_Value loc;} compiler_InsnLoad;
typedef struct compiler_InsnReturn {struct compiler_Value value;} compiler_InsnReturn;
typedef struct compiler_InsnArithmetic {struct compiler_Value ret; struct compiler_Value left; struct compiler_Value right;} compiler_InsnArithmetic;
typedef struct compiler_InsnAlloca {struct compiler_Value ret;} compiler_InsnAlloca;
typedef struct compiler_InsnCall {struct compiler_Value name; struct compiler_Value ret; Array args;} compiler_InsnCall;
typedef struct compiler_InsnBrUnc {struct compiler_Label label_;} compiler_InsnBrUnc;
typedef struct compiler_InsnBr {struct compiler_Value cond; struct compiler_Label if_true; struct compiler_Label if_false;} compiler_InsnBr;
typedef union compiler_InsnValue {struct compiler_InsnArithmetic arith; struct compiler_InsnReturn ret; struct compiler_InsnStore store; struct compiler_InsnLoad load; struct compiler_InsnAlloca alloca; struct compiler_InsnCall call; struct compiler_InsnBrUnc br_unc; struct compiler_InsnBr br; struct compiler_InsnInsertValue insert_value; struct compiler_InsnExtractValue extract_value; struct compiler_InsnGetElementPtr gep; struct compiler_InsnConvert convert; struct compiler_InsnCmp cmp;} compiler_InsnValue;
typedef struct compiler_Insn {enum compiler_InsnKind kind; union compiler_InsnValue value;} compiler_Insn;
typedef struct compiler_Block {string label_; struct vector_Vector *insn; struct compiler_Block *next;} compiler_Block;
typedef struct compiler_Function {string name; struct vector_Vector *args; struct typechecking_Type *ret; bool multiple_returns; bool forward_declare; struct compiler_Block *block;} compiler_Function;
typedef struct compiler_Result {struct map_Map *functions; struct map_Map *structures; struct map_Map *globals;} compiler_Result;
typedef struct _87f75ce3_LoopState {struct compiler_Insn *break_insn; struct compiler_Insn *continue_insn;} _87f75ce3_LoopState;
typedef struct _87f75ce3_State {int counter; string filename; string module; struct compiler_Function *current_function; struct compiler_Block *current_block; struct vector_Vector *loops; struct compiler_Result *result;} _87f75ce3_State;
 compiler_Insn * _87f75ce3_get_break_insn(_87f75ce3_State *state) {
    if ((vector_length(((*state).loops)) > 0)) {
        return ((*((_87f75ce3_LoopState *)vector_peek(((*state).loops)))).break_insn);
    }  ;
    return NULL;
};
 compiler_Insn * _87f75ce3_get_continue_insn(_87f75ce3_State *state) {
    if ((vector_length(((*state).loops)) > 0)) {
        return ((*((_87f75ce3_LoopState *)vector_peek(((*state).loops)))).continue_insn);
    }  ;
    return NULL;
};
 void _87f75ce3_push_loop_state(_87f75ce3_State *state) {
    _87f75ce3_LoopState *loops = malloc((sizeof(_87f75ce3_LoopState)));
    compiler_Insn *break_insn = malloc((sizeof(compiler_Insn)));
    ((*break_insn).kind) = compiler_InsnKind_BR_UNC;
    compiler_Insn *continue_insn = malloc((sizeof(compiler_Insn)));
    ((*continue_insn).kind) = compiler_InsnKind_BR_UNC;
    ((*loops).break_insn) = break_insn;
    ((*loops).continue_insn) = continue_insn;
    vector_push(((*state).loops), loops);
};
 void _87f75ce3_pop_loop_state(_87f75ce3_State *state) {
    vector_pop(((*state).loops));
};
 compiler_Label _87f75ce3_make_label(_87f75ce3_State *state) {
    string s = util_int_to_str(((*state).counter));
    (((*state).counter) += 1);
    return ((compiler_Label){ .name = s });
};
 string _87f75ce3_make_unique_name(_87f75ce3_State *state) {
    string s = util_int_to_str(((*state).counter));
    (((*state).counter) += 1);
    return s;
};
 compiler_Value _87f75ce3_make_int_value(int v) {
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = v, .tpe = builtins_int_ });
    if ((v < 0)) {
        (value.sign) = (-1);
    }  else {
        (value.sign) = 1;
    };
    return value;
};
 compiler_Value _87f75ce3_make_local_value(typechecking_Type *tpe, compiler_Value *addr, _87f75ce3_State *state) {
    return ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = _87f75ce3_make_unique_name(state), .tpe = tpe, .addr = addr });
};
 void _87f75ce3_push_label(compiler_Label label_, _87f75ce3_State *state) {
    compiler_Block *block = malloc((sizeof(compiler_Block)));
    ((*block).label_) = (label_.name);
    ((*block).insn) = vector_make();
    ((*block).next) = NULL;
    ((*((*state).current_block)).next) = block;
    ((*state).current_block) = block;
};
 void _87f75ce3_push_insn(compiler_Insn *insn, _87f75ce3_State *state) {
    vector_push(((*((*state).current_block)).insn), insn);
};
 compiler_Value _87f75ce3_walk_expression(parser_Node *node, _87f75ce3_State *state);
 void _87f75ce3_walk(parser_Node *node, _87f75ce3_State *state);
 compiler_Value _87f75ce3_walk_Null(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Boolean(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_BOOL, .i = (((*node).value).i), .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Integer(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = ((*tpe).i), .sign = ((*tpe).sign), .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Float(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_FLOAT, .f = (((*node).value).f), .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_walk_Char(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_INT, .i = (((*node).value).i), .tpe = tpe });
    return value;
};
 compiler_Value _87f75ce3_convert_to(parser_Node *node, compiler_Value value, typechecking_Type *tpe, _87f75ce3_State *state) {
    if ((((bool)(!(value.tpe))) || ((bool)(!tpe)))) {
        return value;
    }  ;
    if (typechecking_equals((value.tpe), tpe)) {
        return value;
    }  ;
    compiler_InsnKind kind;
    if ((((*tpe).kind) == typechecking_TypeKind_BOOL)) {
        if (typechecking_is_pointer((value.tpe))) {
            value = _87f75ce3_convert_to(node, value, builtins_size_t_, state);
        }  ;
        if (typechecking_is_float((value.tpe))) {
            compiler_Value ret = _87f75ce3_make_local_value(builtins_bool_, NULL, state);
            compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
            ((*insn).kind) = compiler_InsnKind_FCMP;
            (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = compiler_f_une, .ret = ret, .left = value, .right = ((compiler_Value){ .kind = compiler_ValueKind_FLOAT, .tpe = (value.tpe), .f = 0.0 }) });
            _87f75ce3_push_insn(insn, state);
            return ret;
        } else if (typechecking_is_integer((value.tpe))) {
            compiler_Value ret = _87f75ce3_make_local_value(builtins_bool_, NULL, state);
            compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
            ((*insn).kind) = compiler_InsnKind_ICMP;
            (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = compiler_i_ne, .ret = ret, .left = value, .right = ((compiler_Value){ .kind = compiler_ValueKind_INT, .tpe = (value.tpe), .i = 0 }) });
            _87f75ce3_push_insn(insn, state);
            return ret;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    } else if (typechecking_is_integer(tpe)) {
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
        if (typechecking_is_pointer((value.tpe))) {
            kind = compiler_InsnKind_BITCAST;
        } else if (typechecking_is_integer((value.tpe))) {
            kind = compiler_InsnKind_INTTOPTR;
        } else {
            typechecking_errorn(node, ((Array){15, "Can't convert "}));
            fprintf(stderr, (((Array){9, "%s%s%s%s"}).value), (debug_type_to_str((value.tpe)).value), (((Array){5, " to "}).value), (debug_type_to_str(tpe).value), (((Array){2, "\x0a"""}).value));
            return value;
        };
    } ;
    compiler_Value ret = _87f75ce3_make_local_value(tpe, NULL, state);
    compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
    ((*insn).kind) = kind;
    (((*insn).value).convert) = ((compiler_InsnConvert){ .ret = ret, .value = value });
    _87f75ce3_push_insn(insn, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Cast(parser_Node *node, _87f75ce3_State *state) {
    compiler_Value value = _87f75ce3_walk_expression((((*node).value).expr), state);
    return _87f75ce3_convert_to(node, value, ((*node).tpe), state);
};
 compiler_Value _87f75ce3_walk_StructLit(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        typechecking_errorn(node, ((Array){43, "Need to specify a type for struct literal\x0a"""}));
        return _87f75ce3_NO_VALUE;
    }  ;
    vector_Vector *args = ((((*node).value).struct_lit).args);
    vector_Vector *kwargs = ((((*node).value).struct_lit).kwargs);
    Array values = ((Array){(((*tpe).fields).size), malloc(((sizeof(compiler_Value)) * (((*tpe).fields).size)))});
    for (int i = 0;(i < vector_length(args));(i += 1)) {
        parser_Node *arg = ((parser_Node *)vector_get(args, i));
        compiler_Value value = _87f75ce3_walk_expression(arg, state);
        if ((i > (values.size))) {
            typechecking_errorn(arg, ((Array){38, "Too many arguments to struct literal\x0a"""}));
            return _87f75ce3_NO_VALUE;
        }  ;
        (((compiler_Value *)values.value)[i]) = value;
    }
    ;
    for (int i = 0;(i < vector_length(kwargs));(i += 1)) {
        parser_Node *kwarg = ((parser_Node *)vector_get(kwargs, i));
        string name = typechecking_last_ident_to_str(((((*kwarg).value).named_arg).name));
        compiler_Value value = _87f75ce3_walk_expression(((((*kwarg).value).named_arg).value), state);
        bool found = false;
        for (int j = 0;(j < (((*tpe).fields).size));(j += 1)) {
            string field_name = ((((typechecking_StructMember *)((*tpe).fields).value)[j]).name);
            if ((strcmp((field_name.value), (name.value)) == 0)) {
                (((compiler_Value *)values.value)[j]) = value;
                found = true;
                break;
            }  ;
        }
        ;
        if ((!found)) {
            typechecking_errorn(kwarg, ((Array){16, "Unknown field \""}));
            fprintf(stderr, (((Array){5, "%s%s"}).value), (name.value), (((Array){3, "\"\x0a"""}).value));
            return _87f75ce3_NO_VALUE;
        }  ;
    }
    ;
    compiler_Value value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = values, .tpe = tpe });
    for (int i = 0;(i < (values.size));(i += 1)) {
        compiler_Value val = (((compiler_Value *)values.value)[i]);
        if ((((val.kind) == compiler_ValueKind_LOCAL) || ((val.kind) == compiler_ValueKind_GLOBAL))) {
            (((compiler_Value *)values.value)[i]) = ((compiler_Value){ .undef = true, .tpe = (val.tpe) });
            compiler_Value ret = _87f75ce3_make_local_value(tpe, NULL, state);
            Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
            (((int *)index.value)[0]) = i;
            compiler_Insn *insert = malloc((sizeof(compiler_Insn)));
            ((*insert).kind) = compiler_InsnKind_INSERTVALUE;
            (((*insert).value).insert_value) = ((compiler_InsnInsertValue){ .ret = ret, .value = value, .element = val, .index = index });
            _87f75ce3_push_insn(insert, state);
            value = ret;
        }  ;
    }
    ;
    return value;
};
 compiler_Value _87f75ce3_walk_ArithmeticOp(parser_Node *node, compiler_InsnKind insn_kind, typechecking_Type *tpe, _87f75ce3_State *state) {
    compiler_Value left = _87f75ce3_convert_to(node, _87f75ce3_walk_expression(((((*node).value).bin_op).left), state), tpe, state);
    compiler_Value right = _87f75ce3_convert_to(node, _87f75ce3_walk_expression(((((*node).value).bin_op).right), state), tpe, state);
    compiler_Value value = _87f75ce3_make_local_value(tpe, NULL, state);
    compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
    ((*insn).kind) = insn_kind;
    (((*insn).value).arith) = ((compiler_InsnArithmetic){ .left = left, .right = right, .ret = value });
    _87f75ce3_push_insn(insn, state);
    return value;
};
 compiler_Value _87f75ce3_walk_Add(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_ADD;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FADD;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Sub(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SUB;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FSUB;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Mul(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_MUL;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FMUL;
    }  ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Mod(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SREM;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FREM;
    } else if (((*tpe).unsig)) {
        insn_kind = compiler_InsnKind_UREM;
    } ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Div(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    if ((!tpe)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    int insn_kind = compiler_InsnKind_SDIV;
    if (typechecking_is_float(tpe)) {
        insn_kind = compiler_InsnKind_FDIV;
    } else if (((*tpe).unsig)) {
        insn_kind = compiler_InsnKind_UDIV;
    } ;
    return _87f75ce3_walk_ArithmeticOp(node, insn_kind, tpe, state);
};
 compiler_Value _87f75ce3_walk_Shl(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_SHL, tpe, state);
};
 compiler_Value _87f75ce3_walk_Shr(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*node).tpe);
    return _87f75ce3_walk_ArithmeticOp(node, compiler_InsnKind_ASHR, tpe, state);
};
 compiler_Value _87f75ce3_walk_Call(parser_Node *node, _87f75ce3_State *state) {
    if ((!((*node).tpe))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    string name = ((*((*node).tpe)).type_name);
    vector_Vector *parameter_t = ((*((*node).tpe)).parameter_t);
    name = typechecking_mangle_function_name(name, parameter_t);
    compiler_Function *function = ((compiler_Function *)map_get(((*((*state).result)).functions), name));
    if ((!function)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    compiler_Value name_v = ((compiler_Value){ .kind = compiler_ValueKind_GLOBAL, .name = name, .tpe = NULL });
    compiler_Value value = _87f75ce3_NO_VALUE;
    if (((*function).ret)) {
        value = _87f75ce3_make_local_value(((*function).ret), NULL, state);
    }  ;
    Array args = ((Array){vector_length(parameter_t), malloc((((int64)(sizeof(compiler_Value))) * ((int64)vector_length(parameter_t))))});
    for (int i = 0;(i < vector_length(((((*node).value).func_call).args)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).args), i));
        (((compiler_Value *)args.value)[i]) = _87f75ce3_walk_expression(n, state);
    }
    ;
    for (int i = 0;(i < vector_length(((((*node).value).func_call).kwargs)));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(((((*node).value).func_call).args), i));
        assert((((*n).kind) == parser_NodeKind_NAMED_ARG));
        string name = typechecking_last_ident_to_str(((((*n).value).named_arg).name));
        parser_Node *value = ((((*n).value).named_arg).value);
        for (int j = 0;(j < vector_length(parameter_t));(j += 1)) {
            typechecking_NamedParameter *p = ((typechecking_NamedParameter *)vector_get(parameter_t, j));
            if ((strcmp((((*p).name).value), (name.value)) == 0)) {
                (((compiler_Value *)args.value)[j]) = _87f75ce3_walk_expression(value, state);
            }  ;
        }
        ;
    }
    ;
    compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
    ((*insn).kind) = compiler_InsnKind_CALL;
    (((*insn).value).call) = ((compiler_InsnCall){ .name = name_v, .ret = value, .args = args });
    _87f75ce3_push_insn(insn, state);
    return value;
};
 compiler_Value _87f75ce3_walk_Identifier(parser_Node *node, _87f75ce3_State *state) {
    compiler_Value value = _87f75ce3_make_local_value(((*node).tpe), NULL, state);
    scope_Value *val = scope_get(((*node).scope), node);
    if ((!val)) {
        return _87f75ce3_NO_VALUE;
    }  ;
    string name = ((*val).assembly_name);
    int kind = compiler_ValueKind_LOCAL;
    if (((*val).global)) {
        kind = compiler_ValueKind_GLOBAL;
    }  ;
    compiler_Value loc = ((compiler_Value){ .kind = kind, .name = name, .tpe = typechecking_pointer(((*node).tpe)) });
    compiler_Value *l = malloc((sizeof(compiler_Value)));
    (*l) = loc;
    (value.addr) = l;
    compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
    ((*insn).kind) = compiler_InsnKind_LOAD;
    (((*insn).value).load) = ((compiler_InsnLoad){ .value = value, .loc = loc });
    _87f75ce3_push_insn(insn, state);
    return value;
};
 compiler_Value _87f75ce3_walk_Assign(parser_Node *node, _87f75ce3_State *state) {
    ;
    vector_Vector *right = ((((*node).value).assign).right);
    vector_Vector *left = ((((*node).value).assign).left);
    compiler_Value last_value;
    int j = 0;
    for (int i = 0;(i < vector_length(right));(i += 1)) {
        parser_Node *n = ((parser_Node *)vector_get(right, i));
        compiler_Value value = _87f75ce3_walk_expression(n, state);
        typechecking_Type *tpe = ((*n).tpe);
        if ((!tpe)) {
            continue;
        }  ;
        if (((((*tpe).kind) == typechecking_TypeKind_FUNCTION) && (vector_length(((*tpe).return_t)) > 1))) {
            for (int k = 0;(k < vector_length(((*tpe).return_t)));(k += 1)) {
                void *t = vector_get(((*tpe).return_t), k);
                if ((j >= vector_length(left))) {
                    return _87f75ce3_NO_VALUE;
                }  ;
                parser_Node *l = ((parser_Node *)vector_get(left, j));
                compiler_Value *addr = (_87f75ce3_walk_expression(l, state).addr);
                if ((!addr)) {
                    typechecking_errorn(l, ((Array){41, "Can't assign, expression has no address\x0a"""}));
                    return _87f75ce3_NO_VALUE;
                }  ;
                compiler_Value ret = _87f75ce3_make_local_value(t, NULL, state);
                Array index = ((Array){1, malloc((((int64)(sizeof(int))) * ((int64)1)))});
                (((int *)index.value)[0]) = k;
                compiler_Insn *extract = malloc((sizeof(compiler_Insn)));
                ((*extract).kind) = compiler_InsnKind_EXTRACTVALUE;
                (((*extract).value).extract_value) = ((compiler_InsnExtractValue){ .ret = ret, .value = value, .index = index });
                compiler_Insn *store = malloc((sizeof(compiler_Insn)));
                ((*store).kind) = compiler_InsnKind_STORE;
                (((*store).value).store) = ((compiler_InsnStore){ .value = ret, .loc = (*addr) });
                _87f75ce3_push_insn(extract, state);
                _87f75ce3_push_insn(store, state);
                last_value = ret;
                (j += 1);
            }
            ;
        }  else {
            if ((j >= vector_length(left))) {
                return _87f75ce3_NO_VALUE;
            }  ;
            parser_Node *l = ((parser_Node *)vector_get(left, j));
            compiler_Value *addr = (_87f75ce3_walk_expression(l, state).addr);
            if ((!addr)) {
                return _87f75ce3_NO_VALUE;
            }  ;
            compiler_Insn *store = malloc((sizeof(compiler_Insn)));
            ((*store).kind) = compiler_InsnKind_STORE;
            (((*store).value).store) = ((compiler_InsnStore){ .value = value, .loc = (*addr) });
            _87f75ce3_push_insn(store, state);
            last_value = value;
            (j += 1);
        };
    }
    ;
    return last_value;
};
 compiler_Value _87f75ce3_walk_AssignEq(parser_Node *node, _87f75ce3_State *state) {
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
    return _87f75ce3_walk_expression(assign_eq_node, state);
};
 compiler_Value _87f75ce3_walk_Deref(parser_Node *node, _87f75ce3_State *state) {
    compiler_Value value = _87f75ce3_walk_expression((((*node).value).expr), state);
    typechecking_Type *tpe = (value.tpe);
    compiler_Value *addr = malloc((sizeof(compiler_Value)));
    (*addr) = value;
    compiler_Value ret = _87f75ce3_make_local_value(((*tpe).tpe), addr, state);
    compiler_Insn *load = malloc((sizeof(compiler_Insn)));
    ((*load).kind) = compiler_InsnKind_LOAD;
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = value });
    _87f75ce3_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_Ptr(parser_Node *node, _87f75ce3_State *state) {
    compiler_Value value = _87f75ce3_walk_expression((((*node).value).expr), state);
    if ((!(value.addr))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    return (*(value.addr));
};
 compiler_Value _87f75ce3_walk_MemberAccess_gep(parser_Node *node, typechecking_Type *tpe, compiler_Value value, Array index, _87f75ce3_State *state) {
    compiler_Value gep_ret = _87f75ce3_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
    compiler_Insn *gep = malloc((sizeof(compiler_Insn)));
    ((*gep).kind) = compiler_InsnKind_GETELEMENTPTR;
    (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = (*(value.addr)), .index = index });
    compiler_Value *addr = malloc((sizeof(compiler_Value)));
    (*addr) = gep_ret;
    compiler_Value ret = _87f75ce3_make_local_value(((*node).tpe), addr, state);
    compiler_Insn *load = malloc((sizeof(compiler_Insn)));
    ((*load).kind) = compiler_InsnKind_LOAD;
    (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
    _87f75ce3_push_insn(gep, state);
    _87f75ce3_push_insn(load, state);
    return ret;
};
 compiler_Value _87f75ce3_walk_MemberAccess(parser_Node *node, _87f75ce3_State *state) {
    if ((!((*node).tpe))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    compiler_Value value = _87f75ce3_walk_expression(left, state);
    typechecking_Type *tpe = ((*left).tpe);
    string name = typechecking_last_ident_to_str(right);
    if ((((*tpe).kind) == typechecking_TypeKind_STATIC_ARRAY)) {
        if ((strcmp((name.value), (((Array){5, "size"}).value)) == 0)) {
            compiler_Value i = _87f75ce3_make_int_value(((*tpe).length));
            (i.tpe) = builtins_size_t_;
            return i;
        } else if ((strcmp((name.value), (((Array){6, "value"}).value)) == 0)) {
            Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
            (((compiler_Value *)index.value)[0]) = _87f75ce3_make_int_value(0);
            ((((compiler_Value *)index.value)[0]).tpe) = builtins_size_t_;
            (((compiler_Value *)index.value)[1]) = _87f75ce3_make_int_value(0);
            ((((compiler_Value *)index.value)[1]).tpe) = builtins_size_t_;
            compiler_Value gep_ret = _87f75ce3_make_local_value(((*node).tpe), NULL, state);
            compiler_Insn *gep = malloc((sizeof(compiler_Insn)));
            ((*gep).kind) = compiler_InsnKind_GETELEMENTPTR;
            (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = tpe, .value = (*(value.addr)), .index = index });
            _87f75ce3_push_insn(gep, state);
            return gep_ret;
        } else {
            assert(false);
        };
    } else if ((((*tpe).kind) == typechecking_TypeKind_ARRAY)) {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = _87f75ce3_make_int_value(0);
        if ((strcmp((name.value), (((Array){5, "size"}).value)) == 0)) {
            (((compiler_Value *)index.value)[1]) = _87f75ce3_make_int_value(0);
        } else if ((strcmp((name.value), (((Array){6, "value"}).value)) == 0)) {
            (((compiler_Value *)index.value)[1]) = _87f75ce3_make_int_value(1);
        } ;
        return _87f75ce3_walk_MemberAccess_gep(node, tpe, value, index, state);
    } else {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = _87f75ce3_make_int_value(0);
        for (int i = 0;(i < (((*tpe).fields).size));(i += 1)) {
            typechecking_StructMember member = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
            if ((strcmp(((member.name).value), (name.value)) == 0)) {
                (((compiler_Value *)index.value)[1]) = ((compiler_Value){ .kind = compiler_ValueKind_INT, .sign = 1, .i = i, .tpe = builtins_int_ });
                break;
            }  ;
        }
        ;
        return _87f75ce3_walk_MemberAccess_gep(node, tpe, value, index, state);
    };
};
 compiler_Value _87f75ce3_walk_ArraySubscript(parser_Node *node, _87f75ce3_State *state) {
    if ((!((*node).tpe))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    typechecking_Type *array_tpe = ((*left).tpe);
    compiler_Value left_value = _87f75ce3_walk_expression(left, state);
    compiler_Value right_value = _87f75ce3_walk_expression(right, state);
    if ((((*array_tpe).kind) == typechecking_TypeKind_ARRAY)) {
        Array index1 = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index1.value)[0]) = _87f75ce3_make_int_value(0);
        (((compiler_Value *)index1.value)[1]) = _87f75ce3_make_int_value(1);
        compiler_Value gep_ret1 = _87f75ce3_make_local_value(typechecking_pointer(typechecking_pointer(((*node).tpe))), NULL, state);
        compiler_Insn *gep1 = malloc((sizeof(compiler_Insn)));
        ((*gep1).kind) = compiler_InsnKind_GETELEMENTPTR;
        (((*gep1).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret1, .tpe = array_tpe, .value = (*(left_value.addr)), .index = index1 });
        compiler_Value load1_value = _87f75ce3_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *load1 = malloc((sizeof(compiler_Insn)));
        ((*load1).kind) = compiler_InsnKind_LOAD;
        (((*load1).value).load) = ((compiler_InsnLoad){ .value = load1_value, .loc = gep_ret1 });
        Array index2 = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)index2.value)[0]) = right_value;
        compiler_Value gep_ret2 = _87f75ce3_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep2 = malloc((sizeof(compiler_Insn)));
        ((*gep2).kind) = compiler_InsnKind_GETELEMENTPTR;
        (((*gep2).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret2, .tpe = ((*node).tpe), .value = load1_value, .index = index2 });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret2;
        compiler_Value ret = _87f75ce3_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load2 = malloc((sizeof(compiler_Insn)));
        ((*load2).kind) = compiler_InsnKind_LOAD;
        (((*load2).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret2 });
        _87f75ce3_push_insn(gep1, state);
        _87f75ce3_push_insn(load1, state);
        _87f75ce3_push_insn(gep2, state);
        _87f75ce3_push_insn(load2, state);
        return ret;
    } else if ((((*array_tpe).kind) == typechecking_TypeKind_STATIC_ARRAY)) {
        Array index = ((Array){2, malloc((((int64)(sizeof(compiler_Value))) * ((int64)2)))});
        (((compiler_Value *)index.value)[0]) = _87f75ce3_make_int_value(0);
        (((compiler_Value *)index.value)[1]) = right_value;
        compiler_Value gep_ret = _87f75ce3_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep = malloc((sizeof(compiler_Insn)));
        ((*gep).kind) = compiler_InsnKind_GETELEMENTPTR;
        (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = array_tpe, .value = (*(left_value.addr)), .index = index });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret;
        compiler_Value ret = _87f75ce3_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load = malloc((sizeof(compiler_Insn)));
        ((*load).kind) = compiler_InsnKind_LOAD;
        (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
        _87f75ce3_push_insn(gep, state);
        _87f75ce3_push_insn(load, state);
        return ret;
    }
    else if (typechecking_is_pointer(array_tpe)) {
        Array index = ((Array){1, malloc((((int64)(sizeof(compiler_Value))) * ((int64)1)))});
        (((compiler_Value *)index.value)[0]) = right_value;
        compiler_Value gep_ret = _87f75ce3_make_local_value(typechecking_pointer(((*node).tpe)), NULL, state);
        compiler_Insn *gep = malloc((sizeof(compiler_Insn)));
        ((*gep).kind) = compiler_InsnKind_GETELEMENTPTR;
        (((*gep).value).gep) = ((compiler_InsnGetElementPtr){ .ret = gep_ret, .tpe = ((*node).tpe), .value = left_value, .index = index });
        compiler_Value *addr = malloc((sizeof(compiler_Value)));
        (*addr) = gep_ret;
        compiler_Value ret = _87f75ce3_make_local_value(((*node).tpe), addr, state);
        compiler_Insn *load = malloc((sizeof(compiler_Insn)));
        ((*load).kind) = compiler_InsnKind_LOAD;
        (((*load).value).load) = ((compiler_InsnLoad){ .value = ret, .loc = gep_ret });
        _87f75ce3_push_insn(gep, state);
        _87f75ce3_push_insn(load, state);
        return ret;
    } else {
        assert(false);
    };
};
 compiler_Value _87f75ce3_walk_SizeOf(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!tpe)) {
        typechecking_errorn(node, ((Array){20, "Invalid expression\x0a"""}));
        return _87f75ce3_NO_VALUE;
    }  ;
    compiler_Value value = _87f75ce3_make_int_value(((*tpe).size));
    (value.tpe) = builtins_size_t_;
    return value;
};
 compiler_Value _87f75ce3_walk_AlignOf(parser_Node *node, _87f75ce3_State *state) {
    typechecking_Type *tpe = ((*(((*node).value).expr)).tpe);
    if ((!tpe)) {
        typechecking_errorn(node, ((Array){20, "Invalid expression\x0a"""}));
        return _87f75ce3_NO_VALUE;
    }  ;
    compiler_Value value = _87f75ce3_make_int_value(((*tpe).align));
    (value.tpe) = builtins_size_t_;
    return value;
};
 compiler_Value _87f75ce3_compare(parser_Node *node, compiler_Value left, compiler_Value right, _87f75ce3_State *state) {
    typechecking_Type *tpe = NULL;
    if (typechecking_is_pointer((left.tpe))) {
        left = _87f75ce3_convert_to(node, left, builtins_size_t_, state);
    }  ;
    if (typechecking_is_pointer((right.tpe))) {
        right = _87f75ce3_convert_to(node, right, builtins_size_t_, state);
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
        compiler_Value ret = _87f75ce3_make_local_value(((*node).tpe), NULL, state);
        compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
        ((*insn).kind) = kind;
        (((*insn).value).cmp) = ((compiler_InsnCmp){ .op = op, .ret = ret, .left = left, .right = right });
        _87f75ce3_push_insn(insn, state);
        return ret;
    } else if (typechecking_equals((left.tpe), (right.tpe))) {
        if (typechecking_equals((left.tpe), builtins_string_)) {
            ;
        }  ;
        assert(false);
    } else {
        assert(false);
    };
};
 compiler_Value _87f75ce3_walk_ComparisionOp(parser_Node *node, _87f75ce3_State *state) {
    parser_Node *left = ((((*node).value).bin_op).left);
    parser_Node *right = ((((*node).value).bin_op).right);
    if ((((bool)(!left)) || ((bool)(!right)))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    if ((((bool)(!((*left).tpe))) || ((bool)(!((*right).tpe))))) {
        return _87f75ce3_NO_VALUE;
    }  ;
    if (((((*left).kind) >= parser_NodeKind_EQ) && (((*left).kind) <= parser_NodeKind_LEQ))) {
        compiler_Value value_left = _87f75ce3_walk_expression(left, state);
        compiler_Value value_leftc = _87f75ce3_walk_expression(((((*left).value).bin_op).right), state);
        compiler_Value value_rightc = _87f75ce3_walk_expression(right, state);
        compiler_Value value = _87f75ce3_compare(node, value_leftc, value_rightc, state);
        compiler_Value ret = _87f75ce3_make_local_value(builtins_bool_, NULL, state);
        compiler_Insn *insn_and = malloc((sizeof(compiler_Insn)));
        ((*insn_and).kind) = compiler_InsnKind_AND;
        (((*insn_and).value).arith) = ((compiler_InsnArithmetic){ .ret = ret, .left = value_left, .right = value });
        _87f75ce3_push_insn(insn_and, state);
        return ret;
    }  else {
        compiler_Value value_left = _87f75ce3_walk_expression(left, state);
        compiler_Value value_right = _87f75ce3_walk_expression(right, state);
        return _87f75ce3_compare(node, value_left, value_right, state);
    };
};
 compiler_Value _87f75ce3_walk_PointerOp(parser_Node *node, parser_NodeKind kind, _87f75ce3_State *state) {
    compiler_Value value_left = _87f75ce3_walk_expression(((((*node).value).bin_op).left), state);
    compiler_Value value_right = _87f75ce3_walk_expression(((((*node).value).bin_op).right), state);
    compiler_Value ret_ptrtoint = _87f75ce3_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *ptrtoint = malloc((sizeof(compiler_Insn)));
    ((*ptrtoint).kind) = compiler_InsnKind_PTRTOINT;
    (((*ptrtoint).value).convert) = ((compiler_InsnConvert){ .ret = ret_ptrtoint, .value = value_left });
    compiler_Value ret_arith = _87f75ce3_make_local_value(builtins_size_t_, NULL, state);
    compiler_Insn *arith = malloc((sizeof(compiler_Insn)));
    ((*arith).kind) = kind;
    (((*arith).value).arith) = ((compiler_InsnArithmetic){ .ret = ret_arith, .left = ret_ptrtoint, .right = value_right });
    compiler_Value ret_inttoptr = _87f75ce3_make_local_value(((*node).tpe), NULL, state);
    compiler_Insn *inttoptr = malloc((sizeof(compiler_Insn)));
    ((*inttoptr).kind) = compiler_InsnKind_INTTOPTR;
    (((*inttoptr).value).convert) = ((compiler_InsnConvert){ .ret = ret_inttoptr, .value = ret_arith });
    _87f75ce3_push_insn(ptrtoint, state);
    _87f75ce3_push_insn(arith, state);
    _87f75ce3_push_insn(inttoptr, state);
    return ret_inttoptr;
};
 compiler_Value _87f75ce3_walk_expression(parser_Node *node, _87f75ce3_State *state) {
    if ((!node)) {
        return _87f75ce3_NO_VALUE;
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
        case parser_NodeKind_SIZE_OF:
        return _87f75ce3_walk_SizeOf(node, state);
        break;
        case parser_NodeKind_ALIGN_OF:
        return _87f75ce3_walk_AlignOf(node, state);
        break;
        case parser_NodeKind_CAST:
        return _87f75ce3_walk_Cast(node, state);
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
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*node).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
};
 void _87f75ce3_walk_If(parser_Node *node, _87f75ce3_State *state) {
    compiler_Value cond = _87f75ce3_convert_to(node, _87f75ce3_walk_expression(((((*node).value).if_).cond), state), builtins_bool_, state);
    compiler_Label entry_label = _87f75ce3_make_label(state);
    compiler_Insn *entry = malloc((sizeof(compiler_Insn)));
    ((*entry).kind) = compiler_InsnKind_BR;
    (((*entry).value).br) = ((compiler_InsnBr){ .cond = cond, .if_true = entry_label });
    compiler_Insn *exit = malloc((sizeof(compiler_Insn)));
    ((*exit).kind) = compiler_InsnKind_BR_UNC;
    _87f75ce3_push_insn(entry, state);
    _87f75ce3_push_label(entry_label, state);
    for (int i = 0;(i < vector_length(((((*node).value).if_).body)));(i += 1)) {
        parser_Node *stmt = ((parser_Node *)vector_get(((((*node).value).if_).body), i));
        _87f75ce3_walk(stmt, state);
    }
    ;
    _87f75ce3_push_insn(exit, state);
    for (int i = 0;(i < vector_length(((((*node).value).if_).else_if)));(i += 1)) {
        parser_Node *else_if = ((parser_Node *)vector_get(((((*node).value).if_).else_if), i));
        compiler_Value cond = _87f75ce3_walk_expression(((((*else_if).value).else_if).cond), state);
        compiler_Label br_label = _87f75ce3_make_label(state);
        ((((*entry).value).br).if_false) = br_label;
        _87f75ce3_push_label(br_label, state);
        entry = malloc((sizeof(compiler_Insn)));
        ((*entry).kind) = compiler_InsnKind_BR;
        (((*entry).value).br) = ((compiler_InsnBr){ .cond = cond });
        _87f75ce3_push_insn(entry, state);
        compiler_Label entry_label = _87f75ce3_make_label(state);
        ((((*entry).value).br).if_true) = entry_label;
        _87f75ce3_push_label(entry_label, state);
        for (int i = 0;(i < vector_length(((((*else_if).value).else_if).body)));(i += 1)) {
            void *stmt = vector_get(((((*else_if).value).else_if).body), i);
            _87f75ce3_walk(stmt, state);
        }
        ;
        _87f75ce3_push_insn(exit, state);
    }
    ;
    parser_Node *else_ = ((((*node).value).if_).else_);
    if (else_) {
        compiler_Label entry_label = _87f75ce3_make_label(state);
        ((((*entry).value).br).if_false) = entry_label;
        _87f75ce3_push_label(entry_label, state);
        for (int i = 0;(i < vector_length((((*else_).value).body)));(i += 1)) {
            parser_Node *stmt = ((parser_Node *)vector_get((((*else_).value).body), i));
            _87f75ce3_walk(stmt, state);
        }
        ;
        _87f75ce3_push_insn(exit, state);
    }  ;
    compiler_Label exit_label = _87f75ce3_make_label(state);
    if ((!else_)) {
        ((((*entry).value).br).if_false) = exit_label;
    }  ;
    ((((*exit).value).br_unc).label_) = exit_label;
    _87f75ce3_push_label(exit_label, state);
};
 void _87f75ce3_walk_Return(parser_Node *node, _87f75ce3_State *state) {
    compiler_Function *current_function = ((*state).current_function);
    if ((!current_function)) {
        return ;
    }  ;
    compiler_Value value;
    if (((*current_function).multiple_returns)) {
        Array ret_args = ((Array){vector_length((((*node).value).body)), malloc((((int64)(sizeof(compiler_Value))) * ((int64)vector_length((((*node).value).body)))))});
        for (int i = 0;(i < (ret_args.size));(i += 1)) {
            (((compiler_Value *)ret_args.value)[i]) = _87f75ce3_walk_expression(((parser_Node *)vector_get((((*node).value).body), i)), state);
        }
        ;
        value = ((compiler_Value){ .kind = compiler_ValueKind_STRUCT, .values = ret_args, .tpe = ((*current_function).ret) });
    }  else {
        void *arg = vector_peek((((*node).value).body));
        value = _87f75ce3_walk_expression(arg, state);
    };
    compiler_Insn *ret = malloc((sizeof(compiler_Insn)));
    ((*ret).kind) = compiler_InsnKind_RET;
    ((((*ret).value).ret).value) = value;
    _87f75ce3_push_insn(ret, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Break(parser_Node *node, _87f75ce3_State *state) {
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    if ((!break_insn)) {
        typechecking_errorn(node, ((Array){30, "break used outside of a loop\x0a"""}));
        return ;
    }  ;
    _87f75ce3_push_insn(break_insn, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Continue(parser_Node *node, _87f75ce3_State *state) {
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    if ((!continue_insn)) {
        typechecking_errorn(node, ((Array){33, "continue used outside of a loop\x0a"""}));
        return ;
    }  ;
    _87f75ce3_push_insn(continue_insn, state);
    (((*state).counter) += 1);
};
 void _87f75ce3_walk_Loop(parser_Node *node, _87f75ce3_State *state) {
    _87f75ce3_push_loop_state(state);
    compiler_Insn *continue_insn = _87f75ce3_get_continue_insn(state);
    compiler_Insn *break_insn = _87f75ce3_get_break_insn(state);
    _87f75ce3_push_insn(continue_insn, state);
    compiler_Label start_label = _87f75ce3_make_label(state);
    _87f75ce3_push_label(start_label, state);
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        void *n = vector_get((((*node).value).body), i);
        _87f75ce3_walk(n, state);
    }
    ;
    _87f75ce3_push_insn(continue_insn, state);
    compiler_Label end_label = _87f75ce3_make_label(state);
    _87f75ce3_push_label(end_label, state);
    ((((*continue_insn).value).br_unc).label_) = start_label;
    ((((*break_insn).value).br_unc).label_) = end_label;
    _87f75ce3_pop_loop_state(state);
};
 void _87f75ce3_walk_VarDecl(parser_Node *node, _87f75ce3_State *state) {
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
            compiler_Insn *insn = malloc((sizeof(compiler_Insn)));
            ((*insn).kind) = compiler_InsnKind_ALLOCA;
            (((*insn).value).alloca) = ((compiler_InsnAlloca){ .ret = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = tpe }) });
            _87f75ce3_push_insn(insn, state);
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
 void _87f75ce3_walk(parser_Node *node, _87f75ce3_State *state) {
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
        case parser_NodeKind_LOOP:
        _87f75ce3_walk_Loop(node, state);
        break;
        default:
        _87f75ce3_walk_expression(node, state);
    }
    ;
};
 void _87f75ce3_create_function(typechecking_Type *tpe, vector_Vector *body, scope_Scope *scpe, _87f75ce3_State *state) {
    compiler_Function *function = malloc((sizeof(compiler_Function)));
    ((*function).name) = typechecking_mangle_function_name(((*tpe).type_name), ((*tpe).parameter_t));
    ((*function).multiple_returns) = false;
    ((*function).forward_declare) = true;
    if (body) {
        ((*function).forward_declare) = false;
    }  ;
    if ((vector_length(((*tpe).return_t)) > 1)) {
        typechecking_Type *ret_tpe = typechecking_make_anonymous_type(typechecking_TypeKind_STRUCT, ((*state).module));
        ((*ret_tpe).packed) = false;
        int length = vector_length(((*tpe).return_t));
        Array fields = ((Array){length, malloc((((int64)(sizeof(typechecking_StructMember))) * ((int64)length)))});
        int offset = 0;
        int align = 1;
        for (int i = 0;(i < length);(i += 1)) {
            typechecking_Type *t = ((typechecking_Type *)vector_get(((*tpe).return_t), i));
            string name = util_int_to_str(i);
            offset = ((int)(ceil((((double)offset) / ((double)((*t).align)))) * ((double)((*tpe).align))));
            align = util_lcm(align, ((*t).align));
            (((typechecking_StructMember *)fields.value)[i]) = ((typechecking_StructMember){ name, t, offset });
            (offset += ((*t).size));
        }
        ;
        offset = ((int)(ceil((((double)offset) / ((double)align))) * ((double)align)));
        ((*ret_tpe).size) = offset;
        ((*ret_tpe).align) = align;
        ((*ret_tpe).fields) = fields;
        ((*function).ret) = ret_tpe;
        ((*function).multiple_returns) = true;
    } else if ((vector_length(((*tpe).return_t)) == 1)) {
        ((*function).ret) = ((typechecking_Type *)vector_get(((*tpe).return_t), 0));
    } else {
        ((*function).ret) = NULL;
    };
    ((*function).args) = ((*tpe).parameter_t);
    if (body) {
        ((*state).current_function) = function;
        ((*state).counter) = 0;
        ((*state).counter) = 0;
        compiler_Block *block = malloc((sizeof(compiler_Block)));
        ((*block).label_) = ((Array){6, "start"});
        ((*block).insn) = vector_make();
        ((*block).next) = NULL;
        ((*function).block) = block;
        ((*state).current_block) = block;
        for (int i = 0;(i < vector_length(((*tpe).parameter_t)));(i += 1)) {
            typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
            string name = ((*scope_get(scpe, parser_make_identifier(((Array){1, (string[1]){ ((*np).name) }})))).assembly_name);
            buffer_Buffer buf = buffer_make_buffer();
            buffer_append_str((&buf), name);
            buffer_append_str((&buf), ((Array){7, ".value"}));
            ((*np).name) = buffer_to_string((&buf));
            compiler_Insn *alloca = malloc((sizeof(compiler_Insn)));
            ((*alloca).kind) = compiler_InsnKind_ALLOCA;
            (((*alloca).value).alloca) = ((compiler_InsnAlloca){ .ret = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = ((*np).value) }) });
            _87f75ce3_push_insn(alloca, state);
            compiler_Insn *store = malloc((sizeof(compiler_Insn)));
            ((*store).kind) = compiler_InsnKind_STORE;
            (((*store).value).store) = ((compiler_InsnStore){ .value = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = ((*np).name), .tpe = ((*np).value) }), .loc = ((compiler_Value){ .kind = compiler_ValueKind_LOCAL, .name = name, .tpe = typechecking_pointer(((*np).value)) }) });
            _87f75ce3_push_insn(store, state);
        }
        ;
        for (int i = 0;(i < vector_length(body));(i += 1)) {
            parser_Node *node = ((parser_Node *)vector_get(body, i));
            _87f75ce3_walk(node, state);
        }
        ;
        if ((!((*function).ret))) {
            compiler_Insn *last_insn = ((compiler_Insn *)vector_peek(((*((*state).current_block)).insn)));
            if ((((bool)(!last_insn)) || (((*last_insn).kind) != compiler_InsnKind_RET))) {
                compiler_Insn *ret = malloc((sizeof(compiler_Insn)));
                ((*ret).kind) = compiler_InsnKind_RET;
                ((((*ret).value).ret).value) = _87f75ce3_NO_VALUE;
                _87f75ce3_push_insn(ret, state);
            }  ;
        }  ;
    }  ;
    map_put(((*((*state).result)).functions), ((*function).name), function);
};
 void _87f75ce3_walk_Def(parser_Node *node, _87f75ce3_State *state) {
    _87f75ce3_create_function(((*node).tpe), ((((*node).value).def_).body), ((*node).scope), state);
};
 void _87f75ce3_walk_TypeDecl(parser_Node *node, _87f75ce3_State *state) {
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
 void _87f75ce3_walk_top_VarDecl(parser_Node *node, vector_Vector *body, _87f75ce3_State *state) {
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
            compiler_Value *global = malloc((sizeof(compiler_Value)));
            ((*global).kind) = compiler_ValueKind_GLOBAL;
            ((*global).undef) = false;
            ((*global).name) = name;
            ((*global).tpe) = ((*v).tpe);
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
vector_Vector *_87f75ce3_imported_modules;
 void _87f75ce3_walk_top_Import(parser_Node *node, vector_Vector *body, _87f75ce3_State *state) {
    vector_Vector *imports = (((*node).value).body);
    for (int i = 0;(i < vector_length(imports));(i += 1)) {
        parser_Node *imprt = ((parser_Node *)vector_get(imports, i));
        parser_Node *name = ((((*imprt).value).import_module).name);
        string filename = toolchain_find_module_file(name);
        if ((((filename.size) - 1) == 0)) {
            continue;
        }  ;
        bool found = false;
        for (int j = 0;(j < vector_length(_87f75ce3_imported_modules));(j += 1)) {
            string imported = (*((string *)vector_get(_87f75ce3_imported_modules, j)));
            if ((strcmp((imported.value), (filename.value)) == 0)) {
                found = true;
                break;
            }  ;
        }
        ;
        if (found) {
            continue;
        }  ;
        vector_push(_87f75ce3_imported_modules, util_copy_string(filename));
        vector_Vector *args = vector_make();
        parser_Node *arg = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "args"}) }}));
        ((*arg).scope) = ((*node).scope);
        ((*arg).tpe) = typechecking_array(builtins_string_);
        vector_push(args, arg);
        int name_size = vector_length((((*name).value).body));
        Array array = ((Array){(name_size + ((int)1)), malloc((((int64)(sizeof(string))) * ((int64)(name_size + ((int)1)))))});
        for (int j = 0;(j < name_size);(j += 1)) {
            (((string *)array.value)[j]) = (*((string *)vector_get((((*name).value).body), j)));
        }
        ;
        (((string *)array.value)[(((int64)(array.size)) - ((int64)1))]) = ((Array){5, "main"});
        parser_Node *ident = parser_make_identifier(array);
        ((*ident).scope) = ((*node).scope);
        scope_Scope *sc = ((scope_Scope *)((*scope_get(((*node).scope), name)).value));
        parser_Node *call = malloc((sizeof(parser_Node)));
        ((*call).kind) = parser_NodeKind_FUNC_CALL;
        ((*call).scope) = ((*node).scope);
        ((*call).tpe) = ((*((scope_Value *)map_get(((*sc).fields), ((Array){5, "main"})))).tpe);
        (((*call).value).func_call) = ((parser_NodeFuncCall){ .left = ident, .args = args, .kwargs = vector_make() });
        vector_push(body, call);
    }
    ;
};
DLL_EXPORT compiler_Result * compiler_compile(toolchain_Module *module) {
    parser_Node *node = ((*module).node);
    assert((((*node).kind) == parser_NodeKind_PROGRAM));
    vector_Vector *body = vector_make();
    _87f75ce3_State *state = malloc((sizeof(_87f75ce3_State)));
    (*state) = ((_87f75ce3_State){ .filename = ((*module).filename), .module = ((*module).module), .loops = vector_make(), .result = malloc((sizeof(compiler_Result))) });
    (*((*state).result)) = ((compiler_Result){ .functions = map_make(), .structures = map_make(), .globals = map_make() });
    scope_Scope *sc = ((*node).scope);
    if (((*sc).imports)) {
        for (int i = 0;(i < vector_length(((*sc).imports)));(i += 1)) {
            toolchain_Module *module = ((toolchain_Module *)vector_get(((*sc).imports), i));
            scope_Scope *m_scope = ((*module).scope);
            Array keys = map_keys(((*m_scope).fields));
            for (int i = 0;(i < (keys.size));(i += 1)) {
                scope_Value *value = ((scope_Value *)map_get(((*m_scope).fields), (((string *)keys.value)[i])));
                if ((((bool)typechecking_is_function(((*value).tpe))) && ((bool)(((int)((*value).share)) & ((int)parser_ShareMarker_EXPORT))))) {
                    _87f75ce3_create_function(((*value).tpe), NULL, sc, state);
                }  ;
            }
            ;
        }
        ;
    }  ;
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
    parser_Node *ident = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "main"}) }}));
    (((*ident).loc).module) = ((*module).module);
    (((*ident).loc).filename) = ((*module).filename);
    typechecking_Type *main_tpe = typechecking_make_type(typechecking_TypeKind_FUNCTION, ident);
    typechecking_Type *string_array_tpe = typechecking_array(builtins_string_);
    typechecking_NamedParameter *named = malloc((sizeof(typechecking_NamedParameter)));
    ((*named).name) = ((Array){5, "args"});
    ((*named).value) = string_array_tpe;
    vector_Vector *args = vector_make();
    vector_push(args, named);
    ((*main_tpe).parameter_t) = args;
    ((*main_tpe).return_t) = vector_make();
    parser_Node *args_ident = parser_make_identifier(((Array){1, (Array[1]){ ((Array){5, "args"}) }}));
    scope_create_variable(((*node).scope), args_ident, parser_ShareMarker_NONE, parser_VarDecl_VAR, string_array_tpe, NULL);
    scope_Value *value = scope_get(((*node).scope), args_ident);
    ((*value).global) = false;
    scope_create_function(((*node).scope), ident, parser_ShareMarker_EXPORT, main_tpe, false);
    _87f75ce3_create_function(main_tpe, body, ((*node).scope), state);
    return ((*state).result);
};
DLL_EXPORT void compiler_p_main(Array args) {
    ;
    _87f75ce3_NO_VALUE = ((compiler_Value){ .kind = compiler_ValueKind_NULL, .tpe = NULL });
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
    _87f75ce3_imported_modules = vector_make();
};


#endif
