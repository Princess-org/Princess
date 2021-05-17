/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _codegen_H
#define _codegen_H
#include "vector.c"
#include "buffer.c"
#include "map.c"
#include "util.c"
#include "compiler.c"
#include "typechecking.c"
 string _574f02bf_type_to_str(typechecking_Type *tpe) {
    if ((!tpe)) {
        return ((Array){5, "void"});
    }  ;
    buffer_Buffer buf = buffer_make_buffer();
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_BOOL:
        buffer_append_str((&buf), ((Array){3, "i1"}));
        break;
        case typechecking_TypeKind_WORD:
        buffer_append_char((&buf), 'i');
        buffer_append_str((&buf), util_int_to_str((((int64)((*tpe).size)) * ((int64)8))));
        break;
        case typechecking_TypeKind_INT_LITERAL:
        buffer_append_char((&buf), 'i');
        buffer_append_str((&buf), util_int_to_str((((int64)(sizeof(int))) * ((int64)8))));
        break;
        case typechecking_TypeKind_FLOAT:
        switch (((*tpe).size)) {
            break;
            case 4:
            buffer_append_str((&buf), ((Array){6, "float"}));
            break;
            case 8:
            buffer_append_str((&buf), ((Array){7, "double"}));
            break;
            default:
            assert(false);
        }
        ;
        break;
        case typechecking_TypeKind_POINTER:
        if (((*tpe).tpe)) {
            buffer_append_str((&buf), _574f02bf_type_to_str(((*tpe).tpe)));
            buffer_append_char((&buf), '*');
        }  else {
            buffer_append_str((&buf), ((Array){4, "i8*"}));
        };
        break;
        case typechecking_TypeKind_ARRAY:
        buffer_append_str((&buf), ((Array){3, "{i"}));
        buffer_append_str((&buf), util_int_to_str((((int64)(sizeof(size_t))) * ((int64)8))));
        buffer_append_str((&buf), ((Array){3, ", "}));
        buffer_append_str((&buf), _574f02bf_type_to_str(((*tpe).tpe)));
        buffer_append_str((&buf), ((Array){3, "*}"}));
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        buffer_append_char((&buf), '[');
        buffer_append_str((&buf), util_int_to_str(((*tpe).length)));
        buffer_append_str((&buf), ((Array){4, " x "}));
        buffer_append_str((&buf), _574f02bf_type_to_str(((*tpe).tpe)));
        buffer_append_char((&buf), ']');
        break;
        case typechecking_TypeKind_STRUCT ... typechecking_TypeKind_UNION:
        buffer_append_str((&buf), ((Array){3, "%\""}));
        buffer_append_str((&buf), ((*tpe).type_name));
        buffer_append_char((&buf), '\"');
        break;
        default:
        assert(false);
    }
    ;
    return buffer_to_string((&buf));
};
 string _574f02bf_value_to_str(compiler_Value value) {
    buffer_Buffer buf = buffer_make_buffer();
    if ((value.undef)) {
        buffer_append_str((&buf), ((Array){6, "undef"}));
    }  else {
        switch (((int)(value.kind))) {
            break;
            case compiler_ValueKind_LOCAL:
            buffer_append_char((&buf), '%');
            buffer_append_str((&buf), (value.name));
            break;
            case compiler_ValueKind_GLOBAL:
            buffer_append_str((&buf), ((Array){3, "@\""}));
            buffer_append_str((&buf), (value.name));
            buffer_append_char((&buf), '\"');
            break;
            case compiler_ValueKind_BOOL:
            if ((value.i)) {
                buffer_append_str((&buf), ((Array){5, "true"}));
            }  else {
                buffer_append_str((&buf), ((Array){6, "false"}));
            };
            break;
            case compiler_ValueKind_INT:
            buffer_append_str((&buf), util_uint_to_str_sign((value.sign), (value.i)));
            break;
            case compiler_ValueKind_FLOAT:
            buffer_append_str((&buf), util_double_to_hex_str((value.f)));
            break;
            case compiler_ValueKind_STRUCT:
            buffer_append_char((&buf), '{');
            for (int i = 0;(i < ((value.values).size));(i += 1)) {
                compiler_Value val = ((compiler_Value)(((compiler_Value *)(value.values).value)[i]));
                buffer_append_str((&buf), _574f02bf_type_to_str((val.tpe)));
                buffer_append_char((&buf), ' ');
                buffer_append_str((&buf), _574f02bf_value_to_str(val));
                if ((i < (((int64)((value.values).size)) - ((int64)1)))) {
                    buffer_append_str((&buf), ((Array){3, ", "}));
                }  ;
            }
            ;
            buffer_append_char((&buf), '}');
            break;
            case compiler_ValueKind_ARRAY:
            buffer_append_char((&buf), '[');
            for (int i = 0;(i < ((value.values).size));(i += 1)) {
                compiler_Value val = ((compiler_Value)(((compiler_Value *)(value.values).value)[i]));
                buffer_append_str((&buf), _574f02bf_type_to_str((val.tpe)));
                buffer_append_char((&buf), ' ');
                buffer_append_str((&buf), _574f02bf_value_to_str(val));
                if ((i < (((int64)((value.values).size)) - ((int64)1)))) {
                    buffer_append_str((&buf), ((Array){3, ", "}));
                }  ;
            }
            ;
            buffer_append_char((&buf), ']');
            break;
            case compiler_ValueKind_NULL:
            buffer_append_str((&buf), ((Array){5, "null"}));
            break;
            default:
            printf((((Array){5, "%d%s"}).value), (value.kind), (((Array){2, "\x0a"""}).value));
            assert(false);
        }
        ;
    };
    return buffer_to_string((&buf));
};
 void _574f02bf_emit_arithmetic(void *fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
    fprintf(fp, (((Array){5, "%s%s"}).value), (name.value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).arith).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).left)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).right)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_ret(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){6, "\x09""ret "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).ret).value).tpe)).value));
    if ((((((*insn).value).ret).value).tpe)) {
        fprintf(fp, (((Array){5, "%s%s"}).value), (((Array){2, " "}).value), (_574f02bf_value_to_str(((((*insn).value).ret).value)).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_call(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    if ((((((*insn).value).call).ret).tpe)) {
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).call).ret)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){6, "call "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).call).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).call).name)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "("}).value));
    size_t argsize = (((((*insn).value).call).args).size);
    for (int i = 0;(i < argsize);(i += 1)) {
        compiler_Value arg = (((compiler_Value *)((((*insn).value).call).args).value)[i]);
        fprintf(fp, (((Array){5, "%s%s"}).value), (_574f02bf_type_to_str((arg.tpe)).value), (((Array){2, " "}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(arg).value));
        if ((i < (((int64)argsize) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ")\x0a"""}).value));
};
 void _574f02bf_emit_alloca(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).alloca).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){11, " = alloca "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).alloca).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_store(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){7, "store "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).store).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).store).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).store).loc).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).store).loc)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_load(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).load).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, " = load "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).load).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).load).loc).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).load).loc)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_br(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, "br "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).br).cond).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).br).cond)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br).if_true).name).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br).if_false).name).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_br_unc(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){11, "br label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br_unc).label_).name).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_insert_value(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).insert_value).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){16, " = insertvalue "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).insert_value).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).insert_value).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).insert_value).element).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).insert_value).element)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    Array index = ((((*insn).value).insert_value).index);
    for (int i = 0;(i < (index.size));(i += 1)) {
        fprintf(fp, (((Array){3, "%s"}).value), (util_int_to_str((((int *)index.value)[i])).value));
        if ((i < (((int64)(index.size)) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_extract_value(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).extract_value).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){17, " = extractvalue "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).extract_value).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).extract_value).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    Array index = ((((*insn).value).extract_value).index);
    for (int i = 0;(i < (index.size));(i += 1)) {
        fprintf(fp, (((Array){3, "%s"}).value), (util_int_to_str((((int *)index.value)[i])).value));
        if ((i < (((int64)(index.size)) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_convert(void *fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).convert).ret)).value));
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){4, " = "}).value), (name.value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).convert).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).convert).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){5, " to "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).convert).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_gep(void *fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).gep).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){18, " = getelementptr "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(((((*insn).value).gep).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).gep).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).gep).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    Array index = ((((*insn).value).gep).index);
    for (int i = 0;(i < (index.size));(i += 1)) {
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(((((compiler_Value *)index.value)[i]).tpe)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str((((compiler_Value *)index.value)[i])).value));
        if ((i < (((int64)(index.size)) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_compare(void *fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).ret)).value));
    fprintf(fp, (((Array){11, "%s%s%s%s%s"}).value), (((Array){4, " = "}).value), (name.value), (((Array){2, " "}).value), (((((*insn).value).cmp).op).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).cmp).left).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).left)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).right)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit(void *fp, compiler_Insn *insn) {
    switch (((int)((*insn).kind))) {
        break;
        case compiler_InsnKind_ADD:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "add"}), insn);
        break;
        case compiler_InsnKind_FADD:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "fadd"}), insn);
        break;
        case compiler_InsnKind_SUB:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "sub"}), insn);
        break;
        case compiler_InsnKind_FSUB:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "fsub"}), insn);
        break;
        case compiler_InsnKind_MUL:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "mul"}), insn);
        break;
        case compiler_InsnKind_FMUL:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "fmul"}), insn);
        break;
        case compiler_InsnKind_SREM:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "srem"}), insn);
        break;
        case compiler_InsnKind_UREM:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "urem"}), insn);
        break;
        case compiler_InsnKind_FREM:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "frem"}), insn);
        break;
        case compiler_InsnKind_SDIV:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "sdiv"}), insn);
        break;
        case compiler_InsnKind_UDIV:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "udiv"}), insn);
        break;
        case compiler_InsnKind_FDIV:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "fdiv"}), insn);
        break;
        case compiler_InsnKind_AND:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "and"}), insn);
        break;
        case compiler_InsnKind_OR:
        _574f02bf_emit_arithmetic(fp, ((Array){3, "or"}), insn);
        break;
        case compiler_InsnKind_XOR:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "xor"}), insn);
        break;
        case compiler_InsnKind_ASHR:
        _574f02bf_emit_arithmetic(fp, ((Array){5, "ashr"}), insn);
        break;
        case compiler_InsnKind_SHL:
        _574f02bf_emit_arithmetic(fp, ((Array){4, "shl"}), insn);
        break;
        case compiler_InsnKind_TRUNC:
        _574f02bf_emit_convert(fp, ((Array){6, "trunc"}), insn);
        break;
        case compiler_InsnKind_ZEXT:
        _574f02bf_emit_convert(fp, ((Array){5, "zext"}), insn);
        break;
        case compiler_InsnKind_SEXT:
        _574f02bf_emit_convert(fp, ((Array){5, "sext"}), insn);
        break;
        case compiler_InsnKind_FPTRUNC:
        _574f02bf_emit_convert(fp, ((Array){8, "fptrunc"}), insn);
        break;
        case compiler_InsnKind_FPEXT:
        _574f02bf_emit_convert(fp, ((Array){6, "fpext"}), insn);
        break;
        case compiler_InsnKind_FPTOUI:
        _574f02bf_emit_convert(fp, ((Array){7, "fptoui"}), insn);
        break;
        case compiler_InsnKind_FPTOSI:
        _574f02bf_emit_convert(fp, ((Array){7, "fptosi"}), insn);
        break;
        case compiler_InsnKind_UITOFP:
        _574f02bf_emit_convert(fp, ((Array){7, "uitofp"}), insn);
        break;
        case compiler_InsnKind_SITOFP:
        _574f02bf_emit_convert(fp, ((Array){7, "sitofp"}), insn);
        break;
        case compiler_InsnKind_PTRTOINT:
        _574f02bf_emit_convert(fp, ((Array){9, "ptrtoint"}), insn);
        break;
        case compiler_InsnKind_INTTOPTR:
        _574f02bf_emit_convert(fp, ((Array){9, "inttoptr"}), insn);
        break;
        case compiler_InsnKind_BITCAST:
        _574f02bf_emit_convert(fp, ((Array){8, "bitcast"}), insn);
        break;
        case compiler_InsnKind_ICMP:
        _574f02bf_emit_compare(fp, ((Array){5, "icmp"}), insn);
        break;
        case compiler_InsnKind_FCMP:
        _574f02bf_emit_compare(fp, ((Array){5, "fcmp"}), insn);
        break;
        case compiler_InsnKind_GETELEMENTPTR:
        _574f02bf_emit_gep(fp, insn);
        break;
        case compiler_InsnKind_INSERTVALUE:
        _574f02bf_emit_insert_value(fp, insn);
        break;
        case compiler_InsnKind_EXTRACTVALUE:
        _574f02bf_emit_extract_value(fp, insn);
        break;
        case compiler_InsnKind_ALLOCA:
        _574f02bf_emit_alloca(fp, insn);
        break;
        case compiler_InsnKind_STORE:
        _574f02bf_emit_store(fp, insn);
        break;
        case compiler_InsnKind_LOAD:
        _574f02bf_emit_load(fp, insn);
        break;
        case compiler_InsnKind_CALL:
        _574f02bf_emit_call(fp, insn);
        break;
        case compiler_InsnKind_BR:
        _574f02bf_emit_br(fp, insn);
        break;
        case compiler_InsnKind_BR_UNC:
        _574f02bf_emit_br_unc(fp, insn);
        break;
        case compiler_InsnKind_RET:
        _574f02bf_emit_ret(fp, insn);
        break;
        default:
        assert(false);
    }
    ;
};
 void _574f02bf_emit_block(void *fp, compiler_Block *block) {
    fprintf(fp, (((Array){5, "%s%s"}).value), (((*block).label_).value), (((Array){3, ":\x0a"""}).value));
    for (int i = 0;(i < vector_length(((*block).insn)));(i += 1)) {
        compiler_Insn *insn = ((compiler_Insn *)vector_get(((*block).insn), i));
        _574f02bf_emit(fp, insn);
    }
    ;
};
 void _574f02bf_emit_function(void *fp, compiler_Function *function) {
    if (((*function).forward_declare)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, "declare "}).value));
    }  else {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, "define "}).value));
    };
    fprintf(fp, (((Array){5, "%s%s"}).value), (_574f02bf_type_to_str(((*function).ret)).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "@\""}).value), (((*function).name).value), (((Array){3, "\"("}).value));
    int len = vector_length(((*function).args));
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_get(((*function).args), i));
        typechecking_Type *tpe = ((*np).value);
        string name = ((*np).name);
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(tpe).value));
        if ((!((*function).forward_declare))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
            fprintf(fp, (((Array){5, "%s%s"}).value), (((Array){2, "%"}).value), (name.value));
        }  ;
        if ((i < (len - ((int)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, ")"}).value));
    if ((!((*function).forward_declare))) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " {\x0a"""}).value));
        compiler_Block *block = ((*function).block);
        while (block) {
            _574f02bf_emit_block(fp, block);
            block = ((*block).next);
        }
        ;
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "}\x0a"""}).value));
    }  else {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    };
};
 void _574f02bf_emit_structure(void *fp, typechecking_Type *structure) {
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "%\""}).value), (((*structure).type_name).value), (((Array){2, "\""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, " = type "}).value));
    if (((*structure).packed)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "<"}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "{"}).value));
    size_t len = (((*structure).fields).size);
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_StructMember member = (((typechecking_StructMember *)((*structure).fields).value)[i]);
        typechecking_Type *tpe = (member.tpe);
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(tpe).value));
        if ((i < (((int64)len) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "}"}).value));
    if (((*structure).packed)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, ">"}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_global(void *fp, compiler_Value *global) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str((*global)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){11, " = global "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(((*global).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){18, " zeroinitializer\x0a"""}).value));
};
 void _574f02bf_gen_main_function(void *fp) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){43, "define i32 @main(i32 %argc, i8** %argv) {\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){32, "\x09""%size = zext i32 %argc to i64\x0a"""}).value));
    fprintf(fp, (((Array){8, "%s%zu%s"}).value), (((Array){27, "\x09""%size.1 = mul i64 %size, "}).value), (sizeof(string)), (((Array){2, "\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){40, "\x09""%args = call i8* @malloc(i64 %size.1)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){45, "\x09""%args.1 = bitcast i8* %args to {i32, i8*}*\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){38, "\x09""%args.2 = alloca {i32, {i32, i8*}*}\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){29, "\x09""call void @free(i8* %args)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){12, "\x09""ret i32 0\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "}\x0a"""}).value));
};
#include "toolchain.c"
 void _574f02bf_gen_cstdlib_includes(void *fp, toolchain_Module *module) {
    Array keys = map_keys(((*module).imported));
    buffer_Buffer cmd_buffer = buffer_make_buffer();
    buffer_append_str((&cmd_buffer), ((Array){28, "python3.9 cstdlib/genll.py "}));
    for (int i = 0;(i < (keys.size));(i += 1)) {
        string cfunc = (((string *)keys.value)[i]);
        buffer_append_str((&cmd_buffer), cfunc);
        buffer_append_char((&cmd_buffer), ' ');
    }
    ;
    system((buffer_to_string((&cmd_buffer)).value));
    FILE* fp2 = fopen((((Array){18, "cstdlib/header.ll"}).value), (((Array){2, "r"}).value));
    string header = util_read_all(fp2);
    fclose(fp2);
    fprintf(fp, (((Array){3, "%s"}).value), (header.value));
    free((header.value));
};
DLL_EXPORT string codegen_gen(toolchain_Module *module) {
    compiler_Result *result = ((*module).result);
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_str((&buf), toolchain_outfolder);
    buffer_append_char((&buf), '/');
    buffer_append_str((&buf), util_replace_all(((*module).module), ((Array){3, "::"}), ((Array){2, "."})));
    buffer_append_str((&buf), ((Array){4, ".ll"}));
    string outfile = buffer_to_string((&buf));
    FILE* fp = fopen((outfile.value), (((Array){2, "w"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){79, "; This file was compiled by the grace of your highness Princess Vic Nightfall\x0a"""}).value));
    Array keys_structures = map_keys(((*result).structures));
    for (int i = 0;(i < (keys_structures.size));(i += 1)) {
        typechecking_Type *structure = ((typechecking_Type *)map_get(((*result).structures), (((string *)keys_structures.value)[i])));
        _574f02bf_emit_structure(fp, structure);
    }
    ;
    Array keys_functions = map_keys(((*result).functions));
    for (int i = 0;(i < (keys_functions.size));(i += 1)) {
        compiler_Function *function = ((compiler_Function *)map_get(((*result).functions), (((string *)keys_functions.value)[i])));
        _574f02bf_emit_function(fp, function);
    }
    ;
    Array keys_globals = map_keys(((*result).globals));
    for (int i = 0;(i < (keys_globals.size));(i += 1)) {
        compiler_Value *global = ((compiler_Value *)map_get(((*result).globals), (((string *)keys_globals.value)[i])));
        _574f02bf_emit_global(fp, global);
    }
    ;
    if ((strcmp((((*module).module).value), (((Array){5, "main"}).value)) == 0)) {
        map_put(((*module).imported), ((Array){7, "malloc"}), map_sentinel);
        map_put(((*module).imported), ((Array){5, "free"}), map_sentinel);
        _574f02bf_gen_main_function(fp);
    }  ;
    _574f02bf_gen_cstdlib_includes(fp, module);
    fclose(fp);
    return outfile;
};
DLL_EXPORT void codegen_p_main(Array args) {

};


#endif
