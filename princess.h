#ifndef PRINCESS_H
#define PRINCESS_H

#ifdef _WIN32
#define DLL_EXPORT __declspec(dllexport)
#else
#define DLL_EXPORT
#endif

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <signal.h>
#include <stdarg.h>
#include <stdalign.h>

#ifndef _WIN32
#include <linux/limits.h>

extern FILE *stdout;
extern FILE *stderr;
extern FILE *stdin;

#define WIN32 0
#else
#include <fileapi.h>
#endif

typedef FILE *File;

typedef uint8_t     uint8;
typedef int8_t      int8;
typedef uint16_t    uint16;
typedef int16_t     int16;
typedef uint32_t    uint32;
typedef int32_t     int32;
typedef uint64_t    uint64;
typedef int64_t     int64;

typedef char        byte;
typedef unsigned char   ubyte;
typedef unsigned int    uint;
typedef unsigned short  ushort;
typedef unsigned long   ulong;
typedef float   float32;
typedef double  float64;

typedef struct {
    size_t size;
    void *value;
} Array;

typedef Array string;

#define ARRAY($name, $type, $size) \
    $type _##$name[$size];         \
    Array $name = {$size, _##$name}

// For some reason we have to declare prototypes for 
// clang to output stuff into the json files
bool starts_with(const char *str, const char *pre);
int concat(char *str, const char *fmt, ...);
void absolute_path(const char *pathname, char *resolved);

bool starts_with(const char *str, const char *pre) {
    return strncmp(pre, str, strlen(pre)) == 0;
}

int concat(char *str, const char *fmt, ...) {
    va_list aptr;
    str += strlen(str);
    va_start(aptr, fmt);
    int chars = vsprintf(str, fmt, aptr);
    va_end(aptr);
    return chars;
}

void absolute_path(const char *pathname, char *resolved) {
#ifdef _WIN32
    GetFullPathNameA(pathname, MAX_PATH, resolved, NULL);
#else
    if (resolved)
        realpath(pathname, resolved);
#endif
}

#endif
