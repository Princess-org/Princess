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
#include "typechecking.c"
#include "compiler.c"
#include "scope.c"
#include "debug.c"
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
        if (((*tpe).tpe)) {
            buffer_append_str((&buf), _574f02bf_type_to_str(((*tpe).tpe)));
            buffer_append_char((&buf), '*');
        }  else {
            buffer_append_str((&buf), ((Array){4, "i8*"}));
        };
        buffer_append_str((&buf), ((Array){2, "}"}));
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        buffer_append_char((&buf), '[');
        buffer_append_str((&buf), util_int_to_str(((*tpe).length)));
        buffer_append_str((&buf), ((Array){4, " x "}));
        buffer_append_str((&buf), _574f02bf_type_to_str(((*tpe).tpe)));
        buffer_append_char((&buf), ']');
        break;
        case typechecking_TypeKind_STRUCT:
        if ((((((*tpe).type_name).size) - 1) > 0)) {
            buffer_append_str((&buf), ((Array){3, "%\""}));
            buffer_append_str((&buf), ((*tpe).type_name));
            buffer_append_char((&buf), '\"');
        }  else {
            buffer_append_char((&buf), '{');
            size_t len = (((*tpe).fields).size);
            for (int i = 0;(i < len);(i += 1)) {
                typechecking_StructMember member = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
                typechecking_Type *tpe = (member.tpe);
                buffer_append_str((&buf), _574f02bf_type_to_str(tpe));
                if ((i < (((int64)len) - ((int64)1)))) {
                    buffer_append_str((&buf), ((Array){3, ", "}));
                }  ;
            }
            ;
            buffer_append_char((&buf), '}');
        };
        break;
        case typechecking_TypeKind_UNION:
        if ((((((*tpe).type_name).size) - 1) > 0)) {
            buffer_append_str((&buf), ((Array){3, "%\""}));
            buffer_append_str((&buf), ((*tpe).type_name));
            buffer_append_char((&buf), '\"');
        }  else {
            buffer_append_str((&buf), ((Array){3, "{["}));
            buffer_append_str((&buf), util_int_to_str(((*tpe).size)));
            buffer_append_str((&buf), ((Array){8, " x i8]}"}));
        };
        break;
        case typechecking_TypeKind_ENUM:
        return _574f02bf_type_to_str(((*tpe).tpe));
        break;
        case typechecking_TypeKind_FUNCTION:
        assert((vector_length(((*tpe).return_t)) <= 1));
        if ((vector_length(((*tpe).return_t)) == 1)) {
            typechecking_Type *ret = ((typechecking_Type *)vector_get(((*tpe).return_t), 0));
            buffer_append_str((&buf), _574f02bf_type_to_str(ret));
        }  else {
            buffer_append_str((&buf), ((Array){5, "void"}));
        };
        buffer_append_str((&buf), ((Array){3, " ("}));
        size_t len = vector_length(((*tpe).parameter_t));
        for (int i = 0;(i < len);(i += 1)) {
            typechecking_NamedParameter *param = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
            buffer_append_str((&buf), _574f02bf_type_to_str(((*param).value)));
            if ((i < (((int64)len) - ((int64)1)))) {
                buffer_append_str((&buf), ((Array){3, ", "}));
            }  ;
        }
        ;
        buffer_append_str((&buf), ((Array){2, ")"}));
        break;
        case typechecking_TypeKind_NULL:
        buffer_append_str((&buf), ((Array){5, "null"}));
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*tpe).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
    return buffer_to_string((&buf));
};
 string _574f02bf_debug_value_to_str(compiler_DebugValue value) {
    buffer_Buffer buf = buffer_make_buffer();
    switch (((int)(value.kind))) {
        break;
        case compiler_DebugValueKind_STRING:
        buffer_append_str((&buf), util_repr((value.s), false));
        break;
        case compiler_DebugValueKind_INT:
        buffer_append_str((&buf), util_int_to_str((value.i)));
        break;
        case compiler_DebugValueKind_BOOL:
        if ((value.i)) {
            buffer_append_str((&buf), ((Array){5, "true"}));
        }  else {
            buffer_append_str((&buf), ((Array){6, "false"}));
        };
        break;
        case compiler_DebugValueKind_CONST:
        buffer_append_str((&buf), (value.name));
        break;
        case compiler_DebugValueKind_METADATA:
        buffer_append_char((&buf), '!');
        buffer_append_str((&buf), (value.name));
    }
    ;
    return buffer_to_string((&buf));
};
 string _574f02bf_value_to_str(compiler_Value value) {
    buffer_Buffer buf = buffer_make_buffer();
    switch (((int)(value.kind))) {
        break;
        case compiler_ValueKind_ZEROINITIALIZER:
        buffer_append_str((&buf), ((Array){16, "zeroinitializer"}));
        break;
        case compiler_ValueKind_NULL:
        buffer_append_str((&buf), ((Array){5, "null"}));
        break;
        case compiler_ValueKind_UNDEF:
        buffer_append_str((&buf), ((Array){6, "undef"}));
        break;
        case compiler_ValueKind_METADATA:
        buffer_append_char((&buf), '!');
        buffer_append_str((&buf), (value.name));
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
        if ((value.metadata)) {
            buffer_append_char((&buf), '!');
        }  ;
        buffer_append_char((&buf), '{');
        for (int i = 0;(i < ((value.values).size));(i += 1)) {
            compiler_Value val = ((compiler_Value)(((compiler_Value *)(value.values).value)[i]));
            if ((val.tpe)) {
                buffer_append_str((&buf), _574f02bf_type_to_str((val.tpe)));
                buffer_append_char((&buf), ' ');
            }  ;
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
            if ((val.tpe)) {
                buffer_append_str((&buf), _574f02bf_type_to_str((val.tpe)));
                buffer_append_char((&buf), ' ');
            }  ;
            buffer_append_str((&buf), _574f02bf_value_to_str(val));
            if ((i < (((int64)((value.values).size)) - ((int64)1)))) {
                buffer_append_str((&buf), ((Array){3, ", "}));
            }  ;
        }
        ;
        buffer_append_char((&buf), ']');
        break;
        case compiler_ValueKind_STRING:
        if ((value.metadata)) {
            buffer_append_char((&buf), '!');
        }  else {
            buffer_append_char((&buf), 'c');
        };
        buffer_append_str((&buf), util_repr((value.s), (!(value.metadata))));
        break;
        case compiler_ValueKind_DEBUG_INFO:
        if ((value.distinct)) {
            buffer_append_str((&buf), ((Array){10, "distinct "}));
        }  ;
        buffer_append_char((&buf), '!');
        buffer_append_str((&buf), (value.name));
        buffer_append_char((&buf), '(');
        for (int i = 0;(i < ((value.debug_values).size));(i += 1)) {
            compiler_DebugParam val = ((compiler_DebugParam)(((compiler_DebugParam *)(value.debug_values).value)[i]));
            buffer_append_str((&buf), (val.name));
            buffer_append_str((&buf), ((Array){3, ": "}));
            buffer_append_str((&buf), _574f02bf_debug_value_to_str((val.value)));
            if ((i < (((int64)((value.debug_values).size)) - ((int64)1)))) {
                buffer_append_str((&buf), ((Array){3, ", "}));
            }  ;
        }
        ;
        buffer_append_char((&buf), ')');
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), (value.kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
    return buffer_to_string((&buf));
};
 void _574f02bf_emit_arithmetic(File fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
    fprintf(fp, (((Array){5, "%s%s"}).value), (name.value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).arith).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).left)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).arith).right)).value));
};
 void _574f02bf_emit_ret(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){5, "ret "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).ret).value).tpe)).value));
    if ((((((*insn).value).ret).value).tpe)) {
        fprintf(fp, (((Array){5, "%s%s"}).value), (((Array){2, " "}).value), (_574f02bf_value_to_str(((((*insn).value).ret).value)).value));
    }  ;
};
 void _574f02bf_emit_call(File fp, compiler_Insn *insn) {
    if ((((((*insn).value).call).ret).tpe)) {
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).call).ret)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){6, "call "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).call).ret).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    size_t protosize = (((((*insn).value).call).proto).size);
    if ((protosize > 0)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "("}).value));
        for (int i = 0;(i < protosize);(i += 1)) {
            typechecking_NamedParameter arg = (((typechecking_NamedParameter *)((((*insn).value).call).proto).value)[i]);
            if ((arg.varargs)) {
                fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, "..."}).value));
            }  else {
                fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((arg.value)).value));
            };
            if ((i < (((int64)protosize) - ((int64)1)))) {
                fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
            }  ;
        }
        ;
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ") "}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).call).name)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "("}).value));
    size_t argsize = (((((*insn).value).call).args).size);
    for (int i = 0;(i < argsize);(i += 1)) {
        compiler_Value arg = (((compiler_Value *)((((*insn).value).call).args).value)[i]);
        if ((arg.metadata)) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, "metadata "}).value));
        }  ;
        if ((arg.tpe)) {
            fprintf(fp, (((Array){5, "%s%s"}).value), (_574f02bf_type_to_str((arg.tpe)).value), (((Array){2, " "}).value));
        }  ;
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(arg).value));
        if ((i < (((int64)argsize) - ((int64)1)))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
        }  ;
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, ")"}).value));
};
 void _574f02bf_emit_alloca(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).alloca).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){11, " = alloca "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).alloca).ret).tpe)).value));
};
 void _574f02bf_emit_store(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){7, "store "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).store).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).store).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).store).loc).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).store).loc)).value));
};
 void _574f02bf_emit_load(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).load).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, " = load "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).load).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).load).loc).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).load).loc)).value));
};
 void _574f02bf_emit_br(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, "br "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).br).cond).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).br).cond)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br).if_true).name).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br).if_false).name).value));
};
 void _574f02bf_emit_br_unc(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){11, "br label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).br_unc).label_).name).value));
};
 void _574f02bf_emit_insert_value(File fp, compiler_Insn *insn) {
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
};
 void _574f02bf_emit_extract_value(File fp, compiler_Insn *insn) {
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
};
 void _574f02bf_emit_convert(File fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).convert).ret)).value));
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){4, " = "}).value), (name.value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).convert).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).convert).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){5, " to "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).convert).ret).tpe)).value));
};
 void _574f02bf_emit_gep(File fp, compiler_Insn *insn) {
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
};
 void _574f02bf_emit_compare(File fp, string name, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).ret)).value));
    fprintf(fp, (((Array){11, "%s%s%s%s%s"}).value), (((Array){4, " = "}).value), (name.value), (((Array){2, " "}).value), (((((*insn).value).cmp).op).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).cmp).left).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).left)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, ", "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).cmp).right)).value));
};
 void _574f02bf_emit_fneg(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).fneg).ret)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, " = fneg "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).fneg).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).fneg).value)).value));
};
 void _574f02bf_emit_switch(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, "switch "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((((*insn).value).switch_).value).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((((*insn).value).switch_).value)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), ((((((*insn).value).switch_).otherwise).name).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " [\x0a"""}).value));
    for (int i = 0;(i < vector_length(((((*insn).value).switch_).switch_values)));(i += 1)) {
        compiler_SwitchValue *sw = ((compiler_SwitchValue *)vector_get(((((*insn).value).switch_).switch_values), i));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "\x09""\x09"""}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str((((*sw).value).tpe)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str(((*sw).value)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, ", label %"}).value));
        fprintf(fp, (((Array){3, "%s"}).value), ((((*sw).label_).name).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    }
    ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "\x09""]"}).value));
};
 void _574f02bf_emit(File fp, compiler_Insn *insn) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x09"""}).value));
    switch (((int)((*insn).kind))) {
        break;
        case compiler_InsnKind_FNEG:
        _574f02bf_emit_fneg(fp, insn);
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
        case compiler_InsnKind_SWITCH:
        _574f02bf_emit_switch(fp, insn);
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
        case compiler_InsnKind_UNREACHABLE:
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){12, "unreachable"}).value));
        break;
        default:
        assert(false);
    }
    ;
    if (((*insn).debug)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, ", !dbg "}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str((*((*insn).debug))).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_emit_block(File fp, compiler_Block *block) {
    fprintf(fp, (((Array){5, "%s%s"}).value), (((*block).label_).value), (((Array){3, ":\x0a"""}).value));
    for (int i = 0;(i < vector_length(((*block).insn)));(i += 1)) {
        compiler_Insn *insn = ((compiler_Insn *)vector_get(((*block).insn), i));
        _574f02bf_emit(fp, insn);
    }
    ;
};
 void _574f02bf_emit_function(File fp, compiler_Function *function) {
    if (((*function).forward_declare)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, "declare "}).value));
    }  else {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, "define "}).value));
    };
    fprintf(fp, (((Array){5, "%s%s"}).value), (_574f02bf_type_to_str(((*function).ret)).value), (((Array){2, " "}).value));
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "@\""}).value), (((*function).name).value), (((Array){3, "\"("}).value));
    size_t len = vector_length(((*function).args));
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_NamedParameter *np = ((typechecking_NamedParameter *)vector_get(((*function).args), i));
        typechecking_Type *tpe = ((*np).value);
        string name = ((*np).name);
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(tpe).value));
        if ((!((*function).forward_declare))) {
            fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
            fprintf(fp, (((Array){5, "%s%s"}).value), (((Array){2, "%"}).value), (name.value));
        }  ;
        if ((i < (((int64)len) - ((int64)1)))) {
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
 void _574f02bf_emit_structure(File fp, typechecking_Type *structure) {
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
 void _574f02bf_emit_union(File fp, typechecking_Type *union_) {
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "%\""}).value), (((*union_).type_name).value), (((Array){2, "\""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, " = type {"}).value));
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){2, "["}).value), (util_int_to_str(((*union_).size)).value), (((Array){7, " x i8]"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "}\x0a"""}).value));
};
 void _574f02bf_emit_stub(File fp, typechecking_Type *stub) {
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "%\""}).value), (((*stub).type_name).value), (((Array){2, "\""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){16, " = type opaque\x0a"""}).value));
};
 void _574f02bf_emit_global(File fp, compiler_Global *global) {
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){3, "@\""}).value), (((*global).name).value), (((Array){2, "\""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
    if (((*global).external)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){10, "external "}).value));
    }  ;
    if (((*global).private)) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){9, "private "}).value));
    }  ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, "global "}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_type_to_str(((*global).tpe)).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
    if (((*global).value)) {
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str((*((*global).value))).value));
    } else if ((!((*global).external))) {
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){16, "zeroinitializer"}).value));
    } ;
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
 void _574f02bf_gen_main_function(File fp) {
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){43, "define i32 @main(i32 %argc, i8** %argv) {\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){32, "\x09""%size = zext i32 %argc to i64\x0a"""}).value));
    fprintf(fp, (((Array){8, "%s%zu%s"}).value), (((Array){27, "\x09""%size.1 = mul i64 %size, "}).value), (sizeof(string)), (((Array){2, "\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){40, "\x09""%args = call i8* @malloc(i64 %size.1)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){45, "\x09""%args.1 = bitcast i8* %args to {i64, i8*}*\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){63, "\x09""%args.2 = insertvalue {i64, {i64, i8*}*} undef, i64 %size, 0\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){75, "\x09""%args.3 = insertvalue {i64, {i64, i8*}*} %args.2, {i64, i8*}* %args.1, 1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){18, "\x09""%i = alloca i32\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){23, "\x09""store i32 0, i32* %i\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){17, "\x09""br label %loop\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){7, "loop:\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){27, "\x09""%i.1 = load i32, i32* %i\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){34, "\x09""%cond = icmp eq i32 %argc, %i.1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){40, "\x09""br i1 %cond, label %end, label %inner\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){8, "inner:\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){49, "\x09""%arg = getelementptr i8*, i8** %argv, i32 %i.1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){31, "\x09""%arg.1 = load i8*, i8** %arg\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){67, "\x09""%arg.2 = getelementptr {i64, i8*}, {i64, i8*}* %args.1, i32 %i.1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){41, "\x09""%arglen = call i64 @strlen(i8* %arg.1)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){33, "\x09""%arglen.1 = add i64 %arglen, 1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){58, "\x09""%arg.3 = insertvalue {i64, i8*} undef, i64 %arglen.1, 0\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){56, "\x09""%arg.4 = insertvalue {i64, i8*} %arg.3, i8* %arg.1, 1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){46, "\x09""store {i64, i8*} %arg.4, {i64, i8*}* %arg.2\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){25, "\x09""%i.2 = add i32 %i.1, 1\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){26, "\x09""store i32 %i.2, i32* %i\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){17, "\x09""br label %loop\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){6, "end:\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){64, "\x09""call void @\"_F10main::main__AAi8\"({i64, {i64, i8*}*} %args.3)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){29, "\x09""call void @free(i8* %args)\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){12, "\x09""ret i32 0\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){3, "}\x0a"""}).value));
};
#include "toolchain.c"
 void _574f02bf_gen_cstdlib_includes(File fp, toolchain_Module *module) {
    string exe_folder = util_exe_folder();
    Array keys = map_keys(((*module).imported));
    buffer_Buffer cmd_buffer = buffer_make_buffer();
    buffer_append_str((&cmd_buffer), ((Array){11, "python3.9 "}));
    buffer_append_str((&cmd_buffer), exe_folder);
    buffer_append_str((&cmd_buffer), ((Array){22, "/../cstdlib/genll.py "}));
    for (int i = 0;(i < (keys.size));(i += 1)) {
        string cfunc = (((string *)keys.value)[i]);
        buffer_append_str((&cmd_buffer), cfunc);
        buffer_append_char((&cmd_buffer), ' ');
    }
    ;
    buffer_Buffer header_buffer = buffer_make_buffer();
    buffer_append_str((&header_buffer), exe_folder);
    buffer_append_str((&header_buffer), ((Array){22, "/../cstdlib/header.ll"}));
    system((buffer_to_string((&cmd_buffer)).value));
    File fp2 = fopen((buffer_to_string((&header_buffer)).value), (((Array){2, "r"}).value));
    string header = util_read_all(fp2);
    fclose(fp2);
    fprintf(fp, (((Array){3, "%s"}).value), (header.value));
    free((header.value));
};
 void _574f02bf_gen_header(File fp, toolchain_Module *module) {
    fprintf(fp, (((Array){7, "%s%s%s"}).value), (((Array){20, "source_filename = \""}).value), (((*module).filename).value), (((Array){3, "\"\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){94, "target datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\x0a"""}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){39, "target triple = \"x86_64-pc-linux-gnu\"\x0a"""}).value));
};
typedef struct _574f02bf_State {struct map_Map *structures; struct map_Map *cached; struct toolchain_Module *module;} _574f02bf_State;
 void _574f02bf_import_structures(typechecking_Type *tpe, _574f02bf_State *state);
 void _574f02bf_import_structure(typechecking_Type *tpe, _574f02bf_State *state) {
    if ((!map_contains(((*state).cached), ((*tpe).type_name)))) {
        map_put(((*state).cached), ((*tpe).type_name), map_sentinel);
        size_t size = (((*tpe).fields).size);
        if ((size > 0)) {
            map_put(((*state).structures), ((*tpe).type_name), tpe);
            for (int i = 0;(i < size);(i += 1)) {
                typechecking_StructMember field = (((typechecking_StructMember *)((*tpe).fields).value)[i]);
                _574f02bf_import_structures((field.tpe), state);
            }
            ;
        }  ;
    }  ;
};
 void _574f02bf_import_structures(typechecking_Type *tpe, _574f02bf_State *state) {
    if ((!tpe)) {
        return ;
    }  ;
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_STRUCT ... typechecking_TypeKind_UNION:
        _574f02bf_import_structure(tpe, state);
        break;
        case typechecking_TypeKind_ARRAY:
        _574f02bf_import_structures(((*tpe).tpe), state);
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        _574f02bf_import_structures(((*tpe).tpe), state);
        break;
        case typechecking_TypeKind_POINTER:
        _574f02bf_import_structures(((*tpe).tpe), state);
        break;
        case typechecking_TypeKind_FUNCTION:
        for (int i = 0;(i < vector_length(((*tpe).parameter_t)));(i += 1)) {
            typechecking_NamedParameter *param = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
            _574f02bf_import_structures(((*param).value), state);
        }
        ;
        for (int i = 0;(i < vector_length(((*tpe).return_t)));(i += 1)) {
            typechecking_Type *t = ((typechecking_Type *)vector_get(((*tpe).return_t), i));
            _574f02bf_import_structures(t, state);
        }
        ;
        break;
        case typechecking_TypeKind_STUB:
        if ((!map_contains(((*state).structures), ((*tpe).type_name)))) {
            map_put(((*state).structures), ((*tpe).type_name), tpe);
        }  ;
    }
    ;
};
 void _574f02bf_import_top_level_structures(scope_Scope *sc, _574f02bf_State *state) {
    Array keys = map_keys(((*sc).fields));
    for (int i = 0;(i < (keys.size));(i += 1)) {
        string key = (((string *)keys.value)[i]);
        scope_Value *value = ((scope_Value *)map_get(((*sc).fields), key));
        if ((((*((*value).tpe)).kind) == typechecking_TypeKind_NAMESPACE)) {
            _574f02bf_import_top_level_structures(((*value).scope), state);
        } else if (typechecking_is_function(((*value).tpe))) {
            _574f02bf_import_structures(((*value).tpe), state);
        }
        else if (typechecking_is_type(((*value).tpe))) {
            typechecking_Type *tpe = ((typechecking_Type *)((*value).value));
            _574f02bf_import_structures(tpe, state);
        } else {
            _574f02bf_import_structures(((*value).tpe), state);
        };
    }
    ;
};
DLL_EXPORT string codegen_gen(toolchain_Module *module) {
    compiler_Result *result = ((*module).result);
    _574f02bf_State state = ((_574f02bf_State){ ((*result).structures), map_make(), module });
    _574f02bf_import_top_level_structures(((*module).scope), (&state));
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_str((&buf), toolchain_outfolder);
    buffer_append_char((&buf), '/');
    buffer_append_str((&buf), util_replace_all(((*module).module), ((Array){3, "::"}), ((Array){2, "."})));
    buffer_append_str((&buf), ((Array){4, ".ll"}));
    string outfile = buffer_to_string((&buf));
    ((*module).llfile) = outfile;
    File fp = fopen((outfile.value), (((Array){2, "w"}).value));
    fprintf(fp, (((Array){3, "%s"}).value), (((Array){79, "; This file was compiled by the grace of your highness Princess Vic Nightfall\x0a"""}).value));
    _574f02bf_gen_header(fp, module);
    Array keys_structures = map_keys(((*result).structures));
    for (int i = 0;(i < (keys_structures.size));(i += 1)) {
        typechecking_Type *structure = ((typechecking_Type *)map_get(((*result).structures), (((string *)keys_structures.value)[i])));
        switch (((int)((*structure).kind))) {
            break;
            case typechecking_TypeKind_STRUCT:
            _574f02bf_emit_structure(fp, structure);
            break;
            case typechecking_TypeKind_UNION:
            _574f02bf_emit_union(fp, structure);
            break;
            case typechecking_TypeKind_STUB:
            _574f02bf_emit_stub(fp, structure);
        }
        ;
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
        compiler_Global *global = ((compiler_Global *)map_get(((*result).globals), (((string *)keys_globals.value)[i])));
        _574f02bf_emit_global(fp, global);
    }
    ;
    map_put(((*module).imported), ((Array){6, "stdin"}), map_sentinel);
    map_put(((*module).imported), ((Array){7, "stdout"}), map_sentinel);
    map_put(((*module).imported), ((Array){7, "stderr"}), map_sentinel);
    if ((strcmp((((*module).module).value), (((Array){5, "main"}).value)) == 0)) {
        map_put(((*module).imported), ((Array){7, "malloc"}), map_sentinel);
        map_put(((*module).imported), ((Array){5, "free"}), map_sentinel);
        map_put(((*module).imported), ((Array){7, "strlen"}), map_sentinel);
        _574f02bf_gen_main_function(fp);
    }  ;
    _574f02bf_gen_cstdlib_includes(fp, module);
    Array keys_meta = map_keys(((*result).metadata));
    for (int i = 0;(i < (keys_meta.size));(i += 1)) {
        string key = (((string *)keys_meta.value)[i]);
        compiler_Value *value = ((compiler_Value *)map_get(((*result).metadata), key));
        fprintf(fp, (((Array){5, "%s%s"}).value), (((Array){2, "!"}).value), (key.value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){4, " = "}).value));
        fprintf(fp, (((Array){3, "%s"}).value), (_574f02bf_value_to_str((*value)).value));
        fprintf(fp, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    }
    ;
    fclose(fp);
    return outfile;
};
DLL_EXPORT void codegen_p_main(Array args) {

};


#endif
