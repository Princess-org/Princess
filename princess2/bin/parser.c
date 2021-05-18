/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _parser_H
#define _parser_H
#include "lexer.c"
#include "vector.c"
#include "util.c"
#include "buffer.c"
typedef enum parser_NodeKind {parser_NodeKind_PROGRAM = 0, parser_NodeKind_INTEGER = 1, parser_NodeKind_CHAR = 2, parser_NodeKind_STRING = 3, parser_NodeKind_FLOAT = 4, parser_NodeKind_BOOLEAN = 5, parser_NodeKind_IDENTIFIER = 6, parser_NodeKind_NULL = 7, parser_NodeKind_RANGE = 8, parser_NodeKind_RANGE_INC = 9, parser_NodeKind_ARRAY_LIT = 10, parser_NodeKind_STRUCT_LIT = 11, parser_NodeKind_MEMBER_ACCESS = 12, parser_NodeKind_CAST = 13, parser_NodeKind_SIZE_OF = 14, parser_NodeKind_ALIGN_OF = 15, parser_NodeKind_ADD = 16, parser_NodeKind_SUB = 17, parser_NodeKind_MUL = 18, parser_NodeKind_DIV = 19, parser_NodeKind_MOD = 20, parser_NodeKind_AND = 21, parser_NodeKind_OR = 22, parser_NodeKind_UADD = 23, parser_NodeKind_USUB = 24, parser_NodeKind_PTR = 25, parser_NodeKind_DEREF = 26, parser_NodeKind_BNOT = 27, parser_NodeKind_NOT = 28, parser_NodeKind_BAND = 29, parser_NodeKind_BOR = 30, parser_NodeKind_BXOR = 31, parser_NodeKind_SHL = 32, parser_NodeKind_SHR = 33, parser_NodeKind_PADD = 34, parser_NodeKind_PSUB = 35, parser_NodeKind_EQ = 36, parser_NodeKind_NEQ = 37, parser_NodeKind_GT = 38, parser_NodeKind_LT = 39, parser_NodeKind_GEQ = 40, parser_NodeKind_LEQ = 41, parser_NodeKind_PADD_EQ = 42, parser_NodeKind_PSUB_EQ = 43, parser_NodeKind_ADD_EQ = 44, parser_NodeKind_SUB_EQ = 45, parser_NodeKind_MUL_EQ = 46, parser_NodeKind_DIV_EQ = 47, parser_NodeKind_MOD_EQ = 48, parser_NodeKind_AND_EQ = 49, parser_NodeKind_OR_EQ = 50, parser_NodeKind_XOR_EQ = 51, parser_NodeKind_SHL_EQ = 52, parser_NodeKind_SHR_EQ = 53, parser_NodeKind_IMPORT = 54, parser_NodeKind_IMPORT_MODULE = 55, parser_NodeKind_ASSIGN = 56, parser_NodeKind_DEF = 57, parser_NodeKind_PARAMETER = 58, parser_NodeKind_SWITCH = 59, parser_NodeKind_CASE = 60, parser_NodeKind_IF = 61, parser_NodeKind_ELSE_IF = 62, parser_NodeKind_ELSE = 63, parser_NodeKind_LOOP = 64, parser_NodeKind_WHILE = 65, parser_NodeKind_FOR = 66, parser_NodeKind_FOR_ID_DECL = 67, parser_NodeKind_BREAK = 68, parser_NodeKind_CONTINUE = 69, parser_NodeKind_RETURN = 70, parser_NodeKind_ARRAY_SUBSCRIPT = 71, parser_NodeKind_FUNC_CALL = 72, parser_NodeKind_TYPE_DECL = 73, parser_NodeKind_VAR_DECL = 74, parser_NodeKind_ID_DECL = 75, parser_NodeKind_ID_ASSIGN = 76, parser_NodeKind_NAMED_ARG = 77, parser_NodeKind_ID_DECL_STRUCT = 78, parser_NodeKind_ID_DECL_ENUM = 79, parser_NodeKind_ENUM_T = 80, parser_NodeKind_STRUCT_T = 81, parser_NodeKind_UNION_T = 82, parser_NodeKind_FUNCTION_T = 83, parser_NodeKind_UNSIGNED_T = 84, parser_NodeKind_WORD_T = 85, parser_NodeKind_PTR_T = 86, parser_NodeKind_REF_T = 87, parser_NodeKind_ARRAY_T = 88, parser_NodeKind_ARRAY_STATIC_T = 89} parser_NodeKind;
typedef enum parser_ShareMarker {parser_ShareMarker_NONE = 0, parser_ShareMarker_EXPORT = 1, parser_ShareMarker_IMPORT = 2, parser_ShareMarker_BOTH = 3} parser_ShareMarker;
typedef enum parser_VarDecl {parser_VarDecl_VAR = 0, parser_VarDecl_LET = 1, parser_VarDecl_CONST = 2, parser_VarDecl_TYPE = 3} parser_VarDecl;
typedef struct parser_Node parser_Node;
typedef struct parser_NodeDef {enum parser_ShareMarker share; struct parser_Node *name; struct vector_Vector *params; struct vector_Vector *returns; struct vector_Vector *body;} parser_NodeDef;
typedef struct parser_NodeParam {enum parser_VarDecl kw; struct parser_Node *name; struct parser_Node *tpe; struct parser_Node *value;} parser_NodeParam;
typedef struct parser_NodeImportModule {struct parser_Node *name; struct parser_Node *alias;} parser_NodeImportModule;
typedef struct parser_NodeSwitch {struct parser_Node *expr; struct vector_Vector *body;} parser_NodeSwitch;
typedef struct parser_NodeCase {struct parser_Node *expr; struct vector_Vector *body;} parser_NodeCase;
typedef struct parser_NodeIf {struct parser_Node *cond; struct vector_Vector *body; struct vector_Vector *else_if; struct parser_Node *else_;} parser_NodeIf;
typedef struct parser_NodeElseIf {struct parser_Node *cond; struct vector_Vector *body;} parser_NodeElseIf;
typedef struct parser_NodeArrayStaticT {struct parser_Node *n; enum parser_VarDecl kw; struct parser_Node *tpe;} parser_NodeArrayStaticT;
typedef struct parser_NodePtrArrayT {enum parser_VarDecl kw; struct parser_Node *tpe;} parser_NodePtrArrayT;
typedef struct parser_NodeFunctionT {struct vector_Vector *args; struct vector_Vector *ret;} parser_NodeFunctionT;
typedef struct parser_NodeIdDecl {struct parser_Node *value; struct parser_Node *tpe;} parser_NodeIdDecl;
typedef struct parser_NodeVarDecl {enum parser_ShareMarker share; enum parser_VarDecl kw; struct vector_Vector *left; struct vector_Vector *right;} parser_NodeVarDecl;
typedef struct parser_NodeTypeDecl {enum parser_ShareMarker share; struct vector_Vector *left; struct vector_Vector *right;} parser_NodeTypeDecl;
typedef struct parser_NodeNamedArg {struct parser_Node *name; struct parser_Node *value;} parser_NodeNamedArg;
typedef struct parser_NodeFuncCall {struct parser_Node *left; struct vector_Vector *args; struct vector_Vector *kwargs;} parser_NodeFuncCall;
typedef struct parser_NodeStructLit {struct vector_Vector *args; struct vector_Vector *kwargs;} parser_NodeStructLit;
typedef struct parser_NodeBinaryOp {struct parser_Node *left; struct parser_Node *right;} parser_NodeBinaryOp;
typedef struct parser_NodeAssign {struct vector_Vector *left; struct vector_Vector *right;} parser_NodeAssign;
typedef struct parser_NodeForIdDecl {enum parser_VarDecl kw; struct parser_Node *ident;} parser_NodeForIdDecl;
typedef struct parser_NodeFor {struct parser_Node *iddecl; struct parser_Node *expr; struct vector_Vector *body;} parser_NodeFor;
typedef struct parser_NodeWhile {struct parser_Node *expr; struct vector_Vector *body;} parser_NodeWhile;
typedef struct parser_NodeIdDeclStruct {struct parser_Node *ident; struct parser_Node *tpe;} parser_NodeIdDeclStruct;
typedef struct parser_NodeEnumT {struct parser_Node *tpe; struct vector_Vector *body;} parser_NodeEnumT;
typedef struct parser_NodeIdDeclEnum {struct parser_Node *ident; struct parser_Node *value;} parser_NodeIdDeclEnum;
typedef union parser_NodeValue {struct parser_NodeBinaryOp bin_op; struct parser_NodeVarDecl var_decl; struct parser_NodeTypeDecl type_decl; struct parser_NodeIdDecl id_decl; struct parser_NodeIdDeclStruct id_decl_struct; struct parser_NodeIdDeclEnum id_decl_enum; struct parser_NodeNamedArg named_arg; struct parser_NodeStructLit struct_lit; struct parser_NodeEnumT t_enum; struct parser_NodeFunctionT t_func; struct parser_NodePtrArrayT t_parr; struct parser_NodeArrayStaticT t_arrs; struct parser_NodeFuncCall func_call; struct parser_NodeAssign assign; struct parser_NodeIf if_; struct parser_NodeElseIf else_if; struct parser_NodeSwitch switch_; struct parser_NodeCase case_; struct parser_NodeWhile while_loop; struct parser_NodeFor for_loop; struct parser_NodeForIdDecl for_id_decl; struct parser_NodeImportModule import_module; struct parser_NodeDef def_; struct parser_NodeParam param; struct vector_Vector *body; struct parser_Node *expr; uint64 i; string str; double f;} parser_NodeValue;
typedef struct parser_SourceLoc {string filename; string module; int line; int column; Array lines;} parser_SourceLoc;
typedef struct typechecking_Type typechecking_Type;
typedef struct scope_Scope scope_Scope;
typedef struct parser_Node {enum parser_NodeKind kind; struct parser_SourceLoc loc; struct typechecking_Type *tpe; struct scope_Scope *scope; union parser_NodeValue value;} parser_Node;
typedef struct _3643b863_ParseState {string filename; string module; bool has_error; Array lines; struct lexer_TokenList **tokens;} _3643b863_ParseState;
 void _3643b863_errort(lexer_Token token, _3643b863_ParseState *state, string msg);
DLL_EXPORT parser_Node * parser_make_identifier(Array s) {
    parser_Node *node = malloc((sizeof(parser_Node)));
    vector_Vector *vec = vector_make();
    for (int i = 0;(i < (s.size));(i += 1)) {
        vector_push(vec, util_copy_string((((string *)s.value)[i])));
    }
    ;
    ((*node).kind) = parser_NodeKind_IDENTIFIER;
    (((*node).loc).filename) = ((Array){9, "builtins"});
    (((*node).loc).module) = ((Array){9, "builtins"});
    (((*node).value).body) = vec;
    ((*node).tpe) = NULL;
    ((*node).scope) = NULL;
    return node;
};
DLL_EXPORT parser_Node * parser_copy_node(parser_Node *node) {
    parser_Node *copy = malloc((sizeof(parser_Node)));
    ((*copy).kind) = ((*node).kind);
    ((*copy).loc) = ((*node).loc);
    ((*copy).value) = ((*node).value);
    return copy;
};
DLL_EXPORT string parser_identifier_to_str(parser_Node *node) {
    assert((((*node).kind) == parser_NodeKind_IDENTIFIER));
    buffer_Buffer buf = buffer_make_buffer();
    int len = vector_length((((*node).value).body));
    for (int i = 0;(i < len);(i += 1)) {
        buffer_append_str((&buf), (*((string *)vector_get((((*node).value).body), i))));
        if ((i < (len - ((int)1)))) {
            buffer_append_str((&buf), ((Array){3, "::"}));
        }  ;
    }
    ;
    return buffer_to_string((&buf));
};
 parser_Node * _3643b863_make_node(parser_NodeKind kind, int line, int column, _3643b863_ParseState *state) {
    parser_Node *node = malloc((sizeof(parser_Node)));
    ((*node).tpe) = NULL;
    ((*node).scope) = NULL;
    ((*node).kind) = kind;
    ((*node).loc) = ((parser_SourceLoc){ ((*state).filename), ((*state).module), line, column, ((*state).lines) });
    return node;
};
 parser_Node * _3643b863_make_bin_op(_3643b863_ParseState *state, lexer_Token token, parser_NodeKind kind, parser_Node *left, parser_Node *right) {
    parser_Node *node = _3643b863_make_node(kind, (token.line), (token.column), state);
    (((*node).value).bin_op) = ((parser_NodeBinaryOp){ left, right });
    return node;
};
 parser_Node * _3643b863_make_un_op(_3643b863_ParseState *state, lexer_Token token, parser_NodeKind kind, parser_Node *right) {
    parser_Node *node = _3643b863_make_node(kind, (token.line), (token.column), state);
    (((*node).value).expr) = right;
    return node;
};
 void _3643b863_skip_whitespace(_3643b863_ParseState *state) {
    lexer_TokenList **list = ((*state).tokens);
    if ((!(*list))) {
        return ;
    }  ;
    lexer_TokenType tt = (((*(*list)).value).tpe);
    while ((((tt == lexer_TokenType_WHITESPACE) || (tt == lexer_TokenType_COMMENT)) || (tt == lexer_TokenType_ERROR))) {
        if ((tt == lexer_TokenType_ERROR)) {
            lexer_Token token = ((*(*list)).value);
            _3643b863_errort(token, state, ((token.value).str));
        }  ;
        (*list) = ((*(*list)).next);
        tt = (((*(*list)).value).tpe);
    }
    ;
};
 lexer_Token _3643b863_pop(_3643b863_ParseState *state) {
    _3643b863_skip_whitespace(state);
    lexer_TokenList **list = ((*state).tokens);
    if ((!(*list))) {
        return ((lexer_Token){ lexer_TokenType_EOF });
    }  ;
    lexer_Token token = ((*(*list)).value);
    (*list) = ((*(*list)).next);
    return token;
};
 lexer_Token _3643b863_peek(_3643b863_ParseState *state) {
    _3643b863_skip_whitespace(state);
    lexer_TokenList **list = ((*state).tokens);
    if ((!(*list))) {
        return ((lexer_Token){ lexer_TokenType_EOF });
    }  ;
    return ((*(*list)).value);
};
 void _3643b863_unget_token(_3643b863_ParseState *state, lexer_Token token) {
    lexer_TokenList **list = ((*state).tokens);
    lexer_TokenList *prev = (*list);
    (*list) = malloc((sizeof(lexer_TokenList)));
    ((*(*list)).value) = token;
    ((*(*list)).next) = prev;
};
 lexer_Token _3643b863_expect(_3643b863_ParseState *state, lexer_TokenType tpe, string msg) {
    lexer_Token token = _3643b863_pop(state);
    if (((token.tpe) != tpe)) {
        _3643b863_errort(token, state, msg);
    }  ;
    return token;
};
 void _3643b863_skip_newline(_3643b863_ParseState *state) {
    while (true) {
        lexer_Token token = _3643b863_peek(state);
        if (((token.tpe) == lexer_TokenType_NEW_LINE)) {
            _3643b863_pop(state);
            continue;
        }  ;
        break;
    }
    ;
};
 bool _3643b863_next_token(_3643b863_ParseState *state, lexer_TokenType tpe) {
    lexer_Token token = _3643b863_peek(state);
    if (((token.tpe) == tpe)) {
        _3643b863_pop(state);
        return true;
    }  ;
    return false;
};
 void _3643b863_parse_t_term(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_parse_type(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_expect_type(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_parse_expression(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_expect_expression(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_parse_expression_no_assign(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_expect_expression_no_assign(_3643b863_ParseState *parse_state);
 void _3643b863_parse_block(_3643b863_ParseState *parse_state, vector_Vector *vec);
 void _3643b863_parse_block_stmt(_3643b863_ParseState *parse_state, vector_Vector *vec);
 parser_Node * _3643b863_expect_identifier(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_pop(parse_state);
    vector_Vector *vec = vector_make();
    while (((token.tpe) == lexer_TokenType_IDENTIFIER)) {
        vector_push(vec, util_copy_string(((token.value).str)));
        token = _3643b863_peek(parse_state);
        if (((token.tpe) == lexer_TokenType_DOUBLE_COLON)) {
            _3643b863_pop(parse_state);
            token = _3643b863_pop(parse_state);
            continue;
        }  ;
        break;
    }
    ;
    if ((vector_length(vec) == 0)) {
        _3643b863_errort(token, parse_state, ((Array){21, "Expected identifier\x0a"""}));
        return NULL;
    }  ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_IDENTIFIER, (token.line), (token.column), parse_state);
    (((*node).value).body) = vec;
    return node;
};
 parser_Node * _3643b863_parse_array_n(_3643b863_ParseState *parse_state) {
    lexer_Token tok = _3643b863_peek(parse_state);
    int line = (tok.line);
    int column = (tok.column);
    if (((tok.tpe) != lexer_TokenType_O_SQUARE)) {
        return NULL;
    }  ;
    _3643b863_pop(parse_state);
    tok = _3643b863_peek(parse_state);
    parser_Node *n = NULL;
    if (((tok.tpe) == lexer_TokenType_QUESTION_MARK)) {
        _3643b863_pop(parse_state);
    }  else {
        n = _3643b863_parse_expression(parse_state);
        if ((!n)) {
            return NULL;
        }  ;
    };
    tok = _3643b863_pop(parse_state);
    if (((tok.tpe) != lexer_TokenType_SEMICOLON)) {
        return NULL;
    }  ;
    int kw = parser_VarDecl_VAR;
    tok = _3643b863_peek(parse_state);
    if (((tok.tpe) == lexer_TokenType_K_VAR)) {
        _3643b863_pop(parse_state);
    } else if (((tok.tpe) == lexer_TokenType_K_LET)) {
        _3643b863_pop(parse_state);
        kw = parser_VarDecl_LET;
    } ;
    parser_Node *tpe = _3643b863_parse_type(parse_state);
    if ((!tpe)) {
        return NULL;
    }  ;
    tok = _3643b863_peek(parse_state);
    if (((tok.tpe) != lexer_TokenType_C_SQUARE)) {
        return NULL;
    }  ;
    _3643b863_pop(parse_state);
    parser_Node *node = _3643b863_make_node(parser_NodeKind_ARRAY_STATIC_T, line, column, parse_state);
    (((*node).value).t_arrs) = ((parser_NodeArrayStaticT){ .n = n, .kw = kw, .tpe = tpe });
    return node;
};
 parser_Node * _3643b863_expect_array(_3643b863_ParseState *parse_state) {
    lexer_Token tok = _3643b863_peek(parse_state);
    int line = (tok.line);
    int column = (tok.column);
    lexer_TokenList *tokens = (*((*parse_state).tokens));
    parser_Node *node = _3643b863_parse_array_n(parse_state);
    if (node) {
        return node;
    }  ;
    (*((*parse_state).tokens)) = tokens;
    tok = _3643b863_expect(parse_state, lexer_TokenType_O_SQUARE, ((Array){14, "Expected '['\x0a"""}));
    int kw = parser_VarDecl_VAR;
    tok = _3643b863_peek(parse_state);
    if (((tok.tpe) == lexer_TokenType_K_VAR)) {
        _3643b863_pop(parse_state);
    } else if (((tok.tpe) == lexer_TokenType_K_LET)) {
        _3643b863_pop(parse_state);
        kw = parser_VarDecl_LET;
    } ;
    parser_Node *tpe = _3643b863_expect_type(parse_state);
    tok = _3643b863_expect(parse_state, lexer_TokenType_C_SQUARE, ((Array){14, "Expected ']'\x0a"""}));
    node = _3643b863_make_node(parser_NodeKind_ARRAY_T, line, column, parse_state);
    (((*node).value).t_parr) = ((parser_NodePtrArrayT){ .kw = kw, .tpe = tpe });
    return node;
};
 parser_Node * _3643b863_expect_ptr_ref(_3643b863_ParseState *parse_state, bool ref) {
    parser_NodeKind kind;
    lexer_Token tok;
    if (ref) {
        kind = parser_NodeKind_REF_T;
        tok = _3643b863_expect(parse_state, lexer_TokenType_OP_BAND, ((Array){14, "Expected '&'\x0a"""}));
    }  else {
        kind = parser_NodeKind_PTR_T;
        tok = _3643b863_expect(parse_state, lexer_TokenType_OP_MUL, ((Array){14, "Expected '*'\x0a"""}));
    };
    int line = (tok.line);
    int column = (tok.column);
    int kw = parser_VarDecl_VAR;
    tok = _3643b863_peek(parse_state);
    if (((tok.tpe) == lexer_TokenType_K_VAR)) {
        _3643b863_pop(parse_state);
    } else if (((tok.tpe) == lexer_TokenType_K_LET)) {
        _3643b863_pop(parse_state);
        kw = parser_VarDecl_LET;
    } ;
    lexer_TokenList *tokens = (*((*parse_state).tokens));
    parser_Node *tpe = _3643b863_parse_type(parse_state);
    if ((!tpe)) {
        (*((*parse_state).tokens)) = tokens;
    }  ;
    parser_Node *node = _3643b863_make_node(kind, line, column, parse_state);
    (((*node).value).t_parr) = ((parser_NodePtrArrayT){ .kw = kw, .tpe = tpe });
    return node;
};
 parser_Node * _3643b863_expect_struct(_3643b863_ParseState *parse_state);
 parser_Node * _3643b863_parse_id_decl_struct(_3643b863_ParseState *parse_state) {
    lexer_Token lh = _3643b863_peek(parse_state);
    parser_Node *node = NULL;
    if (((lh.tpe) == lexer_TokenType_K_STRUCT)) {
        node = _3643b863_expect_struct(parse_state);
    }  else {
        parser_Node *ident = _3643b863_expect_identifier(parse_state);
        _3643b863_skip_newline(parse_state);
        _3643b863_expect(parse_state, lexer_TokenType_COLON, ((Array){14, "Expected ':'\x0a"""}));
        _3643b863_skip_newline(parse_state);
        parser_Node *tpe = _3643b863_expect_type(parse_state);
        node = _3643b863_make_node(parser_NodeKind_ID_DECL_STRUCT, (lh.line), (lh.column), parse_state);
        (((*node).value).id_decl_struct) = ((parser_NodeIdDeclStruct){ .ident = ident, .tpe = tpe });
    };
    _3643b863_parse_t_term(parse_state);
    return node;
};
 parser_Node * _3643b863_expect_struct(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    int kind = parser_NodeKind_STRUCT_T;
    _3643b863_expect(parse_state, lexer_TokenType_K_STRUCT, ((Array){17, "Expected struct\x0a"""}));
    _3643b863_skip_newline(parse_state);
    token = _3643b863_peek(parse_state);
    if (((token.tpe) == lexer_TokenType_PRAGMA)) {
        _3643b863_pop(parse_state);
        if ((strcmp((((token.value).str).value), (((Array){7, "#union"}).value)) == 0)) {
            kind = parser_NodeKind_UNION_T;
        }  else {
            _3643b863_errort(token, parse_state, ((Array){40, "Unexpected pragma, only #union allowed\x0a"""}));
            return NULL;
        };
    }  ;
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    _3643b863_skip_newline(parse_state);
    vector_Vector *body = vector_make();
    token = _3643b863_peek(parse_state);
    while ((((token.tpe) != lexer_TokenType_C_BRACE) && ((token.tpe) != lexer_TokenType_EOF))) {
        _3643b863_skip_newline(parse_state);
        vector_push(body, _3643b863_parse_id_decl_struct(parse_state));
        token = _3643b863_peek(parse_state);
    }
    ;
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    parser_Node *node = _3643b863_make_node(kind, line, column, parse_state);
    (((*node).value).body) = body;
    return node;
};
 parser_Node * _3643b863_parse_id_decl_enum(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    parser_Node *ident = _3643b863_expect_identifier(parse_state);
    parser_Node *value = NULL;
    token = _3643b863_peek(parse_state);
    if (((token.tpe) == lexer_TokenType_OP_ASSIGN)) {
        _3643b863_pop(parse_state);
        _3643b863_skip_newline(parse_state);
        value = _3643b863_expect_expression(parse_state);
    }  ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_ID_DECL_ENUM, line, column, parse_state);
    (((*node).value).id_decl_enum) = ((parser_NodeIdDeclEnum){ .ident = ident, .value = value });
    _3643b863_parse_t_term(parse_state);
    return node;
};
 parser_Node * _3643b863_expect_enum(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_ENUM, ((Array){15, "Expected enum\x0a"""}));
    _3643b863_skip_newline(parse_state);
    token = _3643b863_peek(parse_state);
    parser_Node *tpe = NULL;
    if (((token.tpe) == lexer_TokenType_COLON)) {
        _3643b863_pop(parse_state);
        _3643b863_skip_newline(parse_state);
        tpe = _3643b863_expect_type(parse_state);
    }  ;
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){13, "Expected '{'"}));
    _3643b863_skip_newline(parse_state);
    vector_Vector *body = vector_make();
    token = _3643b863_peek(parse_state);
    while ((((token.tpe) != lexer_TokenType_C_BRACE) && ((token.tpe) != lexer_TokenType_EOF))) {
        _3643b863_skip_newline(parse_state);
        vector_push(body, _3643b863_parse_id_decl_enum(parse_state));
        token = _3643b863_peek(parse_state);
    }
    ;
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    parser_Node *node = _3643b863_make_node(parser_NodeKind_ENUM_T, line, column, parse_state);
    (((*node).value).t_enum) = ((parser_NodeEnumT){ .tpe = tpe, .body = body });
    return node;
};
 parser_Node * _3643b863_parse_type2(_3643b863_ParseState *parse_state) {
    lexer_Token tok = _3643b863_pop(parse_state);
    if (((tok.tpe) == lexer_TokenType_O_PAREN)) {
        parser_Node *node = _3643b863_expect_type(parse_state);
        _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
        return node;
    } else if (((tok.tpe) == lexer_TokenType_K_TYPE)) {
        parser_Node *node = _3643b863_expect_type(parse_state);
        return node;
    }
    else if (((tok.tpe) == lexer_TokenType_K_WORD)) {
        _3643b863_expect(parse_state, lexer_TokenType_O_PAREN, ((Array){14, "Expected '('\x0a"""}));
        lexer_Token n = _3643b863_expect(parse_state, lexer_TokenType_INTEGER, ((Array){18, "Expected integer\x0a"""}));
        if (((n.tpe) != lexer_TokenType_INTEGER)) {
            return NULL;
        }  ;
        _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
        parser_Node *node = _3643b863_make_node(parser_NodeKind_WORD_T, (tok.line), (tok.column), parse_state);
        (((*node).value).i) = ((n.value).i);
        return node;
    }
    else if (((tok.tpe) == lexer_TokenType_K_UNSIGNED)) {
        parser_Node *node = _3643b863_make_node(parser_NodeKind_UNSIGNED_T, (tok.line), (tok.column), parse_state);
        (((*node).value).expr) = _3643b863_expect_type(parse_state);
        return node;
    }
    else if (((tok.tpe) == lexer_TokenType_O_SQUARE)) {
        _3643b863_unget_token(parse_state, tok);
        return _3643b863_expect_array(parse_state);
    }
    else if ((((tok.tpe) == lexer_TokenType_OP_MUL) || ((tok.tpe) == lexer_TokenType_OP_BAND))) {
        _3643b863_unget_token(parse_state, tok);
        return _3643b863_expect_ptr_ref(parse_state, ((tok.tpe) == lexer_TokenType_OP_BAND));
    }
    else if ((((tok.tpe) == lexer_TokenType_DOUBLE_COLON) || ((tok.tpe) == lexer_TokenType_IDENTIFIER))) {
        _3643b863_unget_token(parse_state, tok);
        parser_Node *node = _3643b863_expect_identifier(parse_state);
        return node;
    }
    else if (((tok.tpe) == lexer_TokenType_K_STRUCT)) {
        _3643b863_unget_token(parse_state, tok);
        return _3643b863_expect_struct(parse_state);
    }
    else if (((tok.tpe) == lexer_TokenType_K_ENUM)) {
        _3643b863_unget_token(parse_state, tok);
        return _3643b863_expect_enum(parse_state);
    } else {
        _3643b863_unget_token(parse_state, tok);
        return NULL;
    };
};
 vector_Vector * _3643b863_parse_type_list(_3643b863_ParseState *parse_state, bool sw) {
    lexer_Token token = _3643b863_peek(parse_state);
    vector_Vector *vec = vector_make();
    if (((token.tpe) == lexer_TokenType_O_PAREN)) {
        _3643b863_pop(parse_state);
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) == lexer_TokenType_C_PAREN)) {
            _3643b863_pop(parse_state);
            return vec;
        }  ;
        while (true) {
            parser_Node *node = _3643b863_parse_type(parse_state);
            vector_push(vec, node);
            token = _3643b863_peek(parse_state);
            if (((token.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_pop(parse_state);
                _3643b863_skip_newline(parse_state);
                continue;
            }  ;
            break;
        }
        ;
        _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
    }  else {
        parser_Node *node = NULL;
        if (sw) {
            node = _3643b863_parse_type(parse_state);
        }  else {
            node = _3643b863_parse_type2(parse_state);
        };
        if (node) {
            vector_push(vec, node);
        }  ;
    };
    return vec;
};
 parser_Node * _3643b863_parse_type(_3643b863_ParseState *parse_state) {
    vector_Vector *args = _3643b863_parse_type_list(parse_state, false);
    lexer_Token token = _3643b863_peek(parse_state);
    if (((token.tpe) == lexer_TokenType_ARROW)) {
        _3643b863_pop(parse_state);
        vector_Vector *ret = _3643b863_parse_type_list(parse_state, true);
        parser_Node *node = _3643b863_make_node(parser_NodeKind_FUNCTION_T, (token.line), (token.column), parse_state);
        (((*node).value).t_func) = ((parser_NodeFunctionT){ .args = args, .ret = ret });
        return node;
    } else if ((vector_length(args) > 1)) {
        _3643b863_errort(token, parse_state, ((Array){36, "Expected single type, got multiple\x0a"""}));
        return NULL;
    }
    else if ((vector_length(args) == 1)) {
        return vector_get(args, 0);
    } else {
        return NULL;
    };
};
 parser_Node * _3643b863_expect_type(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_type(parse_state);
    if ((!node)) {
        _3643b863_errort(token, parse_state, ((Array){15, "Expected type\x0a"""}));
    }  ;
    return node;
};
 parser_Node * _3643b863_expect_array_lit(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_O_SQUARE, ((Array){15, "Expecting '['\x0a"""}));
    vector_Vector *body = vector_make();
    _3643b863_skip_newline(parse_state);
    token = _3643b863_peek(parse_state);
    if (((token.tpe) != lexer_TokenType_C_SQUARE)) {
        while (true) {
            parser_Node *expr = _3643b863_expect_expression_no_assign(parse_state);
            vector_push(body, expr);
            _3643b863_skip_newline(parse_state);
            token = _3643b863_peek(parse_state);
            if (((token.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_pop(parse_state);
                _3643b863_skip_newline(parse_state);
                continue;
            }  else {
                break;
            };
        }
        ;
    }  ;
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_C_SQUARE, ((Array){15, "Expecting ']'\x0a"""}));
    parser_Node *node = _3643b863_make_node(parser_NodeKind_ARRAY_LIT, line, column, parse_state);
    (((*node).value).body) = body;
    return node;
};
 parser_Node * _3643b863_expect_struct_lit(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){15, "Expecting '{'\x0a"""}));
    _3643b863_skip_newline(parse_state);
    token = _3643b863_peek(parse_state);
    vector_Vector *args = vector_make();
    while ((((token.tpe) != lexer_TokenType_C_BRACE) && ((token.tpe) != lexer_TokenType_EOF))) {
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) == lexer_TokenType_IDENTIFIER)) {
            lexer_TokenList *tokens = (*((*parse_state).tokens));
            _3643b863_pop(parse_state);
            _3643b863_skip_newline(parse_state);
            if (((_3643b863_peek(parse_state).tpe) == lexer_TokenType_OP_ASSIGN)) {
                (*((*parse_state).tokens)) = tokens;
                break;
            }  ;
            (*((*parse_state).tokens)) = tokens;
        }  ;
        vector_push(args, _3643b863_expect_expression_no_assign(parse_state));
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) != lexer_TokenType_C_BRACE)) {
            if (((token.tpe) != lexer_TokenType_COMMA)) {
                _3643b863_errort(token, parse_state, ((Array){14, "Expected ','\x0a"""}));
                return NULL;
            }  else {
                _3643b863_pop(parse_state);
                token = _3643b863_peek(parse_state);
            };
        }  ;
    }
    ;
    vector_Vector *kwargs = vector_make();
    while ((((token.tpe) != lexer_TokenType_C_BRACE) && ((token.tpe) != lexer_TokenType_EOF))) {
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        int line = (token.line);
        int column = (token.column);
        parser_Node *ident = _3643b863_expect_identifier(parse_state);
        _3643b863_skip_newline(parse_state);
        _3643b863_expect(parse_state, lexer_TokenType_OP_ASSIGN, ((Array){14, "expected '='\x0a"""}));
        _3643b863_skip_newline(parse_state);
        parser_Node *expr = _3643b863_expect_expression_no_assign(parse_state);
        parser_Node *named_arg = _3643b863_make_node(parser_NodeKind_NAMED_ARG, line, column, parse_state);
        (((*named_arg).value).named_arg) = ((parser_NodeNamedArg){ .name = ident, .value = expr });
        vector_push(kwargs, named_arg);
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) != lexer_TokenType_C_BRACE)) {
            if (((token.tpe) != lexer_TokenType_COMMA)) {
                _3643b863_errort(token, parse_state, ((Array){14, "Expected ','\x0a"""}));
                return NULL;
            }  else {
                _3643b863_pop(parse_state);
                token = _3643b863_peek(parse_state);
            };
        }  ;
    }
    ;
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){15, "Expecting '}'\x0a"""}));
    parser_Node *call = _3643b863_make_node(parser_NodeKind_STRUCT_LIT, line, column, parse_state);
    (((*call).value).struct_lit) = ((parser_NodeStructLit){ .args = args, .kwargs = kwargs });
};
 parser_Node * _3643b863_parse_term(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_pop(parse_state);
    parser_Node *node = malloc((sizeof(parser_Node)));
    if (((token.tpe) == lexer_TokenType_O_PAREN)) {
        free(node);
        node = _3643b863_parse_expression(parse_state);
        _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){15, "Expecting ')'\x0a"""}));
        return node;
    } else if (((token.tpe) == lexer_TokenType_K_TYPE)) {
        free(node);
        return _3643b863_expect_type(parse_state);
    }
    else if (((token.tpe) == lexer_TokenType_INTEGER)) {
        ((*node).kind) = parser_NodeKind_INTEGER;
        (((*node).value).i) = ((token.value).i);
    }
    else if (((token.tpe) == lexer_TokenType_FLOAT)) {
        ((*node).kind) = parser_NodeKind_FLOAT;
        (((*node).value).f) = ((token.value).f);
    }
    else if ((((token.tpe) == lexer_TokenType_IDENTIFIER) || ((token.tpe) == lexer_TokenType_DOUBLE_COLON))) {
        free(node);
        _3643b863_unget_token(parse_state, token);
        return _3643b863_expect_identifier(parse_state);
    }
    else if (((token.tpe) == lexer_TokenType_STRING)) {
        ((*node).kind) = parser_NodeKind_STRING;
        (((*node).value).str) = ((token.value).str);
    }
    else if (((token.tpe) == lexer_TokenType_CHAR)) {
        ((*node).kind) = parser_NodeKind_CHAR;
        (((*node).value).i) = ((token.value).ch);
    }
    else if ((((token.tpe) == lexer_TokenType_K_TRUE) || ((token.tpe) == lexer_TokenType_K_FALSE))) {
        int value = 0;
        if (((token.tpe) == lexer_TokenType_K_TRUE)) {
            value = 1;
        }  ;
        ((*node).kind) = parser_NodeKind_BOOLEAN;
        (((*node).value).i) = value;
    }
    else if (((token.tpe) == lexer_TokenType_K_NULL)) {
        ((*node).kind) = parser_NodeKind_NULL;
    }
    else if (((token.tpe) == lexer_TokenType_O_SQUARE)) {
        free(node);
        _3643b863_unget_token(parse_state, token);
        return _3643b863_expect_array_lit(parse_state);
    }
    else if (((token.tpe) == lexer_TokenType_O_BRACE)) {
        free(node);
        _3643b863_unget_token(parse_state, token);
        return _3643b863_expect_struct_lit(parse_state);
    } else {
        free(node);
        return NULL;
    };
    ((*node).tpe) = NULL;
    ((*node).scope) = NULL;
    ((*node).loc) = ((parser_SourceLoc){ ((*parse_state).filename), ((*parse_state).module), (token.line), (token.column), ((*parse_state).lines) });
    return node;
};
 parser_Node * _3643b863_expect_func_args(_3643b863_ParseState *parse_state, parser_Node *node) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    vector_Vector *args = vector_make();
    while ((((token.tpe) != lexer_TokenType_C_PAREN) && ((token.tpe) != lexer_TokenType_EOF))) {
        if (((token.tpe) == lexer_TokenType_IDENTIFIER)) {
            token = _3643b863_pop(parse_state);
            if (((_3643b863_peek(parse_state).tpe) == lexer_TokenType_OP_ASSIGN)) {
                _3643b863_unget_token(parse_state, token);
                break;
            }  ;
            _3643b863_unget_token(parse_state, token);
        }  ;
        vector_push(args, _3643b863_expect_expression_no_assign(parse_state));
        token = _3643b863_peek(parse_state);
        if (((token.tpe) != lexer_TokenType_C_PAREN)) {
            if (((token.tpe) != lexer_TokenType_COMMA)) {
                _3643b863_errort(token, parse_state, ((Array){14, "Expected ','\x0a"""}));
                return NULL;
            }  else {
                _3643b863_pop(parse_state);
                token = _3643b863_peek(parse_state);
            };
        }  ;
    }
    ;
    vector_Vector *kwargs = vector_make();
    while ((((token.tpe) != lexer_TokenType_C_PAREN) && ((token.tpe) != lexer_TokenType_EOF))) {
        token = _3643b863_peek(parse_state);
        int line = (token.line);
        int column = (token.column);
        parser_Node *ident = _3643b863_expect_identifier(parse_state);
        _3643b863_expect(parse_state, lexer_TokenType_OP_ASSIGN, ((Array){14, "expected '='\x0a"""}));
        parser_Node *expr = _3643b863_expect_expression_no_assign(parse_state);
        parser_Node *named_arg = _3643b863_make_node(parser_NodeKind_NAMED_ARG, line, column, parse_state);
        (((*named_arg).value).named_arg) = ((parser_NodeNamedArg){ .name = ident, .value = expr });
        vector_push(kwargs, named_arg);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) != lexer_TokenType_C_PAREN)) {
            if (((token.tpe) != lexer_TokenType_COMMA)) {
                _3643b863_errort(token, parse_state, ((Array){14, "Expected ','\x0a"""}));
                return NULL;
            }  else {
                _3643b863_pop(parse_state);
                token = _3643b863_peek(parse_state);
            };
        }  ;
    }
    ;
    parser_Node *call = _3643b863_make_node(parser_NodeKind_FUNC_CALL, line, column, parse_state);
    (((*call).value).func_call) = ((parser_NodeFuncCall){ .left = node, .args = args, .kwargs = kwargs });
};
 parser_Node * _3643b863_parse_post_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_term(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_O_PAREN)) {
            node = _3643b863_expect_func_args(parse_state, node);
            _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_O_SQUARE)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_ARRAY_SUBSCRIPT, node, _3643b863_parse_expression(parse_state));
            _3643b863_skip_newline(parse_state);
            _3643b863_expect(parse_state, lexer_TokenType_C_SQUARE, ((Array){14, "Expected ']'\x0a"""}));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_DOT)) {
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_MEMBER_ACCESS, node, _3643b863_expect_identifier(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_pre_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    if (_3643b863_next_token(parse_state, lexer_TokenType_OP_ADD)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_UADD, _3643b863_parse_pre_expression(parse_state));
    } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SUB)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_USUB, _3643b863_parse_pre_expression(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_MUL)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_PTR, _3643b863_parse_pre_expression(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_DEREF)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_DEREF, _3643b863_parse_pre_expression(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_BNOT)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_BNOT, _3643b863_parse_pre_expression(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_K_NOT)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_NOT, _3643b863_parse_pre_expression(parse_state));
    } else {
        return _3643b863_parse_post_expression(parse_state);
    };
};
 parser_Node * _3643b863_parse_cast_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_pre_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_CAST)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_CAST, node, _3643b863_parse_type(parse_state));
        }  else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_bin_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_cast_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_BAND)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_BAND, node, _3643b863_parse_cast_expression(parse_state));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_BOR)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_BOR, node, _3643b863_parse_cast_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_BXOR)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_BXOR, node, _3643b863_parse_cast_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SHL)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SHL, node, _3643b863_parse_cast_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SHR)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SHR, node, _3643b863_parse_cast_expression(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_mul_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_bin_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_MUL)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_MUL, node, _3643b863_parse_bin_expression(parse_state));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_DIV)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_DIV, node, _3643b863_parse_bin_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_MOD)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_MOD, node, _3643b863_parse_bin_expression(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_add_expresson(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_mul_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_ADD)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_ADD, node, _3643b863_parse_mul_expression(parse_state));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SUB)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SUB, node, _3643b863_parse_mul_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_INC)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_PADD, node, _3643b863_parse_mul_expression(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_DEC)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_PSUB, node, _3643b863_parse_mul_expression(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_cmp_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_add_expresson(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_EQ)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_EQ, node, _3643b863_parse_add_expresson(parse_state));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_NEQ)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_NEQ, node, _3643b863_parse_add_expresson(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_GEQ)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_GEQ, node, _3643b863_parse_add_expresson(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_LEQ)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_LEQ, node, _3643b863_parse_add_expresson(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_GT)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_GT, node, _3643b863_parse_add_expresson(parse_state));
        }
        else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_LT)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_LT, node, _3643b863_parse_add_expresson(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_and_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_cmp_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_K_AND)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_AND, node, _3643b863_parse_cmp_expression(parse_state));
        }  else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_or_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_and_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_K_OR)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_OR, node, _3643b863_parse_and_expression(parse_state));
        }  else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_range_expression(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    parser_Node *node = _3643b863_parse_or_expression(parse_state);
    while (true) {
        if (_3643b863_next_token(parse_state, lexer_TokenType_OP_RANGE)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_RANGE, node, _3643b863_parse_or_expression(parse_state));
        } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_RANGE_INC)) {
            _3643b863_skip_newline(parse_state);
            node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_RANGE_INC, node, _3643b863_parse_or_expression(parse_state));
        } else {
            return node;
        };
        token = _3643b863_peek(parse_state);
    }
    ;
};
 parser_Node * _3643b863_parse_assign_and_op(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    parser_Node *node = _3643b863_parse_range_expression(parse_state);
    if (_3643b863_next_token(parse_state, lexer_TokenType_OP_PADD_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_PADD_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    } else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_PSUB_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_PSUB_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_ADD_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_ADD_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SUB_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SUB_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_MUL_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_MUL_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_DIV_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_DIV_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_MOD_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_MOD_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_AND_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_AND_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_OR_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_OR_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_XOR_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_XOR_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SHL_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SHL_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    }
    else if (_3643b863_next_token(parse_state, lexer_TokenType_OP_SHR_EQ)) {
        _3643b863_skip_newline(parse_state);
        node = _3643b863_make_bin_op(parse_state, token, parser_NodeKind_SHR_EQ, node, _3643b863_parse_assign_and_op(parse_state));
    } ;
    return node;
};
 parser_Node * _3643b863_parse_size_of_align_of(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    if (_3643b863_next_token(parse_state, lexer_TokenType_K_SIZE_OF)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_SIZE_OF, _3643b863_parse_size_of_align_of(parse_state));
    } else if (_3643b863_next_token(parse_state, lexer_TokenType_K_ALIGN_OF)) {
        _3643b863_skip_newline(parse_state);
        return _3643b863_make_un_op(parse_state, token, parser_NodeKind_ALIGN_OF, _3643b863_parse_size_of_align_of(parse_state));
    } else {
        return _3643b863_parse_assign_and_op(parse_state);
    };
};
 parser_Node * _3643b863_parse_assign(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    parser_Node *node = _3643b863_parse_size_of_align_of(parse_state);
    vector_Vector *left = vector_make();
    vector_Vector *right = vector_make();
    vector_push(left, node);
    token = _3643b863_peek(parse_state);
    while (((token.tpe) == lexer_TokenType_COMMA)) {
        _3643b863_pop(parse_state);
        _3643b863_skip_newline(parse_state);
        node = _3643b863_parse_size_of_align_of(parse_state);
        vector_push(left, node);
        token = _3643b863_peek(parse_state);
    }
    ;
    if (((token.tpe) != lexer_TokenType_OP_ASSIGN)) {
        if ((vector_length(left) == 1)) {
            return vector_get(left, 0);
        }  ;
    }  else {
        _3643b863_pop(parse_state);
        node = _3643b863_parse_assign(parse_state);
        if (((((bool)node) && (((*node).kind) == parser_NodeKind_ASSIGN)) && (vector_length(((((*node).value).assign).right)) == 0))) {
            right = ((((*node).value).assign).left);
        }  else {
            vector_push(right, node);
            token = _3643b863_peek(parse_state);
            while (((token.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_pop(parse_state);
                _3643b863_skip_newline(parse_state);
                node = _3643b863_parse_assign(parse_state);
                vector_push(right, node);
                token = _3643b863_peek(parse_state);
            }
            ;
        };
    };
    parser_Node *result = _3643b863_make_node(parser_NodeKind_ASSIGN, line, column, parse_state);
    (((*result).value).assign) = ((parser_NodeAssign){ .left = left, .right = right });
};
 parser_Node * _3643b863_parse_expression(_3643b863_ParseState *parse_state) {
    return _3643b863_parse_assign(parse_state);
};
 parser_Node * _3643b863_expect_expression(_3643b863_ParseState *parse_state) {
    parser_Node *node = _3643b863_parse_expression(parse_state);
    if ((!node)) {
        lexer_Token token = _3643b863_peek(parse_state);
        _3643b863_errort(token, parse_state, ((Array){21, "Expected expression\x0a"""}));
    }  ;
    return node;
};
 parser_Node * _3643b863_parse_expression_no_assign(_3643b863_ParseState *parse_state) {
    return _3643b863_parse_size_of_align_of(parse_state);
};
 parser_Node * _3643b863_expect_expression_no_assign(_3643b863_ParseState *parse_state) {
    parser_Node *node = _3643b863_parse_expression_no_assign(parse_state);
    if ((!node)) {
        lexer_Token token = _3643b863_peek(parse_state);
        _3643b863_errort(token, parse_state, ((Array){21, "Expected expression\x0a"""}));
    }  ;
    return node;
};
 parser_Node * _3643b863_parse_def(_3643b863_ParseState *parse_state, parser_ShareMarker share) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_DEF, ((Array){14, "Expected def\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *name = _3643b863_expect_identifier(parse_state);
    vector_Vector *params = vector_make();
    token = _3643b863_peek(parse_state);
    if (((token.tpe) == lexer_TokenType_O_PAREN)) {
        _3643b863_pop(parse_state);
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) != lexer_TokenType_C_PAREN)) {
            while (true) {
                token = _3643b863_peek(parse_state);
                int line = (token.line);
                int column = (token.column);
                int kw = parser_VarDecl_VAR;
                if (((token.tpe) == lexer_TokenType_K_LET)) {
                    kw = parser_VarDecl_LET;
                    _3643b863_pop(parse_state);
                } else if (((token.tpe) == lexer_TokenType_K_VAR)) {
                    kw = parser_VarDecl_VAR;
                    _3643b863_pop(parse_state);
                }
                else if (((token.tpe) == lexer_TokenType_K_TYPE)) {
                    kw = parser_VarDecl_TYPE;
                    _3643b863_pop(parse_state);
                } ;
                _3643b863_skip_newline(parse_state);
                parser_Node *name = _3643b863_expect_identifier(parse_state);
                _3643b863_skip_newline(parse_state);
                parser_Node *tpe = NULL;
                token = _3643b863_peek(parse_state);
                if (((token.tpe) == lexer_TokenType_COLON)) {
                    _3643b863_pop(parse_state);
                    tpe = _3643b863_expect_type(parse_state);
                }  ;
                _3643b863_skip_newline(parse_state);
                token = _3643b863_peek(parse_state);
                parser_Node *value = NULL;
                if (((token.tpe) == lexer_TokenType_OP_ASSIGN)) {
                    _3643b863_pop(parse_state);
                    if ((kw == parser_VarDecl_TYPE)) {
                        value = _3643b863_expect_type(parse_state);
                    }  else {
                        value = _3643b863_expect_expression_no_assign(parse_state);
                    };
                }  ;
                parser_Node *param = _3643b863_make_node(parser_NodeKind_PARAMETER, line, column, parse_state);
                (((*param).value).param) = ((parser_NodeParam){ .kw = kw, .name = name, .tpe = tpe, .value = value });
                vector_push(params, param);
                token = _3643b863_peek(parse_state);
                if (((token.tpe) == lexer_TokenType_COMMA)) {
                    _3643b863_pop(parse_state);
                    continue;
                }  else {
                    _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
                    break;
                };
            }
            ;
        }  else {
            _3643b863_pop(parse_state);
        };
    }  ;
    vector_Vector *returns = vector_make();
    token = _3643b863_peek(parse_state);
    if (((token.tpe) == lexer_TokenType_ARROW)) {
        _3643b863_pop(parse_state);
        while (true) {
            parser_Node *tpe = _3643b863_expect_type(parse_state);
            vector_push(returns, tpe);
            token = _3643b863_peek(parse_state);
            if (((token.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_pop(parse_state);
                _3643b863_skip_newline(parse_state);
                continue;
            }  else {
                break;
            };
        }
        ;
    }  ;
    vector_Vector *body = NULL;
    lexer_TokenList *tokens = (*((*parse_state).tokens));
    _3643b863_skip_newline(parse_state);
    token = _3643b863_peek(parse_state);
    if (((token.tpe) != lexer_TokenType_O_BRACE)) {
        (*((*parse_state).tokens)) = tokens;
    }  else {
        _3643b863_pop(parse_state);
        body = vector_make();
        _3643b863_parse_block(parse_state, body);
        _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    };
    parser_Node *node = _3643b863_make_node(parser_NodeKind_DEF, line, column, parse_state);
    (((*node).value).def_) = ((parser_NodeDef){ .share = share, .name = name, .params = params, .returns = returns, .body = body });
    return node;
};
 parser_Node * _3643b863_parse_vardecl(_3643b863_ParseState *parse_state, parser_ShareMarker share, parser_VarDecl vardecl) {
    lexer_Token tok = _3643b863_pop(parse_state);
    int line = (tok.line);
    int column = (tok.column);
    if ((!((((tok.tpe) == lexer_TokenType_K_VAR) || ((tok.tpe) == lexer_TokenType_K_CONST)) || ((tok.tpe) == lexer_TokenType_K_LET)))) {
        return NULL;
    }  ;
    _3643b863_skip_newline(parse_state);
    vector_Vector *vec_left = vector_make();
    while (true) {
        tok = _3643b863_pop(parse_state);
        if (((tok.tpe) == lexer_TokenType_O_PAREN)) {
            parser_Node *expr = _3643b863_expect_expression_no_assign(parse_state);
            _3643b863_expect(parse_state, lexer_TokenType_C_PAREN, ((Array){14, "Expected ')'\x0a"""}));
            parser_Node *node = _3643b863_make_node(parser_NodeKind_ID_ASSIGN, (tok.line), (tok.column), parse_state);
            (((*node).value).expr) = expr;
            vector_push(vec_left, node);
        }  else {
            _3643b863_unget_token(parse_state, tok);
            parser_Node *ident = _3643b863_expect_identifier(parse_state);
            tok = _3643b863_peek(parse_state);
            parser_Node *tpe = NULL;
            if (((tok.tpe) == lexer_TokenType_COLON)) {
                _3643b863_pop(parse_state);
                tpe = _3643b863_expect_type(parse_state);
            }  ;
            parser_Node *node = _3643b863_make_node(parser_NodeKind_ID_DECL, (tok.line), (tok.column), parse_state);
            (((*node).value).id_decl) = ((parser_NodeIdDecl){ .value = ident, .tpe = tpe });
            vector_push(vec_left, node);
        };
        tok = _3643b863_pop(parse_state);
        if (((tok.tpe) == lexer_TokenType_COMMA)) {
            _3643b863_skip_newline(parse_state);
            continue;
        } else if (((((tok.tpe) == lexer_TokenType_OP_ASSIGN) || ((tok.tpe) == lexer_TokenType_NEW_LINE)) || ((tok.tpe) == lexer_TokenType_EOF))) {
            _3643b863_unget_token(parse_state, tok);
            break;
        } else {
            _3643b863_errort(tok, parse_state, ((Array){42, "Expected identifier, (expression) or '='\x0a"""}));
            return NULL;
        };
    }
    ;
    vector_Vector *vec_right = vector_make();
    if (((tok.tpe) == lexer_TokenType_OP_ASSIGN)) {
        _3643b863_pop(parse_state);
        while (true) {
            parser_Node *expr = _3643b863_expect_expression_no_assign(parse_state);
            vector_push(vec_right, expr);
            tok = _3643b863_pop(parse_state);
            if (((tok.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_skip_newline(parse_state);
                continue;
            } else if ((((tok.tpe) == lexer_TokenType_NEW_LINE) || ((tok.tpe) == lexer_TokenType_EOF))) {
                _3643b863_unget_token(parse_state, tok);
                break;
            } ;
        }
        ;
    } else if (((vardecl == parser_VarDecl_LET) || (vardecl == parser_VarDecl_CONST))) {
        _3643b863_errort(tok, parse_state, ((Array){14, "Expected '='\x0a"""}));
        return NULL;
    } ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_VAR_DECL, line, column, parse_state);
    (((*node).value).var_decl) = ((parser_NodeVarDecl){ .share = share, .kw = vardecl, .left = vec_left, .right = vec_right });
    return node;
};
 parser_Node * _3643b863_parse_typedecl(_3643b863_ParseState *parse_state, parser_ShareMarker share) {
    lexer_Token token = _3643b863_pop(parse_state);
    int line = (token.line);
    int column = (token.column);
    if (((token.tpe) != lexer_TokenType_K_TYPE)) {
        return NULL;
    }  ;
    vector_Vector *vec_left = vector_make();
    while (true) {
        parser_Node *ident = _3643b863_expect_identifier(parse_state);
        vector_push(vec_left, ident);
        token = _3643b863_pop(parse_state);
        if (((token.tpe) == lexer_TokenType_COMMA)) {
            _3643b863_skip_newline(parse_state);
            continue;
        } else if (((((token.tpe) == lexer_TokenType_OP_ASSIGN) || ((token.tpe) == lexer_TokenType_NEW_LINE)) || ((token.tpe) == lexer_TokenType_EOF))) {
            _3643b863_unget_token(parse_state, token);
            break;
        } ;
    }
    ;
    vector_Vector *vec_right = vector_make();
    if (((token.tpe) == lexer_TokenType_OP_ASSIGN)) {
        _3643b863_pop(parse_state);
        while (true) {
            parser_Node *tpe = _3643b863_expect_type(parse_state);
            vector_push(vec_right, tpe);
            token = _3643b863_pop(parse_state);
            if (((token.tpe) == lexer_TokenType_COMMA)) {
                _3643b863_skip_newline(parse_state);
                continue;
            } else if ((((token.tpe) == lexer_TokenType_NEW_LINE) || ((token.tpe) == lexer_TokenType_EOF))) {
                _3643b863_unget_token(parse_state, token);
                break;
            } ;
        }
        ;
    }  ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_TYPE_DECL, line, column, parse_state);
    (((*node).value).type_decl) = ((parser_NodeTypeDecl){ .share = share, .left = vec_left, .right = vec_right });
    return node;
};
 parser_Node * _3643b863_expect_loop_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_LOOP, ((Array){15, "Expected loop\x0a"""}));
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    vector_Vector *body = vector_make();
    _3643b863_parse_block(parse_state, body);
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    parser_Node *node = _3643b863_make_node(parser_NodeKind_LOOP, line, column, parse_state);
    (((*node).value).body) = body;
    return node;
};
 parser_Node * _3643b863_expect_while_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_WHILE, ((Array){16, "Expected while\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *expr = _3643b863_expect_expression(parse_state);
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    vector_Vector *body = vector_make();
    _3643b863_parse_block(parse_state, body);
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    parser_Node *node = _3643b863_make_node(parser_NodeKind_WHILE, line, column, parse_state);
    (((*node).value).while_loop) = ((parser_NodeWhile){ .expr = expr, .body = body });
};
 parser_Node * _3643b863_expect_for_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_FOR, ((Array){14, "Expected for\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *iddecl = NULL;
    token = _3643b863_peek(parse_state);
    if ((((token.tpe) == lexer_TokenType_K_VAR) || ((token.tpe) == lexer_TokenType_K_LET))) {
        int kw = parser_VarDecl_VAR;
        if (((token.tpe) == lexer_TokenType_K_LET)) {
            kw = parser_VarDecl_LET;
        }  ;
        _3643b863_pop(parse_state);
        parser_Node *ident = _3643b863_expect_identifier(parse_state);
        iddecl = _3643b863_make_node(parser_NodeKind_FOR_ID_DECL, (token.line), (token.column), parse_state);
        (((*iddecl).value).for_id_decl) = ((parser_NodeForIdDecl){ .kw = kw, .ident = ident });
    }  else {
        iddecl = _3643b863_expect_identifier(parse_state);
    };
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_K_IN, ((Array){13, "Expected in\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *expr = _3643b863_expect_expression(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    vector_Vector *body = vector_make();
    _3643b863_parse_block(parse_state, body);
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    parser_Node *node = _3643b863_make_node(parser_NodeKind_FOR, line, column, parse_state);
    (((*node).value).for_loop) = ((parser_NodeFor){ .iddecl = iddecl, .expr = expr, .body = body });
    return node;
};
 parser_Node * _3643b863_expect_if_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_IF, ((Array){13, "Expected if\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *cond = _3643b863_expect_expression(parse_state);
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    vector_Vector *body = vector_make();
    _3643b863_parse_block(parse_state, body);
    _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
    lexer_TokenList *tokens = (*((*parse_state).tokens));
    _3643b863_skip_newline(parse_state);
    vector_Vector *else_if = vector_make();
    parser_Node *else_node = NULL;
    token = _3643b863_peek(parse_state);
    if (((token.tpe) != lexer_TokenType_K_ELSE)) {
        (*((*parse_state).tokens)) = tokens;
    }  ;
    while (true) {
        if (((token.tpe) == lexer_TokenType_K_ELSE)) {
            _3643b863_pop(parse_state);
            _3643b863_skip_newline(parse_state);
            token = _3643b863_peek(parse_state);
            if (((token.tpe) == lexer_TokenType_K_IF)) {
                _3643b863_pop(parse_state);
                parser_Node *cond = _3643b863_expect_expression(parse_state);
                _3643b863_skip_newline(parse_state);
                _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
                vector_Vector *body = vector_make();
                _3643b863_parse_block(parse_state, body);
                _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
                tokens = (*((*parse_state).tokens));
                _3643b863_skip_newline(parse_state);
                parser_Node *elif_node = _3643b863_make_node(parser_NodeKind_ELSE_IF, (token.line), (token.column), parse_state);
                (((*elif_node).value).else_if) = ((parser_NodeElseIf){ .cond = cond, .body = body });
                vector_push(else_if, elif_node);
                token = _3643b863_peek(parse_state);
                if (((token.tpe) != lexer_TokenType_K_ELSE)) {
                    (*((*parse_state).tokens)) = tokens;
                }  ;
            }  else {
                _3643b863_skip_newline(parse_state);
                _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
                vector_Vector *body = vector_make();
                _3643b863_parse_block(parse_state, body);
                _3643b863_expect(parse_state, lexer_TokenType_C_BRACE, ((Array){14, "Expected '}'\x0a"""}));
                else_node = _3643b863_make_node(parser_NodeKind_ELSE, (token.line), (token.column), parse_state);
                (((*else_node).value).body) = body;
                break;
            };
        }  else {
            break;
        };
    }
    ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_IF, line, column, parse_state);
    (((*node).value).if_) = ((parser_NodeIf){ .cond = cond, .body = body, .else_if = else_if, .else_ = else_node });
    return node;
};
 parser_Node * _3643b863_expect_switch_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_SWITCH, ((Array){17, "Expected switch\x0a"""}));
    _3643b863_skip_newline(parse_state);
    parser_Node *expr = _3643b863_expect_expression(parse_state);
    _3643b863_skip_newline(parse_state);
    _3643b863_expect(parse_state, lexer_TokenType_O_BRACE, ((Array){14, "Expected '{'\x0a"""}));
    vector_Vector *body = vector_make();
    while (true) {
        _3643b863_skip_newline(parse_state);
        token = _3643b863_pop(parse_state);
        if ((((token.tpe) == lexer_TokenType_C_BRACE) || ((token.tpe) == lexer_TokenType_EOF))) {
            break;
        } else if (((token.tpe) == lexer_TokenType_K_CASE)) {
            int line = (token.line);
            int column = (token.column);
            _3643b863_skip_newline(parse_state);
            vector_Vector *body2 = vector_make();
            parser_Node *expr2 = NULL;
            token = _3643b863_peek(parse_state);
            if (((token.tpe) == lexer_TokenType_COLON)) {
                _3643b863_pop(parse_state);
            }  else {
                expr2 = _3643b863_expect_expression(parse_state);
                _3643b863_skip_newline(parse_state);
                _3643b863_expect(parse_state, lexer_TokenType_COLON, ((Array){14, "Expected ':'\x0a"""}));
            };
            _3643b863_skip_newline(parse_state);
            token = _3643b863_peek(parse_state);
            while (((((token.tpe) != lexer_TokenType_K_CASE) && ((token.tpe) != lexer_TokenType_C_BRACE)) && ((token.tpe) != lexer_TokenType_EOF))) {
                _3643b863_parse_block_stmt(parse_state, body2);
                token = _3643b863_peek(parse_state);
            }
            ;
            parser_Node *node = _3643b863_make_node(parser_NodeKind_CASE, line, column, parse_state);
            (((*node).value).case_) = ((parser_NodeCase){ .expr = expr2, .body = body2 });
            vector_push(body, node);
        } else {
            _3643b863_errort(token, parse_state, ((Array){15, "Expected case\x0a"""}));
        };
    }
    ;
    if (((token.tpe) != lexer_TokenType_C_BRACE)) {
        _3643b863_errort(token, parse_state, ((Array){14, "Expected '}'\x0a"""}));
    }  ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_SWITCH, line, column, parse_state);
    (((*node).value).switch_) = ((parser_NodeSwitch){ .expr = expr, .body = body });
    return node;
};
 parser_Node * _3643b863_expect_import_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    vector_Vector *body = vector_make();
    _3643b863_expect(parse_state, lexer_TokenType_K_IMPORT, ((Array){17, "Expected import\x0a"""}));
    _3643b863_skip_newline(parse_state);
    while (true) {
        int line = (token.line);
        int column = (token.column);
        parser_Node *name = _3643b863_expect_identifier(parse_state);
        token = _3643b863_peek(parse_state);
        parser_Node *alias = NULL;
        if (((token.tpe) == lexer_TokenType_K_AS)) {
            _3643b863_pop(parse_state);
            alias = _3643b863_expect_identifier(parse_state);
        }  ;
        parser_Node *module = _3643b863_make_node(parser_NodeKind_IMPORT_MODULE, line, column, parse_state);
        (((*module).value).import_module) = ((parser_NodeImportModule){ .name = name, .alias = alias });
        vector_push(body, module);
        token = _3643b863_peek(parse_state);
        if (((token.tpe) == lexer_TokenType_COMMA)) {
            _3643b863_pop(parse_state);
            _3643b863_skip_newline(parse_state);
            continue;
        }  else {
            break;
        };
    }
    ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_IMPORT, line, column, parse_state);
    (((*node).value).body) = body;
    return node;
};
 parser_Node * _3643b863_expect_return_stmt(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    int line = (token.line);
    int column = (token.column);
    _3643b863_expect(parse_state, lexer_TokenType_K_RETURN, ((Array){17, "Expected return\x0a"""}));
    vector_Vector *body = vector_make();
    token = _3643b863_peek(parse_state);
    while (((((token.tpe) != lexer_TokenType_NEW_LINE) && ((token.tpe) != lexer_TokenType_EOF)) && ((token.tpe) != lexer_TokenType_C_BRACE))) {
        vector_push(body, _3643b863_expect_expression_no_assign(parse_state));
        token = _3643b863_peek(parse_state);
        if (((token.tpe) == lexer_TokenType_COMMA)) {
            _3643b863_pop(parse_state);
            _3643b863_skip_newline(parse_state);
            continue;
        }  else {
            break;
        };
    }
    ;
    parser_Node *node = _3643b863_make_node(parser_NodeKind_RETURN, line, column, parse_state);
    (((*node).value).body) = body;
    return node;
};
 void _3643b863_parse_t_term(_3643b863_ParseState *parse_state) {
    lexer_Token token = _3643b863_peek(parse_state);
    if ((((token.tpe) == lexer_TokenType_SEMICOLON) || ((token.tpe) == lexer_TokenType_NEW_LINE))) {
        _3643b863_pop(parse_state);
    } else if ((((token.tpe) != lexer_TokenType_EOF) && ((token.tpe) != lexer_TokenType_C_BRACE))) {
        _3643b863_pop(parse_state);
        _3643b863_errort(token, parse_state, ((Array){29, "Missing statement separator\x0a"""}));
    } ;
};
 parser_Node * _3643b863_parse_statement2(_3643b863_ParseState *parse_state, parser_ShareMarker share) {
    lexer_Token lh = _3643b863_peek(parse_state);
    parser_Node *node = NULL;
    if (((lh.tpe) == lexer_TokenType_K_VAR)) {
        node = _3643b863_parse_vardecl(parse_state, share, parser_VarDecl_VAR);
    } else if (((lh.tpe) == lexer_TokenType_K_LET)) {
        node = _3643b863_parse_vardecl(parse_state, share, parser_VarDecl_LET);
    }
    else if (((lh.tpe) == lexer_TokenType_K_CONST)) {
        node = _3643b863_parse_vardecl(parse_state, share, parser_VarDecl_CONST);
    }
    else if (((lh.tpe) == lexer_TokenType_K_TYPE)) {
        node = _3643b863_parse_typedecl(parse_state, share);
    }
    else if (((lh.tpe) == lexer_TokenType_K_DEF)) {
        node = _3643b863_parse_def(parse_state, share);
    } ;
    return node;
};
 parser_Node * _3643b863_parse_statement(_3643b863_ParseState *parse_state) {
    lexer_Token lh = _3643b863_peek(parse_state);
    parser_Node *node = NULL;
    if (((lh.tpe) == lexer_TokenType_K_IMPORT)) {
        int share = parser_ShareMarker_IMPORT;
        lexer_Token tok = _3643b863_pop(parse_state);
        node = _3643b863_parse_statement2(parse_state, share);
        if ((!node)) {
            _3643b863_unget_token(parse_state, tok);
            node = _3643b863_expect_import_stmt(parse_state);
        }  ;
    } else if (((lh.tpe) == lexer_TokenType_K_EXPORT)) {
        int share = parser_ShareMarker_EXPORT;
        _3643b863_pop(parse_state);
        lexer_Token lh = _3643b863_peek(parse_state);
        if (((lh.tpe) == lexer_TokenType_K_IMPORT)) {
            share = parser_ShareMarker_BOTH;
            _3643b863_pop(parse_state);
        }  ;
        node = _3643b863_parse_statement2(parse_state, share);
        if ((!node)) {
            _3643b863_errort(_3643b863_peek(parse_state), parse_state, ((Array){37, "Expected def, type, var, let, const\x0a"""}));
            return NULL;
        }  ;
    }
    else if (((lh.tpe) == lexer_TokenType_K_IF)) {
        node = _3643b863_expect_if_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_SWITCH)) {
        node = _3643b863_expect_switch_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_LOOP)) {
        node = _3643b863_expect_loop_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_FOR)) {
        node = _3643b863_expect_for_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_WHILE)) {
        node = _3643b863_expect_while_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_RETURN)) {
        node = _3643b863_expect_return_stmt(parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_BREAK)) {
        _3643b863_pop(parse_state);
        node = _3643b863_make_node(parser_NodeKind_BREAK, (lh.line), (lh.column), parse_state);
    }
    else if (((lh.tpe) == lexer_TokenType_K_CONTINUE)) {
        _3643b863_pop(parse_state);
        node = _3643b863_make_node(parser_NodeKind_CONTINUE, (lh.line), (lh.column), parse_state);
    } else {
        node = _3643b863_parse_statement2(parse_state, parser_ShareMarker_NONE);
        if ((!node)) {
            node = _3643b863_parse_expression(parse_state);
        }  ;
    };
    _3643b863_parse_t_term(parse_state);
    return node;
};
 void _3643b863_parse_block_stmt(_3643b863_ParseState *parse_state, vector_Vector *vec) {
    parser_Node *node = _3643b863_parse_statement(parse_state);
    ((*parse_state).has_error) = false;
    if ((!node)) {
        lexer_Token lh = _3643b863_peek(parse_state);
        while (((((lh.tpe) != lexer_TokenType_NEW_LINE) && ((lh.tpe) != lexer_TokenType_EOF)) && ((lh.tpe) != lexer_TokenType_C_BRACE))) {
            lh = _3643b863_pop(parse_state);
        }
        ;
    }  else {
        vector_push(vec, node);
    };
};
 void _3643b863_parse_block(_3643b863_ParseState *parse_state, vector_Vector *vec) {
    _3643b863_skip_newline(parse_state);
    lexer_Token token = _3643b863_peek(parse_state);
    while ((((token.tpe) != lexer_TokenType_EOF) && ((token.tpe) != lexer_TokenType_C_BRACE))) {
        _3643b863_parse_block_stmt(parse_state, vec);
        _3643b863_skip_newline(parse_state);
        token = _3643b863_peek(parse_state);
    }
    ;
};
DLL_EXPORT parser_Node * parser_parse(lexer_TokenList *list, Array lines, string filename, string module) {
    _3643b863_ParseState parse_state;
    (parse_state.filename) = filename;
    (parse_state.module) = module;
    (parse_state.lines) = lines;
    (parse_state.tokens) = (&list);
    vector_Vector *vec = vector_make();
    _3643b863_parse_block((&parse_state), vec);
    lexer_Token token = _3643b863_peek((&parse_state));
    if (((token.tpe) != lexer_TokenType_EOF)) {
        _3643b863_errort(token, (&parse_state), ((Array){24, "Unexpected closing '}'\x0a"""}));
    }  ;
    parser_Node *program_node = _3643b863_make_node(parser_NodeKind_PROGRAM, 0, 0, (&parse_state));
    (((*program_node).value).body) = vec;
    return program_node;
};
#include "toolchain.c"
 void _3643b863_errort(lexer_Token token, _3643b863_ParseState *state, string msg) {
    if ((!((*state).has_error))) {
        string filename = ((*state).filename);
        int line = (token.line);
        int column = (token.column);
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        fprintf(stderr, (((Array){13, "%s%s%d%s%d%s"}).value), (filename.value), (((Array){2, "@"}).value), (line + ((int)1)), (((Array){2, ":"}).value), (column + ((int)1)), (((Array){2, "\x0a"""}).value));
        fprintf(stderr, (((Array){5, "%s%s"}).value), ((((string *)((*state).lines).value)[line]).value), (((Array){2, "\x0a"""}).value));
        for (int i = 0;(i < column);(i += 1)) {
            fprintf(stderr, (((Array){3, "%s"}).value), (((Array){2, " "}).value));
        }
        ;
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){3, "^\x0a"""}).value));
        fprintf(stderr, (((Array){3, "%s"}).value), (msg.value));
        ((*state).has_error) = true;
        (toolchain_error_count += 1);
    }  ;
};
DLL_EXPORT void parser_p_main(Array args) {
    lexer_p_main(args);
};


#endif
