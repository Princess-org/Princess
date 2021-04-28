/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _getopt_H
#define _getopt_H
DLL_EXPORT string getopt_get_opt(Array args, string short_op, string long_op, string default_) {
    size_t argc = (args.size);
    for (int i = 0;(i < argc);(i += 1)) {
        string arg = (((string *)args.value)[i]);
        if ((strcmp((arg.value), (short_op.value)) == 0)) {
            if (((i + 1) < argc)) {
                return (((string *)args.value)[(i + 1)]);
            }  else {
                fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){29, "Must provide an argument to "}).value), (short_op.value), (((Array){2, "\x0a"""}).value));
                return ((Array){1, ""});
            };
        } else if (starts_with((arg.value), (long_op.value))) {
            size_t eq = ((long_op.size) - 1);
            if ((((arg.size) - 1) > eq)) {
                if ((((((char *)arg.value)[eq]) == '=') && ((((char *)arg.value)[(((int64)eq) + ((int64)1))]) != '\x00'))) {
                    (arg.value) = ((arg.value) + (((int64)eq) + ((int64)1)));
                    return arg;
                }  else {
                    fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){18, "Illegal argument "}).value), (long_op.value), (((Array){2, "\x0a"""}).value));
                    return ((Array){1, ""});
                };
            } else if (((i + 1) < argc)) {
                return (((string *)args.value)[(i + 1)]);
            } else {
                fprintf(stderr, (((Array){7, "%s%s%s"}).value), (((Array){29, "Must provide an argument to "}).value), (long_op.value), (((Array){2, "\x0a"""}).value));
                return ((Array){1, ""});
            };
        } ;
    }
    ;
    return default_;
};
DLL_EXPORT bool getopt_get_flag(Array args, string short_op, string long_op) {
    for (int i = 0;(i < (args.size));(i += 1)) {
        string arg = (((string *)args.value)[i]);
        if (((strcmp((arg.value), (short_op.value)) == 0) || (strcmp((arg.value), (long_op.value)) == 0))) {
            return true;
        }  ;
    }
    ;
    return false;
};
DLL_EXPORT void getopt_p_main(Array args) {

};


#endif
