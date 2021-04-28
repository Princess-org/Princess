/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _main_H
#define _main_H
#include "getopt.c"
#include "tests.c"
#include "test_parser.c"
#include "test_compiler.c"
#include "toolchain.c"
string _fad58de7_filename;
bool _fad58de7_test;
bool _fad58de7_print_ast;
bool _fad58de7_print_ll;
char *_fad58de7_env;
string _fad58de7_libdir;
Array _fad58de7_cdir;
DLL_EXPORT void main_p_main(Array args) {
    getopt_p_main(args);
    tests_p_main(args);
    test_parser_p_main(args);
    test_compiler_p_main(args);
    toolchain_p_main(args);
    _fad58de7_filename = getopt_get_opt(args, ((Array){3, "-c"}), ((Array){10, "--compile"}), ((Array){1, ""}));
    _fad58de7_test = getopt_get_flag(args, ((Array){3, "-t"}), ((Array){7, "--test"}));
    _fad58de7_print_ast = getopt_get_flag(args, ((Array){3, "-a"}), ((Array){6, "--ast"}));
    _fad58de7_print_ll = getopt_get_flag(args, ((Array){3, "-l"}), ((Array){5, "--ll"}));
    _fad58de7_env = getenv((((Array){14, "PRINCESS_PATH"}).value));
    if ((!_fad58de7_env)) {
        fprintf(stderr, (((Array){3, "%s"}).value), (((Array){23, "PRINCESS_PATH not set\x0a"""}).value));
        exit((-1));
    }  ;
    (_fad58de7_libdir.value) = _fad58de7_env;
    (_fad58de7_libdir.size) = (((int64)strlen(_fad58de7_env)) + ((int64)1));
    _fad58de7_cdir = ((Array){PATH_MAX, malloc((((int64)(sizeof(char))) * ((int64)PATH_MAX)))});
    absolute_path((((Array){2, "."}).value), (_fad58de7_cdir.value));
    (_fad58de7_cdir.size) = (((int64)strlen((_fad58de7_cdir.value))) + ((int64)1));
    toolchain_include_path = ((Array){2, malloc((((int64)(sizeof(string))) * ((int64)2)))});
    (((string *)toolchain_include_path.value)[0]) = _fad58de7_libdir;
    (((string *)toolchain_include_path.value)[1]) = _fad58de7_cdir;
    if (_fad58de7_test) {
        test_parser_print_ast = _fad58de7_print_ast;
        test_compiler_print_ll = _fad58de7_print_ll;
        tests_run_test_suite();
    }  else {
        if ((((_fad58de7_filename.size) - 1) > 0)) {
            toolchain_compile_file(_fad58de7_filename, ((Array){5, "main"}));
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
