#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#include "cstd.h"

// Force llvm to emit the function
void *f_vfprintf = &vfprintf;
void *f_vprintf = &vprintf;
void *f_vfscanf = &vfscanf;
void *f_vscanf = &vscanf;
void *f_fscanf = &fscanf;
void *f_scanf = &scanf;
void *f_vsnprintf = &vsnprintf;
void *f_vsprintf = &vsprintf;
void *f_sprintf = &sprintf;
void *f_snprintf = &snprintf;
void *f__snprintf = &_snprintf;
void *f__vsnprintf = &_vsnprintf;
void *f_vsscanf = &vsscanf;
void *f_sscanf = &sscanf;
void *f_fabsf = &fabsf;
void *f_frexpf = &frexpf;
void *f_acosl = &acosl;
void *f_asinl = &asinl;
void *f_atanl = &atanl;
void *f_ceill = &ceill;
void *f_coshl = &coshl;
void *f_fabsl = &fabsl;
void *f_floorl = &floorl;
void *f_frexpl = &frexpl;
void *f_log10l = &log10l;
void *f_modfl = &modfl;
void *f_tanhl = &tanhl;

void *f_timespec_get = &timespec_get;

#endif