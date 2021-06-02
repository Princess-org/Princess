/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _debug_H
#define _debug_H
#include "parser.c"
#include "vector.c"
#include "buffer.c"
#include "util.c"
 void _ad42f669_print_indent(int indent) {
    for (int i = 0;(i < indent);(i += 1)) {
        printf((((Array){3, "%s"}).value), (((Array){2, " "}).value));
    }
    ;
};
 void _ad42f669_print_node_(parser_Node *node, int indent);
 void _ad42f669_print_bin_op(string str, parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (str.value));
    printf((((Array){3, "%s"}).value), (((Array){4, " {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "left = "}).value));
    _ad42f669_print_node_(((((*node).value).bin_op).left), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "right = "}).value));
    _ad42f669_print_node_(((((*node).value).bin_op).right), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_un_op(string str, parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (str.value));
    printf((((Array){3, "%s"}).value), (((Array){4, " {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "expr = "}).value));
    _ad42f669_print_node_((((*node).value).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_vector(string name, vector_Vector *vec, int indent) {
    _ad42f669_print_indent(indent);
    printf((((Array){5, "%s%s"}).value), (name.value), (((Array){4, " = "}).value));
    if ((!vec)) {
        printf((((Array){3, "%s"}).value), (((Array){7, "(null)"}).value));
    }  else {
        printf((((Array){3, "%s"}).value), (((Array){3, "[\x0a"""}).value));
        for (int i = 0;(i < vector_length(vec));(i += 1)) {
            _ad42f669_print_indent((indent + 1));
            _ad42f669_print_node_(vector_get(vec, i), (indent + 2));
            printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        }
        ;
        _ad42f669_print_indent(indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "]"}).value));
    };
};
 void _ad42f669_print_func_call(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){12, "FuncCall {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "left = "}).value));
    _ad42f669_print_node_(((((*node).value).func_call).left), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "args"}), ((((*node).value).func_call).args), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){7, "kwargs"}), ((((*node).value).func_call).kwargs), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_var_decl(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){11, "VarDecl {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "share = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).var_decl).share));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){6, "kw = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).var_decl).kw));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "left"}), ((((*node).value).var_decl).left), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){6, "right"}), ((((*node).value).var_decl).right), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_id_decl(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){10, "IdDecl {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "value = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl).value), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_id_decl_struct(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){16, "IdDeclStruct {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "ident = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl_struct).ident), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl_struct).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_id_decl_enum(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){14, "IdDeclEnum {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "ident = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl_enum).ident), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "value = "}).value));
    _ad42f669_print_node_(((((*node).value).id_decl_enum).value), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_enum(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){8, "Enum {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).t_enum).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).t_enum).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_id_assign(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){12, "IdAssign {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "value = "}).value));
    _ad42f669_print_node_((((*node).value).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_named_arg(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){12, "NamedArg {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "name = "}).value));
    _ad42f669_print_node_(((((*node).value).named_arg).name), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "value = "}).value));
    _ad42f669_print_node_(((((*node).value).named_arg).value), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_identifier(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){14, "Identifier [\x0a"""}).value));
    for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
        _ad42f669_print_indent(indent);
        printf((((Array){7, "%s%s%s"}).value), (((Array){2, "\""}).value), ((*((string *)vector_get((((*node).value).body), i))).value), (((Array){3, "\"\x0a"""}).value));
    }
    ;
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "]"}).value));
};
 void _ad42f669_print_function_t(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){13, "FunctionT {\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "args"}), ((((*node).value).t_func).args), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){4, "ret"}), ((((*node).value).t_func).ret), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_ptrarray(string str, parser_Node *node, int indent) {
    printf((((Array){5, "%s%s"}).value), (str.value), (((Array){4, " {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){6, "kw = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).t_parr).kw));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).t_parr).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_array_static(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){16, "ArrayStaticT {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){5, "n = "}).value));
    _ad42f669_print_node_(((((*node).value).t_arrs).n), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){6, "kw = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).t_arrs).kw));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).t_arrs).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_assign(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){10, "Assign {\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "left"}), ((((*node).value).assign).left), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){6, "right"}), ((((*node).value).assign).right), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_unsigned(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){12, "Unsigned {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "expr = "}).value));
    _ad42f669_print_node_((((*node).value).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_switch(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){10, "Switch {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "expr = "}).value));
    _ad42f669_print_node_(((((*node).value).switch_).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).switch_).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_case(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){8, "Case {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    _ad42f669_print_vector(((Array){5, "expr"}), ((((*node).value).case_).expr), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).case_).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_if(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){6, "If {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "cond = "}).value));
    _ad42f669_print_node_(((((*node).value).if_).cond), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).if_).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){8, "else_if"}), ((((*node).value).if_).else_if), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "else_ = "}).value));
    _ad42f669_print_node_(((((*node).value).if_).else_), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_else_if(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){10, "ElseIf {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "cond = "}).value));
    _ad42f669_print_node_(((((*node).value).if_).cond), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).if_).body), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_else(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){8, "Else {\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_type_decl(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){12, "TypeDecl {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "share = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).type_decl).share));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "left"}), ((((*node).value).type_decl).left), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){6, "right"}), ((((*node).value).type_decl).right), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_loop(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){8, "Loop {\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_for(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){7, "For {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){10, "iddecl = "}).value));
    _ad42f669_print_node_(((((*node).value).for_loop).iddecl), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "expr = "}).value));
    _ad42f669_print_node_(((((*node).value).for_loop).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).for_loop).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_for_id_decl(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){13, "ForIdDecl {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){6, "kw = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).for_id_decl).kw));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "ident = "}).value));
    _ad42f669_print_node_(((((*node).value).for_id_decl).ident), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_while(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){9, "While {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "expr = "}).value));
    _ad42f669_print_node_(((((*node).value).while_loop).expr), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).while_loop).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_import_module(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){16, "ImportModule {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "name = "}).value));
    _ad42f669_print_node_(((((*node).value).import_module).name), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "alias = "}).value));
    _ad42f669_print_node_(((((*node).value).import_module).alias), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_def(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){7, "Def {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "share = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).def_).share));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "name = "}).value));
    _ad42f669_print_node_(((((*node).value).def_).name), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){7, "params"}), ((((*node).value).def_).params), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){8, "returns"}), ((((*node).value).def_).returns), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "body"}), ((((*node).value).def_).body), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_parameter(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){13, "Parameter {\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){6, "kw = "}).value));
    printf((((Array){3, "%d"}).value), ((((*node).value).param).kw));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){8, "name = "}).value));
    _ad42f669_print_node_(((((*node).value).param).name), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){7, "tpe = "}).value));
    _ad42f669_print_node_(((((*node).value).param).tpe), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent(indent);
    printf((((Array){3, "%s"}).value), (((Array){9, "value = "}).value));
    _ad42f669_print_node_(((((*node).value).param).value), (indent + 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_struct_lit(parser_Node *node, int indent) {
    printf((((Array){3, "%s"}).value), (((Array){13, "StructLit {\x0a"""}).value));
    _ad42f669_print_vector(((Array){5, "args"}), ((((*node).value).struct_lit).args), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_vector(((Array){7, "kwargs"}), ((((*node).value).struct_lit).kwargs), indent);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
    _ad42f669_print_indent((indent - 1));
    printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
};
 void _ad42f669_print_node_(parser_Node *node, int indent) {
    if ((!node)) {
        printf((((Array){3, "%s"}).value), (((Array){7, "(null)"}).value));
        return ;
    }  ;
    switch (((int)((*node).kind))) {
        break;
        case parser_NodeKind_PROGRAM:
        printf((((Array){3, "%s"}).value), (((Array){11, "Program [\x0a"""}).value));
        for (int i = 0;(i < vector_length((((*node).value).body)));(i += 1)) {
            _ad42f669_print_indent(indent);
            _ad42f669_print_node_(vector_get((((*node).value).body), i), (indent + 1));
            printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        }
        ;
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "]"}).value));
        break;
        case parser_NodeKind_INTEGER:
        printf((((Array){6, "%s%lu"}).value), (((Array){9, "Integer "}).value), (((*node).value).i));
        break;
        case parser_NodeKind_CHAR:
        printf((((Array){7, "%s%c%s"}).value), (((Array){7, "Char '"}).value), ((char)(((*node).value).i)), (((Array){2, "'"}).value));
        break;
        case parser_NodeKind_STRING:
        printf((((Array){7, "%s%s%s"}).value), (((Array){9, "String \""}).value), ((((*node).value).str).value), (((Array){2, "\""}).value));
        break;
        case parser_NodeKind_FLOAT:
        printf((((Array){5, "%s%f"}).value), (((Array){7, "Float "}).value), (((*node).value).f));
        break;
        case parser_NodeKind_BOOLEAN:
        printf((((Array){3, "%s"}).value), (((Array){9, "Boolean "}).value));
        if ((((*node).value).i)) {
            printf((((Array){3, "%s"}).value), (((Array){5, "true"}).value));
        }  else {
            printf((((Array){3, "%s"}).value), (((Array){6, "false"}).value));
        };
        break;
        case parser_NodeKind_IDENTIFIER:
        _ad42f669_print_identifier(node, indent);
        break;
        case parser_NodeKind_NULL:
        printf((((Array){3, "%s"}).value), (((Array){5, "Null"}).value));
        break;
        case parser_NodeKind_RANGE:
        _ad42f669_print_bin_op(((Array){6, "Range"}), node, indent);
        break;
        case parser_NodeKind_RANGE_INC:
        _ad42f669_print_bin_op(((Array){9, "RangeInc"}), node, indent);
        break;
        case parser_NodeKind_ARRAY_LIT:
        printf((((Array){3, "%s"}).value), (((Array){12, "ArrayLit {\x0a"""}).value));
        _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
        break;
        case parser_NodeKind_STRUCT_LIT:
        _ad42f669_print_struct_lit(node, indent);
        break;
        case parser_NodeKind_MEMBER_ACCESS:
        _ad42f669_print_bin_op(((Array){13, "MemberAccess"}), node, indent);
        break;
        case parser_NodeKind_CAST:
        _ad42f669_print_bin_op(((Array){5, "Cast"}), node, indent);
        break;
        case parser_NodeKind_SIZE_OF:
        _ad42f669_print_un_op(((Array){7, "SizeOf"}), node, indent);
        break;
        case parser_NodeKind_ADD:
        _ad42f669_print_bin_op(((Array){4, "Add"}), node, indent);
        break;
        case parser_NodeKind_SUB:
        _ad42f669_print_bin_op(((Array){4, "Sub"}), node, indent);
        break;
        case parser_NodeKind_MUL:
        _ad42f669_print_bin_op(((Array){4, "Mul"}), node, indent);
        break;
        case parser_NodeKind_DIV:
        _ad42f669_print_bin_op(((Array){4, "Div"}), node, indent);
        break;
        case parser_NodeKind_MOD:
        _ad42f669_print_bin_op(((Array){4, "Mod"}), node, indent);
        break;
        case parser_NodeKind_AND:
        _ad42f669_print_bin_op(((Array){4, "And"}), node, indent);
        break;
        case parser_NodeKind_OR:
        _ad42f669_print_bin_op(((Array){3, "Or"}), node, indent);
        break;
        case parser_NodeKind_UADD:
        _ad42f669_print_un_op(((Array){5, "UAdd"}), node, indent);
        break;
        case parser_NodeKind_USUB:
        _ad42f669_print_un_op(((Array){5, "USub"}), node, indent);
        break;
        case parser_NodeKind_PTR:
        _ad42f669_print_un_op(((Array){4, "Ptr"}), node, indent);
        break;
        case parser_NodeKind_DEREF:
        _ad42f669_print_un_op(((Array){6, "Deref"}), node, indent);
        break;
        case parser_NodeKind_BNOT:
        _ad42f669_print_un_op(((Array){5, "BNot"}), node, indent);
        break;
        case parser_NodeKind_NOT:
        _ad42f669_print_un_op(((Array){4, "Not"}), node, indent);
        break;
        case parser_NodeKind_BAND:
        _ad42f669_print_bin_op(((Array){5, "BAnd"}), node, indent);
        break;
        case parser_NodeKind_BOR:
        _ad42f669_print_bin_op(((Array){4, "BOr"}), node, indent);
        break;
        case parser_NodeKind_BXOR:
        _ad42f669_print_bin_op(((Array){5, "BXor"}), node, indent);
        break;
        case parser_NodeKind_SHL:
        _ad42f669_print_bin_op(((Array){4, "Shl"}), node, indent);
        break;
        case parser_NodeKind_SHR:
        _ad42f669_print_bin_op(((Array){4, "Shr"}), node, indent);
        break;
        case parser_NodeKind_PADD:
        _ad42f669_print_bin_op(((Array){5, "PAdd"}), node, indent);
        break;
        case parser_NodeKind_PSUB:
        _ad42f669_print_bin_op(((Array){5, "PSub"}), node, indent);
        break;
        case parser_NodeKind_EQ:
        _ad42f669_print_bin_op(((Array){3, "Eq"}), node, indent);
        break;
        case parser_NodeKind_NEQ:
        _ad42f669_print_bin_op(((Array){4, "NEq"}), node, indent);
        break;
        case parser_NodeKind_GT:
        _ad42f669_print_bin_op(((Array){3, "Gt"}), node, indent);
        break;
        case parser_NodeKind_LT:
        _ad42f669_print_bin_op(((Array){3, "Lt"}), node, indent);
        break;
        case parser_NodeKind_GEQ:
        _ad42f669_print_bin_op(((Array){4, "GEq"}), node, indent);
        break;
        case parser_NodeKind_LEQ:
        _ad42f669_print_bin_op(((Array){4, "LEq"}), node, indent);
        break;
        case parser_NodeKind_PADD_EQ:
        _ad42f669_print_bin_op(((Array){7, "PAddEq"}), node, indent);
        break;
        case parser_NodeKind_PSUB_EQ:
        _ad42f669_print_bin_op(((Array){7, "PSubEq"}), node, indent);
        break;
        case parser_NodeKind_ADD_EQ:
        _ad42f669_print_bin_op(((Array){6, "AddEq"}), node, indent);
        break;
        case parser_NodeKind_SUB_EQ:
        _ad42f669_print_bin_op(((Array){6, "SubEq"}), node, indent);
        break;
        case parser_NodeKind_MUL_EQ:
        _ad42f669_print_bin_op(((Array){6, "MulEq"}), node, indent);
        break;
        case parser_NodeKind_DIV_EQ:
        _ad42f669_print_bin_op(((Array){6, "DivEq"}), node, indent);
        break;
        case parser_NodeKind_MOD_EQ:
        _ad42f669_print_bin_op(((Array){6, "ModEq"}), node, indent);
        break;
        case parser_NodeKind_AND_EQ:
        _ad42f669_print_bin_op(((Array){6, "AndEq"}), node, indent);
        break;
        case parser_NodeKind_OR_EQ:
        _ad42f669_print_bin_op(((Array){5, "OrEq"}), node, indent);
        break;
        case parser_NodeKind_XOR_EQ:
        _ad42f669_print_bin_op(((Array){6, "XorEq"}), node, indent);
        break;
        case parser_NodeKind_SHL_EQ:
        _ad42f669_print_bin_op(((Array){6, "ShlEq"}), node, indent);
        break;
        case parser_NodeKind_SHR_EQ:
        _ad42f669_print_bin_op(((Array){6, "ShrEq"}), node, indent);
        break;
        case parser_NodeKind_IMPORT:
        printf((((Array){3, "%s"}).value), (((Array){10, "Import {\x0a"""}).value));
        _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
        break;
        case parser_NodeKind_IMPORT_MODULE:
        _ad42f669_print_import_module(node, indent);
        break;
        case parser_NodeKind_ASSIGN:
        _ad42f669_print_assign(node, indent);
        break;
        case parser_NodeKind_DEF:
        _ad42f669_print_def(node, indent);
        break;
        case parser_NodeKind_PARAMETER:
        _ad42f669_print_parameter(node, indent);
        break;
        case parser_NodeKind_SWITCH:
        _ad42f669_print_switch(node, indent);
        break;
        case parser_NodeKind_CASE:
        _ad42f669_print_case(node, indent);
        break;
        case parser_NodeKind_IF:
        _ad42f669_print_if(node, indent);
        break;
        case parser_NodeKind_ELSE_IF:
        _ad42f669_print_else_if(node, indent);
        break;
        case parser_NodeKind_ELSE:
        _ad42f669_print_else(node, indent);
        break;
        case parser_NodeKind_LOOP:
        _ad42f669_print_loop(node, indent);
        break;
        case parser_NodeKind_WHILE:
        _ad42f669_print_while(node, indent);
        break;
        case parser_NodeKind_FOR:
        _ad42f669_print_for(node, indent);
        break;
        case parser_NodeKind_FOR_ID_DECL:
        _ad42f669_print_for_id_decl(node, indent);
        break;
        case parser_NodeKind_BREAK:
        printf((((Array){3, "%s"}).value), (((Array){6, "Break"}).value));
        break;
        case parser_NodeKind_CONTINUE:
        printf((((Array){3, "%s"}).value), (((Array){9, "Continue"}).value));
        break;
        case parser_NodeKind_RETURN:
        printf((((Array){3, "%s"}).value), (((Array){10, "Return {\x0a"""}).value));
        _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
        break;
        case parser_NodeKind_ARRAY_SUBSCRIPT:
        _ad42f669_print_bin_op(((Array){15, "ArraySubscript"}), node, indent);
        break;
        case parser_NodeKind_FUNC_CALL:
        _ad42f669_print_func_call(node, indent);
        break;
        case parser_NodeKind_TYPE_DECL:
        _ad42f669_print_type_decl(node, indent);
        break;
        case parser_NodeKind_VAR_DECL:
        _ad42f669_print_var_decl(node, indent);
        break;
        case parser_NodeKind_ID_DECL:
        _ad42f669_print_id_decl(node, indent);
        break;
        case parser_NodeKind_ID_ASSIGN:
        _ad42f669_print_id_assign(node, indent);
        break;
        case parser_NodeKind_NAMED_ARG:
        _ad42f669_print_named_arg(node, indent);
        break;
        case parser_NodeKind_ID_DECL_STRUCT:
        _ad42f669_print_id_decl_struct(node, indent);
        break;
        case parser_NodeKind_ID_DECL_ENUM:
        _ad42f669_print_id_decl_enum(node, indent);
        break;
        case parser_NodeKind_ENUM_T:
        _ad42f669_print_enum(node, indent);
        break;
        case parser_NodeKind_STRUCT_T:
        printf((((Array){3, "%s"}).value), (((Array){10, "Struct {\x0a"""}).value));
        _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
        break;
        case parser_NodeKind_UNION_T:
        printf((((Array){3, "%s"}).value), (((Array){9, "Union {\x0a"""}).value));
        _ad42f669_print_vector(((Array){5, "body"}), (((*node).value).body), indent);
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        _ad42f669_print_indent((indent - 1));
        printf((((Array){3, "%s"}).value), (((Array){2, "}"}).value));
        break;
        case parser_NodeKind_FUNCTION_T:
        _ad42f669_print_function_t(node, indent);
        break;
        case parser_NodeKind_UNSIGNED_T:
        _ad42f669_print_unsigned(node, indent);
        break;
        case parser_NodeKind_PTR_T:
        _ad42f669_print_ptrarray(((Array){5, "PtrT"}), node, indent);
        break;
        case parser_NodeKind_REF_T:
        _ad42f669_print_ptrarray(((Array){5, "RefT"}), node, indent);
        break;
        case parser_NodeKind_ARRAY_T:
        _ad42f669_print_ptrarray(((Array){7, "ArrayT"}), node, indent);
        break;
        case parser_NodeKind_WORD_T:
        printf((((Array){6, "%s%lu"}).value), (((Array){6, "Word "}).value), (((*node).value).i));
        break;
        case parser_NodeKind_ARRAY_STATIC_T:
        _ad42f669_print_array_static(node, indent);
        break;
        default:
        printf((((Array){3, "%s"}).value), (((Array){20, "Error: Missing node"}).value));
    }
    ;
};
DLL_EXPORT void debug_print_node(parser_Node *node) {
    _ad42f669_print_node_(node, 1);
    printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
};
typedef struct debug_Error {string where; string src; string msg;} debug_Error;
ARRAY(_ad42f669_file, char, 15);
void *_ad42f669_fh;
DLL_EXPORT void debug_redirect_stderr() {
    _ad42f669_fh = freopen((_ad42f669_file.value), (((Array){2, "w"}).value), stderr);
};
DLL_EXPORT vector_Vector * debug_catch_errors() {
    fclose(_ad42f669_fh);
    if (WIN32) {
        freopen((((Array){4, "CON"}).value), (((Array){2, "w"}).value), stderr);
    }  else {
        freopen((((Array){9, "/dev/tty"}).value), (((Array){2, "w"}).value), stderr);
    };
    vector_Vector *errors = vector_make();
    FILE* fh2 = fopen((_ad42f669_file.value), (((Array){3, "rb"}).value));
    if ((!fh2)) {
        return errors;
    }  ;
    fseek(fh2, 0, SEEK_END);
    int filesize = ftell(fh2);
    rewind(fh2);
    Array buf = ((Array){(filesize + 1), malloc((((int64)(sizeof(char))) * ((int64)(filesize + 1))))});
    fread((buf.value), (sizeof(char)), filesize, fh2);
    (((char *)buf.value)[filesize]) = '\x00';
    Array lines = util_split_lines(buf);
    free((buf.value));
    int i = 0;
    while ((i < (lines.size))) {
        string line = (((string *)lines.value)[i]);
        if ((((line.size) - 1) == 0)) {
            (i += 1);
            continue;
        }  ;
        string where = (((string *)lines.value)[i]);
        (i += 1);
        string src = (((string *)lines.value)[i]);
        (i += 1);
        string caret = (((string *)lines.value)[i]);
        (i += 1);
        string msg = (((string *)lines.value)[i]);
        (i += 1);
        debug_Error *err = malloc((sizeof(debug_Error)));
        ((*err).where) = where;
        ((*err).src) = src;
        ((*err).msg) = msg;
        vector_push(errors, err);
    }
    ;
    fclose(fh2);
    return errors;
};
typedef struct typechecking_Type typechecking_Type;
DLL_EXPORT string debug_type_to_str(typechecking_Type *tpe);
#include "typechecking.c"
 string _ad42f669_function_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '(');
    int len = vector_length(((*tpe).parameter_t));
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_NamedParameter *param = ((typechecking_NamedParameter *)vector_get(((*tpe).parameter_t), i));
        buffer_append_str((&buf), debug_type_to_str(((*param).value)));
        if ((i < (len - ((int)1)))) {
            buffer_append_str((&buf), ((Array){3, " ,"}));
        }  ;
    }
    ;
    buffer_append_str((&buf), ((Array){7, ") -> ("}));
    len = vector_length(((*tpe).return_t));
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_Type *ret = ((typechecking_Type *)vector_get(((*tpe).return_t), i));
        buffer_append_str((&buf), debug_type_to_str(ret));
        if ((i < (len - ((int)1)))) {
            buffer_append_str((&buf), ((Array){3, ", "}));
        }  ;
    }
    ;
    buffer_append_char((&buf), ')');
    return buffer_to_string((&buf));
};
 string _ad42f669_pointer_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '*');
    if (((*tpe).tpe)) {
        buffer_append_str((&buf), debug_type_to_str(((*tpe).tpe)));
    }  ;
    return buffer_to_string((&buf));
};
 string _ad42f669_reference_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '&');
    if (((*tpe).tpe)) {
        buffer_append_str((&buf), debug_type_to_str(((*tpe).tpe)));
    }  ;
    return buffer_to_string((&buf));
};
 string _ad42f669_array_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '[');
    if (((*tpe).tpe)) {
        buffer_append_str((&buf), debug_type_to_str(((*tpe).tpe)));
    }  ;
    buffer_append_char((&buf), ']');
    return buffer_to_string((&buf));
};
 string _ad42f669_static_array_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '[');
    buffer_append_str((&buf), util_int_to_str(((int)((*tpe).length))));
    buffer_append_str((&buf), ((Array){3, "; "}));
    buffer_append_str((&buf), debug_type_to_str(((*tpe).tpe)));
    buffer_append_char((&buf), ']');
    return buffer_to_string((&buf));
};
 string _ad42f669_tuple_t_to_string(typechecking_Type *tpe) {
    buffer_Buffer buf = buffer_make_buffer();
    buffer_append_char((&buf), '(');
    int len = vector_length(((*tpe).return_t));
    for (int i = 0;(i < len);(i += 1)) {
        typechecking_Type *ret = ((typechecking_Type *)vector_get(((*tpe).return_t), i));
        buffer_append_str((&buf), debug_type_to_str(ret));
        if ((i < (len - ((int)1)))) {
            buffer_append_str((&buf), ((Array){3, ", "}));
        }  ;
    }
    ;
    buffer_append_char((&buf), ')');
};
DLL_EXPORT string debug_type_to_str(typechecking_Type *tpe) {
    if ((!tpe)) {
        return ((Array){7, "(null)"});
    }  ;
    switch (((int)((*tpe).kind))) {
        break;
        case typechecking_TypeKind_TYPE ... (typechecking_TypeKind_ENUM) - 1:
        return ((*tpe).name);
        break;
        case typechecking_TypeKind_FUNCTION:
        return _ad42f669_function_t_to_string(tpe);
        break;
        case typechecking_TypeKind_TUPLE:
        return _ad42f669_tuple_t_to_string(tpe);
        break;
        case typechecking_TypeKind_POINTER:
        return _ad42f669_pointer_t_to_string(tpe);
        break;
        case typechecking_TypeKind_REFERENCE:
        return _ad42f669_reference_t_to_string(tpe);
        break;
        case typechecking_TypeKind_ARRAY:
        return _ad42f669_array_t_to_string(tpe);
        break;
        case typechecking_TypeKind_STATIC_ARRAY:
        return _ad42f669_static_array_t_to_string(tpe);
        break;
        case typechecking_TypeKind_NAMESPACE:
        return ((*tpe).name);
        break;
        case typechecking_TypeKind_RANGE:
        return ((Array){6, "Range"});
        break;
        case typechecking_TypeKind_RANGE_INC:
        return ((Array){9, "RangeInc"});
        break;
        default:
        fprintf(stderr, (((Array){5, "%d%s"}).value), ((*tpe).kind), (((Array){2, "\x0a"""}).value));
        assert(false);
    }
    ;
};
DLL_EXPORT void debug_p_main(Array args) {
    memcpy((_ad42f669_file.value), (((Array){15, "bin/stderr.txt"}).value), ((sizeof(char)) * (_ad42f669_file.size)));
};


#endif
