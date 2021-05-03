/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _util_H
#define _util_H
#include "buffer.c"
uint8 util_MAX_UINT8;
uint16 util_MAX_UINT16;
uint32 util_MAX_UINT32;
uint64 util_MAX_UINT64;
int8 util_MIN_INT8;
int16 util_MIN_INT16;
int32 util_MIN_INT32;
int64 util_MIN_INT64;
int8 util_MAX_INT8;
int16 util_MAX_INT16;
int32 util_MAX_INT32;
int64 util_MAX_INT64;
DLL_EXPORT string * util_copy_string(string str) {
    string *res = malloc((sizeof(string)));
    ((*res).size) = (str.size);
    ((*res).value) = malloc(((sizeof(char)) * (str.size)));
    memcpy(((*res).value), (str.value), (str.size));
    return res;
};
DLL_EXPORT int util_find_substr(string str, string search, int start) {
    if ((start >= ((str.size) - 1))) {
        return (-1);
    }  ;
    for (int i = start;(i < (((int64)(str.size)) - ((int64)1)));(i += 1)) {
        if (((((char *)str.value)[i]) == (((char *)search.value)[0]))) {
            int j = 0;
            while ((j < ((search.size) - 1))) {
                if (((i + j) >= ((str.size) - 1))) {
                    return (-1);
                }  ;
                if (((((char *)str.value)[(i + j)]) != (((char *)search.value)[j]))) {
                    break;
                }  ;
                (j += 1);
            }
            ;
            if ((j == ((search.size) - 1))) {
                return i;
            }  ;
            (i += j);
        }  ;
    }
    ;
    return (-1);
};
DLL_EXPORT string util_replace_all(string str, string search, string replace) {
    buffer_Buffer buf = buffer_make_buffer();
    int i = 0;
    int j = util_find_substr(str, search, 0);
    while ((j != (-1))) {
        Array before = ((Array){((j - i) + 1), calloc(((j - i) + 1), (sizeof(char)))});
        memcpy((before.value), ((str.value) + i), (j - i));
        buffer_append_str((&buf), before);
        buffer_append_str((&buf), replace);
        free((before.value));
        i = (((int64)j) + ((int64)((search.size) - 1)));
        j = util_find_substr(str, search, i);
    }
    ;
    Array after = ((Array){((((int64)(((int64)(str.size)) - 1)) - ((int64)i)) + ((int64)1)), calloc(((((int64)(((int64)(str.size)) - 1)) - ((int64)i)) + ((int64)1)), (sizeof(char)))});
    memcpy((after.value), ((str.value) + i), (((int64)(((int64)(str.size)) - ((int64)1))) - ((int64)i)));
    buffer_append_str((&buf), after);
    free((after.value));
    return buffer_to_string((&buf));
};
DLL_EXPORT Array util_split_lines(string s) {
    size_t size = ((s.size) - 1);
    int lines = 1;
    for (int i = 0;(i < size);(i += 1)) {
        char ch = (((char *)s.value)[i]);
        if ((ch == '\x0a')) {
            (lines += 1);
        }  ;
    }
    ;
    Array result = ((Array){lines, malloc((((int64)(sizeof(string))) * ((int64)lines)))});
    int line = 0;
    int j = 0;
    int k = 0;
    int l = 0;
    while ((j < size)) {
        char ch = (((char *)s.value)[j]);
        if ((ch == '\x0a')) {
            if ((((j - 1) >= 0) && ((((char *)s.value)[(j - 1)]) == '\x0d'))) {
                l = (j - 1);
            }  else {
                l = j;
            };
            (((string *)result.value)[line]) = ((Array){((l - k) + 1), malloc((((int64)(sizeof(char))) * ((int64)((l - k) + 1))))});
            memcpy(((((string *)result.value)[line]).value), ((s.value) + k), (l - k));
            (((char *)(((string *)result.value)[line]).value)[(l - k)]) = '\x00';
            k = (j + 1);
            (line += 1);
        }  ;
        (j += 1);
    }
    ;
    (((string *)result.value)[line]) = ((Array){((((int64)size) - ((int64)k)) + ((int64)1)), malloc((((int64)(sizeof(char))) * ((((int64)size) - ((int64)k)) + ((int64)1))))});
    memcpy(((((string *)result.value)[line]).value), ((s.value) + k), (((int64)size) - ((int64)k)));
    (((char *)(((string *)result.value)[line]).value)[(((int64)size) - ((int64)k))]) = '\x00';
    return result;
};
DLL_EXPORT string util_double_to_hex_str(double f) {
    Array digits = ((Array){17, "0123456789ABCDEF"});
    uint64 n = (*((uint64 *)(&f)));
    string str;
    (str.value) = calloc(1, (((int64)(sizeof(char))) * 19));
    (((char *)str.value)[0]) = '0';
    (((char *)str.value)[1]) = 'x';
    int i = 2;
    if ((n == 0)) {
        (((char *)str.value)[i]) = '0';
        (str.size) = 4;
        return str;
    }  ;
    uint64 shifter = n;
    while (shifter) {
        (i += 1);
        (shifter /= 16);
    }
    ;
    (str.size) = (i + 1);
    while (n) {
        (i -= 1);
        (((char *)str.value)[i]) = (((char *)digits.value)[(((int64)n) % ((int64)16))]);
        (n /= 16);
    }
    ;
    return str;
};
DLL_EXPORT string util_uint_to_str_sign(int sign, uint64 n) {
    Array digits = ((Array){11, "0123456789"});
    string str;
    (str.value) = calloc(1, (((int64)(sizeof(char))) * 22));
    if ((n == 0)) {
        (((char *)str.value)[0]) = '0';
        (str.size) = 2;
        return str;
    }  ;
    uint64 i = 0;
    if ((sign < 0)) {
        (((char *)str.value)[i]) = '-';
        (i += 1);
    }  ;
    uint64 shifter = n;
    while (shifter) {
        (i += 1);
        (shifter /= 10);
    }
    ;
    (str.size) = (((int64)i) + ((int64)1));
    while (n) {
        (i -= 1);
        (((char *)str.value)[i]) = (((char *)digits.value)[(((int64)n) % ((int64)10))]);
        (n /= 10);
    }
    ;
    return str;
};
DLL_EXPORT string util_uint_to_str(uint64 i) {
    return util_uint_to_str_sign(1, i);
};
DLL_EXPORT string util_int_to_str(int64 i) {
    int sign = 1;
    if ((i < 0)) {
        (i *= (-1));
        sign = (-1);
    }  ;
    return util_uint_to_str_sign(sign, i);
};
DLL_EXPORT bool util_exists(string filename) {
    FILE* fp = fopen((filename.value), (((Array){2, "r"}).value));
    if (fp) {
        fclose(fp);
        return true;
    }  ;
    return false;
};
DLL_EXPORT int util_gcd(int a, int b) {
    while ((b != 0)) {
        int t = b;
        b = (a % b);
        a = t;
    }
    ;
    return a;
};
DLL_EXPORT int util_lcm(int a, int b) {
    return ((a * b) / util_gcd(a, b));
};
DLL_EXPORT void util_p_main(Array args) {
    buffer_p_main(args);
    util_MAX_UINT8 = 255;
    util_MAX_UINT16 = 65535;
    util_MAX_UINT32 = 4294967295;
    util_MAX_UINT64 = 18446744073709551615ULL;
    util_MIN_INT8 = (-128);
    util_MIN_INT16 = (-32768);
    util_MIN_INT32 = (-2147483648);
    util_MIN_INT64 = ((-9223372036854775807ULL) - 1);
    util_MAX_INT8 = 127;
    util_MAX_INT16 = 32767;
    util_MAX_INT32 = 2147483647;
    util_MAX_INT64 = 9223372036854775807ULL;
};


#endif
