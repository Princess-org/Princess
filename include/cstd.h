/*
%EXCLUDE __acos __asin __atan __atan2 __cos __sin __tan __cosh __sinh __tanh __acosh __asinh __atanh __exp __frexp __ldexp __log __log10 __modf __expm1 __log1p __logb __exp2 __log2 __pow __sqrt __hypot __cbrt __ceil __fabs __floor __fmod __drem __significand __copysign __nan __j0 __j1 __jn __y0 __y1 __yn __erf __erfc __lgamma __tgamma __gamma __lgamma_r __rint __nextafter __nexttoward __remainder __scalbn __ilogb __scalbln __nearbyint __round __trunc __remquo __lrint __llrint __lround __llround __fdim __fmax __fmin __fma __scalb __acosf __asinf __atanf __atan2f __cosf __sinf __tanf __coshf __sinhf __tanhf __acoshf __asinhf __atanhf __expf __frexpf __ldexpf __logf __log10f __modff __expm1f __log1pf __logbf __exp2f __log2f __powf __sqrtf __hypotf __cbrtf __ceilf __fabsf __floorf __fmodf __dremf __significandf __copysignf __nanf __j0f __j1f __jnf __y0f __y1f __ynf __erff __erfcf __lgammaf __tgammaf __gammaf __lgammaf_r __rintf __nextafterf __nexttowardf __remainderf __scalbnf __ilogbf __scalblnf __nearbyintf __roundf __truncf __remquof __lrintf __llrintf __lroundf __llroundf __fdimf __fmaxf __fminf __fmaf __scalbf __acosl __asinl __atanl __atan2l __cosl __sinl __tanl __coshl __sinhl __tanhl __acoshl __asinhl __atanhl __expl __frexpl __ldexpl __logl __log10l __modfl __expm1l __log1pl __logbl __exp2l __log2l __powl __sqrtl __hypotl __cbrtl __ceill __fabsl __floorl __fmodl __dreml __significandl __copysignl __nanl __j0l __j1l __jnl __y0l __y1l __ynl __erfl __erfcl __lgammal __tgammal __gammal __lgammal_r __rintl __nextafterl __nexttowardl __remainderl __scalbnl __ilogbl __scalblnl __nearbyintl __roundl __truncl __remquol __lrintl __llrintl __lroundl __llroundl __fdiml __fmaxl __fminl __fmal __scalbl __builtin_va_start __builtin_va_end alloca tmpnam tmpnam_r tempnam sys_errlist sys_nerr mktemp sigstack sigreturn siggetmask sys_siglist _sys_siglist
%EXCLUDE timer_create timer_delete timer_settime timer_gettime timer_getoverrun
%EXCLUDE __builtin_fabsf __builtin_inff __builtin_fabs __builtin_inf __builtin_fabsl __builtin_infl longjmperror
%EXCLUDE __va_start _sopen_s_nolock
%EXCLUDE __builtin_bswap32 __builtin_bswap64

Windows specific
%EXCLUDE vfwprintf _vfwprintf_s_l vfwprintf_s _vfwprintf_p_l _vfwprintf_p _vwprintf_l vwprintf _vwprintf_s_l vwprintf_s
%EXCLUDE _vwprintf_p_l _vwprintf_p _fwprintf_l _fwprintf_s_l fwprintf_s _fwprintf_p_l _fwprintf_p _wprintf_l wprintf 
%EXCLUDE _wprintf_s_l wprintf_s _wprintf_p_l _wprintf_p _vfwscanf_l vfwscanf _vfwscanf_s_l vfwscanf_s _vwscanf_l vwscanf 
%EXCLUDE _vwscanf_s_l vwscanf_s _fwscanf_l fwscanf _fwscanf_s_l fwscanf_s _wscanf_l wscanf _wscanf_s_l wscanf_s _vsnwprintf_l 
%EXCLUDE _vsnwprintf_s_l _vsnwprintf_s _snwprintf _vsnwprintf _vswprintf_c _vswprintf_l __vswprintf_l _vswprintf _vswprintf 
%EXCLUDE vswprintf vswprintf _vswprintf_s_l vswprintf_s _vswprintf_p_l _vswprintf_p _vscwprintf_l _vscwprintf _vscwprintf_p_l 
%EXCLUDE _vscwprintf_p _swprintf __swprintf_l _swprintf_l _swprintf _swprintf _swprintf_s_l swprintf_s _swprintf_p_l _swprintf_p 
%EXCLUDE _swprintf_c_l _swprintf_c _snwprintf_l _snwprintf_s_l _snwprintf_s _scwprintf_l _scwprintf _scwprintf_p_l 
%EXCLUDE _scwprintf_p _vswscanf_l vswscanf _vswscanf_s_l vswscanf_s _vsnwscanf_l _vsnwscanf_s_l _swscanf_l swscanf 
%EXCLUDE _swscanf_s_l swscanf_s _snwscanf_l _snwscanf _snwscanf_s_l _snwscanf_s _vfprintf_s_l vfprintf_s _vfprintf_p_l
%EXCLUDE _vfprintf_p _vprintf_l _vprintf_s_l vprintf_s _vprintf_p_l _vprintf_p _fprintf_l _fprintf_s_l fprintf_s 
%EXCLUDE _fprintf_p_l _fprintf_p _printf_l _printf_s_l printf_s _printf_p_l _printf_p _vfscanf_s_l vfscanf_s _vscanf_l 
%EXCLUDE _vscanf_s_l vscanf_s _fscanf_l _fscanf_s_l fscanf_s _scanf_l _scanf_s_l scanf_s vsprintf_s _vsprintf_p_l _vsprintf_p 
%EXCLUDE _vsnprintf_s_l _vsnprintf_s _vsnprintf_s vsnprintf_s vsnprintf_s _vscprintf_l _vscprintf _vscprintf_p_l _vscprintf_p 
%EXCLUDE _vsnprintf_c_l _vsnprintf_c _sprintf_l _sprintf_s_l _sprintf_p_l _sprintf_p _snprintf_l _snprintf_c_l _snprintf_c 
%EXCLUDE _snprintf_s_l _snprintf_s _scprintf_l _scprintf _scprintf_p_l _scprintf_p _vsscanf_s_l vsscanf_s _sscanf_l 
%EXCLUDE _sscanf_s_l sscanf_s _snscanf_l _snscanf _snscanf_s_l _snscanf_s wcsnlen_s _wcstok strnlen_s _wctime_s timespec_get 
%EXCLUDE ctime_s gmtime_s localtime_s _chgsignl _copysignl _hypotl __ascii_iswdigit _vcwprintf_l _vcwprintf _vcwprintf_s_l 
%EXCLUDE _vcwprintf_s _vcwprintf_p_l _vcwprintf_p _cwprintf_l _cwprintf _cwprintf_s_l _cwprintf_s _cwprintf_p_l _cwprintf_p 
%EXCLUDE _vcwscanf_l _vcwscanf _vcwscanf_s_l _vcwscanf_s _cwscanf_l _cwscanf _cwscanf_s_l _cwscanf_s _vcprintf_l _vcprintf 
%EXCLUDE _vcprintf_s_l _vcprintf_s _vcprintf_p_l _vcprintf_p _cprintf_l _cprintf _cprintf _cprintf_s_l _cprintf_s _cprintf_p_l 
%EXCLUDE _cprintf_p _vcscanf_l _vcscanf _vcscanf_s_l _vcscanf_s _cscanf_l _cscanf _cscanf _cscanf_s_l _cscanf_s cprintf cprintf cscanf cscanf

Inline functions
%EXCLUDE __acrt_locale_get_ctype_array_value __ascii_iswalpha __ascii_toupper time __ascii_towlower difftime sprintf_s 
%EXCLUDE _vsscanf_l localtime _chvalidchk_l mktime _mkgmtime memcpy_s _vfscanf_l _vsprintf_l __acrt_get_locale_data_prefix 
%EXCLUDE _vsprintf_s_l fwprintf __ascii_tolower _vfprintf_l __ascii_towupper __threadid _ischartype_l _wctime gmtime 
%EXCLUDE __threadhandle _vsnprintf_l ctime __local_stdio_printf_options _vfwprintf_l swprintf memmove_s __local_stdio_scanf_options _vswprintf_c_l
*/

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h>
#include <math.h>
#include <assert.h>
#include <signal.h>
#include <stdarg.h>
#include <ctype.h>
#include <locale.h>
#include <setjmp.h>
#include <errno.h>
#include <float.h>
#include <limits.h>

#ifdef _WIN32
    #include <conio.h>
    #include <io.h>
#endif