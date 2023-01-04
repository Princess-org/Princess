// This file needs to be added to the import path on windows
/*
%EXCLUDE ffi_raw_call ffi_ptrarray_to_raw ffi_raw_to_ptrarray ffi_raw_size ffi_java_raw_call ffi_java_ptrarray_to_raw ffi_java_raw_to_ptrarray ffi_java_raw_size ffi_prep_raw_closure ffi_prep_raw_closure_loc ffi_prep_java_raw_closure ffi_prep_java_raw_closure_loc
%EXCLUDE ffi_prep_closure
%EXCLUDE __va_start
*/
#ifdef _WIN32
    #include "windows/ffi.h"
#else
    #include <ffi.h>
#endif