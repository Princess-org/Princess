/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _lexer_H
#define _lexer_H
#include "buffer.c"
#include "util.c"
typedef enum lexer_TokenType {lexer_TokenType_DOT = 1, lexer_TokenType_COLON = 2, lexer_TokenType_DOUBLE_COLON = 3, lexer_TokenType_COMMA = 4, lexer_TokenType_SEMICOLON = 5, lexer_TokenType_ARROW = 6, lexer_TokenType_NEW_LINE = 7, lexer_TokenType_QUESTION_MARK = 8, lexer_TokenType_O_PAREN = 9, lexer_TokenType_C_PAREN = 10, lexer_TokenType_O_BRACE = 11, lexer_TokenType_C_BRACE = 12, lexer_TokenType_O_SQUARE = 13, lexer_TokenType_C_SQUARE = 14, lexer_TokenType_OP_RANGE = 15, lexer_TokenType_OP_RANGE_INC = 16, lexer_TokenType_OP_CAST = 17, lexer_TokenType_OP_AUTOCAST = 18, lexer_TokenType_OP_DEREF = 19, lexer_TokenType_OP_ASSIGN = 20, lexer_TokenType_OP_ADD = 21, lexer_TokenType_OP_SUB = 22, lexer_TokenType_OP_MUL = 23, lexer_TokenType_OP_DIV = 24, lexer_TokenType_OP_MOD = 25, lexer_TokenType_OP_BOR = 26, lexer_TokenType_OP_BAND = 27, lexer_TokenType_OP_BXOR = 28, lexer_TokenType_OP_BNOT = 29, lexer_TokenType_OP_SHL = 30, lexer_TokenType_OP_SHR = 31, lexer_TokenType_OP_INC = 32, lexer_TokenType_OP_DEC = 33, lexer_TokenType_OP_EQ = 34, lexer_TokenType_OP_NEQ = 35, lexer_TokenType_OP_LEQ = 36, lexer_TokenType_OP_GEQ = 37, lexer_TokenType_OP_LT = 38, lexer_TokenType_OP_GT = 39, lexer_TokenType_OP_PADD_EQ = 40, lexer_TokenType_OP_PSUB_EQ = 41, lexer_TokenType_OP_ADD_EQ = 42, lexer_TokenType_OP_SUB_EQ = 43, lexer_TokenType_OP_MUL_EQ = 44, lexer_TokenType_OP_DIV_EQ = 45, lexer_TokenType_OP_MOD_EQ = 46, lexer_TokenType_OP_OR_EQ = 47, lexer_TokenType_OP_AND_EQ = 48, lexer_TokenType_OP_XOR_EQ = 49, lexer_TokenType_OP_SHL_EQ = 50, lexer_TokenType_OP_SHR_EQ = 51, lexer_TokenType_K_DO = 52, lexer_TokenType_K_TYPE = 53, lexer_TokenType_K_ENUM = 54, lexer_TokenType_K_STRUCT = 55, lexer_TokenType_K_IF = 56, lexer_TokenType_K_ELSE = 57, lexer_TokenType_K_NOT = 58, lexer_TokenType_K_AND = 59, lexer_TokenType_K_OR = 60, lexer_TokenType_K_VAR = 61, lexer_TokenType_K_LET = 62, lexer_TokenType_K_CONST = 63, lexer_TokenType_K_WHILE = 64, lexer_TokenType_K_TRUE = 65, lexer_TokenType_K_FALSE = 66, lexer_TokenType_K_WORD = 67, lexer_TokenType_K_NULL = 68, lexer_TokenType_K_SWITCH = 69, lexer_TokenType_K_FOR = 70, lexer_TokenType_K_IN = 71, lexer_TokenType_K_LOOP = 72, lexer_TokenType_K_CONTINUE = 73, lexer_TokenType_K_BREAK = 74, lexer_TokenType_K_RETURN = 75, lexer_TokenType_K_UNSIGNED = 76, lexer_TokenType_K_LABEL = 77, lexer_TokenType_K_GO_TO = 78, lexer_TokenType_K_CASE = 79, lexer_TokenType_K_SIZE_OF = 80, lexer_TokenType_K_ALIGN_OF = 81, lexer_TokenType_K_DEF = 82, lexer_TokenType_K_EXPORT = 83, lexer_TokenType_K_IMPORT = 84, lexer_TokenType_K_AS = 85, lexer_TokenType_K_FROM = 86, lexer_TokenType_INTEGER = 87, lexer_TokenType_FLOAT = 88, lexer_TokenType_STRING = 89, lexer_TokenType_CHAR = 90, lexer_TokenType_IDENTIFIER = 91, lexer_TokenType_COMMENT = 92, lexer_TokenType_ERROR = 93, lexer_TokenType_PRAGMA = 94, lexer_TokenType_WHITESPACE = 95, lexer_TokenType_EOF = 96} lexer_TokenType;
typedef union lexer_TokenValue {string str; char ch; uint64 i; double f;} lexer_TokenValue;
typedef struct lexer_Token {enum lexer_TokenType tpe; int line; int column; union lexer_TokenValue value;} lexer_Token;
typedef struct lexer_TokenList {struct lexer_Token value; struct lexer_TokenList *next;} lexer_TokenList;
typedef struct _9f927900_Keyword {enum lexer_TokenType token_type; string str;} _9f927900_Keyword;
ARRAY(_9f927900_KEYWORDS, _9f927900_Keyword, 35);
DLL_EXPORT void lexer_print_token_list(lexer_TokenList *list) {
    while ((list != NULL)) {
        lexer_Token value = ((*list).value);
        printf((((Array){13, "%d%s%d%s%d%s"}).value), (value.line), (((Array){2, ":"}).value), (value.column), (((Array){4, " = "}).value), (value.tpe), (((Array){3, ": "}).value));
        if (((((((value.tpe) == lexer_TokenType_STRING) || ((value.tpe) == lexer_TokenType_IDENTIFIER)) || ((value.tpe) == lexer_TokenType_ERROR)) || ((value.tpe) == lexer_TokenType_COMMENT)) || ((value.tpe) == lexer_TokenType_PRAGMA))) {
            string str = ((value.value).str);
            printf((((Array){3, "%s"}).value), (str.value));
        } else if (((value.tpe) == lexer_TokenType_INTEGER)) {
            printf((((Array){4, "%lu"}).value), ((value.value).i));
        }
        else if (((value.tpe) == lexer_TokenType_CHAR)) {
            printf((((Array){3, "%c"}).value), ((value.value).ch));
        }
        else if (((value.tpe) == lexer_TokenType_FLOAT)) {
            printf((((Array){3, "%f"}).value), ((value.value).f));
        } ;
        printf((((Array){3, "%s"}).value), (((Array){2, "\x0a"""}).value));
        list = ((*list).next);
    }
    ;
};
 lexer_Token _9f927900_simple_token(lexer_TokenType tpe, int line, int column) {
    return ((lexer_Token){ tpe, line, column });
};
 lexer_Token _9f927900_error_token(string s, int line, int column) {
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_ERROR, line, column });
    ((tok.value).str) = s;
    return tok;
};
 bool _9f927900_valid_hex_char(char a) {
    return ((((a >= '0') && (a <= '9')) || ((a >= 'a') && (a <= 'f'))) || ((a >= 'A') && (a <= 'F')));
};
 int _9f927900_parse_hex_char(char a) {
    if (((a >= '0') && (a <= '9'))) {
        return (a - '0');
    } else if (((a >= 'a') && (a <= 'f'))) {
        return (((int)(a - 'a')) + 10);
    }
    else if (((a >= 'A') && (a <= 'F'))) {
        return (((int)(a - 'A')) + 10);
    } ;
    return (-1);
};
 bool _9f927900_is_text(char a) {
    return (((a == '_') || ((a >= 'a') && (a <= 'z'))) || ((a >= 'A') && (a <= 'Z')));
};
 bool _9f927900_is_alphanumeric(char a) {
    return (_9f927900_is_text(a) || ((a >= '0') && (a <= '9')));
};
 int _9f927900_parse_simple_escape_sequence(char escape_char) {
    switch (escape_char) {
        break;
        case 'a':
        return '\x07';
        break;
        case 'b':
        return '\x08';
        break;
        case 'f':
        return '\x0c';
        break;
        case 'n':
        return '\x0a';
        break;
        case 'r':
        return '\x0d';
        break;
        case 't':
        return '\x09';
        break;
        case 'v':
        return '\x0b';
        break;
        case '0':
        return '\x00';
        break;
        case '\"':
        return '\"';
        break;
        case '\'':
        return '\'';
        break;
        case '\\':
        return '\\';
    }
    ;
    return (-1);
};
 char _9f927900_next_char(string s, int *i, int *line, int *column) {
    ((*i) += 1);
    ((*column) += 1);
    if (((*i) >= ((s.size) - 1))) {
        return ((char)26);
    }  else {
        char c = (((char *)s.value)[(*i)]);
        return c;
    };
};
 char _9f927900_peek_char(string s, int *i, int n) {
    if ((((*i) + n) >= ((s.size) - 1))) {
        return ((char)26);
    }  else {
        return (((char *)s.value)[((*i) + n)]);
    };
};
 lexer_Token _9f927900_parse_string(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    buffer_Buffer buf = buffer_make_buffer();
    bool end_of_string = false;
    while (((*i) < ((s.size) - 1))) {
        char c = _9f927900_next_char(s, i, line, column);
        if ((c == '\\')) {
            char escape_char = _9f927900_next_char(s, i, line, column);
            int c = _9f927900_parse_simple_escape_sequence(escape_char);
            if ((c >= 0)) {
                buffer_append_char((&buf), ((char)c));
            } else if ((((escape_char == 'x') || (escape_char == 'u')) || (escape_char == 'U'))) {
                int count;
                if ((escape_char == 'x')) {
                    count = 1;
                } else if ((escape_char == 'u')) {
                    count = 2;
                } else {
                    count = 4;
                };
                uint64 code_point = 0;
                for (int v = 0;(v < count);(v += 1)) {
                    char e1 = _9f927900_next_char(s, i, line, column);
                    char e2 = _9f927900_next_char(s, i, line, column);
                    if (((!_9f927900_valid_hex_char(e1)) || (!_9f927900_valid_hex_char(e2)))) {
                        return _9f927900_error_token(((Array){25, "Invalid escape sequence\x0a"""}), start_line, start_column);
                    }  ;
                    int esc_char = ((_9f927900_parse_hex_char(e1) << 4) | _9f927900_parse_hex_char(e2));
                    code_point = ((code_point << 8) | ((uint64)esc_char));
                }
                ;
                if ((count == 1)) {
                    buffer_append_char((&buf), ((char)code_point));
                }  else {
                    if ((code_point <= 127)) {
                        buffer_append_char((&buf), ((char)code_point));
                    } else if ((code_point <= 2047)) {
                        buffer_append_char((&buf), ((char)((code_point >> 6) | ((uint64)192))));
                        buffer_append_char((&buf), ((char)((code_point & ((uint64)63)) | ((uint64)128))));
                    }
                    else if ((code_point <= 65535)) {
                        buffer_append_char((&buf), ((char)((code_point >> 12) | ((uint64)224))));
                        buffer_append_char((&buf), ((char)(((code_point >> 6) & ((uint64)63)) | ((uint64)128))));
                        buffer_append_char((&buf), ((char)((code_point & ((uint64)63)) | ((uint64)128))));
                    }
                    else if ((code_point <= 1114111)) {
                        buffer_append_char((&buf), ((char)((code_point >> 18) | ((uint64)240))));
                        buffer_append_char((&buf), ((char)(((code_point >> 12) & ((uint64)63)) | ((uint64)128))));
                        buffer_append_char((&buf), ((char)(((code_point >> 6) & ((uint64)63)) | ((uint64)128))));
                        buffer_append_char((&buf), ((char)((code_point & ((uint64)63)) | ((uint64)128))));
                    } else {
                        return _9f927900_error_token(((Array){26, "Invalid unicode sequence\x0a"""}), start_line, start_column);
                    };
                };
            } else {
                return _9f927900_error_token(((Array){25, "Invalid escape sequence\x0a"""}), start_line, start_column);
            };
        } else if ((c == '\"')) {
            end_of_string = true;
            break;
        } else {
            buffer_append_char((&buf), c);
        };
    }
    ;
    if ((!end_of_string)) {
        return _9f927900_error_token(((Array){53, "Unexpected end of file while parsing string literal\x0a"""}), start_line, start_column);
    }  else {
        _9f927900_next_char(s, i, line, column);
        string str = buffer_to_string((&buf));
        lexer_Token tok = ((lexer_Token){ lexer_TokenType_STRING, start_line, start_column });
        ((tok.value).str) = str;
        return tok;
    };
};
 lexer_Token _9f927900_parse_char(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    char result;
    char c = _9f927900_next_char(s, i, line, column);
    if ((c == '\\')) {
        char escape_char = _9f927900_next_char(s, i, line, column);
        int c = _9f927900_parse_simple_escape_sequence(escape_char);
        if ((c >= 0)) {
            result = ((char)c);
        } else if ((escape_char == 'x')) {
            char e1 = _9f927900_next_char(s, i, line, column);
            char e2 = _9f927900_next_char(s, i, line, column);
            if (((!_9f927900_valid_hex_char(e1)) || (!_9f927900_valid_hex_char(e2)))) {
                return _9f927900_error_token(((Array){25, "Invalid escape sequence\x0a"""}), start_line, start_column);
            }  ;
            int esc_char = ((_9f927900_parse_hex_char(e1) << 4) | _9f927900_parse_hex_char(e2));
            result = ((char)esc_char);
        } else {
            return _9f927900_error_token(((Array){25, "Invalid escape sequence\x0a"""}), start_line, start_column);
        };
    } else if ((c == '\x0a')) {
        return _9f927900_error_token(((Array){21, "Unexpected new line\x0a"""}), start_line, start_column);
    } else {
        result = c;
    };
    if ((_9f927900_next_char(s, i, line, column) == '\'')) {
        _9f927900_next_char(s, i, line, column);
        lexer_Token tok = ((lexer_Token){ lexer_TokenType_CHAR, start_line, start_column });
        ((tok.value).ch) = result;
        return tok;
    }  ;
    return _9f927900_error_token(((Array){48, "Unexpected end of file while parsing character\x0a"""}), start_line, start_column);
};
 lexer_Token _9f927900_parse_hex_int(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    _9f927900_next_char(s, i, line, column);
    _9f927900_next_char(s, i, line, column);
    uint64 result = 0;
    while (((*i) < ((s.size) - 1))) {
        char c = _9f927900_peek_char(s, i, 0);
        if (_9f927900_valid_hex_char(c)) {
            (result *= 16);
            (result += _9f927900_parse_hex_char(c));
            _9f927900_next_char(s, i, line, column);
        }  else {
            break;
        };
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_INTEGER, start_line, start_column });
    ((tok.value).i) = result;
    return tok;
};
 lexer_Token _9f927900_parse_oct_int(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    _9f927900_next_char(s, i, line, column);
    _9f927900_next_char(s, i, line, column);
    uint64 result = 0;
    while (((*i) < ((s.size) - 1))) {
        char c = _9f927900_peek_char(s, i, 0);
        if (((c >= '0') && (c <= '7'))) {
            (result *= 8);
            (result += (c - '0'));
            _9f927900_next_char(s, i, line, column);
        }  else {
            break;
        };
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_INTEGER, start_line, start_column });
    ((tok.value).i) = result;
    return tok;
};
 lexer_Token _9f927900_parse_bin_int(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    _9f927900_next_char(s, i, line, column);
    _9f927900_next_char(s, i, line, column);
    uint64 result = 0;
    while (((*i) < ((s.size) - 1))) {
        char c = _9f927900_peek_char(s, i, 0);
        if (((c >= '0') && (c <= '1'))) {
            (result *= 2);
            (result += (c - '0'));
            _9f927900_next_char(s, i, line, column);
        }  else {
            break;
        };
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_INTEGER, start_line, start_column });
    ((tok.value).i) = result;
    return tok;
};
 lexer_Token _9f927900_parse_int(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    char c = _9f927900_peek_char(s, i, 0);
    if ((c == '0')) {
        char r = _9f927900_peek_char(s, i, 1);
        if ((r == 'b')) {
            return _9f927900_parse_bin_int(s, i, line, column);
        } else if ((r == 'o')) {
            return _9f927900_parse_oct_int(s, i, line, column);
        }
        else if ((r == 'x')) {
            return _9f927900_parse_hex_int(s, i, line, column);
        } ;
    }  ;
    uint64 result = 0;
    while (((*i) < ((s.size) - 1))) {
        char c = _9f927900_peek_char(s, i, 0);
        if (((c >= '0') && (c <= '9'))) {
            (result *= 10);
            (result += (c - '0'));
            _9f927900_next_char(s, i, line, column);
        }  else {
            break;
        };
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_INTEGER, start_line, start_column });
    ((tok.value).i) = result;
    return tok;
};
 lexer_Token _9f927900_parse_float(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    double a = 0.0;
    int e = 0;
    char c = _9f927900_peek_char(s, i, 0);
    while (((c >= '0') && (c <= '9'))) {
        a = (((a * ((double)10)) + ((double)c)) - ((double)'0'));
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    if ((c == '.')) {
        c = _9f927900_next_char(s, i, line, column);
        while (((c >= '0') && (c <= '9'))) {
            a = (((a * ((double)10)) + ((double)c)) - ((double)'0'));
            (e -= 1);
            c = _9f927900_next_char(s, i, line, column);
        }
        ;
    }  ;
    if (((c == 'e') || (c == 'E'))) {
        int sign = 1;
        int j = 0;
        c = _9f927900_next_char(s, i, line, column);
        if ((c == '-')) {
            sign = (-1);
            c = _9f927900_next_char(s, i, line, column);
        } else if ((c == '+')) {
            c = _9f927900_next_char(s, i, line, column);
        } ;
        while (((c >= '0') && (c <= '9'))) {
            j = (((j * 10) + ((int)c)) - ((int)'0'));
            c = _9f927900_next_char(s, i, line, column);
        }
        ;
        (e += (j * sign));
    }  ;
    while ((e > 0)) {
        (a *= 10);
        (e -= 1);
    }
    ;
    while ((e < 0)) {
        (a *= 0.1);
        (e += 1);
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_FLOAT, start_line, start_column });
    ((tok.value).f) = a;
    return tok;
};
 lexer_Token _9f927900_parse_number(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    int j = 0;
    bool is_float = false;
    while (true) {
        char c = _9f927900_peek_char(s, i, j);
        if ((c == '.')) {
            char c2 = _9f927900_peek_char(s, i, (j + 1));
            if ((c2 != '.')) {
                is_float = true;
            }  ;
            break;
        } else if (((c == 'e') || (c == 'E'))) {
            is_float = true;
            break;
        }
        else if (((c >= '0') && (c <= '9'))) {
            (j += 1);
        } else {
            break;
        };
    }
    ;
    if (is_float) {
        return _9f927900_parse_float(s, i, line, column);
    }  else {
        return _9f927900_parse_int(s, i, line, column);
    };
};
 lexer_Token _9f927900_parse_identifier(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    char c = _9f927900_peek_char(s, i, 0);
    buffer_Buffer buf = buffer_make_buffer();
    while (_9f927900_is_alphanumeric(c)) {
        buffer_append_char((&buf), c);
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    string str = buffer_to_string((&buf));
    for (int i = 0;(i < (_9f927900_KEYWORDS.size));(i += 1)) {
        _9f927900_Keyword keyword = (((_9f927900_Keyword *)_9f927900_KEYWORDS.value)[i]);
        if ((strcmp(((keyword.str).value), (str.value)) == 0)) {
            return _9f927900_simple_token((keyword.token_type), start_line, start_column);
        }  ;
    }
    ;
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_IDENTIFIER, start_line, start_column });
    ((tok.value).str) = str;
    return tok;
};
 lexer_Token _9f927900_parse_eol_comment(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    buffer_Buffer buf = buffer_make_buffer();
    _9f927900_next_char(s, i, line, column);
    _9f927900_next_char(s, i, line, column);
    buffer_append_str((&buf), ((Array){3, "//"}));
    char c = _9f927900_peek_char(s, i, 0);
    while (((c != '\x0a') && (c != 26))) {
        buffer_append_char((&buf), c);
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    string str = buffer_to_string((&buf));
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_COMMENT, start_line, start_column });
    ((tok.value).str) = str;
    return tok;
};
 lexer_Token _9f927900_parse_comment(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    buffer_Buffer buf = buffer_make_buffer();
    _9f927900_next_char(s, i, line, column);
    _9f927900_next_char(s, i, line, column);
    buffer_append_str((&buf), ((Array){3, "/*"}));
    int depth = 1;
    char c = _9f927900_peek_char(s, i, 0);
    while (((depth > 0) && (c != 26))) {
        buffer_append_char((&buf), c);
        if ((c == '/')) {
            if ((_9f927900_peek_char(s, i, 1) == '*')) {
                (depth += 1);
                buffer_append_char((&buf), '*');
                _9f927900_next_char(s, i, line, column);
            }  ;
        } else if ((c == '*')) {
            if ((_9f927900_peek_char(s, i, 1) == '/')) {
                (depth -= 1);
                buffer_append_char((&buf), '/');
                _9f927900_next_char(s, i, line, column);
            }  ;
        } ;
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    string str = buffer_to_string((&buf));
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_COMMENT, start_line, start_column });
    ((tok.value).str) = str;
    return tok;
};
 lexer_Token _9f927900_parse_pragma(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    buffer_Buffer buf = buffer_make_buffer();
    char c = _9f927900_peek_char(s, i, 0);
    while (((c == '#') || _9f927900_is_text(c))) {
        buffer_append_char((&buf), c);
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    string str = buffer_to_string((&buf));
    lexer_Token tok = ((lexer_Token){ lexer_TokenType_PRAGMA, start_line, start_column });
    ((tok.value).str) = str;
    return tok;
};
 lexer_Token _9f927900_parse_symbol(string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    char first = _9f927900_peek_char(s, i, 0);
    char second = _9f927900_peek_char(s, i, 1);
    char third = _9f927900_peek_char(s, i, 2);
    lexer_TokenType tt = lexer_TokenType_ERROR;
    int length = 3;
    if ((((first == '<') && (second == '<')) && (third == '='))) {
        tt = lexer_TokenType_OP_SHL_EQ;
    } else if ((((first == '>') && (second == '>')) && (third == '='))) {
        tt = lexer_TokenType_OP_SHR_EQ;
    }
    else if ((((first == '+') && (second == '+')) && (third == '='))) {
        tt = lexer_TokenType_OP_PADD_EQ;
    }
    else if ((((first == '-') && (second == '-')) && (third == '='))) {
        tt = lexer_TokenType_OP_PSUB_EQ;
    }
    else if ((((first == '.') && (second == '.')) && (third == '='))) {
        tt = lexer_TokenType_OP_RANGE_INC;
    } else {
        length = 2;
        if ((second == '=')) {
            switch (first) {
                break;
                case '+':
                tt = lexer_TokenType_OP_ADD_EQ;
                break;
                case '-':
                tt = lexer_TokenType_OP_SUB_EQ;
                break;
                case '*':
                tt = lexer_TokenType_OP_MUL_EQ;
                break;
                case '/':
                tt = lexer_TokenType_OP_DIV_EQ;
                break;
                case '%':
                tt = lexer_TokenType_OP_MOD_EQ;
                break;
                case '&':
                tt = lexer_TokenType_OP_AND_EQ;
                break;
                case '|':
                tt = lexer_TokenType_OP_OR_EQ;
                break;
                case '^':
                tt = lexer_TokenType_OP_XOR_EQ;
                break;
                case '!':
                tt = lexer_TokenType_OP_NEQ;
                break;
                case '>':
                tt = lexer_TokenType_OP_GEQ;
                break;
                case '<':
                tt = lexer_TokenType_OP_LEQ;
                break;
                case '=':
                tt = lexer_TokenType_OP_EQ;
            }
            ;
        } else if (((first == '.') && (second == '.'))) {
            tt = lexer_TokenType_OP_RANGE;
        }
        else if (((first == '!') && (second == '!'))) {
            tt = lexer_TokenType_OP_AUTOCAST;
        }
        else if (((first == '-') && (second == '>'))) {
            tt = lexer_TokenType_ARROW;
        }
        else if (((first == ':') && (second == ':'))) {
            tt = lexer_TokenType_DOUBLE_COLON;
        }
        else if (((first == '+') && (second == '+'))) {
            tt = lexer_TokenType_OP_INC;
        }
        else if (((first == '-') && (second == '-'))) {
            tt = lexer_TokenType_OP_DEC;
        }
        else if (((first == '<') && (second == '<'))) {
            tt = lexer_TokenType_OP_SHL;
        }
        else if (((first == '>') && (second == '>'))) {
            tt = lexer_TokenType_OP_SHR;
        } else {
            length = 1;
            switch (first) {
                break;
                case '>':
                tt = lexer_TokenType_OP_GT;
                break;
                case '<':
                tt = lexer_TokenType_OP_LT;
                break;
                case '{':
                tt = lexer_TokenType_O_BRACE;
                break;
                case '}':
                tt = lexer_TokenType_C_BRACE;
                break;
                case '[':
                tt = lexer_TokenType_O_SQUARE;
                break;
                case ']':
                tt = lexer_TokenType_C_SQUARE;
                break;
                case '+':
                tt = lexer_TokenType_OP_ADD;
                break;
                case '-':
                tt = lexer_TokenType_OP_SUB;
                break;
                case '*':
                tt = lexer_TokenType_OP_MUL;
                break;
                case '/':
                tt = lexer_TokenType_OP_DIV;
                break;
                case '%':
                tt = lexer_TokenType_OP_MOD;
                break;
                case '&':
                tt = lexer_TokenType_OP_BAND;
                break;
                case '|':
                tt = lexer_TokenType_OP_BOR;
                break;
                case '^':
                tt = lexer_TokenType_OP_BXOR;
                break;
                case '~':
                tt = lexer_TokenType_OP_BNOT;
                break;
                case '!':
                tt = lexer_TokenType_OP_CAST;
                break;
                case '@':
                tt = lexer_TokenType_OP_DEREF;
                break;
                case '=':
                tt = lexer_TokenType_OP_ASSIGN;
                break;
                case ',':
                tt = lexer_TokenType_COMMA;
                break;
                case ':':
                tt = lexer_TokenType_COLON;
                break;
                case '?':
                tt = lexer_TokenType_QUESTION_MARK;
                break;
                case '.':
                tt = lexer_TokenType_DOT;
                break;
                case ';':
                tt = lexer_TokenType_SEMICOLON;
            }
            ;
        };
    };
    if ((tt == lexer_TokenType_ERROR)) {
        _9f927900_next_char(s, i, line, column);
        return _9f927900_error_token(((Array){16, "Invalid symbol\x0a"""}), start_line, start_column);
    }  else {
        for (int j = 0;(j < length);(j += 1)) {
            _9f927900_next_char(s, i, line, column);
        }
        ;
        return _9f927900_simple_token(tt, start_line, start_column);
    };
};
 bool _9f927900_is_whitespace(char c) {
    return (((c == ' ') || (c == '\x09')) || (c == '\x0d'));
};
 lexer_Token _9f927900_parse_whitespace(int depth, string s, int *i, int *line, int *column) {
    int start_line = (*line);
    int start_column = (*column);
    char c = _9f927900_peek_char(s, i, 0);
    while ((_9f927900_is_whitespace(c) || ((c == '\x0a') && (depth > 0)))) {
        c = _9f927900_next_char(s, i, line, column);
    }
    ;
    return _9f927900_simple_token(lexer_TokenType_WHITESPACE, start_line, start_column);
};
DLL_EXPORT lexer_TokenList * lexer_lex(string s) {
    int line = 0;
    int column = 0;
    int i = 0;
    lexer_TokenList *token_list = malloc((sizeof(lexer_TokenList)));
    lexer_TokenList *head = token_list;
    int depth = 0;
    while ((i < ((s.size) - 1))) {
        char c = _9f927900_peek_char(s, (&i), 0);
        lexer_Token token;
        if ((_9f927900_is_whitespace(c) || ((c == '\x0a') && (depth > 0)))) {
            token = _9f927900_parse_whitespace(depth, s, (&i), (&line), (&column));
        } else if ((c == '\x0a')) {
            token = _9f927900_simple_token(lexer_TokenType_NEW_LINE, line, column);
            (i += 1);
            column = 0;
            (line += 1);
        }
        else if ((c == '(')) {
            (depth += 1);
            token = _9f927900_simple_token(lexer_TokenType_O_PAREN, line, column);
            (i += 1);
            (column += 1);
        }
        else if ((c == ')')) {
            (depth -= 1);
            token = _9f927900_simple_token(lexer_TokenType_C_PAREN, line, column);
            (i += 1);
            (column += 1);
        }
        else if ((c == '\"')) {
            token = _9f927900_parse_string(s, (&i), (&line), (&column));
        }
        else if ((c == '\'')) {
            token = _9f927900_parse_char(s, (&i), (&line), (&column));
        }
        else if (((c >= '0') && (c <= '9'))) {
            token = _9f927900_parse_number(s, (&i), (&line), (&column));
        }
        else if ((c == '.')) {
            char next = _9f927900_peek_char(s, (&i), 1);
            if (((next >= '0') && (next <= '9'))) {
                token = _9f927900_parse_number(s, (&i), (&line), (&column));
            }  else {
                token = _9f927900_parse_symbol(s, (&i), (&line), (&column));
            };
        }
        else if ((c == '#')) {
            token = _9f927900_parse_pragma(s, (&i), (&line), (&column));
        }
        else if (_9f927900_is_text(c)) {
            token = _9f927900_parse_identifier(s, (&i), (&line), (&column));
        }
        else if ((c == '/')) {
            char next = _9f927900_peek_char(s, (&i), 1);
            if ((next == '/')) {
                token = _9f927900_parse_eol_comment(s, (&i), (&line), (&column));
            } else if ((next == '*')) {
                token = _9f927900_parse_comment(s, (&i), (&line), (&column));
            } else {
                token = _9f927900_parse_symbol(s, (&i), (&line), (&column));
            };
        } else {
            token = _9f927900_parse_symbol(s, (&i), (&line), (&column));
        };
        ((*token_list).value) = token;
        ((*token_list).next) = malloc((sizeof(lexer_TokenList)));
        token_list = ((*token_list).next);
    }
    ;
    ((*token_list).value) = _9f927900_simple_token(lexer_TokenType_EOF, line, column);
    ((*token_list).next) = NULL;
    return head;
};
DLL_EXPORT void lexer_p_main(Array args) {
    memcpy((_9f927900_KEYWORDS.value), (((Array){35, (_9f927900_Keyword[35]){ ((_9f927900_Keyword){ lexer_TokenType_K_DO, ((Array){3, "do"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_TYPE, ((Array){5, "type"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_ENUM, ((Array){5, "enum"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_STRUCT, ((Array){7, "struct"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_IF, ((Array){3, "if"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_ELSE, ((Array){5, "else"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_NOT, ((Array){4, "not"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_AND, ((Array){4, "and"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_OR, ((Array){3, "or"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_VAR, ((Array){4, "var"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_LET, ((Array){4, "let"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_CONST, ((Array){6, "const"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_WHILE, ((Array){6, "while"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_TRUE, ((Array){5, "true"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_FALSE, ((Array){6, "false"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_WORD, ((Array){5, "word"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_NULL, ((Array){5, "null"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_SWITCH, ((Array){7, "switch"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_FOR, ((Array){4, "for"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_IN, ((Array){3, "in"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_LOOP, ((Array){5, "loop"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_CONTINUE, ((Array){9, "continue"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_BREAK, ((Array){6, "break"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_RETURN, ((Array){7, "return"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_UNSIGNED, ((Array){9, "unsigned"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_LABEL, ((Array){6, "label"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_GO_TO, ((Array){6, "go_to"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_CASE, ((Array){5, "case"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_SIZE_OF, ((Array){8, "size_of"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_ALIGN_OF, ((Array){9, "align_of"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_DEF, ((Array){4, "def"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_EXPORT, ((Array){7, "export"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_IMPORT, ((Array){7, "import"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_AS, ((Array){3, "as"}) }), ((_9f927900_Keyword){ lexer_TokenType_K_FROM, ((Array){5, "from"}) }) }}).value), ((sizeof(_9f927900_Keyword)) * (_9f927900_KEYWORDS.size)));
};


#endif
