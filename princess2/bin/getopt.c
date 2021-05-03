/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _getopt_H
#define _getopt_H
#include "map.c"
#include "vector.c"
#include "util.c"
int getopt_ARGS_ANY;
typedef enum getopt_Type {getopt_Type_STRING = 0, getopt_Type_BOOL = 1} getopt_Type;
typedef struct getopt_Option {enum getopt_Type tpe; string shortop; string longop; int nargs; bool repeat;} getopt_Option;
 string _572fa04a_get_name(getopt_Option option) {
    if (((((option.longop).size) - 1) > 0)) {
        return (option.longop);
    }  else {
        return (option.shortop);
    };
};
 void _572fa04a_print_help(Array options) {
    ;
};
DLL_EXPORT map_Map * getopt_parse(Array args, Array options) {
    map_Map *m = map_make();
    int last_option = 0;
    for (int i = 1;(i < (args.size));(i += 1)) {
        string arg = (((string *)args.value)[i]);
        bool found = false;
        bool is_option = false;
        for (int j = 0;(j < (options.size));(j += 1)) {
            getopt_Option option = (((getopt_Option *)options.value)[j]);
            vector_Vector *passed_args = vector_make();
            if (starts_with((arg.value), (((Array){3, "--"}).value))) {
                if (((((((option.longop).size) - 1) > 0) && starts_with(((option.longop).value), (((Array){3, "--"}).value))) && starts_with((arg.value), ((option.longop).value)))) {
                    found = true;
                    if ((((arg.size) - 1) > (((option.longop).size) - 1))) {
                        if (((((char *)arg.value)[(((option.longop).size) - 1)]) == '=')) {
                            if ((((option.nargs) == 1) && ((option.tpe) == getopt_Type_STRING))) {
                                string *value = util_copy_string(arg);
                                (((*value).value) + (((option.longop).size) - 1));
                                ((*value).size) = (((int64)strlen(((*value).value))) + ((int64)1));
                                vector_push(passed_args, value);
                            }  else {
                                fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){29, "Invalid arguments to option "}).value), (_572fa04a_get_name(option).value), (((Array){2, "\x0a"""}).value));
                                return NULL;
                            };
                        }  else {
                            found = false;
                        };
                    }  else {
                        for (int k = 0;(k < (option.nargs));(k += 1)) {
                            int l = (i + 1);
                            if ((l < (args.size))) {
                                vector_push(passed_args, util_copy_string((((string *)args.value)[l])));
                                (i += 1);
                            }  ;
                        }
                        ;
                    };
                }  ;
                last_option = i;
            } else if (starts_with((arg.value), (((Array){2, "-"}).value))) {
                if ((((((option.shortop).size) - 1) > 0) && (strcmp((arg.value), ((option.shortop).value)) == 0))) {
                    found = true;
                    for (int k = 0;(k < (option.nargs));(k += 1)) {
                        int l = (i + 1);
                        if ((l < (args.size))) {
                            vector_push(passed_args, util_copy_string((((string *)args.value)[l])));
                            (i += 1);
                        }  ;
                    }
                    ;
                }  ;
                last_option = i;
            } ;
            if (found) {
                if ((((option.nargs) == 0) && (vector_length(passed_args) > 0))) {
                    fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){30, "Too many arguments to option "}).value), (_572fa04a_get_name(option).value), (((Array){2, "\x0a"""}).value));
                    return NULL;
                } else if ((((option.nargs) != getopt_ARGS_ANY) && ((option.nargs) != vector_length(passed_args)))) {
                    fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){46, "Invalid number of options passed to argument "}).value), (_572fa04a_get_name(option).value), (((Array){2, "\x0a"""}).value));
                    return NULL;
                } ;
                void *v = map_get(m, _572fa04a_get_name(option));
                if ((((bool)v) && (!(option.repeat)))) {
                    fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){8, "Option "}).value), (_572fa04a_get_name(option).value), (((Array){16, " was repeated!\x0a"""}).value));
                    return NULL;
                }  ;
                void *element;
                if (((option.tpe) == getopt_Type_BOOL)) {
                    bool *e = malloc((sizeof(bool)));
                    (*e) = true;
                    element = e;
                } else if (((option.nargs) == 1)) {
                    element = vector_peek(passed_args);
                } else {
                    element = passed_args;
                };
                if ((option.repeat)) {
                    if ((!v)) {
                        v = vector_make();
                    }  ;
                    vector_push(v, element);
                    map_put(m, _572fa04a_get_name(option), v);
                }  else {
                    map_put(m, _572fa04a_get_name(option), element);
                };
                break;
            }  ;
        }
        ;
        if (((!found) && (last_option == i))) {
            fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){18, "Unknown argument "}).value), (arg.value), (((Array){2, "\x0a"""}).value));
            return NULL;
        }  ;
    }
    ;
    int j = (last_option + 1);
    for (int i = 0;(i < (options.size));(i += 1)) {
        getopt_Option opt = (((getopt_Option *)options.value)[i]);
        if ((((((opt.longop).size) - 1) > 0) && (!starts_with(((opt.longop).value), (((Array){3, "--"}).value))))) {
            vector_Vector *passed_args = vector_make();
            int n = (opt.nargs);
            if ((n == getopt_ARGS_ANY)) {
                n = (((int64)(args.size)) - ((int64)j));
            }  ;
            for (int i = 0;(i < n);(i += 1)) {
                if ((j < (args.size))) {
                    vector_push(passed_args, util_copy_string((((string *)args.value)[j])));
                    (j += 1);
                }  else {
                    fprintf(stderr, (((Array){15, "%s%s%s%d%s%d%s"}).value), (((Array){25, "Not enough arguments to "}).value), (_572fa04a_get_name(opt).value), (((Array){11, " required "}).value), (opt.nargs), (((Array){7, ", got "}).value), i, (((Array){2, "\x0a"""}).value));
                    return NULL;
                };
            }
            ;
            if (((opt.nargs) == 1)) {
                map_put(m, _572fa04a_get_name(opt), vector_peek(passed_args));
            }  else {
                map_put(m, _572fa04a_get_name(opt), passed_args);
            };
        }  ;
    }
    ;
    for (int i = 0;(i < (options.size));(i += 1)) {
        getopt_Option opt = (((getopt_Option *)options.value)[i]);
        if ((((opt.tpe) == getopt_Type_BOOL) && (!map_contains(m, _572fa04a_get_name(opt))))) {
            map_put(m, _572fa04a_get_name(opt), calloc(1, (sizeof(bool))));
        }  ;
    }
    ;
    return m;
};
DLL_EXPORT void getopt_p_main(Array args) {
    ;
    util_p_main(args);
    getopt_ARGS_ANY = (-1);
};


#endif
