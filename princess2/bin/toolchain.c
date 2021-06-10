/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _toolchain_H
#define _toolchain_H
#include "vector.c"
#include "util.c"
#include "buffer.c"
#include "map.c"
map_Map *toolchain_modules;
Array toolchain_include_path;
ARRAY(toolchain_outfolder, char, 2);
int toolchain_error_count;
ARRAY(toolchain_outfile, char, 6);
bool toolchain_print_ast;
typedef struct scope_Scope scope_Scope;
typedef struct parser_Node parser_Node;
typedef struct compiler_Result compiler_Result;
typedef struct toolchain_Module {bool forward_declared; string filename; string llfile; string module; struct parser_Node *node; struct scope_Scope *scope; struct compiler_Result *result; struct map_Map *imported;} toolchain_Module;
DLL_EXPORT toolchain_Module * toolchain_compile_file(string filename, string mod, toolchain_Module *forward_declared);
DLL_EXPORT toolchain_Module * toolchain_compile_module(parser_Node *module);
DLL_EXPORT string toolchain_find_module_file(parser_Node *module);
DLL_EXPORT scope_Scope * toolchain_get_forward_declared_scope(parser_Node *ident);
#include "lexer.c"
#include "parser.c"
#include "typechecking.c"
#include "scope.c"
#include "codegen.c"
#include "debug.c"
#include "builtins.c"
#include "compiler.c"
DLL_EXPORT scope_Scope * toolchain_get_forward_declared_scope(parser_Node *ident) {
    buffer_Buffer buf = buffer_make_buffer();
    int64 len = (((int64)vector_length((((*ident).value).body))) - ((int64)1));
    for (int i = 0;(i < len);(i += 1)) {
        buffer_append_str((&buf), (*((string *)vector_get((((*ident).value).body), i))));
        if ((i < (len - ((int64)1)))) {
            buffer_append_str((&buf), ((Array){3, "::"}));
        }  ;
    }
    ;
    string modulename = buffer_to_string((&buf));
    toolchain_Module *module = ((toolchain_Module *)map_get(toolchain_modules, modulename));
    if (module) {
        return ((*module).scope);
    }  ;
    module = malloc((sizeof(toolchain_Module)));
    ((*module).forward_declared) = true;
    ((*module).scope) = scope_enter_function_scope(builtins_builtins);
    map_put(toolchain_modules, modulename, module);
    return ((*module).scope);
};
DLL_EXPORT string toolchain_find_module_file(parser_Node *module) {
    assert((((*module).kind) == parser_NodeKind_IDENTIFIER));
    vector_Vector *ident = (((*module).value).body);
    Array path = ((Array){PATH_MAX, calloc(PATH_MAX, (sizeof(char)))});
    size_t len = vector_length(ident);
    for (int i = 0;(i < len);(i += 1)) {
        string str = (*((string *)vector_get(ident, i)));
        concat((path.value), (((Array){3, "%s"}).value), (str.value));
        if ((i < (((int64)len) - ((int64)1)))) {
            concat((path.value), (((Array){3, "%s"}).value), (((Array){2, "/"}).value));
        }  ;
    }
    ;
    for (int i = 0;(i < (toolchain_include_path.size));(i += 1)) {
        Array module_path = ((Array){PATH_MAX, calloc(PATH_MAX, (sizeof(char)))});
        concat((module_path.value), (((Array){3, "%s"}).value), ((((string *)toolchain_include_path.value)[i]).value));
        concat((module_path.value), (((Array){7, "%s%s%s"}).value), (((Array){2, "/"}).value), (path.value), (((Array){4, ".pr"}).value));
        (module_path.size) = (((int64)strlen((module_path.value))) + ((int64)1));
        if (util_exists(module_path)) {
            return module_path;
        }  ;
    }
    ;
    return ((Array){1, ""});
};
DLL_EXPORT toolchain_Module * toolchain_compile_file(string filename, string modulename, toolchain_Module *forward_declared) {
    File fh = fopen((filename.value), (((Array){3, "rb"}).value));
    if ((!fh)) {
        fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){7, "File \""}).value), (filename.value), (((Array){17, "\" doesn't exist\x0a"""}).value));
    }  else {
        string buf = util_read_all(fh);
        fclose(fh);
        Array lines = util_split_lines(buf);
        lexer_TokenList *tokens = lexer_lex(buf);
        free((buf.value));
        parser_Node *node = parser_parse(tokens, lines, filename, modulename);
        if (toolchain_print_ast) {
            debug_print_node(node);
        }  ;
        scope_Scope *sc;
        toolchain_Module *module;
        if (forward_declared) {
            module = forward_declared;
            sc = ((*forward_declared).scope);
        }  else {
            module = malloc((sizeof(toolchain_Module)));
            sc = scope_enter_function_scope(builtins_builtins);
        };
        ((*module).forward_declared) = false;
        ((*module).filename) = filename;
        ((*module).module) = modulename;
        ((*module).node) = node;
        ((*module).scope) = sc;
        ((*module).imported) = map_make();
        map_put(toolchain_modules, modulename, module);
        typechecking_typecheck(module);
        compiler_Result *result = compiler_compile(module);
        ((*module).result) = result;
        return module;
    };
    return NULL;
};
DLL_EXPORT toolchain_Module * toolchain_compile_module(parser_Node *name) {
    string modulename = parser_identifier_to_str(name);
    toolchain_Module *module = ((toolchain_Module *)map_get(toolchain_modules, modulename));
    if ((((bool)(!module)) || ((*module).forward_declared))) {
        string filename = toolchain_find_module_file(name);
        if ((((filename.size) - 1) == 0)) {
            return NULL;
        }  ;
        module = toolchain_compile_file(filename, modulename, module);
    }  ;
    return module;
};
DLL_EXPORT void toolchain_compile_main_file(string filename) {
    toolchain_Module *module = toolchain_compile_file(filename, ((Array){5, "main"}), NULL);
    if ((((bool)module) && (toolchain_error_count == 0))) {
        buffer_Buffer compile_header = buffer_make_buffer();
        buffer_append_str((&compile_header), ((Array){27, "clang-12 -S -emit-llvm -o "}));
        buffer_append_str((&compile_header), toolchain_outfolder);
        buffer_append_str((&compile_header), ((Array){32, "/princess.ll -x c ../princess.h"}));
        system((buffer_to_string((&compile_header)).value));
        buffer_Buffer link_command = buffer_make_buffer();
        buffer_append_str((&link_command), ((Array){20, "llvm-link-12 -S -o "}));
        buffer_append_str((&link_command), toolchain_outfolder);
        buffer_append_str((&link_command), ((Array){9, "/out.ll "}));
        buffer_append_str((&link_command), toolchain_outfolder);
        buffer_append_str((&link_command), ((Array){14, "/princess.ll "}));
        Array filenames = map_keys(toolchain_modules);
        for (int i = 0;(i < (filenames.size));(i += 1)) {
            string filename = (((string *)filenames.value)[i]);
            toolchain_Module *module = ((toolchain_Module *)map_get(toolchain_modules, filename));
            codegen_gen(module);
            buffer_append_str((&link_command), ((*module).llfile));
            buffer_append_char((&link_command), ' ');
        }
        ;
        system((buffer_to_string((&link_command)).value));
        buffer_Buffer compile_command = buffer_make_buffer();
        buffer_append_str((&compile_command), ((Array){19, "clang-12 --output "}));
        buffer_append_str((&compile_command), toolchain_outfile);
        buffer_append_char((&compile_command), ' ');
        buffer_append_str((&compile_command), toolchain_outfolder);
        buffer_append_str((&compile_command), ((Array){8, "/out.ll"}));
        system((buffer_to_string((&compile_command)).value));
    }  ;
};
DLL_EXPORT void toolchain_p_main(Array args) {
    ;
    toolchain_modules = map_make();
    memcpy((toolchain_outfolder.value), (((Array){2, "."}).value), ((sizeof(char)) * (toolchain_outfolder.size)));
    toolchain_error_count = 0;
    memcpy((toolchain_outfile.value), (((Array){6, "a.out"}).value), ((sizeof(char)) * (toolchain_outfile.size)));
    toolchain_print_ast = false;
    typechecking_p_main(args);
    scope_p_main(args);
    codegen_p_main(args);
    debug_p_main(args);
    builtins_p_main(args);
    compiler_p_main(args);
};


#endif
