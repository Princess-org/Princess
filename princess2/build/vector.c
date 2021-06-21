/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess.h"
#ifndef _vector_H
#define _vector_H
int _6ba8844d_INITIAL_SIZE;
typedef struct vector_Vector {size_t length; size_t allocated; void **data;} vector_Vector;
 size_t _6ba8844d_roundup(size_t n) {
    if ((n == 0)) {
        return 0;
    }  ;
    size_t r = 1;
    while ((n > r)) {
        (r *= 2);
    }
    ;
    return r;
};
DLL_EXPORT vector_Vector * vector_make() {
    vector_Vector *vec = malloc((sizeof(vector_Vector)));
    ((*vec).length) = 0;
    ((*vec).allocated) = _6ba8844d_INITIAL_SIZE;
    ((*vec).data) = ((void **)malloc((((int64)(sizeof(void *))) * ((int64)_6ba8844d_INITIAL_SIZE))));
    return vec;
};
 void _6ba8844d_extend(vector_Vector *vec, int delta) {
    if (((((int64)((*vec).length)) + ((int64)delta)) < ((*vec).allocated))) {
        return ;
    }  ;
    int nelem = ((int)fmax(_6ba8844d_roundup((((int64)((*vec).length)) + ((int64)delta))), _6ba8844d_INITIAL_SIZE));
    ((*vec).data) = realloc(((*vec).data), (((int64)(sizeof(void *))) * ((int64)nelem)));
    ((*vec).allocated) = nelem;
};
DLL_EXPORT size_t vector_length(vector_Vector *vec) {
    return ((*vec).length);
};
DLL_EXPORT void * vector_get(vector_Vector *vec, size_t index) {
    assert(((index >= 0) && (index < ((*vec).length))));
    return (((*vec).data)[index]);
};
DLL_EXPORT void vector_set(vector_Vector *vec, size_t index, void *val) {
    assert(((index >= 0) && (index < ((*vec).length))));
    (((*vec).data)[index]) = val;
};
DLL_EXPORT void vector_push(vector_Vector *vec, void *elem) {
    _6ba8844d_extend(vec, 1);
    (((*vec).data)[((*vec).length)]) = elem;
    (((*vec).length) += 1);
};
DLL_EXPORT void * vector_peek(vector_Vector *vec) {
    if ((((*vec).length) > 0)) {
        return (((*vec).data)[(((int64)((*vec).length)) - ((int64)1))]);
    }  ;
    return NULL;
};
DLL_EXPORT void * vector_pop(vector_Vector *vec) {
    void *v = vector_peek(vec);
    (((*vec).length) -= 1);
    return v;
};
DLL_EXPORT void * vector_head(vector_Vector *vec) {
    if ((vector_length(vec) < 1)) {
        return NULL;
    }  ;
    return vector_get(vec, 0);
};
DLL_EXPORT vector_Vector * vector_head_vec(vector_Vector *vec) {
    void *elem = vector_head(vec);
    vector_Vector *new = vector_make();
    vector_push(new, elem);
    return new;
};
DLL_EXPORT vector_Vector * vector_tail(vector_Vector *vec) {
    vector_Vector *new = vector_make();
    if ((vector_length(vec) < 2)) {
        return new;
    }  ;
    for (int i = 1;(i < vector_length(vec));(i += 1)) {
        vector_push(new, vector_get(vec, i));
    }
    ;
    return new;
};
DLL_EXPORT void vector_p_main(Array args) {
    ;
    _6ba8844d_INITIAL_SIZE = 8;
};


#endif
