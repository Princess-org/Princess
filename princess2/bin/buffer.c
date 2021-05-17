/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _buffer_H
#define _buffer_H
int _7f2db423_INITIAL_SIZE;
typedef struct buffer_Buffer {size_t size; size_t allocated; char *value;} buffer_Buffer;
DLL_EXPORT buffer_Buffer buffer_make_buffer() {
    buffer_Buffer buffer = ((buffer_Buffer){ .size = 1, .allocated = _7f2db423_INITIAL_SIZE, .value = malloc((((int64)(sizeof(char))) * ((int64)_7f2db423_INITIAL_SIZE))) });
    ((buffer.value)[0]) = '\x00';
    return buffer;
};
DLL_EXPORT void buffer_append_str(buffer_Buffer *buffer, string s) {
    if (((((s.size) - 1) + ((*buffer).size)) > ((*buffer).allocated))) {
        size_t new_size = ((size_t)fmax((((int64)((*buffer).allocated)) * ((int64)2)), (((int64)(((*buffer).size) + (s.size))) - ((int64)1))));
        ((*buffer).allocated) = new_size;
        ((*buffer).value) = realloc(((*buffer).value), ((sizeof(char)) * new_size));
    }  ;
    memcpy(((((*buffer).value) + ((*buffer).size)) - 1), (s.value), (s.size));
    (((*buffer).size) += ((s.size) - 1));
};
DLL_EXPORT void buffer_append_char(buffer_Buffer *buffer, char c) {
    if (((((int64)1) + ((int64)((*buffer).size))) > ((*buffer).allocated))) {
        int64 new_size = (((int64)((*buffer).allocated)) * ((int64)2));
        ((*buffer).allocated) = new_size;
        ((*buffer).value) = realloc(((*buffer).value), (((int64)(sizeof(char))) * new_size));
    }  ;
    (((*buffer).value)[(((int64)((*buffer).size)) - ((int64)1))]) = c;
    (((*buffer).value)[((*buffer).size)]) = '\x00';
    (((*buffer).size) += 1);
};
DLL_EXPORT string buffer_to_string(buffer_Buffer *buffer) {
    string s;
    (s.value) = ((*buffer).value);
    (s.size) = ((*buffer).size);
    return s;
};
DLL_EXPORT void buffer_p_main(Array args) {
    _7f2db423_INITIAL_SIZE = 8;
};


#endif
