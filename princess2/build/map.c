/* This file was compiled by the grace
   of your highness Princess Vic Nightfall
*/
#include "princess2/princess.h"
#ifndef _map_H
#define _map_H
int _1d78dc8e_INITIAL_SIZE;
void *map_sentinel;
typedef struct _1d78dc8e_Entry _1d78dc8e_Entry;
typedef struct _1d78dc8e_Entry {string key; void *value; struct _1d78dc8e_Entry *next;} _1d78dc8e_Entry;
typedef struct map_Map {size_t size; Array entries;} map_Map;
 uint32 _1d78dc8e_hash(string str) {
    uint32 r = 7;
    for (int i = 0;(i < (((int64)(str.size)) - ((int64)1)));(i += 1)) {
        r = ((((int32)r) * ((int32)31)) + ((int32)(((char *)str.value)[i])));
    }
    ;
    return r;
};
 bool _1d78dc8e_do_put(Array entries, string key, void *value);
 void _1d78dc8e_maybe_rehash(map_Map *map) {
    size_t allocated = (((*map).entries).size);
    if (((((double)((*map).size)) / ((double)allocated)) < 0.7)) {
        return ;
    }  ;
    Array entries = ((*map).entries);
    Array new_entries = ((Array){(((int64)allocated) * ((int64)2)), calloc((((int64)allocated) * ((int64)2)), (sizeof(_1d78dc8e_Entry *)))});
    for (int i = 0;(i < (entries.size));(i += 1)) {
        _1d78dc8e_Entry *entry = (((_1d78dc8e_Entry **)entries.value)[i]);
        if (entry) {
            _1d78dc8e_do_put(new_entries, ((*entry).key), ((*entry).value));
            if (((*entry).next)) {
                _1d78dc8e_Entry *entry2 = entry;
                while (((*entry2).next)) {
                    _1d78dc8e_Entry *entry3 = entry2;
                    entry2 = ((*entry2).next);
                    _1d78dc8e_do_put(new_entries, ((*entry2).key), ((*entry2).value));
                    free(entry3);
                }
                ;
            }  else {
                free(entry);
            };
        }  ;
    }
    ;
    free((entries.value));
    ((*map).entries) = new_entries;
};
DLL_EXPORT map_Map * map_make_size(size_t size) {
    map_Map *map = malloc((sizeof(map_Map)));
    ((*map).entries) = ((Array){size, calloc(size, (sizeof(_1d78dc8e_Entry *)))});
    ((*map).size) = 0;
    return map;
};
DLL_EXPORT map_Map * map_make() {
    return map_make_size(_1d78dc8e_INITIAL_SIZE);
};
DLL_EXPORT void * map_get(map_Map *map, string key) {
    uint32 h = _1d78dc8e_hash(key);
    size_t index = (((size_t)h) % (((*map).entries).size));
    _1d78dc8e_Entry *entry = (((_1d78dc8e_Entry **)((*map).entries).value)[index]);
    if (entry) {
        if ((strcmp((((*entry).key).value), (key.value)) == 0)) {
            return ((*entry).value);
        }  ;
        while (((*entry).next)) {
            entry = ((*entry).next);
            if ((strcmp((((*entry).key).value), (key.value)) == 0)) {
                return ((*entry).value);
            }  ;
        }
        ;
        return NULL;
    }  else {
        return NULL;
    };
};
DLL_EXPORT bool map_contains(map_Map *map, string key) {
    void *value = map_get(map, key);
    return (value != NULL);
};
 bool _1d78dc8e_do_put(Array entries, string key, void *value) {
    uint32 h = _1d78dc8e_hash(key);
    size_t index = (((size_t)h) % (entries.size));
    _1d78dc8e_Entry *entry = (((_1d78dc8e_Entry **)entries.value)[index]);
    if (entry) {
        if ((strcmp((((*entry).key).value), (key.value)) == 0)) {
            ((*entry).value) = value;
            return false;
        }  ;
        while (((*entry).next)) {
            entry = ((*entry).next);
            if ((strcmp((((*entry).key).value), (key.value)) == 0)) {
                ((*entry).value) = value;
                return false;
            }  ;
        }
        ;
        _1d78dc8e_Entry *entry2 = malloc((sizeof(_1d78dc8e_Entry)));
        ((*entry2).key) = key;
        ((*entry2).value) = value;
        ((*entry2).next) = NULL;
        ((*entry).next) = entry2;
    }  else {
        entry = malloc((sizeof(_1d78dc8e_Entry)));
        ((*entry).key) = key;
        ((*entry).value) = value;
        ((*entry).next) = NULL;
        (((_1d78dc8e_Entry **)entries.value)[index]) = entry;
    };
    return true;
};
DLL_EXPORT void map_put(map_Map *map, string key, void *value) {
    _1d78dc8e_maybe_rehash(map);
    if (_1d78dc8e_do_put(((*map).entries), key, value)) {
        (((*map).size) += 1);
    }  ;
};
DLL_EXPORT void map_remove(map_Map *map, string key) {
    uint32 h = _1d78dc8e_hash(key);
    size_t index = (((size_t)h) % (((*map).entries).size));
    _1d78dc8e_Entry *entry = (((_1d78dc8e_Entry **)((*map).entries).value)[index]);
    if (entry) {
        if ((strcmp((((*entry).key).value), (key.value)) == 0)) {
            (((*map).size) -= 1);
            if (((*entry).next)) {
                (((_1d78dc8e_Entry **)((*map).entries).value)[index]) = ((*entry).next);
            }  else {
                (((_1d78dc8e_Entry **)((*map).entries).value)[index]) = NULL;
            };
        }  else {
            _1d78dc8e_Entry *entry2 = ((*entry).next);
            while (entry2) {
                if ((strcmp((((*entry2).key).value), (key.value)) == 0)) {
                    (((*map).size) -= 1);
                    if (((*entry2).next)) {
                        ((*entry).next) = ((*entry2).next);
                    }  else {
                        ((*entry).next) = NULL;
                    };
                }  ;
                _1d78dc8e_Entry *entry3 = entry;
                entry = entry2;
                entry2 = ((*entry3).next);
            }
            ;
        };
    }  ;
};
DLL_EXPORT size_t map_size(map_Map *map) {
    return ((*map).size);
};
DLL_EXPORT Array map_keys(map_Map *map) {
    Array keys = ((Array){map_size(map), malloc(((sizeof(string)) * map_size(map)))});
    int index = 0;
    for (int i = 0;(i < (((*map).entries).size));(i += 1)) {
        _1d78dc8e_Entry *entry = (((_1d78dc8e_Entry **)((*map).entries).value)[i]);
        if (entry) {
            (((string *)keys.value)[index]) = ((*entry).key);
            (index += 1);
            while (((*entry).next)) {
                (((string *)keys.value)[index]) = ((*((*entry).next)).key);
                (index += 1);
                entry = ((*entry).next);
            }
            ;
        }  ;
    }
    ;
    return keys;
};
DLL_EXPORT void map_p_main(Array args) {
    _1d78dc8e_INITIAL_SIZE = 16;
    map_sentinel = ((void *)1);
};


#endif
