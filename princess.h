#ifndef PRINCESS_H
#define PRINCESS_H

#include <stdarg.h>
#include <string.h>
#include <stdio.h>

// For some reason we have to declare prototypes for 
// clang to output stuff into the json files
int concat(char *str, const char *fmt, ...);

int concat(char *str, const char *fmt, ...) {
    va_list aptr;
    str += strlen(str);
    va_start(aptr, fmt);
    int chars = vsprintf(str, fmt, aptr);
    va_end(aptr);
    return chars;
}

#endif