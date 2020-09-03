#ifndef PRINCESS_H
#define PRINCESS_H

#if defined(_WIN32)
#define DLL_EXPORT __declspec(dllexport)
#else
#define DLL_EXPORT
#endif

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#if !defined(_WIN32)
extern FILE *stdout;
extern FILE *stderr;
extern FILE *stdin;
#endif

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
typedef char* string;

#endif
