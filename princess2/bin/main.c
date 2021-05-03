/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _main_H
#define _main_H
#include "map.c"
#include "vector.c"
#include "getopt.c"
#include "tests.c"
#include "test_parser.c"
#include "test_compiler.c"
#include "toolchain.c"
Array _fad58de7_options;
map_Map *_fad58de7_res;
bool _fad58de7_test;
bool _fad58de7_print_ast;
bool _fad58de7_print_ll;
vector_Vector *_fad58de7_filenames;
vector_Vector *_fad58de7_includes;
DLL_EXPORT void main_p_main(Array args) {
    map_p_main(args);
    vector_p_main(args);
    getopt_p_main(args);
    tests_p_main(args);
    test_parser_p_main(args);
    test_compiler_p_main(args);
    toolchain_p_main(args);
    _fad58de7_options = ((Array){5, malloc((((int64)(sizeof(getopt_Option))) * 5))});
    (((getopt_Option *)_fad58de7_options.value)[0]) = ((getopt_Option){ getopt_Type_BOOL, ((Array){1, ""}), ((Array){6, "--ast"}), 0, false });
    (((getopt_Option *)_fad58de7_options.value)[1]) = ((getopt_Option){ getopt_Type_BOOL, ((Array){1, ""}), ((Array){5, "--ll"}), 0, false });
    (((getopt_Option *)_fad58de7_options.value)[2]) = ((getopt_Option){ getopt_Type_BOOL, ((Array){1, ""}), ((Array){7, "--test"}), 0, false });
    (((getopt_Option *)_fad58de7_options.value)[4]) = ((getopt_Option){ getopt_Type_STRING, ((Array){3, "-i"}), ((Array){10, "--include"}), 1, true });
    (((getopt_Option *)_fad58de7_options.value)[3]) = ((getopt_Option){ getopt_Type_STRING, ((Array){1, ""}), ((Array){8, "compile"}), getopt_ARGS_ANY, false });
    _fad58de7_res = getopt_parse(args, _fad58de7_options);
    if ((!_fad58de7_res)) {
        exit((-1));
    }  ;
    _fad58de7_test = (*((bool *)map_get(_fad58de7_res, ((Array){7, "--test"}))));
    _fad58de7_print_ast = (*((bool *)map_get(_fad58de7_res, ((Array){6, "--ast"}))));
    _fad58de7_print_ll = (*((bool *)map_get(_fad58de7_res, ((Array){5, "--ll"}))));
    _fad58de7_filenames = ((vector_Vector *)map_get(_fad58de7_res, ((Array){8, "compile"})));
    _fad58de7_includes = ((vector_Vector *)map_get(_fad58de7_res, ((Array){10, "--include"})));
    if (_fad58de7_includes) {
        toolchain_include_path = ((Array){(vector_length(_fad58de7_includes) + ((int)1)), malloc((((int64)(sizeof(string))) * ((int64)(vector_length(_fad58de7_includes) + ((int)1)))))});
        (((string *)toolchain_include_path.value)[0]) = ((Array){2, "."});
        for (int i = 0;(i < vector_length(_fad58de7_includes));(i += 1)) {
            string path = (*((string *)vector_get(_fad58de7_includes, i)));
            (((string *)toolchain_include_path.value)[(i + 1)]) = path;
        }
        ;
    }  else {
        toolchain_include_path = ((Array){1, malloc((((int64)(sizeof(string))) * ((int64)1)))});
        (((string *)toolchain_include_path.value)[0]) = ((Array){2, "."});
    };
    if (_fad58de7_test) {
        test_parser_print_ast = _fad58de7_print_ast;
        test_compiler_print_ll = _fad58de7_print_ll;
        tests_run_test_suite();
    }  else {
        if ((((bool)_fad58de7_filenames) && (vector_length(_fad58de7_filenames) > 0))) {
            if ((vector_length(_fad58de7_filenames) > 1)) {
                fprintf(stderr, (((Array){3, "%s"}).value), (((Array){29, "More than one file specified"}).value));
                return ;
            }  ;
            toolchain_compile_file((*((string *)vector_peek(_fad58de7_filenames))), ((Array){5, "main"}));
            if ((toolchain_error_count > 0)) {
                fprintf(stderr, (((Array){7, "%s%d%s"}).value), (((Array){16, "\x0a""Total errors: "}).value), toolchain_error_count, (((Array){2, "\x0a"""}).value));
            }  ;
        }  else {
            fprintf(stderr, (((Array){3, "%s"}).value), (((Array){24, "File argument required\x0a"""}).value));
        };
    };
};

int main(int argc, char* argv[]) {
    Array *args = malloc(sizeof(Array) * argc);
    for (int i = 0; i < argc; i++) {
        args[i] = (Array) { strlen(argv[i]) + 1, argv[i] };
    }
    Array res = { argc, args };
    main_p_main(res);
}

#endif
