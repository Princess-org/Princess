#ifndef PRINCESS_H
#define PRINCESS_H

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <stdarg.h>

#ifndef _WIN32
#include <linux/limits.h>
#include <sys/stat.h>
#include <unistd.h>

extern FILE *stdout;
extern FILE *stderr;
extern FILE *stdin;

#define WIN32 0
#else
#include <fileapi.h>
#endif

// For some reason we have to declare prototypes for 
// clang to output stuff into the json files
bool starts_with(const char *str, const char *pre);
int concat(char *str, const char *fmt, ...);
void absolute_path(const char *pathname, char *resolved);
void executable_file(char *resolved);

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

void executable_file(char *resolved) {
#ifdef _WIN32
    // TODO Windows
#else
    ssize_t len = readlink("/proc/self/exe", resolved, PATH_MAX);
    if (len != -1) {
        resolved[len] = '\0';
    }
#endif
}

#endif
