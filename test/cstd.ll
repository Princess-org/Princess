; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/cstd.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"cstd::ldiv_t" = type {i64, i64}
%"cstd::s__IO_codecvt" = type opaque
%"cstd::fd_set" = type {[16 x i64]}
%"<anonymous>.1" = type {[8 x i8]}
%"cstd::s__IO_wide_data" = type opaque
%"<anonymous>.2" = type {i32, i32}
%"<anonymous>.3" = type {[8 x i8]}
%"<anonymous>.4" = type {i32, i32}
%"cstd::s_lconv" = type {i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8}
%"cstd::pthread_barrierattr_t" = type {[4 x i8]}
%"cstd::s__libc_xmmreg" = type {[4 x i32]}
%"cstd::s__libc_fpstate" = type {i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"cstd::s__libc_fpxreg"], [16 x %"cstd::s__libc_xmmreg"], [24 x i32]}
%"cstd::max_align_t" = type {i64, x86_fp80}
%"cstd::__pthread_slist_t" = type {%"cstd::__pthread_slist_t"*}
%"cstd::u_sigval" = type {[8 x i8]}
%"cstd::pthread_rwlockattr_t" = type {[8 x i8]}
%"cstd::pthread_cond_t" = type {[48 x i8]}
%"cstd::s__IO_marker" = type opaque
%"cstd::s___locale_struct" = type {[13 x %"cstd::s___locale_data"*], i16*, i32*, i32*, [13 x i8*]}
%"cstd::pthread_mutex_t" = type {[40 x i8]}
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s___jmp_buf_tag" = type {[8 x i64], i32, %"cstd::__sigset_t"}
%"cstd::s_tm" = type {i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*}
%"cstd::__sigset_t" = type {[16 x i64]}
%"cstd::siginfo_t" = type {i32, i32, i32, i32, %"<anonymous>.1"}
%"cstd::s__fpxreg" = type {[4 x i16], i16, [3 x i16]}
%"cstd::s_sigaction" = type {%"<anonymous>.1", %"cstd::__sigset_t", i32, void ()*}
%"cstd::stack_t" = type {i8*, i32, i64}
%"cstd::ucontext_t" = type {i64, %"cstd::ucontext_t"*, %"cstd::stack_t", %"cstd::mcontext_t", %"cstd::__sigset_t", %"cstd::s__libc_fpstate", [4 x i64]}
%"cstd::s__fpstate" = type {i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"cstd::s__fpxreg"], [16 x %"cstd::s__xmmreg"], [24 x i32]}
%"cstd::mcontext_t" = type {[23 x i64], %"cstd::s__libc_fpstate"*, [8 x i64]}
%"cstd::s__fpreg" = type {[4 x i16], i16}
%"cstd::div_t" = type {i32, i32}
%"cstd::__pthread_list_t" = type {%"cstd::__pthread_list_t"*, %"cstd::__pthread_list_t"*}
%"cstd::s___pthread_rwlock_arch_t" = type {i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32}
%"cstd::sigevent_t" = type {%"cstd::u_sigval", i32, i32, %"<anonymous>.1"}
%"cstd::s__xmmreg" = type {[4 x i32]}
%"cstd::s_sigstack" = type {i8*, i32}
%"cstd::s__fpx_sw_bytes" = type {i32, i32, i64, i32, [7 x i32]}
%"cstd::s__ymmh_state" = type {[64 x i32]}
%"cstd::s___pthread_cond_s" = type {%"<anonymous>.1", %"<anonymous>.3", [2 x i32], [2 x i32], i32, i32, [2 x i32]}
%"cstd::s_drand48_data" = type {[3 x i16], [3 x i16], i16, i16, i64}
%"cstd::s_random_data" = type {i32*, i32*, i32*, i32, i32, i32, i32*}
%"cstd::pthread_condattr_t" = type {[4 x i8]}
%"cstd::pthread_mutexattr_t" = type {[4 x i8]}
%"cstd::pthread_barrier_t" = type {[32 x i8]}
%"cstd::s__xsave_hdr" = type {i64, [2 x i64], [5 x i64]}
%"cstd::s_timeval" = type {i64, i64}
%"cstd::__fsid_t" = type {[2 x i32]}
%"cstd::s__xstate" = type {%"cstd::s__fpstate", %"cstd::s__xsave_hdr", %"cstd::s__ymmh_state"}
%"cstd::__fpos64_t" = type {i64, %"cstd::__mbstate_t"}
%"cstd::__mbstate_t" = type {i32, %"<anonymous>.1"}
%"cstd::__fpos_t" = type {i64, %"cstd::__mbstate_t"}
%"cstd::s_itimerspec" = type {%"cstd::s_timespec", %"cstd::s_timespec"}
%"cstd::pthread_rwlock_t" = type {[56 x i8]}
%"cstd::s_sigcontext" = type {i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, %"<anonymous>.1", [8 x i64]}
%"cstd::s___pthread_mutex_s" = type {i32, i32, i32, i32, i32, i16, i16, %"cstd::__pthread_list_t"}
%"cstd::s__libc_fpxreg" = type {[4 x i16], i16, [3 x i16]}
%"cstd::s_timespec" = type {i64, i64}
%"cstd::u_pthread_attr_t" = type {[56 x i8]}
%"cstd::s___locale_data" = type opaque
%"cstd::lldiv_t" = type {i64, i64}
declare i64 @"__getdelim"(i8**, i64*, i32, %"cstd::s__IO_FILE"*)
declare double @"gamma"(double)
declare void @"explicit_bzero"(i8*, i64)
declare %"cstd::s__IO_FILE"* @"fopen"(i8*, i8*)
declare float @"hypotf"(float, float)
declare i32 @"isnan"(double)
declare i32 @"strcasecmp"(i8*, i8*)
declare x86_fp80 @"hypotl"(x86_fp80, x86_fp80)
declare i32 @"isalnum_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"fclose"(%"cstd::s__IO_FILE"*)
declare i32 @"getchar_unlocked"()
declare double @"cos"(double)
declare i32 @"timespec_get"(%"cstd::s_timespec"*, i32)
declare double @"atan"(double)
declare i32 @"ferror"(%"cstd::s__IO_FILE"*)
declare void @"__assert"(i8*, i8*, i32)
declare float @"sinhf"(float)
declare i64 @"mktime"(%"cstd::s_tm"*)
declare x86_fp80 @"sinhl"(x86_fp80)
declare i32 @"isspace"(i32)
declare i32 @"fgetc_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"fseek"(%"cstd::s__IO_FILE"*, i64, i32)
declare i32 @"strcmp"(i8*, i8*)
declare double @"strtod"(i8*, i8**)
declare %"cstd::s_tm"* @"localtime_r"(i64*, %"cstd::s_tm"*)
declare i8* @"strtok"(i8*, i8*)
declare float @"cosf"(float)
declare i64 @"strtol"(i8*, i8**, i32)
declare double @"cosh"(double)
declare x86_fp80 @"cosl"(x86_fp80)
declare i32 @"__fpclassifyf"(float)
declare i32 @"getc"(%"cstd::s__IO_FILE"*)
declare i32 @"__fpclassifyl"(x86_fp80)
declare float @"ceilf"(float)
declare i32 @"isdigit"(i32)
declare x86_fp80 @"ceill"(x86_fp80)
declare i32 @"clock_getres"(i32, %"cstd::s_timespec"*)
declare i32 @"timer_getoverrun"(i8*)
declare i32 @"mbtowc"(i32*, i8*, i64)
declare double @"floor"(double)
declare float @"gammaf"(float)
declare i64 @"clock"()
declare i32 @"getw"(%"cstd::s__IO_FILE"*)
declare i32 @"ispunct"(i32)
declare x86_fp80 @"gammal"(x86_fp80)
declare i8* @"strncat"(i8*, i8*, i64)
declare void @"tzset"()
declare i32 @"nanosleep"(%"cstd::s_timespec"*, %"cstd::s_timespec"*)
declare i32 @"isgraph"(i32)
declare i32 @"isblank"(i32)
declare i64 @"fread_unlocked"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i32 @"isalpha"(i32)
declare i32 @"vdprintf"(i32, i8*, %"__va_list_tag"*)
declare %"cstd::s_tm"* @"localtime"(i64*)
declare i32 @"iscntrl"(i32)
declare i64 @"timelocal"(%"cstd::s_tm"*)
declare double @"expm1"(double)
declare float @"nearbyintf"(float)
declare x86_fp80 @"lgammal_r"(x86_fp80, i32*)
declare i8* @"getenv"(i8*)
declare i64 @"strxfrm_l"(i8*, i8*, i64, %"cstd::s___locale_struct"*)
declare float @"floorf"(float)
declare i8* @"strcpy"(i8*, i8*)
declare x86_fp80 @"nearbyintl"(x86_fp80)
declare i64 @"strspn"(i8*, i8*)
declare x86_fp80 @"floorl"(x86_fp80)
declare i32 @"rand"()
declare i32 @"ungetc"(i32, %"cstd::s__IO_FILE"*)
declare float @"remquof"(float, float, i32*)
declare i32 @"fputc_unlocked"(i32, %"cstd::s__IO_FILE"*)
declare i32 @"__isinf"(double)
declare i32 @"fsetpos"(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)
declare double @"fmin"(double, double)
declare x86_fp80 @"remquol"(x86_fp80, x86_fp80, i32*)
declare double @"exp"(double)
declare float @"tanhf"(float)
declare i32 @"mblen"(i8*, i64)
declare i16** @"__ctype_b_loc"()
declare double @"log10"(double)
declare double @"significand"(double)
declare i32 @"fflush_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"timer_create"(i32, %"cstd::sigevent_t"*, i8**)
declare x86_fp80 @"tanhl"(x86_fp80)
declare i32 @"ffsll"(i64)
declare i32 @"isxdigit_l"(i32, %"cstd::s___locale_struct"*)
declare i8* @"__strtok_r"(i8*, i8*, i8**)
declare float @"atan2f"(float, float)
declare i32 @"dysize"(i32)
declare x86_fp80 @"atan2l"(x86_fp80, x86_fp80)
declare i32 @"wctomb"(i8*, i32)
declare void @"siglongjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare double @"nearbyint"(double)
declare double @"atan2"(double, double)
declare %"cstd::s_tm"* @"gmtime_r"(i64*, %"cstd::s_tm"*)
declare double @"pow"(double, double)
declare %"cstd::s___locale_struct"* @"duplocale"(%"cstd::s___locale_struct"*)
declare i32 @"fputc"(i32, %"cstd::s__IO_FILE"*)
declare i8* @"strdup"(i8*)
declare double @"lgamma_r"(double, i32*)
declare i32 @"system"(i8*)
declare i32 @"renameat"(i32, i8*, i32, i8*)
declare i32 @"strcasecmp_l"(i8*, i8*, %"cstd::s___locale_struct"*)
declare %"cstd::s__IO_FILE"* @"freopen"(i8*, i8*, %"cstd::s__IO_FILE"*)
declare double @"log1p"(double)
declare i32 @"putchar"(i32)
declare i64 @"ftello"(%"cstd::s__IO_FILE"*)
declare void @"clearerr"(%"cstd::s__IO_FILE"*)
declare i32 @"clock_getcpuclockid"(i32, i32*)
declare i64 @"lrint"(double)
declare i32 @"fputs"(i8*, %"cstd::s__IO_FILE"*)
declare i32 @"putchar_unlocked"(i32)
declare i8* @"asctime_r"(%"cstd::s_tm"*, i8*)
declare i64 @"strlen"(i8*)
declare i64 @"labs"(i64)
declare i32 @"toupper_l"(i32, %"cstd::s___locale_struct"*)
declare float @"log2f"(float)
declare i64 @"mbstowcs"(i32*, i8*, i64)
declare i8* @"setlocale"(i32, i8*)
declare x86_fp80 @"log2l"(x86_fp80)
declare double @"y0"(double)
declare float @"coshf"(float)
declare double @"y1"(double)
declare float @"atanf"(float)
declare i32 @"toupper"(i32)
declare double @"atanh"(double)
declare i32 @"strcoll_l"(i8*, i8*, %"cstd::s___locale_struct"*)
declare x86_fp80 @"coshl"(x86_fp80)
declare i32 @"fflush"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"atanl"(x86_fp80)
declare i8* @"__stpncpy"(i8*, i8*, i64)
declare i8* @"strstr"(i8*, i8*)
declare i32 @"isgraph_l"(i32, %"cstd::s___locale_struct"*)
declare i8* @"index"(i8*, i32)
declare %"cstd::ldiv_t" @"ldiv"(i64, i64)
declare %"cstd::s__IO_FILE"* @"tmpfile"()
declare float @"tgammaf"(float)
declare i32 @"_tolower"(i32)
declare i32 @"__iseqsigf"(float, float)
declare x86_fp80 @"tgammal"(x86_fp80)
declare i8* @"memset"(i8*, i32, i64)
declare i32 @"__iseqsigl"(x86_fp80, x86_fp80)
declare i32 @"isalpha_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"fgetpos"(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)
declare void @"funlockfile"(%"cstd::s__IO_FILE"*)
declare i8* @"memmove"(i8*, i8*, i64)
declare float @"fmaxf"(float, float)
declare i32 @"ftrylockfile"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"fmaxl"(x86_fp80, x86_fp80)
declare i32 @"isdigit_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare double @"difftime"(i64, i64)
declare i32 @"__uflow"(%"cstd::s__IO_FILE"*)
declare double @"yn"(i32, double)
declare i32 @"vsprintf"(i8*, i8*, %"__va_list_tag"*)
declare double @"asin"(double)
declare double @"fmod"(double, double)
declare i32 @"vprintf"(i8*, %"__va_list_tag"*)
declare i32 @"timer_delete"(i8*)
declare float @"tanf"(float)
declare double @"tanh"(double)
declare i64 @"ftell"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"tanl"(x86_fp80)
declare i64 @"strxfrm"(i8*, i8*, i64)
declare i8* @"memchr"(i8*, i32, i64)
declare double @"lgamma"(double)
declare float @"scalblnf"(float, i64)
declare i32 @"feof_unlocked"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"scalblnl"(x86_fp80, i64)
declare i32 @"fgetc"(%"cstd::s__IO_FILE"*)
declare double @"ceil"(double)
declare i32 @"__tolower_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"__finitef"(float)
declare float @"powf"(float, float)
declare i32 @"__finite"(double)
declare i32 @"__finitel"(x86_fp80)
declare void @"setbuf"(%"cstd::s__IO_FILE"*, i8*)
define void @"cstd::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	%tmp.0 = alloca {i64, i8*}
	%tmp.1 = alloca {i64, i8*}
	%tmp.2 = alloca {i64, i8*}
	%tmp.3 = alloca {i64, i8*}
	%tmp.4 = alloca {i64, i8*}
	%tmp.5 = alloca {i64, i8*}
	%tmp.6 = alloca {i64, i8*}
	%tmp.7 = alloca {i64, i8*}
	%tmp.8 = alloca {i64, i8*}
	%tmp.9 = alloca {i64, i8*}
	%tmp.10 = alloca {i64, i8*}
	%tmp.11 = alloca {i64, i8*}
	%tmp.12 = alloca {i64, i8*}
	%tmp.13 = alloca {i64, i8*}
	%tmp.14 = alloca {i64, i8*}
	%tmp.15 = alloca {i64, i8*}
	%tmp.16 = alloca {i64, i8*}
	%tmp.17 = alloca {i64, i8*}
	%tmp.18 = alloca {i64, i8*}
	%tmp.19 = alloca {i64, i8*}
	%tmp.20 = alloca {i64, i8*}
	%tmp.21 = alloca {i64, i8*}
	%tmp.22 = alloca {i64, i8*}
	%tmp.23 = alloca {i64, i8*}
	%tmp.24 = alloca {i64, i8*}
	%tmp.25 = alloca {i64, i8*}
	%tmp.26 = alloca {i64, i8*}
	%tmp.27 = alloca {i64, i8*}
	%tmp.28 = alloca {i64, i8*}
	%tmp.29 = alloca {i64, i8*}
	%tmp.30 = alloca {i64, i8*}
	%tmp.31 = alloca {i64, i8*}
	%tmp.32 = alloca {i64, i8*}
	%tmp.33 = alloca {i64, i8*}
	%tmp.34 = alloca {i64, i8*}
	%tmp.35 = alloca {i64, i8*}
	%tmp.36 = alloca {i64, i8*}
	%tmp.37 = alloca {i64, i8*}
	%tmp.38 = alloca {i64, i8*}
	%tmp.39 = alloca {i64, i8*}
	%tmp.40 = alloca {i64, i8*}
	%tmp.41 = alloca {i64, i8*}
	%tmp.42 = alloca {i64, i8*}
	%tmp.43 = alloca {i64, i8*}
	%tmp.44 = alloca {i64, i8*}
	%tmp.45 = alloca {i64, i8*}
	%tmp.46 = alloca {i64, i8*}
	%tmp.47 = alloca {i64, i8*}
	%tmp.48 = alloca {i64, i8*}
	%tmp.49 = alloca {i64, i8*}
	%tmp.50 = alloca {i64, i8*}
	%tmp.51 = alloca {i64, i8*}
	%tmp.52 = alloca {i64, i8*}
	%tmp.53 = alloca {i64, i8*}
	%tmp.54 = alloca {i64, i8*}
	%tmp.55 = alloca {i64, i8*}
	%tmp.56 = alloca {i64, i8*}
	%tmp.57 = alloca {i64, i8*}
	%tmp.58 = alloca {i64, i8*}
	%tmp.59 = alloca {i64, i8*}
	%tmp.60 = alloca {i64, i8*}
	%tmp.61 = alloca {i64, i8*}
	%tmp.62 = alloca {i64, i8*}
	%tmp.63 = alloca {i64, i8*}
	%tmp.64 = alloca {i64, i8*}
	%tmp.65 = alloca {i64, i8*}
	%tmp.66 = alloca {i64, i8*}
	%tmp.67 = alloca {i64, i8*}
	%tmp.68 = alloca {i64, i8*}
	%tmp.69 = alloca {i64, i8*}
	%tmp.70 = alloca {i64, i8*}
	%tmp.71 = alloca {i64, i8*}
	%tmp.72 = alloca {i64, i8*}
	%tmp.73 = alloca {i64, i8*}
	%tmp.74 = alloca {i64, i8*}
	%tmp.75 = alloca {i64, i8*}
	%tmp.76 = alloca {i64, i8*}
	%tmp.77 = alloca {i64, i8*}
	%tmp.78 = alloca {i64, i8*}
	%tmp.79 = alloca {i64, i8*}
	%tmp.80 = alloca {i64, i8*}
	%tmp.81 = alloca {i64, i8*}
	%tmp.82 = alloca {i64, i8*}
	%tmp.83 = alloca {i64, i8*}
	%tmp.84 = alloca {i64, i8*}
	%tmp.85 = alloca {i64, i8*}
	%tmp.86 = alloca {i64, i8*}
	%tmp.87 = alloca {i64, i8*}
	%tmp.88 = alloca {i64, i8*}
	%tmp.89 = alloca {i64, i8*}
	%tmp.90 = alloca {i64, i8*}
	%tmp.91 = alloca {i64, i8*}
	%tmp.92 = alloca {i64, i8*}
	%tmp.93 = alloca {i64, i8*}
	%tmp.94 = alloca {i64, i8*}
	%tmp.95 = alloca {i64, i8*}
	%tmp.96 = alloca {i64, i8*}
	%tmp.97 = alloca {i64, i8*}
	%tmp.98 = alloca {i64, i8*}
	%tmp.99 = alloca {i64, i8*}
	%tmp.100 = alloca {i64, i8*}
	%tmp.101 = alloca {i64, i8*}
	%tmp.102 = alloca {i64, i8*}
	%tmp.103 = alloca {i64, i8*}
	%tmp.104 = alloca {i64, i8*}
	%tmp.105 = alloca {i64, i8*}
	%tmp.106 = alloca {i64, i8*}
	%tmp.107 = alloca {i64, i8*}
	%tmp.108 = alloca {i64, i8*}
	%tmp.109 = alloca {i64, i8*}
	%tmp.110 = alloca {i64, i8*}
	%tmp.111 = alloca {i64, i8*}
	%tmp.112 = alloca {i64, i8*}
	%tmp.113 = alloca {i64, i8*}
	%tmp.114 = alloca {i64, i8*}
	%tmp.115 = alloca {i64, i8*}
	%tmp.116 = alloca {i64, i8*}
	%tmp.117 = alloca {i64, i8*}
	%tmp.118 = alloca {i64, i8*}
	%tmp.119 = alloca {i64, i8*}
	%tmp.120 = alloca {i64, i8*}
	%tmp.121 = alloca {i64, i8*}
	%tmp.122 = alloca {i64, i8*}
	%tmp.123 = alloca {i64, i8*}
	%tmp.124 = alloca {i64, i8*}
	%tmp.125 = alloca {i64, i8*}
	%tmp.126 = alloca {i64, i8*}
	%tmp.127 = alloca {i64, i8*}
	%tmp.128 = alloca {i64, i8*}
	%tmp.129 = alloca {i64, i8*}
	%tmp.130 = alloca {i64, i8*}
	%tmp.131 = alloca {i64, i8*}
	%tmp.132 = alloca {i64, i8*}
	%tmp.133 = alloca {i64, i8*}
	%tmp.134 = alloca {i64, i8*}
	%tmp.135 = alloca {i64, i8*}
	%tmp.136 = alloca {i64, i8*}
	%tmp.137 = alloca {i64, i8*}
	%tmp.138 = alloca {i64, i8*}
	%tmp.139 = alloca {i64, i8*}
	%tmp.140 = alloca {i64, i8*}
	%tmp.141 = alloca {i64, i8*}
	%tmp.142 = alloca {i64, i8*}
	%tmp.143 = alloca {i64, i8*}
	%tmp.144 = alloca {i64, i8*}
	%tmp.145 = alloca {i64, i8*}
	%tmp.146 = alloca {i64, i8*}
	%tmp.147 = alloca {i64, i8*}
	%tmp.148 = alloca {i64, i8*}
	%tmp.149 = alloca {i64, i8*}
	%tmp.150 = alloca {i64, i8*}
	%tmp.151 = alloca {i64, i8*}
	%tmp.152 = alloca {i64, i8*}
	%tmp.153 = alloca {i64, i8*}
	%tmp.154 = alloca {i64, i8*}
	%tmp.155 = alloca {i64, i8*}
	%tmp.156 = alloca {i64, i8*}
	%tmp.157 = alloca {i64, i8*}
	%tmp.158 = alloca {i64, i8*}
	%tmp.159 = alloca {i64, i8*}
	%tmp.160 = alloca {i64, i8*}
	%tmp.161 = alloca {i64, i8*}
	%tmp.162 = alloca {i64, i8*}
	%tmp.163 = alloca {i64, i8*}
	%tmp.164 = alloca {i64, i8*}
	%tmp.165 = alloca {i64, i8*}
	%tmp.166 = alloca {i64, i8*}
	%tmp.167 = alloca {i64, i8*}
	%tmp.168 = alloca {i64, i8*}
	%tmp.169 = alloca {i64, i8*}
	%tmp.170 = alloca {i64, i8*}
	%tmp.171 = alloca {i64, i8*}
	%tmp.172 = alloca {i64, i8*}
	%tmp.173 = alloca {i64, i8*}
	%tmp.174 = alloca {i64, i8*}
	%tmp.175 = alloca {i64, i8*}
	%tmp.176 = alloca {i64, i8*}
	%tmp.177 = alloca {i64, i8*}
	%tmp.178 = alloca {i64, i8*}
	%tmp.179 = alloca {i64, i8*}
	%tmp.180 = alloca {i64, i8*}
	%tmp.181 = alloca {i64, i8*}
	%tmp.182 = alloca {i64, i8*}
	%tmp.183 = alloca {i64, i8*}
	%tmp.184 = alloca {i64, i8*}
	%tmp.185 = alloca {i64, i8*}
	%tmp.186 = alloca {i64, i8*}
	%tmp.187 = alloca {i64, i8*}
	%tmp.188 = alloca {i64, i8*}
	%tmp.189 = alloca {i64, i8*}
	%tmp.190 = alloca {i64, i8*}
	%tmp.191 = alloca {i64, i8*}
	%tmp.192 = alloca {i64, i8*}
	%tmp.193 = alloca {i64, i8*}
	%tmp.194 = alloca {i64, i8*}
	%tmp.195 = alloca {i64, i8*}
	%tmp.196 = alloca {i64, i8*}
	%tmp.197 = alloca {i64, i8*}
	%tmp.198 = alloca {i64, i8*}
	%tmp.199 = alloca {i64, i8*}
	%tmp.200 = alloca {i64, i8*}
	%tmp.201 = alloca {i64, i8*}
	%tmp.202 = alloca {i64, i8*}
	%tmp.203 = alloca {i64, i8*}
	%tmp.204 = alloca {i64, i8*}
	%tmp.205 = alloca {i64, i8*}
	%tmp.206 = alloca {i64, i8*}
	%tmp.207 = alloca {i64, i8*}
	%tmp.208 = alloca {i64, i8*}
	%tmp.209 = alloca {i64, i8*}
	%tmp.210 = alloca {i64, i8*}
	%tmp.211 = alloca {i64, i8*}
	%tmp.212 = alloca {i64, i8*}
	%tmp.213 = alloca {i64, i8*}
	%tmp.214 = alloca {i64, i8*}
	%tmp.215 = alloca {i64, i8*}
	%tmp.216 = alloca {i64, i8*}
	%tmp.217 = alloca {i64, i8*}
	%tmp.218 = alloca {i64, i8*}
	%tmp.219 = alloca {i64, i8*}
	%tmp.220 = alloca {i64, i8*}
	%tmp.221 = alloca {i64, i8*}
	%tmp.222 = alloca {i64, i8*}
	%tmp.223 = alloca {i64, i8*}
	%tmp.224 = alloca {i64, i8*}
	%tmp.225 = alloca {i64, i8*}
	%tmp.226 = alloca {i64, i8*}
	%tmp.227 = alloca {i64, i8*}
	%tmp.228 = alloca {i64, i8*}
	%tmp.229 = alloca {i64, i8*}
	%tmp.230 = alloca {i64, i8*}
	%tmp.231 = alloca {i64, i8*}
	%tmp.232 = alloca {i64, i8*}
	%tmp.233 = alloca {i64, i8*}
	%tmp.234 = alloca {i64, i8*}
	%tmp.235 = alloca {i64, i8*}
	%tmp.236 = alloca {i64, i8*}
	%tmp.237 = alloca {i64, i8*}
	%tmp.238 = alloca {i64, i8*}
	%tmp.239 = alloca {i64, i8*}
	%tmp.240 = alloca {i64, i8*}
	%tmp.241 = alloca {i64, i8*}
	%tmp.242 = alloca {i64, i8*}
	%tmp.243 = alloca {i64, i8*}
	%tmp.244 = alloca {i64, i8*}
	%tmp.245 = alloca {i64, i8*}
	%tmp.246 = alloca {i64, i8*}
	%tmp.247 = alloca {i64, i8*}
	%tmp.248 = alloca {i64, i8*}
	%tmp.249 = alloca {i64, i8*}
	%tmp.250 = alloca {i64, i8*}
	%tmp.251 = alloca {i64, i8*}
	%tmp.252 = alloca {i64, i8*}
	%tmp.253 = alloca {i64, i8*}
	%tmp.254 = alloca {i64, i8*}
	%tmp.255 = alloca {i64, i8*}
	%tmp.256 = alloca {i64, i8*}
	%tmp.257 = alloca {i64, i8*}
	%tmp.258 = alloca {i64, i8*}
	%tmp.259 = alloca {i64, i8*}
	%tmp.260 = alloca {i64, i8*}
	%tmp.261 = alloca {i64, i8*}
	%tmp.262 = alloca {i64, i8*}
	%tmp.263 = alloca {i64, i8*}
	%tmp.264 = alloca {i64, i8*}
	%tmp.265 = alloca {i64, i8*}
	%tmp.266 = alloca {i64, i8*}
	%tmp.267 = alloca {i64, i8*}
	%tmp.268 = alloca {i64, i8*}
	%tmp.269 = alloca {i64, i8*}
	%tmp.270 = alloca {i64, i8*}
	%tmp.271 = alloca {i64, i8*}
	%tmp.272 = alloca {i64, i8*}
	%tmp.273 = alloca {i64, i8*}
	%tmp.274 = alloca {i64, i8*}
	%tmp.275 = alloca {i64, i8*}
	%tmp.276 = alloca {i64, i8*}
	%tmp.277 = alloca {i64, i8*}
	%tmp.278 = alloca {i64, i8*}
	%tmp.279 = alloca {i64, i8*}
	%tmp.280 = alloca {i64, i8*}
	%tmp.281 = alloca {i64, i8*}
	%tmp.282 = alloca {i64, i8*}
	%tmp.283 = alloca {i64, i8*}
	%tmp.284 = alloca {i64, i8*}
	%tmp.285 = alloca {i64, i8*}
	%tmp.286 = alloca {i64, i8*}
	%tmp.287 = alloca {i64, i8*}
	%tmp.288 = alloca {i64, i8*}
	%tmp.289 = alloca {i64, i8*}
	%tmp.290 = alloca {i64, i8*}
	%tmp.291 = alloca {i64, i8*}
	%tmp.292 = alloca {i64, i8*}
	%tmp.293 = alloca {i64, i8*}
	%tmp.294 = alloca {i64, i8*}
	%tmp.295 = alloca {i64, i8*}
	%tmp.296 = alloca {i64, i8*}
	%tmp.297 = alloca {i64, i8*}
	%tmp.298 = alloca {i64, i8*}
	%tmp.299 = alloca {i64, i8*}
	%tmp.300 = alloca {i64, i8*}
	%tmp.301 = alloca {i64, i8*}
	%tmp.302 = alloca {i64, i8*}
	%tmp.303 = alloca {i64, i8*}
	%tmp.304 = alloca {i64, i8*}
	%tmp.305 = alloca {i64, i8*}
	%tmp.306 = alloca {i64, i8*}
	%tmp.307 = alloca {i64, i8*}
	%tmp.308 = alloca {i64, i8*}
	%tmp.309 = alloca {i64, i8*}
	%tmp.310 = alloca {i64, i8*}
	%tmp.311 = alloca {i64, i8*}
	%tmp.312 = alloca {i64, i8*}
	%tmp.313 = alloca {i64, i8*}
	%tmp.314 = alloca {i64, i8*}
	%tmp.315 = alloca {i64, i8*}
	%tmp.316 = alloca {i64, i8*}
	%tmp.317 = alloca {i64, i8*}
	%tmp.318 = alloca {i64, i8*}
	%tmp.319 = alloca {i64, i8*}
	%tmp.320 = alloca {i64, i8*}
	%tmp.321 = alloca {i64, i8*}
	%tmp.322 = alloca {i64, i8*}
	%tmp.323 = alloca {i64, i8*}
	%tmp.324 = alloca {i64, i8*}
	%tmp.325 = alloca {i64, i8*}
	%tmp.326 = alloca {i64, i8*}
	%tmp.327 = alloca {i64, i8*}
	%tmp.328 = alloca {i64, i8*}
	%tmp.329 = alloca {i64, i8*}
	%tmp.330 = alloca {i64, i8*}
	%tmp.331 = alloca {i64, i8*}
	%tmp.332 = alloca {i64, i8*}
	%tmp.333 = alloca {i64, i8*}
	%tmp.334 = alloca {i64, i8*}
	%tmp.335 = alloca {i64, i8*}
	%tmp.336 = alloca {i64, i8*}
	%tmp.337 = alloca {i64, i8*}
	%tmp.338 = alloca {i64, i8*}
	%tmp.339 = alloca {i64, i8*}
	%tmp.340 = alloca {i64, i8*}
	%tmp.341 = alloca {i64, i8*}
	%tmp.342 = alloca {i64, i8*}
	%tmp.343 = alloca {i64, i8*}
	%tmp.344 = alloca {i64, i8*}
	%tmp.345 = alloca {i64, i8*}
	%tmp.346 = alloca {i64, i8*}
	%tmp.347 = alloca {i64, i8*}
	%tmp.348 = alloca {i64, i8*}
	%tmp.349 = alloca {i64, i8*}
	%tmp.350 = alloca {i64, i8*}
	%tmp.351 = alloca {i64, i8*}
	%tmp.352 = alloca {i64, i8*}
	%tmp.353 = alloca {i64, i8*}
	%tmp.354 = alloca {i64, i8*}
	%tmp.355 = alloca {i64, i8*}
	%tmp.356 = alloca {i64, i8*}
	%tmp.357 = alloca {i64, i8*}
	%tmp.358 = alloca {i64, i8*}
	%tmp.359 = alloca {i64, i8*}
	%tmp.360 = alloca {i64, i8*}
	%tmp.361 = alloca {i64, i8*}
	%tmp.362 = alloca {i64, i8*}
	%tmp.363 = alloca {i64, i8*}
	%tmp.364 = alloca {i64, i8*}
	%tmp.365 = alloca {i64, i8*}
	%tmp.366 = alloca {i64, i8*}
	%tmp.367 = alloca {i64, i8*}
	%tmp.368 = alloca {i64, i8*}
	%tmp.369 = alloca {i64, i8*}
	%tmp.370 = alloca {i64, i8*}
	%tmp.371 = alloca {i64, i8*}
	%tmp.372 = alloca {i64, i8*}
	%tmp.373 = alloca {i64, i8*}
	%tmp.374 = alloca {i64, i8*}
	%tmp.375 = alloca {i64, i8*}
	%tmp.376 = alloca {i64, i8*}
	%tmp.377 = alloca {i64, i8*}
	%tmp.378 = alloca {i64, i8*}
	%tmp.379 = alloca {i64, i8*}
	%tmp.380 = alloca {i64, i8*}
	%tmp.381 = alloca {i64, i8*}
	%tmp.382 = alloca {i64, i8*}
	%tmp.383 = alloca {i64, i8*}
	%tmp.384 = alloca {i64, i8*}
	%tmp.385 = alloca {i64, i8*}
	%tmp.386 = alloca {i64, i8*}
	%tmp.387 = alloca {i64, i8*}
	%tmp.388 = alloca {i64, i8*}
	%tmp.389 = alloca {i64, i8*}
	%tmp.390 = alloca {i64, i8*}
	%tmp.391 = alloca {i64, i8*}
	%tmp.392 = alloca {i64, i8*}
	%tmp.393 = alloca {i64, i8*}
	%tmp.394 = alloca {i64, i8*}
	%tmp.395 = alloca {i64, i8*}
	%tmp.396 = alloca {i64, i8*}
	%tmp.397 = alloca {i64, i8*}
	%tmp.398 = alloca {i64, i8*}
	%tmp.399 = alloca {i64, i8*}
	%tmp.400 = alloca {i64, i8*}
	%tmp.401 = alloca {i64, i8*}
	%tmp.402 = alloca {i64, i8*}
	%tmp.403 = alloca {i64, i8*}
	%tmp.404 = alloca {i64, i8*}
	%tmp.405 = alloca {i64, i8*}
	%tmp.406 = alloca {i64, i8*}
	%tmp.407 = alloca {i64, i8*}
	%tmp.408 = alloca {i64, i8*}
	%tmp.409 = alloca {i64, i8*}
	%tmp.410 = alloca {i64, i8*}
	%tmp.411 = alloca {i64, i8*}
	%tmp.412 = alloca {i64, i8*}
	%tmp.413 = alloca {i64, i8*}
	%tmp.414 = alloca {i64, i8*}
	%tmp.415 = alloca {i64, i8*}
	%tmp.416 = alloca {i64, i8*}
	%tmp.417 = alloca {i64, i8*}
	%tmp.418 = alloca {i64, i8*}
	%tmp.419 = alloca {i64, i8*}
	%tmp.420 = alloca {i64, i8*}
	%tmp.421 = alloca {i64, i8*}
	%tmp.422 = alloca {i64, i8*}
	%tmp.423 = alloca {i64, i8*}
	%tmp.424 = alloca {i64, i8*}
	%tmp.425 = alloca {i64, i8*}
	%tmp.426 = alloca {i64, i8*}
	%tmp.427 = alloca {i64, i8*}
	%tmp.428 = alloca {i64, i8*}
	%tmp.429 = alloca {i64, i8*}
	%tmp.430 = alloca {i64, i8*}
	%tmp.431 = alloca {i64, i8*}
	%tmp.432 = alloca {i64, i8*}
	%tmp.433 = alloca {i64, i8*}
	%tmp.434 = alloca {i64, i8*}
	%tmp.435 = alloca {i64, i8*}
	%tmp.436 = alloca {i64, i8*}
	%tmp.437 = alloca {i64, i8*}
	%tmp.438 = alloca {i64, i8*}
	%tmp.439 = alloca {i64, i8*}
	%tmp.440 = alloca {i64, i8*}
	%tmp.441 = alloca {i64, i8*}
	%tmp.442 = alloca {i64, i8*}
	%tmp.443 = alloca {i64, i8*}
	%tmp.444 = alloca {i64, i8*}
	%tmp.445 = alloca {i64, i8*}
	%tmp.446 = alloca {i64, i8*}
	%tmp.447 = alloca {i64, i8*}
	%tmp.448 = alloca {i64, i8*}
	%tmp.449 = alloca {i64, i8*}
	%tmp.450 = alloca {i64, i8*}
	%tmp.451 = alloca {i64, i8*}
	%tmp.452 = alloca {i64, i8*}
	%tmp.453 = alloca {i64, i8*}
	%tmp.454 = alloca {i64, i8*}
	%tmp.455 = alloca {i64, i8*}
	%tmp.456 = alloca {i64, i8*}
	%tmp.457 = alloca {i64, i8*}
	%tmp.458 = alloca {i64, i8*}
	%tmp.459 = alloca {i64, i8*}
	%tmp.460 = alloca {i64, i8*}
	%tmp.461 = alloca {i64, i8*}
	%tmp.462 = alloca {i64, i8*}
	%tmp.463 = alloca {i64, i8*}
	%tmp.464 = alloca {i64, i8*}
	%tmp.465 = alloca {i64, i8*}
	%tmp.466 = alloca {i64, i8*}
	%tmp.467 = alloca {i64, i8*}
	%tmp.468 = alloca {i64, i8*}
	%tmp.469 = alloca {i64, i8*}
	%tmp.470 = alloca {i64, i8*}
	%tmp.471 = alloca {i64, i8*}
	%tmp.472 = alloca {i64, i8*}
	%tmp.473 = alloca {i64, i8*}
	%tmp.474 = alloca {i64, i8*}
	%tmp.475 = alloca {i64, i8*}
	%tmp.476 = alloca {i64, i8*}
	%tmp.477 = alloca {i64, i8*}
	%tmp.478 = alloca {i64, i8*}
	%tmp.479 = alloca {i64, i8*}
	%tmp.480 = alloca {i64, i8*}
	%tmp.481 = alloca {i64, i8*}
	%tmp.482 = alloca {i64, i8*}
	%tmp.483 = alloca {i64, i8*}
	%tmp.484 = alloca {i64, i8*}
	%tmp.485 = alloca {i64, i8*}
	%tmp.486 = alloca {i64, i8*}
	%tmp.487 = alloca {i64, i8*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.4", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.0
	%2 = load {i64, i8*}, {i64, i8*}* %tmp.0
	%3 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 0
	store {i64, i8*} %2, {i64, i8*}* %3
	%4 = bitcast double (i8*)* @"atof" to void ()*
	%5 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 0
	store void ()* %4, void ()** %5
	%6 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.5", i64 0, i64 0
	%7 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %6, 1
	store {i64, i8*} %7, {i64, i8*}* %tmp.1
	%8 = load {i64, i8*}, {i64, i8*}* %tmp.1
	%9 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 1
	store {i64, i8*} %8, {i64, i8*}* %9
	%10 = bitcast i32 (i8*)* @"atoi" to void ()*
	%11 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 1
	store void ()* %10, void ()** %11
	%12 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.6", i64 0, i64 0
	%13 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %12, 1
	store {i64, i8*} %13, {i64, i8*}* %tmp.2
	%14 = load {i64, i8*}, {i64, i8*}* %tmp.2
	%15 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 2
	store {i64, i8*} %14, {i64, i8*}* %15
	%16 = bitcast i64 (i8*)* @"atol" to void ()*
	%17 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 2
	store void ()* %16, void ()** %17
	%18 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.7", i64 0, i64 0
	%19 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %18, 1
	store {i64, i8*} %19, {i64, i8*}* %tmp.3
	%20 = load {i64, i8*}, {i64, i8*}* %tmp.3
	%21 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 3
	store {i64, i8*} %20, {i64, i8*}* %21
	%22 = bitcast double (i8*, i8**)* @"strtod" to void ()*
	%23 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 3
	store void ()* %22, void ()** %23
	%24 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.8", i64 0, i64 0
	%25 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %24, 1
	store {i64, i8*} %25, {i64, i8*}* %tmp.4
	%26 = load {i64, i8*}, {i64, i8*}* %tmp.4
	%27 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 4
	store {i64, i8*} %26, {i64, i8*}* %27
	%28 = bitcast i64 (i8*, i8**, i32)* @"strtol" to void ()*
	%29 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 4
	store void ()* %28, void ()** %29
	%30 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.9", i64 0, i64 0
	%31 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %30, 1
	store {i64, i8*} %31, {i64, i8*}* %tmp.5
	%32 = load {i64, i8*}, {i64, i8*}* %tmp.5
	%33 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 5
	store {i64, i8*} %32, {i64, i8*}* %33
	%34 = bitcast i64 (i8*, i8**, i32)* @"strtoul" to void ()*
	%35 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 5
	store void ()* %34, void ()** %35
	%36 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.10", i64 0, i64 0
	%37 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %36, 1
	store {i64, i8*} %37, {i64, i8*}* %tmp.6
	%38 = load {i64, i8*}, {i64, i8*}* %tmp.6
	%39 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 6
	store {i64, i8*} %38, {i64, i8*}* %39
	%40 = bitcast i32 ()* @"rand" to void ()*
	%41 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 6
	store void ()* %40, void ()** %41
	%42 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.11", i64 0, i64 0
	%43 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %42, 1
	store {i64, i8*} %43, {i64, i8*}* %tmp.7
	%44 = load {i64, i8*}, {i64, i8*}* %tmp.7
	%45 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 7
	store {i64, i8*} %44, {i64, i8*}* %45
	%46 = bitcast void (i32)* @"srand" to void ()*
	%47 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 7
	store void ()* %46, void ()** %47
	%48 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.12", i64 0, i64 0
	%49 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %48, 1
	store {i64, i8*} %49, {i64, i8*}* %tmp.8
	%50 = load {i64, i8*}, {i64, i8*}* %tmp.8
	%51 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 8
	store {i64, i8*} %50, {i64, i8*}* %51
	%52 = bitcast i8* (i64)* @"malloc" to void ()*
	%53 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 8
	store void ()* %52, void ()** %53
	%54 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.13", i64 0, i64 0
	%55 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %54, 1
	store {i64, i8*} %55, {i64, i8*}* %tmp.9
	%56 = load {i64, i8*}, {i64, i8*}* %tmp.9
	%57 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 9
	store {i64, i8*} %56, {i64, i8*}* %57
	%58 = bitcast i8* (i64, i64)* @"calloc" to void ()*
	%59 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 9
	store void ()* %58, void ()** %59
	%60 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.14", i64 0, i64 0
	%61 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %60, 1
	store {i64, i8*} %61, {i64, i8*}* %tmp.10
	%62 = load {i64, i8*}, {i64, i8*}* %tmp.10
	%63 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 10
	store {i64, i8*} %62, {i64, i8*}* %63
	%64 = bitcast i8* (i8*, i64)* @"realloc" to void ()*
	%65 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 10
	store void ()* %64, void ()** %65
	%66 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.15", i64 0, i64 0
	%67 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %66, 1
	store {i64, i8*} %67, {i64, i8*}* %tmp.11
	%68 = load {i64, i8*}, {i64, i8*}* %tmp.11
	%69 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 11
	store {i64, i8*} %68, {i64, i8*}* %69
	%70 = bitcast void (i8*)* @"free" to void ()*
	%71 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 11
	store void ()* %70, void ()** %71
	%72 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.16", i64 0, i64 0
	%73 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %72, 1
	store {i64, i8*} %73, {i64, i8*}* %tmp.12
	%74 = load {i64, i8*}, {i64, i8*}* %tmp.12
	%75 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 12
	store {i64, i8*} %74, {i64, i8*}* %75
	%76 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 12
	store void ()* @"abort", void ()** %76
	%77 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.17", i64 0, i64 0
	%78 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %77, 1
	store {i64, i8*} %78, {i64, i8*}* %tmp.13
	%79 = load {i64, i8*}, {i64, i8*}* %tmp.13
	%80 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 13
	store {i64, i8*} %79, {i64, i8*}* %80
	%81 = bitcast i32 (void ()*)* @"atexit" to void ()*
	%82 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 13
	store void ()* %81, void ()** %82
	%83 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.18", i64 0, i64 0
	%84 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %83, 1
	store {i64, i8*} %84, {i64, i8*}* %tmp.14
	%85 = load {i64, i8*}, {i64, i8*}* %tmp.14
	%86 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 14
	store {i64, i8*} %85, {i64, i8*}* %86
	%87 = bitcast void (i32)* @"exit" to void ()*
	%88 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 14
	store void ()* %87, void ()** %88
	%89 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.19", i64 0, i64 0
	%90 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %89, 1
	store {i64, i8*} %90, {i64, i8*}* %tmp.15
	%91 = load {i64, i8*}, {i64, i8*}* %tmp.15
	%92 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 15
	store {i64, i8*} %91, {i64, i8*}* %92
	%93 = bitcast i8* (i8*)* @"getenv" to void ()*
	%94 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 15
	store void ()* %93, void ()** %94
	%95 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.20", i64 0, i64 0
	%96 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %95, 1
	store {i64, i8*} %96, {i64, i8*}* %tmp.16
	%97 = load {i64, i8*}, {i64, i8*}* %tmp.16
	%98 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 16
	store {i64, i8*} %97, {i64, i8*}* %98
	%99 = bitcast i32 (i8*)* @"system" to void ()*
	%100 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 16
	store void ()* %99, void ()** %100
	%101 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.21", i64 0, i64 0
	%102 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %101, 1
	store {i64, i8*} %102, {i64, i8*}* %tmp.17
	%103 = load {i64, i8*}, {i64, i8*}* %tmp.17
	%104 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 17
	store {i64, i8*} %103, {i64, i8*}* %104
	%105 = bitcast i8* (i8*, i8*, i64, i64, i32 (i8*, i8*)*)* @"bsearch" to void ()*
	%106 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 17
	store void ()* %105, void ()** %106
	%107 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.22", i64 0, i64 0
	%108 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %107, 1
	store {i64, i8*} %108, {i64, i8*}* %tmp.18
	%109 = load {i64, i8*}, {i64, i8*}* %tmp.18
	%110 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 18
	store {i64, i8*} %109, {i64, i8*}* %110
	%111 = bitcast void (i8*, i64, i64, i32 (i8*, i8*)*)* @"qsort" to void ()*
	%112 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 18
	store void ()* %111, void ()** %112
	%113 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.23", i64 0, i64 0
	%114 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %113, 1
	store {i64, i8*} %114, {i64, i8*}* %tmp.19
	%115 = load {i64, i8*}, {i64, i8*}* %tmp.19
	%116 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 19
	store {i64, i8*} %115, {i64, i8*}* %116
	%117 = bitcast i32 (i32)* @"abs" to void ()*
	%118 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 19
	store void ()* %117, void ()** %118
	%119 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.24", i64 0, i64 0
	%120 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %119, 1
	store {i64, i8*} %120, {i64, i8*}* %tmp.20
	%121 = load {i64, i8*}, {i64, i8*}* %tmp.20
	%122 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 20
	store {i64, i8*} %121, {i64, i8*}* %122
	%123 = bitcast i64 (i64)* @"labs" to void ()*
	%124 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 20
	store void ()* %123, void ()** %124
	%125 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.25", i64 0, i64 0
	%126 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %125, 1
	store {i64, i8*} %126, {i64, i8*}* %tmp.21
	%127 = load {i64, i8*}, {i64, i8*}* %tmp.21
	%128 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 21
	store {i64, i8*} %127, {i64, i8*}* %128
	%129 = bitcast %"cstd::div_t" (i32, i32)* @"div" to void ()*
	%130 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 21
	store void ()* %129, void ()** %130
	%131 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.26", i64 0, i64 0
	%132 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %131, 1
	store {i64, i8*} %132, {i64, i8*}* %tmp.22
	%133 = load {i64, i8*}, {i64, i8*}* %tmp.22
	%134 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 22
	store {i64, i8*} %133, {i64, i8*}* %134
	%135 = bitcast %"cstd::ldiv_t" (i64, i64)* @"ldiv" to void ()*
	%136 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 22
	store void ()* %135, void ()** %136
	%137 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.27", i64 0, i64 0
	%138 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %137, 1
	store {i64, i8*} %138, {i64, i8*}* %tmp.23
	%139 = load {i64, i8*}, {i64, i8*}* %tmp.23
	%140 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 23
	store {i64, i8*} %139, {i64, i8*}* %140
	%141 = bitcast i32 (i8*, i64)* @"mblen" to void ()*
	%142 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 23
	store void ()* %141, void ()** %142
	%143 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.28", i64 0, i64 0
	%144 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %143, 1
	store {i64, i8*} %144, {i64, i8*}* %tmp.24
	%145 = load {i64, i8*}, {i64, i8*}* %tmp.24
	%146 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 24
	store {i64, i8*} %145, {i64, i8*}* %146
	%147 = bitcast i32 (i32*, i8*, i64)* @"mbtowc" to void ()*
	%148 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 24
	store void ()* %147, void ()** %148
	%149 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.29", i64 0, i64 0
	%150 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %149, 1
	store {i64, i8*} %150, {i64, i8*}* %tmp.25
	%151 = load {i64, i8*}, {i64, i8*}* %tmp.25
	%152 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 25
	store {i64, i8*} %151, {i64, i8*}* %152
	%153 = bitcast i32 (i8*, i32)* @"wctomb" to void ()*
	%154 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 25
	store void ()* %153, void ()** %154
	%155 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.30", i64 0, i64 0
	%156 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %155, 1
	store {i64, i8*} %156, {i64, i8*}* %tmp.26
	%157 = load {i64, i8*}, {i64, i8*}* %tmp.26
	%158 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 26
	store {i64, i8*} %157, {i64, i8*}* %158
	%159 = bitcast i64 (i32*, i8*, i64)* @"mbstowcs" to void ()*
	%160 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 26
	store void ()* %159, void ()** %160
	%161 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.31", i64 0, i64 0
	%162 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %161, 1
	store {i64, i8*} %162, {i64, i8*}* %tmp.27
	%163 = load {i64, i8*}, {i64, i8*}* %tmp.27
	%164 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 27
	store {i64, i8*} %163, {i64, i8*}* %164
	%165 = bitcast i64 (i8*, i32*, i64)* @"wcstombs" to void ()*
	%166 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 27
	store void ()* %165, void ()** %166
	%167 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.32", i64 0, i64 0
	%168 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %167, 1
	store {i64, i8*} %168, {i64, i8*}* %tmp.28
	%169 = load {i64, i8*}, {i64, i8*}* %tmp.28
	%170 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 28
	store {i64, i8*} %169, {i64, i8*}* %170
	%171 = bitcast i32 (i8*)* @"remove" to void ()*
	%172 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 28
	store void ()* %171, void ()** %172
	%173 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.33", i64 0, i64 0
	%174 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %173, 1
	store {i64, i8*} %174, {i64, i8*}* %tmp.29
	%175 = load {i64, i8*}, {i64, i8*}* %tmp.29
	%176 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 29
	store {i64, i8*} %175, {i64, i8*}* %176
	%177 = bitcast i32 (i8*, i8*)* @"rename" to void ()*
	%178 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 29
	store void ()* %177, void ()** %178
	%179 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.34", i64 0, i64 0
	%180 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %179, 1
	store {i64, i8*} %180, {i64, i8*}* %tmp.30
	%181 = load {i64, i8*}, {i64, i8*}* %tmp.30
	%182 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 30
	store {i64, i8*} %181, {i64, i8*}* %182
	%183 = bitcast i32 (i32, i8*, i32, i8*)* @"renameat" to void ()*
	%184 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 30
	store void ()* %183, void ()** %184
	%185 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.35", i64 0, i64 0
	%186 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %185, 1
	store {i64, i8*} %186, {i64, i8*}* %tmp.31
	%187 = load {i64, i8*}, {i64, i8*}* %tmp.31
	%188 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 31
	store {i64, i8*} %187, {i64, i8*}* %188
	%189 = bitcast %"cstd::s__IO_FILE"* ()* @"tmpfile" to void ()*
	%190 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 31
	store void ()* %189, void ()** %190
	%191 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.36", i64 0, i64 0
	%192 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %191, 1
	store {i64, i8*} %192, {i64, i8*}* %tmp.32
	%193 = load {i64, i8*}, {i64, i8*}* %tmp.32
	%194 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 32
	store {i64, i8*} %193, {i64, i8*}* %194
	%195 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fclose" to void ()*
	%196 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 32
	store void ()* %195, void ()** %196
	%197 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.37", i64 0, i64 0
	%198 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %197, 1
	store {i64, i8*} %198, {i64, i8*}* %tmp.33
	%199 = load {i64, i8*}, {i64, i8*}* %tmp.33
	%200 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 33
	store {i64, i8*} %199, {i64, i8*}* %200
	%201 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fflush" to void ()*
	%202 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 33
	store void ()* %201, void ()** %202
	%203 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.38", i64 0, i64 0
	%204 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %203, 1
	store {i64, i8*} %204, {i64, i8*}* %tmp.34
	%205 = load {i64, i8*}, {i64, i8*}* %tmp.34
	%206 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 34
	store {i64, i8*} %205, {i64, i8*}* %206
	%207 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fflush_unlocked" to void ()*
	%208 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 34
	store void ()* %207, void ()** %208
	%209 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.39", i64 0, i64 0
	%210 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %209, 1
	store {i64, i8*} %210, {i64, i8*}* %tmp.35
	%211 = load {i64, i8*}, {i64, i8*}* %tmp.35
	%212 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 35
	store {i64, i8*} %211, {i64, i8*}* %212
	%213 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @"fopen" to void ()*
	%214 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 35
	store void ()* %213, void ()** %214
	%215 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.40", i64 0, i64 0
	%216 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %215, 1
	store {i64, i8*} %216, {i64, i8*}* %tmp.36
	%217 = load {i64, i8*}, {i64, i8*}* %tmp.36
	%218 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 36
	store {i64, i8*} %217, {i64, i8*}* %218
	%219 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*, %"cstd::s__IO_FILE"*)* @"freopen" to void ()*
	%220 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 36
	store void ()* %219, void ()** %220
	%221 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.41", i64 0, i64 0
	%222 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %221, 1
	store {i64, i8*} %222, {i64, i8*}* %tmp.37
	%223 = load {i64, i8*}, {i64, i8*}* %tmp.37
	%224 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 37
	store {i64, i8*} %223, {i64, i8*}* %224
	%225 = bitcast %"cstd::s__IO_FILE"* (i32, i8*)* @"fdopen" to void ()*
	%226 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 37
	store void ()* %225, void ()** %226
	%227 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.42", i64 0, i64 0
	%228 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %227, 1
	store {i64, i8*} %228, {i64, i8*}* %tmp.38
	%229 = load {i64, i8*}, {i64, i8*}* %tmp.38
	%230 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 38
	store {i64, i8*} %229, {i64, i8*}* %230
	%231 = bitcast %"cstd::s__IO_FILE"* (i8*, i64, i8*)* @"fmemopen" to void ()*
	%232 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 38
	store void ()* %231, void ()** %232
	%233 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.43", i64 0, i64 0
	%234 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %233, 1
	store {i64, i8*} %234, {i64, i8*}* %tmp.39
	%235 = load {i64, i8*}, {i64, i8*}* %tmp.39
	%236 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 39
	store {i64, i8*} %235, {i64, i8*}* %236
	%237 = bitcast %"cstd::s__IO_FILE"* (i8**, i64*)* @"open_memstream" to void ()*
	%238 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 39
	store void ()* %237, void ()** %238
	%239 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.44", i64 0, i64 0
	%240 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %239, 1
	store {i64, i8*} %240, {i64, i8*}* %tmp.40
	%241 = load {i64, i8*}, {i64, i8*}* %tmp.40
	%242 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 40
	store {i64, i8*} %241, {i64, i8*}* %242
	%243 = bitcast void (%"cstd::s__IO_FILE"*, i8*)* @"setbuf" to void ()*
	%244 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 40
	store void ()* %243, void ()** %244
	%245 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.45", i64 0, i64 0
	%246 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %245, 1
	store {i64, i8*} %246, {i64, i8*}* %tmp.41
	%247 = load {i64, i8*}, {i64, i8*}* %tmp.41
	%248 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 41
	store {i64, i8*} %247, {i64, i8*}* %248
	%249 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, i32, i64)* @"setvbuf" to void ()*
	%250 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 41
	store void ()* %249, void ()** %250
	%251 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.46", i64 0, i64 0
	%252 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %251, 1
	store {i64, i8*} %252, {i64, i8*}* %tmp.42
	%253 = load {i64, i8*}, {i64, i8*}* %tmp.42
	%254 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 42
	store {i64, i8*} %253, {i64, i8*}* %254
	%255 = bitcast void (%"cstd::s__IO_FILE"*, i8*, i64)* @"setbuffer" to void ()*
	%256 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 42
	store void ()* %255, void ()** %256
	%257 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.47", i64 0, i64 0
	%258 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %257, 1
	store {i64, i8*} %258, {i64, i8*}* %tmp.43
	%259 = load {i64, i8*}, {i64, i8*}* %tmp.43
	%260 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 43
	store {i64, i8*} %259, {i64, i8*}* %260
	%261 = bitcast void (%"cstd::s__IO_FILE"*)* @"setlinebuf" to void ()*
	%262 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 43
	store void ()* %261, void ()** %262
	%263 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.48", i64 0, i64 0
	%264 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %263, 1
	store {i64, i8*} %264, {i64, i8*}* %tmp.44
	%265 = load {i64, i8*}, {i64, i8*}* %tmp.44
	%266 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 44
	store {i64, i8*} %265, {i64, i8*}* %266
	%267 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @"fprintf" to void ()*
	%268 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 44
	store void ()* %267, void ()** %268
	%269 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.49", i64 0, i64 0
	%270 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %269, 1
	store {i64, i8*} %270, {i64, i8*}* %tmp.45
	%271 = load {i64, i8*}, {i64, i8*}* %tmp.45
	%272 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 45
	store {i64, i8*} %271, {i64, i8*}* %272
	%273 = bitcast i32 (i8*, ...)* @"printf" to void ()*
	%274 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 45
	store void ()* %273, void ()** %274
	%275 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.50", i64 0, i64 0
	%276 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %275, 1
	store {i64, i8*} %276, {i64, i8*}* %tmp.46
	%277 = load {i64, i8*}, {i64, i8*}* %tmp.46
	%278 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 46
	store {i64, i8*} %277, {i64, i8*}* %278
	%279 = bitcast i32 (i8*, i8*, ...)* @"sprintf" to void ()*
	%280 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 46
	store void ()* %279, void ()** %280
	%281 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.51", i64 0, i64 0
	%282 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %281, 1
	store {i64, i8*} %282, {i64, i8*}* %tmp.47
	%283 = load {i64, i8*}, {i64, i8*}* %tmp.47
	%284 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 47
	store {i64, i8*} %283, {i64, i8*}* %284
	%285 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)* @"vfprintf" to void ()*
	%286 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 47
	store void ()* %285, void ()** %286
	%287 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.52", i64 0, i64 0
	%288 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %287, 1
	store {i64, i8*} %288, {i64, i8*}* %tmp.48
	%289 = load {i64, i8*}, {i64, i8*}* %tmp.48
	%290 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 48
	store {i64, i8*} %289, {i64, i8*}* %290
	%291 = bitcast i32 (i8*, %"__va_list_tag"*)* @"vprintf" to void ()*
	%292 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 48
	store void ()* %291, void ()** %292
	%293 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.53", i64 0, i64 0
	%294 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %293, 1
	store {i64, i8*} %294, {i64, i8*}* %tmp.49
	%295 = load {i64, i8*}, {i64, i8*}* %tmp.49
	%296 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 49
	store {i64, i8*} %295, {i64, i8*}* %296
	%297 = bitcast i32 (i8*, i8*, %"__va_list_tag"*)* @"vsprintf" to void ()*
	%298 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 49
	store void ()* %297, void ()** %298
	%299 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.54", i64 0, i64 0
	%300 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %299, 1
	store {i64, i8*} %300, {i64, i8*}* %tmp.50
	%301 = load {i64, i8*}, {i64, i8*}* %tmp.50
	%302 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 50
	store {i64, i8*} %301, {i64, i8*}* %302
	%303 = bitcast i32 (i8*, i64, i8*, ...)* @"snprintf" to void ()*
	%304 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 50
	store void ()* %303, void ()** %304
	%305 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.55", i64 0, i64 0
	%306 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %305, 1
	store {i64, i8*} %306, {i64, i8*}* %tmp.51
	%307 = load {i64, i8*}, {i64, i8*}* %tmp.51
	%308 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 51
	store {i64, i8*} %307, {i64, i8*}* %308
	%309 = bitcast i32 (i8*, i64, i8*, %"__va_list_tag"*)* @"vsnprintf" to void ()*
	%310 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 51
	store void ()* %309, void ()** %310
	%311 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.56", i64 0, i64 0
	%312 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %311, 1
	store {i64, i8*} %312, {i64, i8*}* %tmp.52
	%313 = load {i64, i8*}, {i64, i8*}* %tmp.52
	%314 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 52
	store {i64, i8*} %313, {i64, i8*}* %314
	%315 = bitcast i32 (i32, i8*, %"__va_list_tag"*)* @"vdprintf" to void ()*
	%316 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 52
	store void ()* %315, void ()** %316
	%317 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.57", i64 0, i64 0
	%318 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %317, 1
	store {i64, i8*} %318, {i64, i8*}* %tmp.53
	%319 = load {i64, i8*}, {i64, i8*}* %tmp.53
	%320 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 53
	store {i64, i8*} %319, {i64, i8*}* %320
	%321 = bitcast i32 (i32, i8*, ...)* @"dprintf" to void ()*
	%322 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 53
	store void ()* %321, void ()** %322
	%323 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.58", i64 0, i64 0
	%324 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %323, 1
	store {i64, i8*} %324, {i64, i8*}* %tmp.54
	%325 = load {i64, i8*}, {i64, i8*}* %tmp.54
	%326 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 54
	store {i64, i8*} %325, {i64, i8*}* %326
	%327 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @"fscanf" to void ()*
	%328 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 54
	store void ()* %327, void ()** %328
	%329 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.59", i64 0, i64 0
	%330 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %329, 1
	store {i64, i8*} %330, {i64, i8*}* %tmp.55
	%331 = load {i64, i8*}, {i64, i8*}* %tmp.55
	%332 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 55
	store {i64, i8*} %331, {i64, i8*}* %332
	%333 = bitcast i32 (i8*, ...)* @"scanf" to void ()*
	%334 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 55
	store void ()* %333, void ()** %334
	%335 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.60", i64 0, i64 0
	%336 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %335, 1
	store {i64, i8*} %336, {i64, i8*}* %tmp.56
	%337 = load {i64, i8*}, {i64, i8*}* %tmp.56
	%338 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 56
	store {i64, i8*} %337, {i64, i8*}* %338
	%339 = bitcast i32 (i8*, i8*, ...)* @"sscanf" to void ()*
	%340 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 56
	store void ()* %339, void ()** %340
	%341 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.61", i64 0, i64 0
	%342 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %341, 1
	store {i64, i8*} %342, {i64, i8*}* %tmp.57
	%343 = load {i64, i8*}, {i64, i8*}* %tmp.57
	%344 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 57
	store {i64, i8*} %343, {i64, i8*}* %344
	%345 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)* @"vfscanf" to void ()*
	%346 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 57
	store void ()* %345, void ()** %346
	%347 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.62", i64 0, i64 0
	%348 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %347, 1
	store {i64, i8*} %348, {i64, i8*}* %tmp.58
	%349 = load {i64, i8*}, {i64, i8*}* %tmp.58
	%350 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 58
	store {i64, i8*} %349, {i64, i8*}* %350
	%351 = bitcast i32 (i8*, %"__va_list_tag"*)* @"vscanf" to void ()*
	%352 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 58
	store void ()* %351, void ()** %352
	%353 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.63", i64 0, i64 0
	%354 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %353, 1
	store {i64, i8*} %354, {i64, i8*}* %tmp.59
	%355 = load {i64, i8*}, {i64, i8*}* %tmp.59
	%356 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 59
	store {i64, i8*} %355, {i64, i8*}* %356
	%357 = bitcast i32 (i8*, i8*, %"__va_list_tag"*)* @"vsscanf" to void ()*
	%358 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 59
	store void ()* %357, void ()** %358
	%359 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.64", i64 0, i64 0
	%360 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %359, 1
	store {i64, i8*} %360, {i64, i8*}* %tmp.60
	%361 = load {i64, i8*}, {i64, i8*}* %tmp.60
	%362 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 60
	store {i64, i8*} %361, {i64, i8*}* %362
	%363 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fgetc" to void ()*
	%364 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 60
	store void ()* %363, void ()** %364
	%365 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.65", i64 0, i64 0
	%366 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %365, 1
	store {i64, i8*} %366, {i64, i8*}* %tmp.61
	%367 = load {i64, i8*}, {i64, i8*}* %tmp.61
	%368 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 61
	store {i64, i8*} %367, {i64, i8*}* %368
	%369 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getc" to void ()*
	%370 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 61
	store void ()* %369, void ()** %370
	%371 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.66", i64 0, i64 0
	%372 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %371, 1
	store {i64, i8*} %372, {i64, i8*}* %tmp.62
	%373 = load {i64, i8*}, {i64, i8*}* %tmp.62
	%374 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 62
	store {i64, i8*} %373, {i64, i8*}* %374
	%375 = bitcast i32 ()* @"getchar" to void ()*
	%376 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 62
	store void ()* %375, void ()** %376
	%377 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.67", i64 0, i64 0
	%378 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %377, 1
	store {i64, i8*} %378, {i64, i8*}* %tmp.63
	%379 = load {i64, i8*}, {i64, i8*}* %tmp.63
	%380 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 63
	store {i64, i8*} %379, {i64, i8*}* %380
	%381 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getc_unlocked" to void ()*
	%382 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 63
	store void ()* %381, void ()** %382
	%383 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.68", i64 0, i64 0
	%384 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %383, 1
	store {i64, i8*} %384, {i64, i8*}* %tmp.64
	%385 = load {i64, i8*}, {i64, i8*}* %tmp.64
	%386 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 64
	store {i64, i8*} %385, {i64, i8*}* %386
	%387 = bitcast i32 ()* @"getchar_unlocked" to void ()*
	%388 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 64
	store void ()* %387, void ()** %388
	%389 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.69", i64 0, i64 0
	%390 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %389, 1
	store {i64, i8*} %390, {i64, i8*}* %tmp.65
	%391 = load {i64, i8*}, {i64, i8*}* %tmp.65
	%392 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 65
	store {i64, i8*} %391, {i64, i8*}* %392
	%393 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fgetc_unlocked" to void ()*
	%394 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 65
	store void ()* %393, void ()** %394
	%395 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.70", i64 0, i64 0
	%396 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %395, 1
	store {i64, i8*} %396, {i64, i8*}* %tmp.66
	%397 = load {i64, i8*}, {i64, i8*}* %tmp.66
	%398 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 66
	store {i64, i8*} %397, {i64, i8*}* %398
	%399 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"fputc" to void ()*
	%400 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 66
	store void ()* %399, void ()** %400
	%401 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.71", i64 0, i64 0
	%402 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %401, 1
	store {i64, i8*} %402, {i64, i8*}* %tmp.67
	%403 = load {i64, i8*}, {i64, i8*}* %tmp.67
	%404 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 67
	store {i64, i8*} %403, {i64, i8*}* %404
	%405 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putc" to void ()*
	%406 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 67
	store void ()* %405, void ()** %406
	%407 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.72", i64 0, i64 0
	%408 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %407, 1
	store {i64, i8*} %408, {i64, i8*}* %tmp.68
	%409 = load {i64, i8*}, {i64, i8*}* %tmp.68
	%410 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 68
	store {i64, i8*} %409, {i64, i8*}* %410
	%411 = bitcast i32 (i32)* @"putchar" to void ()*
	%412 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 68
	store void ()* %411, void ()** %412
	%413 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.73", i64 0, i64 0
	%414 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %413, 1
	store {i64, i8*} %414, {i64, i8*}* %tmp.69
	%415 = load {i64, i8*}, {i64, i8*}* %tmp.69
	%416 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 69
	store {i64, i8*} %415, {i64, i8*}* %416
	%417 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"fputc_unlocked" to void ()*
	%418 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 69
	store void ()* %417, void ()** %418
	%419 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.74", i64 0, i64 0
	%420 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %419, 1
	store {i64, i8*} %420, {i64, i8*}* %tmp.70
	%421 = load {i64, i8*}, {i64, i8*}* %tmp.70
	%422 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 70
	store {i64, i8*} %421, {i64, i8*}* %422
	%423 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putc_unlocked" to void ()*
	%424 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 70
	store void ()* %423, void ()** %424
	%425 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.75", i64 0, i64 0
	%426 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %425, 1
	store {i64, i8*} %426, {i64, i8*}* %tmp.71
	%427 = load {i64, i8*}, {i64, i8*}* %tmp.71
	%428 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 71
	store {i64, i8*} %427, {i64, i8*}* %428
	%429 = bitcast i32 (i32)* @"putchar_unlocked" to void ()*
	%430 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 71
	store void ()* %429, void ()** %430
	%431 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.76", i64 0, i64 0
	%432 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %431, 1
	store {i64, i8*} %432, {i64, i8*}* %tmp.72
	%433 = load {i64, i8*}, {i64, i8*}* %tmp.72
	%434 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 72
	store {i64, i8*} %433, {i64, i8*}* %434
	%435 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getw" to void ()*
	%436 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 72
	store void ()* %435, void ()** %436
	%437 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.77", i64 0, i64 0
	%438 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %437, 1
	store {i64, i8*} %438, {i64, i8*}* %tmp.73
	%439 = load {i64, i8*}, {i64, i8*}* %tmp.73
	%440 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 73
	store {i64, i8*} %439, {i64, i8*}* %440
	%441 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putw" to void ()*
	%442 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 73
	store void ()* %441, void ()** %442
	%443 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.78", i64 0, i64 0
	%444 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %443, 1
	store {i64, i8*} %444, {i64, i8*}* %tmp.74
	%445 = load {i64, i8*}, {i64, i8*}* %tmp.74
	%446 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 74
	store {i64, i8*} %445, {i64, i8*}* %446
	%447 = bitcast i8* (i8*, i32, %"cstd::s__IO_FILE"*)* @"fgets" to void ()*
	%448 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 74
	store void ()* %447, void ()** %448
	%449 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.79", i64 0, i64 0
	%450 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %449, 1
	store {i64, i8*} %450, {i64, i8*}* %tmp.75
	%451 = load {i64, i8*}, {i64, i8*}* %tmp.75
	%452 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 75
	store {i64, i8*} %451, {i64, i8*}* %452
	%453 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @"__getdelim" to void ()*
	%454 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 75
	store void ()* %453, void ()** %454
	%455 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.80", i64 0, i64 0
	%456 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %455, 1
	store {i64, i8*} %456, {i64, i8*}* %tmp.76
	%457 = load {i64, i8*}, {i64, i8*}* %tmp.76
	%458 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 76
	store {i64, i8*} %457, {i64, i8*}* %458
	%459 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @"getdelim" to void ()*
	%460 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 76
	store void ()* %459, void ()** %460
	%461 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.81", i64 0, i64 0
	%462 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %461, 1
	store {i64, i8*} %462, {i64, i8*}* %tmp.77
	%463 = load {i64, i8*}, {i64, i8*}* %tmp.77
	%464 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 77
	store {i64, i8*} %463, {i64, i8*}* %464
	%465 = bitcast i64 (i8**, i64*, %"cstd::s__IO_FILE"*)* @"getline" to void ()*
	%466 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 77
	store void ()* %465, void ()** %466
	%467 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.82", i64 0, i64 0
	%468 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %467, 1
	store {i64, i8*} %468, {i64, i8*}* %tmp.78
	%469 = load {i64, i8*}, {i64, i8*}* %tmp.78
	%470 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 78
	store {i64, i8*} %469, {i64, i8*}* %470
	%471 = bitcast i32 (i8*, %"cstd::s__IO_FILE"*)* @"fputs" to void ()*
	%472 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 78
	store void ()* %471, void ()** %472
	%473 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.83", i64 0, i64 0
	%474 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %473, 1
	store {i64, i8*} %474, {i64, i8*}* %tmp.79
	%475 = load {i64, i8*}, {i64, i8*}* %tmp.79
	%476 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 79
	store {i64, i8*} %475, {i64, i8*}* %476
	%477 = bitcast i32 (i8*)* @"puts" to void ()*
	%478 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 79
	store void ()* %477, void ()** %478
	%479 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.84", i64 0, i64 0
	%480 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %479, 1
	store {i64, i8*} %480, {i64, i8*}* %tmp.80
	%481 = load {i64, i8*}, {i64, i8*}* %tmp.80
	%482 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 80
	store {i64, i8*} %481, {i64, i8*}* %482
	%483 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"ungetc" to void ()*
	%484 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 80
	store void ()* %483, void ()** %484
	%485 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.85", i64 0, i64 0
	%486 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %485, 1
	store {i64, i8*} %486, {i64, i8*}* %tmp.81
	%487 = load {i64, i8*}, {i64, i8*}* %tmp.81
	%488 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 81
	store {i64, i8*} %487, {i64, i8*}* %488
	%489 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fread" to void ()*
	%490 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 81
	store void ()* %489, void ()** %490
	%491 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.86", i64 0, i64 0
	%492 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %491, 1
	store {i64, i8*} %492, {i64, i8*}* %tmp.82
	%493 = load {i64, i8*}, {i64, i8*}* %tmp.82
	%494 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 82
	store {i64, i8*} %493, {i64, i8*}* %494
	%495 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fwrite" to void ()*
	%496 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 82
	store void ()* %495, void ()** %496
	%497 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.87", i64 0, i64 0
	%498 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %497, 1
	store {i64, i8*} %498, {i64, i8*}* %tmp.83
	%499 = load {i64, i8*}, {i64, i8*}* %tmp.83
	%500 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 83
	store {i64, i8*} %499, {i64, i8*}* %500
	%501 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fread_unlocked" to void ()*
	%502 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 83
	store void ()* %501, void ()** %502
	%503 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.88", i64 0, i64 0
	%504 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %503, 1
	store {i64, i8*} %504, {i64, i8*}* %tmp.84
	%505 = load {i64, i8*}, {i64, i8*}* %tmp.84
	%506 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 84
	store {i64, i8*} %505, {i64, i8*}* %506
	%507 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fwrite_unlocked" to void ()*
	%508 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 84
	store void ()* %507, void ()** %508
	%509 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.89", i64 0, i64 0
	%510 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %509, 1
	store {i64, i8*} %510, {i64, i8*}* %tmp.85
	%511 = load {i64, i8*}, {i64, i8*}* %tmp.85
	%512 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 85
	store {i64, i8*} %511, {i64, i8*}* %512
	%513 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @"fseek" to void ()*
	%514 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 85
	store void ()* %513, void ()** %514
	%515 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.90", i64 0, i64 0
	%516 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %515, 1
	store {i64, i8*} %516, {i64, i8*}* %tmp.86
	%517 = load {i64, i8*}, {i64, i8*}* %tmp.86
	%518 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 86
	store {i64, i8*} %517, {i64, i8*}* %518
	%519 = bitcast i64 (%"cstd::s__IO_FILE"*)* @"ftell" to void ()*
	%520 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 86
	store void ()* %519, void ()** %520
	%521 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.91", i64 0, i64 0
	%522 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %521, 1
	store {i64, i8*} %522, {i64, i8*}* %tmp.87
	%523 = load {i64, i8*}, {i64, i8*}* %tmp.87
	%524 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 87
	store {i64, i8*} %523, {i64, i8*}* %524
	%525 = bitcast void (%"cstd::s__IO_FILE"*)* @"rewind" to void ()*
	%526 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 87
	store void ()* %525, void ()** %526
	%527 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.92", i64 0, i64 0
	%528 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %527, 1
	store {i64, i8*} %528, {i64, i8*}* %tmp.88
	%529 = load {i64, i8*}, {i64, i8*}* %tmp.88
	%530 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 88
	store {i64, i8*} %529, {i64, i8*}* %530
	%531 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @"fseeko" to void ()*
	%532 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 88
	store void ()* %531, void ()** %532
	%533 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.93", i64 0, i64 0
	%534 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %533, 1
	store {i64, i8*} %534, {i64, i8*}* %tmp.89
	%535 = load {i64, i8*}, {i64, i8*}* %tmp.89
	%536 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 89
	store {i64, i8*} %535, {i64, i8*}* %536
	%537 = bitcast i64 (%"cstd::s__IO_FILE"*)* @"ftello" to void ()*
	%538 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 89
	store void ()* %537, void ()** %538
	%539 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.94", i64 0, i64 0
	%540 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %539, 1
	store {i64, i8*} %540, {i64, i8*}* %tmp.90
	%541 = load {i64, i8*}, {i64, i8*}* %tmp.90
	%542 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 90
	store {i64, i8*} %541, {i64, i8*}* %542
	%543 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @"fgetpos" to void ()*
	%544 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 90
	store void ()* %543, void ()** %544
	%545 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.95", i64 0, i64 0
	%546 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %545, 1
	store {i64, i8*} %546, {i64, i8*}* %tmp.91
	%547 = load {i64, i8*}, {i64, i8*}* %tmp.91
	%548 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 91
	store {i64, i8*} %547, {i64, i8*}* %548
	%549 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @"fsetpos" to void ()*
	%550 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 91
	store void ()* %549, void ()** %550
	%551 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.96", i64 0, i64 0
	%552 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %551, 1
	store {i64, i8*} %552, {i64, i8*}* %tmp.92
	%553 = load {i64, i8*}, {i64, i8*}* %tmp.92
	%554 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 92
	store {i64, i8*} %553, {i64, i8*}* %554
	%555 = bitcast void (%"cstd::s__IO_FILE"*)* @"clearerr" to void ()*
	%556 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 92
	store void ()* %555, void ()** %556
	%557 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.97", i64 0, i64 0
	%558 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %557, 1
	store {i64, i8*} %558, {i64, i8*}* %tmp.93
	%559 = load {i64, i8*}, {i64, i8*}* %tmp.93
	%560 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 93
	store {i64, i8*} %559, {i64, i8*}* %560
	%561 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"feof" to void ()*
	%562 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 93
	store void ()* %561, void ()** %562
	%563 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.98", i64 0, i64 0
	%564 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %563, 1
	store {i64, i8*} %564, {i64, i8*}* %tmp.94
	%565 = load {i64, i8*}, {i64, i8*}* %tmp.94
	%566 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 94
	store {i64, i8*} %565, {i64, i8*}* %566
	%567 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ferror" to void ()*
	%568 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 94
	store void ()* %567, void ()** %568
	%569 = getelementptr [18 x i8], [18 x i8]* @"cstd::str.99", i64 0, i64 0
	%570 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %569, 1
	store {i64, i8*} %570, {i64, i8*}* %tmp.95
	%571 = load {i64, i8*}, {i64, i8*}* %tmp.95
	%572 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 95
	store {i64, i8*} %571, {i64, i8*}* %572
	%573 = bitcast void (%"cstd::s__IO_FILE"*)* @"clearerr_unlocked" to void ()*
	%574 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 95
	store void ()* %573, void ()** %574
	%575 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.100", i64 0, i64 0
	%576 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %575, 1
	store {i64, i8*} %576, {i64, i8*}* %tmp.96
	%577 = load {i64, i8*}, {i64, i8*}* %tmp.96
	%578 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 96
	store {i64, i8*} %577, {i64, i8*}* %578
	%579 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"feof_unlocked" to void ()*
	%580 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 96
	store void ()* %579, void ()** %580
	%581 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.101", i64 0, i64 0
	%582 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %581, 1
	store {i64, i8*} %582, {i64, i8*}* %tmp.97
	%583 = load {i64, i8*}, {i64, i8*}* %tmp.97
	%584 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 97
	store {i64, i8*} %583, {i64, i8*}* %584
	%585 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ferror_unlocked" to void ()*
	%586 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 97
	store void ()* %585, void ()** %586
	%587 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.102", i64 0, i64 0
	%588 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %587, 1
	store {i64, i8*} %588, {i64, i8*}* %tmp.98
	%589 = load {i64, i8*}, {i64, i8*}* %tmp.98
	%590 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 98
	store {i64, i8*} %589, {i64, i8*}* %590
	%591 = bitcast void (i8*)* @"perror" to void ()*
	%592 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 98
	store void ()* %591, void ()** %592
	%593 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.103", i64 0, i64 0
	%594 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %593, 1
	store {i64, i8*} %594, {i64, i8*}* %tmp.99
	%595 = load {i64, i8*}, {i64, i8*}* %tmp.99
	%596 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 99
	store {i64, i8*} %595, {i64, i8*}* %596
	%597 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fileno" to void ()*
	%598 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 99
	store void ()* %597, void ()** %598
	%599 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.104", i64 0, i64 0
	%600 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %599, 1
	store {i64, i8*} %600, {i64, i8*}* %tmp.100
	%601 = load {i64, i8*}, {i64, i8*}* %tmp.100
	%602 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 100
	store {i64, i8*} %601, {i64, i8*}* %602
	%603 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fileno_unlocked" to void ()*
	%604 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 100
	store void ()* %603, void ()** %604
	%605 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.105", i64 0, i64 0
	%606 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %605, 1
	store {i64, i8*} %606, {i64, i8*}* %tmp.101
	%607 = load {i64, i8*}, {i64, i8*}* %tmp.101
	%608 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 101
	store {i64, i8*} %607, {i64, i8*}* %608
	%609 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @"popen" to void ()*
	%610 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 101
	store void ()* %609, void ()** %610
	%611 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.106", i64 0, i64 0
	%612 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %611, 1
	store {i64, i8*} %612, {i64, i8*}* %tmp.102
	%613 = load {i64, i8*}, {i64, i8*}* %tmp.102
	%614 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 102
	store {i64, i8*} %613, {i64, i8*}* %614
	%615 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"pclose" to void ()*
	%616 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 102
	store void ()* %615, void ()** %616
	%617 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.107", i64 0, i64 0
	%618 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %617, 1
	store {i64, i8*} %618, {i64, i8*}* %tmp.103
	%619 = load {i64, i8*}, {i64, i8*}* %tmp.103
	%620 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 103
	store {i64, i8*} %619, {i64, i8*}* %620
	%621 = bitcast i8* (i8*)* @"ctermid" to void ()*
	%622 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 103
	store void ()* %621, void ()** %622
	%623 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.108", i64 0, i64 0
	%624 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %623, 1
	store {i64, i8*} %624, {i64, i8*}* %tmp.104
	%625 = load {i64, i8*}, {i64, i8*}* %tmp.104
	%626 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 104
	store {i64, i8*} %625, {i64, i8*}* %626
	%627 = bitcast void (%"cstd::s__IO_FILE"*)* @"flockfile" to void ()*
	%628 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 104
	store void ()* %627, void ()** %628
	%629 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.109", i64 0, i64 0
	%630 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %629, 1
	store {i64, i8*} %630, {i64, i8*}* %tmp.105
	%631 = load {i64, i8*}, {i64, i8*}* %tmp.105
	%632 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 105
	store {i64, i8*} %631, {i64, i8*}* %632
	%633 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ftrylockfile" to void ()*
	%634 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 105
	store void ()* %633, void ()** %634
	%635 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.110", i64 0, i64 0
	%636 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %635, 1
	store {i64, i8*} %636, {i64, i8*}* %tmp.106
	%637 = load {i64, i8*}, {i64, i8*}* %tmp.106
	%638 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 106
	store {i64, i8*} %637, {i64, i8*}* %638
	%639 = bitcast void (%"cstd::s__IO_FILE"*)* @"funlockfile" to void ()*
	%640 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 106
	store void ()* %639, void ()** %640
	%641 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.111", i64 0, i64 0
	%642 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %641, 1
	store {i64, i8*} %642, {i64, i8*}* %tmp.107
	%643 = load {i64, i8*}, {i64, i8*}* %tmp.107
	%644 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 107
	store {i64, i8*} %643, {i64, i8*}* %644
	%645 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"__uflow" to void ()*
	%646 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 107
	store void ()* %645, void ()** %646
	%647 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.112", i64 0, i64 0
	%648 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %647, 1
	store {i64, i8*} %648, {i64, i8*}* %tmp.108
	%649 = load {i64, i8*}, {i64, i8*}* %tmp.108
	%650 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 108
	store {i64, i8*} %649, {i64, i8*}* %650
	%651 = bitcast i32 (%"cstd::s__IO_FILE"*, i32)* @"__overflow" to void ()*
	%652 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 108
	store void ()* %651, void ()** %652
	%653 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.113", i64 0, i64 0
	%654 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %653, 1
	store {i64, i8*} %654, {i64, i8*}* %tmp.109
	%655 = load {i64, i8*}, {i64, i8*}* %tmp.109
	%656 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 109
	store {i64, i8*} %655, {i64, i8*}* %656
	%657 = bitcast i8* (i8*, i8*, i64)* @"memcpy" to void ()*
	%658 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 109
	store void ()* %657, void ()** %658
	%659 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.114", i64 0, i64 0
	%660 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %659, 1
	store {i64, i8*} %660, {i64, i8*}* %tmp.110
	%661 = load {i64, i8*}, {i64, i8*}* %tmp.110
	%662 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 110
	store {i64, i8*} %661, {i64, i8*}* %662
	%663 = bitcast i8* (i8*, i8*, i64)* @"memmove" to void ()*
	%664 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 110
	store void ()* %663, void ()** %664
	%665 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.115", i64 0, i64 0
	%666 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %665, 1
	store {i64, i8*} %666, {i64, i8*}* %tmp.111
	%667 = load {i64, i8*}, {i64, i8*}* %tmp.111
	%668 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 111
	store {i64, i8*} %667, {i64, i8*}* %668
	%669 = bitcast i8* (i8*, i8*, i32, i64)* @"memccpy" to void ()*
	%670 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 111
	store void ()* %669, void ()** %670
	%671 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.116", i64 0, i64 0
	%672 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %671, 1
	store {i64, i8*} %672, {i64, i8*}* %tmp.112
	%673 = load {i64, i8*}, {i64, i8*}* %tmp.112
	%674 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 112
	store {i64, i8*} %673, {i64, i8*}* %674
	%675 = bitcast i8* (i8*, i32, i64)* @"memset" to void ()*
	%676 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 112
	store void ()* %675, void ()** %676
	%677 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.117", i64 0, i64 0
	%678 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %677, 1
	store {i64, i8*} %678, {i64, i8*}* %tmp.113
	%679 = load {i64, i8*}, {i64, i8*}* %tmp.113
	%680 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 113
	store {i64, i8*} %679, {i64, i8*}* %680
	%681 = bitcast i32 (i8*, i8*, i64)* @"memcmp" to void ()*
	%682 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 113
	store void ()* %681, void ()** %682
	%683 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.118", i64 0, i64 0
	%684 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %683, 1
	store {i64, i8*} %684, {i64, i8*}* %tmp.114
	%685 = load {i64, i8*}, {i64, i8*}* %tmp.114
	%686 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 114
	store {i64, i8*} %685, {i64, i8*}* %686
	%687 = bitcast i8* (i8*, i32, i64)* @"memchr" to void ()*
	%688 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 114
	store void ()* %687, void ()** %688
	%689 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.119", i64 0, i64 0
	%690 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %689, 1
	store {i64, i8*} %690, {i64, i8*}* %tmp.115
	%691 = load {i64, i8*}, {i64, i8*}* %tmp.115
	%692 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 115
	store {i64, i8*} %691, {i64, i8*}* %692
	%693 = bitcast i8* (i8*, i8*)* @"strcpy" to void ()*
	%694 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 115
	store void ()* %693, void ()** %694
	%695 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.120", i64 0, i64 0
	%696 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %695, 1
	store {i64, i8*} %696, {i64, i8*}* %tmp.116
	%697 = load {i64, i8*}, {i64, i8*}* %tmp.116
	%698 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 116
	store {i64, i8*} %697, {i64, i8*}* %698
	%699 = bitcast i8* (i8*, i8*, i64)* @"strncpy" to void ()*
	%700 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 116
	store void ()* %699, void ()** %700
	%701 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.121", i64 0, i64 0
	%702 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %701, 1
	store {i64, i8*} %702, {i64, i8*}* %tmp.117
	%703 = load {i64, i8*}, {i64, i8*}* %tmp.117
	%704 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 117
	store {i64, i8*} %703, {i64, i8*}* %704
	%705 = bitcast i8* (i8*, i8*)* @"strcat" to void ()*
	%706 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 117
	store void ()* %705, void ()** %706
	%707 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.122", i64 0, i64 0
	%708 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %707, 1
	store {i64, i8*} %708, {i64, i8*}* %tmp.118
	%709 = load {i64, i8*}, {i64, i8*}* %tmp.118
	%710 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 118
	store {i64, i8*} %709, {i64, i8*}* %710
	%711 = bitcast i8* (i8*, i8*, i64)* @"strncat" to void ()*
	%712 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 118
	store void ()* %711, void ()** %712
	%713 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.123", i64 0, i64 0
	%714 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %713, 1
	store {i64, i8*} %714, {i64, i8*}* %tmp.119
	%715 = load {i64, i8*}, {i64, i8*}* %tmp.119
	%716 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 119
	store {i64, i8*} %715, {i64, i8*}* %716
	%717 = bitcast i32 (i8*, i8*)* @"strcmp" to void ()*
	%718 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 119
	store void ()* %717, void ()** %718
	%719 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.124", i64 0, i64 0
	%720 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %719, 1
	store {i64, i8*} %720, {i64, i8*}* %tmp.120
	%721 = load {i64, i8*}, {i64, i8*}* %tmp.120
	%722 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 120
	store {i64, i8*} %721, {i64, i8*}* %722
	%723 = bitcast i32 (i8*, i8*, i64)* @"strncmp" to void ()*
	%724 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 120
	store void ()* %723, void ()** %724
	%725 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.125", i64 0, i64 0
	%726 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %725, 1
	store {i64, i8*} %726, {i64, i8*}* %tmp.121
	%727 = load {i64, i8*}, {i64, i8*}* %tmp.121
	%728 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 121
	store {i64, i8*} %727, {i64, i8*}* %728
	%729 = bitcast i32 (i8*, i8*)* @"strcoll" to void ()*
	%730 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 121
	store void ()* %729, void ()** %730
	%731 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.126", i64 0, i64 0
	%732 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %731, 1
	store {i64, i8*} %732, {i64, i8*}* %tmp.122
	%733 = load {i64, i8*}, {i64, i8*}* %tmp.122
	%734 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 122
	store {i64, i8*} %733, {i64, i8*}* %734
	%735 = bitcast i64 (i8*, i8*, i64)* @"strxfrm" to void ()*
	%736 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 122
	store void ()* %735, void ()** %736
	%737 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.127", i64 0, i64 0
	%738 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %737, 1
	store {i64, i8*} %738, {i64, i8*}* %tmp.123
	%739 = load {i64, i8*}, {i64, i8*}* %tmp.123
	%740 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 123
	store {i64, i8*} %739, {i64, i8*}* %740
	%741 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @"strcoll_l" to void ()*
	%742 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 123
	store void ()* %741, void ()** %742
	%743 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.128", i64 0, i64 0
	%744 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %743, 1
	store {i64, i8*} %744, {i64, i8*}* %tmp.124
	%745 = load {i64, i8*}, {i64, i8*}* %tmp.124
	%746 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 124
	store {i64, i8*} %745, {i64, i8*}* %746
	%747 = bitcast i64 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @"strxfrm_l" to void ()*
	%748 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 124
	store void ()* %747, void ()** %748
	%749 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.129", i64 0, i64 0
	%750 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %749, 1
	store {i64, i8*} %750, {i64, i8*}* %tmp.125
	%751 = load {i64, i8*}, {i64, i8*}* %tmp.125
	%752 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 125
	store {i64, i8*} %751, {i64, i8*}* %752
	%753 = bitcast i8* (i8*)* @"strdup" to void ()*
	%754 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 125
	store void ()* %753, void ()** %754
	%755 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.130", i64 0, i64 0
	%756 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %755, 1
	store {i64, i8*} %756, {i64, i8*}* %tmp.126
	%757 = load {i64, i8*}, {i64, i8*}* %tmp.126
	%758 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 126
	store {i64, i8*} %757, {i64, i8*}* %758
	%759 = bitcast i8* (i8*, i64)* @"strndup" to void ()*
	%760 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 126
	store void ()* %759, void ()** %760
	%761 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.131", i64 0, i64 0
	%762 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %761, 1
	store {i64, i8*} %762, {i64, i8*}* %tmp.127
	%763 = load {i64, i8*}, {i64, i8*}* %tmp.127
	%764 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 127
	store {i64, i8*} %763, {i64, i8*}* %764
	%765 = bitcast i8* (i8*, i32)* @"strchr" to void ()*
	%766 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 127
	store void ()* %765, void ()** %766
	%767 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.132", i64 0, i64 0
	%768 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %767, 1
	store {i64, i8*} %768, {i64, i8*}* %tmp.128
	%769 = load {i64, i8*}, {i64, i8*}* %tmp.128
	%770 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 128
	store {i64, i8*} %769, {i64, i8*}* %770
	%771 = bitcast i8* (i8*, i32)* @"strrchr" to void ()*
	%772 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 128
	store void ()* %771, void ()** %772
	%773 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.133", i64 0, i64 0
	%774 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %773, 1
	store {i64, i8*} %774, {i64, i8*}* %tmp.129
	%775 = load {i64, i8*}, {i64, i8*}* %tmp.129
	%776 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 129
	store {i64, i8*} %775, {i64, i8*}* %776
	%777 = bitcast i64 (i8*, i8*)* @"strcspn" to void ()*
	%778 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 129
	store void ()* %777, void ()** %778
	%779 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.134", i64 0, i64 0
	%780 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %779, 1
	store {i64, i8*} %780, {i64, i8*}* %tmp.130
	%781 = load {i64, i8*}, {i64, i8*}* %tmp.130
	%782 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 130
	store {i64, i8*} %781, {i64, i8*}* %782
	%783 = bitcast i64 (i8*, i8*)* @"strspn" to void ()*
	%784 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 130
	store void ()* %783, void ()** %784
	%785 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.135", i64 0, i64 0
	%786 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %785, 1
	store {i64, i8*} %786, {i64, i8*}* %tmp.131
	%787 = load {i64, i8*}, {i64, i8*}* %tmp.131
	%788 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 131
	store {i64, i8*} %787, {i64, i8*}* %788
	%789 = bitcast i8* (i8*, i8*)* @"strpbrk" to void ()*
	%790 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 131
	store void ()* %789, void ()** %790
	%791 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.136", i64 0, i64 0
	%792 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %791, 1
	store {i64, i8*} %792, {i64, i8*}* %tmp.132
	%793 = load {i64, i8*}, {i64, i8*}* %tmp.132
	%794 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 132
	store {i64, i8*} %793, {i64, i8*}* %794
	%795 = bitcast i8* (i8*, i8*)* @"strstr" to void ()*
	%796 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 132
	store void ()* %795, void ()** %796
	%797 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.137", i64 0, i64 0
	%798 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %797, 1
	store {i64, i8*} %798, {i64, i8*}* %tmp.133
	%799 = load {i64, i8*}, {i64, i8*}* %tmp.133
	%800 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 133
	store {i64, i8*} %799, {i64, i8*}* %800
	%801 = bitcast i8* (i8*, i8*)* @"strtok" to void ()*
	%802 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 133
	store void ()* %801, void ()** %802
	%803 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.138", i64 0, i64 0
	%804 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %803, 1
	store {i64, i8*} %804, {i64, i8*}* %tmp.134
	%805 = load {i64, i8*}, {i64, i8*}* %tmp.134
	%806 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 134
	store {i64, i8*} %805, {i64, i8*}* %806
	%807 = bitcast i8* (i8*, i8*, i8**)* @"__strtok_r" to void ()*
	%808 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 134
	store void ()* %807, void ()** %808
	%809 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.139", i64 0, i64 0
	%810 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %809, 1
	store {i64, i8*} %810, {i64, i8*}* %tmp.135
	%811 = load {i64, i8*}, {i64, i8*}* %tmp.135
	%812 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 135
	store {i64, i8*} %811, {i64, i8*}* %812
	%813 = bitcast i8* (i8*, i8*, i8**)* @"strtok_r" to void ()*
	%814 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 135
	store void ()* %813, void ()** %814
	%815 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.140", i64 0, i64 0
	%816 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %815, 1
	store {i64, i8*} %816, {i64, i8*}* %tmp.136
	%817 = load {i64, i8*}, {i64, i8*}* %tmp.136
	%818 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 136
	store {i64, i8*} %817, {i64, i8*}* %818
	%819 = bitcast i64 (i8*)* @"strlen" to void ()*
	%820 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 136
	store void ()* %819, void ()** %820
	%821 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.141", i64 0, i64 0
	%822 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %821, 1
	store {i64, i8*} %822, {i64, i8*}* %tmp.137
	%823 = load {i64, i8*}, {i64, i8*}* %tmp.137
	%824 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 137
	store {i64, i8*} %823, {i64, i8*}* %824
	%825 = bitcast i64 (i8*, i64)* @"strnlen" to void ()*
	%826 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 137
	store void ()* %825, void ()** %826
	%827 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.142", i64 0, i64 0
	%828 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %827, 1
	store {i64, i8*} %828, {i64, i8*}* %tmp.138
	%829 = load {i64, i8*}, {i64, i8*}* %tmp.138
	%830 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 138
	store {i64, i8*} %829, {i64, i8*}* %830
	%831 = bitcast i8* (i32)* @"strerror" to void ()*
	%832 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 138
	store void ()* %831, void ()** %832
	%833 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.143", i64 0, i64 0
	%834 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %833, 1
	store {i64, i8*} %834, {i64, i8*}* %tmp.139
	%835 = load {i64, i8*}, {i64, i8*}* %tmp.139
	%836 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 139
	store {i64, i8*} %835, {i64, i8*}* %836
	%837 = bitcast i32 (i32, i8*, i64)* @"strerror_r" to void ()*
	%838 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 139
	store void ()* %837, void ()** %838
	%839 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.144", i64 0, i64 0
	%840 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %839, 1
	store {i64, i8*} %840, {i64, i8*}* %tmp.140
	%841 = load {i64, i8*}, {i64, i8*}* %tmp.140
	%842 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 140
	store {i64, i8*} %841, {i64, i8*}* %842
	%843 = bitcast i8* (i32, %"cstd::s___locale_struct"*)* @"strerror_l" to void ()*
	%844 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 140
	store void ()* %843, void ()** %844
	%845 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.145", i64 0, i64 0
	%846 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %845, 1
	store {i64, i8*} %846, {i64, i8*}* %tmp.141
	%847 = load {i64, i8*}, {i64, i8*}* %tmp.141
	%848 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 141
	store {i64, i8*} %847, {i64, i8*}* %848
	%849 = bitcast i32 (i8*, i8*, i64)* @"bcmp" to void ()*
	%850 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 141
	store void ()* %849, void ()** %850
	%851 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.146", i64 0, i64 0
	%852 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %851, 1
	store {i64, i8*} %852, {i64, i8*}* %tmp.142
	%853 = load {i64, i8*}, {i64, i8*}* %tmp.142
	%854 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 142
	store {i64, i8*} %853, {i64, i8*}* %854
	%855 = bitcast void (i8*, i8*, i64)* @"bcopy" to void ()*
	%856 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 142
	store void ()* %855, void ()** %856
	%857 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.147", i64 0, i64 0
	%858 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %857, 1
	store {i64, i8*} %858, {i64, i8*}* %tmp.143
	%859 = load {i64, i8*}, {i64, i8*}* %tmp.143
	%860 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 143
	store {i64, i8*} %859, {i64, i8*}* %860
	%861 = bitcast void (i8*, i64)* @"bzero" to void ()*
	%862 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 143
	store void ()* %861, void ()** %862
	%863 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.148", i64 0, i64 0
	%864 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %863, 1
	store {i64, i8*} %864, {i64, i8*}* %tmp.144
	%865 = load {i64, i8*}, {i64, i8*}* %tmp.144
	%866 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 144
	store {i64, i8*} %865, {i64, i8*}* %866
	%867 = bitcast i8* (i8*, i32)* @"index" to void ()*
	%868 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 144
	store void ()* %867, void ()** %868
	%869 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.149", i64 0, i64 0
	%870 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %869, 1
	store {i64, i8*} %870, {i64, i8*}* %tmp.145
	%871 = load {i64, i8*}, {i64, i8*}* %tmp.145
	%872 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 145
	store {i64, i8*} %871, {i64, i8*}* %872
	%873 = bitcast i8* (i8*, i32)* @"rindex" to void ()*
	%874 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 145
	store void ()* %873, void ()** %874
	%875 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.150", i64 0, i64 0
	%876 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %875, 1
	store {i64, i8*} %876, {i64, i8*}* %tmp.146
	%877 = load {i64, i8*}, {i64, i8*}* %tmp.146
	%878 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 146
	store {i64, i8*} %877, {i64, i8*}* %878
	%879 = bitcast i32 (i32)* @"ffs" to void ()*
	%880 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 146
	store void ()* %879, void ()** %880
	%881 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.151", i64 0, i64 0
	%882 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %881, 1
	store {i64, i8*} %882, {i64, i8*}* %tmp.147
	%883 = load {i64, i8*}, {i64, i8*}* %tmp.147
	%884 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 147
	store {i64, i8*} %883, {i64, i8*}* %884
	%885 = bitcast i32 (i64)* @"ffsl" to void ()*
	%886 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 147
	store void ()* %885, void ()** %886
	%887 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.152", i64 0, i64 0
	%888 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %887, 1
	store {i64, i8*} %888, {i64, i8*}* %tmp.148
	%889 = load {i64, i8*}, {i64, i8*}* %tmp.148
	%890 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 148
	store {i64, i8*} %889, {i64, i8*}* %890
	%891 = bitcast i32 (i64)* @"ffsll" to void ()*
	%892 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 148
	store void ()* %891, void ()** %892
	%893 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.153", i64 0, i64 0
	%894 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %893, 1
	store {i64, i8*} %894, {i64, i8*}* %tmp.149
	%895 = load {i64, i8*}, {i64, i8*}* %tmp.149
	%896 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 149
	store {i64, i8*} %895, {i64, i8*}* %896
	%897 = bitcast i32 (i8*, i8*)* @"strcasecmp" to void ()*
	%898 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 149
	store void ()* %897, void ()** %898
	%899 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.154", i64 0, i64 0
	%900 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %899, 1
	store {i64, i8*} %900, {i64, i8*}* %tmp.150
	%901 = load {i64, i8*}, {i64, i8*}* %tmp.150
	%902 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 150
	store {i64, i8*} %901, {i64, i8*}* %902
	%903 = bitcast i32 (i8*, i8*, i64)* @"strncasecmp" to void ()*
	%904 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 150
	store void ()* %903, void ()** %904
	%905 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.155", i64 0, i64 0
	%906 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %905, 1
	store {i64, i8*} %906, {i64, i8*}* %tmp.151
	%907 = load {i64, i8*}, {i64, i8*}* %tmp.151
	%908 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 151
	store {i64, i8*} %907, {i64, i8*}* %908
	%909 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @"strcasecmp_l" to void ()*
	%910 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 151
	store void ()* %909, void ()** %910
	%911 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.156", i64 0, i64 0
	%912 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %911, 1
	store {i64, i8*} %912, {i64, i8*}* %tmp.152
	%913 = load {i64, i8*}, {i64, i8*}* %tmp.152
	%914 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 152
	store {i64, i8*} %913, {i64, i8*}* %914
	%915 = bitcast i32 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @"strncasecmp_l" to void ()*
	%916 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 152
	store void ()* %915, void ()** %916
	%917 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.157", i64 0, i64 0
	%918 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %917, 1
	store {i64, i8*} %918, {i64, i8*}* %tmp.153
	%919 = load {i64, i8*}, {i64, i8*}* %tmp.153
	%920 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 153
	store {i64, i8*} %919, {i64, i8*}* %920
	%921 = bitcast void (i8*, i64)* @"explicit_bzero" to void ()*
	%922 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 153
	store void ()* %921, void ()** %922
	%923 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.158", i64 0, i64 0
	%924 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %923, 1
	store {i64, i8*} %924, {i64, i8*}* %tmp.154
	%925 = load {i64, i8*}, {i64, i8*}* %tmp.154
	%926 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 154
	store {i64, i8*} %925, {i64, i8*}* %926
	%927 = bitcast i8* (i8**, i8*)* @"strsep" to void ()*
	%928 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 154
	store void ()* %927, void ()** %928
	%929 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.159", i64 0, i64 0
	%930 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %929, 1
	store {i64, i8*} %930, {i64, i8*}* %tmp.155
	%931 = load {i64, i8*}, {i64, i8*}* %tmp.155
	%932 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 155
	store {i64, i8*} %931, {i64, i8*}* %932
	%933 = bitcast i8* (i32)* @"strsignal" to void ()*
	%934 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 155
	store void ()* %933, void ()** %934
	%935 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.160", i64 0, i64 0
	%936 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %935, 1
	store {i64, i8*} %936, {i64, i8*}* %tmp.156
	%937 = load {i64, i8*}, {i64, i8*}* %tmp.156
	%938 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 156
	store {i64, i8*} %937, {i64, i8*}* %938
	%939 = bitcast i8* (i8*, i8*)* @"__stpcpy" to void ()*
	%940 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 156
	store void ()* %939, void ()** %940
	%941 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.161", i64 0, i64 0
	%942 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %941, 1
	store {i64, i8*} %942, {i64, i8*}* %tmp.157
	%943 = load {i64, i8*}, {i64, i8*}* %tmp.157
	%944 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 157
	store {i64, i8*} %943, {i64, i8*}* %944
	%945 = bitcast i8* (i8*, i8*)* @"stpcpy" to void ()*
	%946 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 157
	store void ()* %945, void ()** %946
	%947 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.162", i64 0, i64 0
	%948 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %947, 1
	store {i64, i8*} %948, {i64, i8*}* %tmp.158
	%949 = load {i64, i8*}, {i64, i8*}* %tmp.158
	%950 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 158
	store {i64, i8*} %949, {i64, i8*}* %950
	%951 = bitcast i8* (i8*, i8*, i64)* @"__stpncpy" to void ()*
	%952 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 158
	store void ()* %951, void ()** %952
	%953 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.163", i64 0, i64 0
	%954 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %953, 1
	store {i64, i8*} %954, {i64, i8*}* %tmp.159
	%955 = load {i64, i8*}, {i64, i8*}* %tmp.159
	%956 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 159
	store {i64, i8*} %955, {i64, i8*}* %956
	%957 = bitcast i8* (i8*, i8*, i64)* @"stpncpy" to void ()*
	%958 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 159
	store void ()* %957, void ()** %958
	%959 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.164", i64 0, i64 0
	%960 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %959, 1
	store {i64, i8*} %960, {i64, i8*}* %tmp.160
	%961 = load {i64, i8*}, {i64, i8*}* %tmp.160
	%962 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 160
	store {i64, i8*} %961, {i64, i8*}* %962
	%963 = bitcast i64 ()* @"clock" to void ()*
	%964 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 160
	store void ()* %963, void ()** %964
	%965 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.165", i64 0, i64 0
	%966 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %965, 1
	store {i64, i8*} %966, {i64, i8*}* %tmp.161
	%967 = load {i64, i8*}, {i64, i8*}* %tmp.161
	%968 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 161
	store {i64, i8*} %967, {i64, i8*}* %968
	%969 = bitcast i64 (i64*)* @"time" to void ()*
	%970 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 161
	store void ()* %969, void ()** %970
	%971 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.166", i64 0, i64 0
	%972 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %971, 1
	store {i64, i8*} %972, {i64, i8*}* %tmp.162
	%973 = load {i64, i8*}, {i64, i8*}* %tmp.162
	%974 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 162
	store {i64, i8*} %973, {i64, i8*}* %974
	%975 = bitcast double (i64, i64)* @"difftime" to void ()*
	%976 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 162
	store void ()* %975, void ()** %976
	%977 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.167", i64 0, i64 0
	%978 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %977, 1
	store {i64, i8*} %978, {i64, i8*}* %tmp.163
	%979 = load {i64, i8*}, {i64, i8*}* %tmp.163
	%980 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 163
	store {i64, i8*} %979, {i64, i8*}* %980
	%981 = bitcast i64 (%"cstd::s_tm"*)* @"mktime" to void ()*
	%982 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 163
	store void ()* %981, void ()** %982
	%983 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.168", i64 0, i64 0
	%984 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %983, 1
	store {i64, i8*} %984, {i64, i8*}* %tmp.164
	%985 = load {i64, i8*}, {i64, i8*}* %tmp.164
	%986 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 164
	store {i64, i8*} %985, {i64, i8*}* %986
	%987 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*)* @"strftime" to void ()*
	%988 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 164
	store void ()* %987, void ()** %988
	%989 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.169", i64 0, i64 0
	%990 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %989, 1
	store {i64, i8*} %990, {i64, i8*}* %tmp.165
	%991 = load {i64, i8*}, {i64, i8*}* %tmp.165
	%992 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 165
	store {i64, i8*} %991, {i64, i8*}* %992
	%993 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)* @"strftime_l" to void ()*
	%994 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 165
	store void ()* %993, void ()** %994
	%995 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.170", i64 0, i64 0
	%996 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %995, 1
	store {i64, i8*} %996, {i64, i8*}* %tmp.166
	%997 = load {i64, i8*}, {i64, i8*}* %tmp.166
	%998 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 166
	store {i64, i8*} %997, {i64, i8*}* %998
	%999 = bitcast %"cstd::s_tm"* (i64*)* @"gmtime" to void ()*
	%1000 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 166
	store void ()* %999, void ()** %1000
	%1001 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.171", i64 0, i64 0
	%1002 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1001, 1
	store {i64, i8*} %1002, {i64, i8*}* %tmp.167
	%1003 = load {i64, i8*}, {i64, i8*}* %tmp.167
	%1004 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 167
	store {i64, i8*} %1003, {i64, i8*}* %1004
	%1005 = bitcast %"cstd::s_tm"* (i64*)* @"localtime" to void ()*
	%1006 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 167
	store void ()* %1005, void ()** %1006
	%1007 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.172", i64 0, i64 0
	%1008 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1007, 1
	store {i64, i8*} %1008, {i64, i8*}* %tmp.168
	%1009 = load {i64, i8*}, {i64, i8*}* %tmp.168
	%1010 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 168
	store {i64, i8*} %1009, {i64, i8*}* %1010
	%1011 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @"gmtime_r" to void ()*
	%1012 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 168
	store void ()* %1011, void ()** %1012
	%1013 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.173", i64 0, i64 0
	%1014 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1013, 1
	store {i64, i8*} %1014, {i64, i8*}* %tmp.169
	%1015 = load {i64, i8*}, {i64, i8*}* %tmp.169
	%1016 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 169
	store {i64, i8*} %1015, {i64, i8*}* %1016
	%1017 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @"localtime_r" to void ()*
	%1018 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 169
	store void ()* %1017, void ()** %1018
	%1019 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.174", i64 0, i64 0
	%1020 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1019, 1
	store {i64, i8*} %1020, {i64, i8*}* %tmp.170
	%1021 = load {i64, i8*}, {i64, i8*}* %tmp.170
	%1022 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 170
	store {i64, i8*} %1021, {i64, i8*}* %1022
	%1023 = bitcast i8* (%"cstd::s_tm"*)* @"asctime" to void ()*
	%1024 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 170
	store void ()* %1023, void ()** %1024
	%1025 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.175", i64 0, i64 0
	%1026 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1025, 1
	store {i64, i8*} %1026, {i64, i8*}* %tmp.171
	%1027 = load {i64, i8*}, {i64, i8*}* %tmp.171
	%1028 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 171
	store {i64, i8*} %1027, {i64, i8*}* %1028
	%1029 = bitcast i8* (i64*)* @"ctime" to void ()*
	%1030 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 171
	store void ()* %1029, void ()** %1030
	%1031 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.176", i64 0, i64 0
	%1032 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1031, 1
	store {i64, i8*} %1032, {i64, i8*}* %tmp.172
	%1033 = load {i64, i8*}, {i64, i8*}* %tmp.172
	%1034 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 172
	store {i64, i8*} %1033, {i64, i8*}* %1034
	%1035 = bitcast i8* (%"cstd::s_tm"*, i8*)* @"asctime_r" to void ()*
	%1036 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 172
	store void ()* %1035, void ()** %1036
	%1037 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.177", i64 0, i64 0
	%1038 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1037, 1
	store {i64, i8*} %1038, {i64, i8*}* %tmp.173
	%1039 = load {i64, i8*}, {i64, i8*}* %tmp.173
	%1040 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 173
	store {i64, i8*} %1039, {i64, i8*}* %1040
	%1041 = bitcast i8* (i64*, i8*)* @"ctime_r" to void ()*
	%1042 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 173
	store void ()* %1041, void ()** %1042
	%1043 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.178", i64 0, i64 0
	%1044 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1043, 1
	store {i64, i8*} %1044, {i64, i8*}* %tmp.174
	%1045 = load {i64, i8*}, {i64, i8*}* %tmp.174
	%1046 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 174
	store {i64, i8*} %1045, {i64, i8*}* %1046
	%1047 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 174
	store void ()* @"tzset", void ()** %1047
	%1048 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.179", i64 0, i64 0
	%1049 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1048, 1
	store {i64, i8*} %1049, {i64, i8*}* %tmp.175
	%1050 = load {i64, i8*}, {i64, i8*}* %tmp.175
	%1051 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 175
	store {i64, i8*} %1050, {i64, i8*}* %1051
	%1052 = bitcast i64 (%"cstd::s_tm"*)* @"timegm" to void ()*
	%1053 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 175
	store void ()* %1052, void ()** %1053
	%1054 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.180", i64 0, i64 0
	%1055 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1054, 1
	store {i64, i8*} %1055, {i64, i8*}* %tmp.176
	%1056 = load {i64, i8*}, {i64, i8*}* %tmp.176
	%1057 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 176
	store {i64, i8*} %1056, {i64, i8*}* %1057
	%1058 = bitcast i64 (%"cstd::s_tm"*)* @"timelocal" to void ()*
	%1059 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 176
	store void ()* %1058, void ()** %1059
	%1060 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.181", i64 0, i64 0
	%1061 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1060, 1
	store {i64, i8*} %1061, {i64, i8*}* %tmp.177
	%1062 = load {i64, i8*}, {i64, i8*}* %tmp.177
	%1063 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 177
	store {i64, i8*} %1062, {i64, i8*}* %1063
	%1064 = bitcast i32 (i32)* @"dysize" to void ()*
	%1065 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 177
	store void ()* %1064, void ()** %1065
	%1066 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.182", i64 0, i64 0
	%1067 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1066, 1
	store {i64, i8*} %1067, {i64, i8*}* %tmp.178
	%1068 = load {i64, i8*}, {i64, i8*}* %tmp.178
	%1069 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 178
	store {i64, i8*} %1068, {i64, i8*}* %1069
	%1070 = bitcast i32 (%"cstd::s_timespec"*, %"cstd::s_timespec"*)* @"nanosleep" to void ()*
	%1071 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 178
	store void ()* %1070, void ()** %1071
	%1072 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.183", i64 0, i64 0
	%1073 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1072, 1
	store {i64, i8*} %1073, {i64, i8*}* %tmp.179
	%1074 = load {i64, i8*}, {i64, i8*}* %tmp.179
	%1075 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 179
	store {i64, i8*} %1074, {i64, i8*}* %1075
	%1076 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_getres" to void ()*
	%1077 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 179
	store void ()* %1076, void ()** %1077
	%1078 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.184", i64 0, i64 0
	%1079 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1078, 1
	store {i64, i8*} %1079, {i64, i8*}* %tmp.180
	%1080 = load {i64, i8*}, {i64, i8*}* %tmp.180
	%1081 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 180
	store {i64, i8*} %1080, {i64, i8*}* %1081
	%1082 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_gettime" to void ()*
	%1083 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 180
	store void ()* %1082, void ()** %1083
	%1084 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.185", i64 0, i64 0
	%1085 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1084, 1
	store {i64, i8*} %1085, {i64, i8*}* %tmp.181
	%1086 = load {i64, i8*}, {i64, i8*}* %tmp.181
	%1087 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 181
	store {i64, i8*} %1086, {i64, i8*}* %1087
	%1088 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_settime" to void ()*
	%1089 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 181
	store void ()* %1088, void ()** %1089
	%1090 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.186", i64 0, i64 0
	%1091 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %1090, 1
	store {i64, i8*} %1091, {i64, i8*}* %tmp.182
	%1092 = load {i64, i8*}, {i64, i8*}* %tmp.182
	%1093 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 182
	store {i64, i8*} %1092, {i64, i8*}* %1093
	%1094 = bitcast i32 (i32, i32, %"cstd::s_timespec"*, %"cstd::s_timespec"*)* @"clock_nanosleep" to void ()*
	%1095 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 182
	store void ()* %1094, void ()** %1095
	%1096 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.187", i64 0, i64 0
	%1097 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %1096, 1
	store {i64, i8*} %1097, {i64, i8*}* %tmp.183
	%1098 = load {i64, i8*}, {i64, i8*}* %tmp.183
	%1099 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 183
	store {i64, i8*} %1098, {i64, i8*}* %1099
	%1100 = bitcast i32 (i32, i32*)* @"clock_getcpuclockid" to void ()*
	%1101 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 183
	store void ()* %1100, void ()** %1101
	%1102 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.188", i64 0, i64 0
	%1103 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1102, 1
	store {i64, i8*} %1103, {i64, i8*}* %tmp.184
	%1104 = load {i64, i8*}, {i64, i8*}* %tmp.184
	%1105 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 184
	store {i64, i8*} %1104, {i64, i8*}* %1105
	%1106 = bitcast i32 (i32, %"cstd::sigevent_t"*, i8**)* @"timer_create" to void ()*
	%1107 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 184
	store void ()* %1106, void ()** %1107
	%1108 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.189", i64 0, i64 0
	%1109 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1108, 1
	store {i64, i8*} %1109, {i64, i8*}* %tmp.185
	%1110 = load {i64, i8*}, {i64, i8*}* %tmp.185
	%1111 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 185
	store {i64, i8*} %1110, {i64, i8*}* %1111
	%1112 = bitcast i32 (i8*)* @"timer_delete" to void ()*
	%1113 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 185
	store void ()* %1112, void ()** %1113
	%1114 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.190", i64 0, i64 0
	%1115 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1114, 1
	store {i64, i8*} %1115, {i64, i8*}* %tmp.186
	%1116 = load {i64, i8*}, {i64, i8*}* %tmp.186
	%1117 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 186
	store {i64, i8*} %1116, {i64, i8*}* %1117
	%1118 = bitcast i32 (i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)* @"timer_settime" to void ()*
	%1119 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 186
	store void ()* %1118, void ()** %1119
	%1120 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.191", i64 0, i64 0
	%1121 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1120, 1
	store {i64, i8*} %1121, {i64, i8*}* %tmp.187
	%1122 = load {i64, i8*}, {i64, i8*}* %tmp.187
	%1123 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 187
	store {i64, i8*} %1122, {i64, i8*}* %1123
	%1124 = bitcast i32 (i8*, %"cstd::s_itimerspec"*)* @"timer_gettime" to void ()*
	%1125 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 187
	store void ()* %1124, void ()** %1125
	%1126 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.192", i64 0, i64 0
	%1127 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %1126, 1
	store {i64, i8*} %1127, {i64, i8*}* %tmp.188
	%1128 = load {i64, i8*}, {i64, i8*}* %tmp.188
	%1129 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 188
	store {i64, i8*} %1128, {i64, i8*}* %1129
	%1130 = bitcast i32 (i8*)* @"timer_getoverrun" to void ()*
	%1131 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 188
	store void ()* %1130, void ()** %1131
	%1132 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.193", i64 0, i64 0
	%1133 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1132, 1
	store {i64, i8*} %1133, {i64, i8*}* %tmp.189
	%1134 = load {i64, i8*}, {i64, i8*}* %tmp.189
	%1135 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 189
	store {i64, i8*} %1134, {i64, i8*}* %1135
	%1136 = bitcast i32 (%"cstd::s_timespec"*, i32)* @"timespec_get" to void ()*
	%1137 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 189
	store void ()* %1136, void ()** %1137
	%1138 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.194", i64 0, i64 0
	%1139 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1138, 1
	store {i64, i8*} %1139, {i64, i8*}* %tmp.190
	%1140 = load {i64, i8*}, {i64, i8*}* %tmp.190
	%1141 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 190
	store {i64, i8*} %1140, {i64, i8*}* %1141
	%1142 = bitcast i32 (double)* @"__fpclassify" to void ()*
	%1143 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 190
	store void ()* %1142, void ()** %1143
	%1144 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.195", i64 0, i64 0
	%1145 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1144, 1
	store {i64, i8*} %1145, {i64, i8*}* %tmp.191
	%1146 = load {i64, i8*}, {i64, i8*}* %tmp.191
	%1147 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 191
	store {i64, i8*} %1146, {i64, i8*}* %1147
	%1148 = bitcast i32 (double)* @"__signbit" to void ()*
	%1149 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 191
	store void ()* %1148, void ()** %1149
	%1150 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.196", i64 0, i64 0
	%1151 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1150, 1
	store {i64, i8*} %1151, {i64, i8*}* %tmp.192
	%1152 = load {i64, i8*}, {i64, i8*}* %tmp.192
	%1153 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 192
	store {i64, i8*} %1152, {i64, i8*}* %1153
	%1154 = bitcast i32 (double)* @"__isinf" to void ()*
	%1155 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 192
	store void ()* %1154, void ()** %1155
	%1156 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.197", i64 0, i64 0
	%1157 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1156, 1
	store {i64, i8*} %1157, {i64, i8*}* %tmp.193
	%1158 = load {i64, i8*}, {i64, i8*}* %tmp.193
	%1159 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 193
	store {i64, i8*} %1158, {i64, i8*}* %1159
	%1160 = bitcast i32 (double)* @"__finite" to void ()*
	%1161 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 193
	store void ()* %1160, void ()** %1161
	%1162 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.198", i64 0, i64 0
	%1163 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1162, 1
	store {i64, i8*} %1163, {i64, i8*}* %tmp.194
	%1164 = load {i64, i8*}, {i64, i8*}* %tmp.194
	%1165 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 194
	store {i64, i8*} %1164, {i64, i8*}* %1165
	%1166 = bitcast i32 (double)* @"__isnan" to void ()*
	%1167 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 194
	store void ()* %1166, void ()** %1167
	%1168 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.199", i64 0, i64 0
	%1169 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1168, 1
	store {i64, i8*} %1169, {i64, i8*}* %tmp.195
	%1170 = load {i64, i8*}, {i64, i8*}* %tmp.195
	%1171 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 195
	store {i64, i8*} %1170, {i64, i8*}* %1171
	%1172 = bitcast i32 (double, double)* @"__iseqsig" to void ()*
	%1173 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 195
	store void ()* %1172, void ()** %1173
	%1174 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.200", i64 0, i64 0
	%1175 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1174, 1
	store {i64, i8*} %1175, {i64, i8*}* %tmp.196
	%1176 = load {i64, i8*}, {i64, i8*}* %tmp.196
	%1177 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 196
	store {i64, i8*} %1176, {i64, i8*}* %1177
	%1178 = bitcast i32 (double)* @"__issignaling" to void ()*
	%1179 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 196
	store void ()* %1178, void ()** %1179
	%1180 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.201", i64 0, i64 0
	%1181 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1180, 1
	store {i64, i8*} %1181, {i64, i8*}* %tmp.197
	%1182 = load {i64, i8*}, {i64, i8*}* %tmp.197
	%1183 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 197
	store {i64, i8*} %1182, {i64, i8*}* %1183
	%1184 = bitcast double (double)* @"acos" to void ()*
	%1185 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 197
	store void ()* %1184, void ()** %1185
	%1186 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.202", i64 0, i64 0
	%1187 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1186, 1
	store {i64, i8*} %1187, {i64, i8*}* %tmp.198
	%1188 = load {i64, i8*}, {i64, i8*}* %tmp.198
	%1189 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 198
	store {i64, i8*} %1188, {i64, i8*}* %1189
	%1190 = bitcast double (double)* @"asin" to void ()*
	%1191 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 198
	store void ()* %1190, void ()** %1191
	%1192 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.203", i64 0, i64 0
	%1193 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1192, 1
	store {i64, i8*} %1193, {i64, i8*}* %tmp.199
	%1194 = load {i64, i8*}, {i64, i8*}* %tmp.199
	%1195 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 199
	store {i64, i8*} %1194, {i64, i8*}* %1195
	%1196 = bitcast double (double)* @"atan" to void ()*
	%1197 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 199
	store void ()* %1196, void ()** %1197
	%1198 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.204", i64 0, i64 0
	%1199 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1198, 1
	store {i64, i8*} %1199, {i64, i8*}* %tmp.200
	%1200 = load {i64, i8*}, {i64, i8*}* %tmp.200
	%1201 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 200
	store {i64, i8*} %1200, {i64, i8*}* %1201
	%1202 = bitcast double (double, double)* @"atan2" to void ()*
	%1203 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 200
	store void ()* %1202, void ()** %1203
	%1204 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.205", i64 0, i64 0
	%1205 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1204, 1
	store {i64, i8*} %1205, {i64, i8*}* %tmp.201
	%1206 = load {i64, i8*}, {i64, i8*}* %tmp.201
	%1207 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 201
	store {i64, i8*} %1206, {i64, i8*}* %1207
	%1208 = bitcast double (double)* @"cos" to void ()*
	%1209 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 201
	store void ()* %1208, void ()** %1209
	%1210 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.206", i64 0, i64 0
	%1211 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1210, 1
	store {i64, i8*} %1211, {i64, i8*}* %tmp.202
	%1212 = load {i64, i8*}, {i64, i8*}* %tmp.202
	%1213 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 202
	store {i64, i8*} %1212, {i64, i8*}* %1213
	%1214 = bitcast double (double)* @"sin" to void ()*
	%1215 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 202
	store void ()* %1214, void ()** %1215
	%1216 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.207", i64 0, i64 0
	%1217 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1216, 1
	store {i64, i8*} %1217, {i64, i8*}* %tmp.203
	%1218 = load {i64, i8*}, {i64, i8*}* %tmp.203
	%1219 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 203
	store {i64, i8*} %1218, {i64, i8*}* %1219
	%1220 = bitcast double (double)* @"tan" to void ()*
	%1221 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 203
	store void ()* %1220, void ()** %1221
	%1222 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.208", i64 0, i64 0
	%1223 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1222, 1
	store {i64, i8*} %1223, {i64, i8*}* %tmp.204
	%1224 = load {i64, i8*}, {i64, i8*}* %tmp.204
	%1225 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 204
	store {i64, i8*} %1224, {i64, i8*}* %1225
	%1226 = bitcast double (double)* @"cosh" to void ()*
	%1227 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 204
	store void ()* %1226, void ()** %1227
	%1228 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.209", i64 0, i64 0
	%1229 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1228, 1
	store {i64, i8*} %1229, {i64, i8*}* %tmp.205
	%1230 = load {i64, i8*}, {i64, i8*}* %tmp.205
	%1231 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 205
	store {i64, i8*} %1230, {i64, i8*}* %1231
	%1232 = bitcast double (double)* @"sinh" to void ()*
	%1233 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 205
	store void ()* %1232, void ()** %1233
	%1234 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.210", i64 0, i64 0
	%1235 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1234, 1
	store {i64, i8*} %1235, {i64, i8*}* %tmp.206
	%1236 = load {i64, i8*}, {i64, i8*}* %tmp.206
	%1237 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 206
	store {i64, i8*} %1236, {i64, i8*}* %1237
	%1238 = bitcast double (double)* @"tanh" to void ()*
	%1239 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 206
	store void ()* %1238, void ()** %1239
	%1240 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.211", i64 0, i64 0
	%1241 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1240, 1
	store {i64, i8*} %1241, {i64, i8*}* %tmp.207
	%1242 = load {i64, i8*}, {i64, i8*}* %tmp.207
	%1243 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 207
	store {i64, i8*} %1242, {i64, i8*}* %1243
	%1244 = bitcast double (double)* @"acosh" to void ()*
	%1245 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 207
	store void ()* %1244, void ()** %1245
	%1246 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.212", i64 0, i64 0
	%1247 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1246, 1
	store {i64, i8*} %1247, {i64, i8*}* %tmp.208
	%1248 = load {i64, i8*}, {i64, i8*}* %tmp.208
	%1249 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 208
	store {i64, i8*} %1248, {i64, i8*}* %1249
	%1250 = bitcast double (double)* @"asinh" to void ()*
	%1251 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 208
	store void ()* %1250, void ()** %1251
	%1252 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.213", i64 0, i64 0
	%1253 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1252, 1
	store {i64, i8*} %1253, {i64, i8*}* %tmp.209
	%1254 = load {i64, i8*}, {i64, i8*}* %tmp.209
	%1255 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 209
	store {i64, i8*} %1254, {i64, i8*}* %1255
	%1256 = bitcast double (double)* @"atanh" to void ()*
	%1257 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 209
	store void ()* %1256, void ()** %1257
	%1258 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.214", i64 0, i64 0
	%1259 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1258, 1
	store {i64, i8*} %1259, {i64, i8*}* %tmp.210
	%1260 = load {i64, i8*}, {i64, i8*}* %tmp.210
	%1261 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 210
	store {i64, i8*} %1260, {i64, i8*}* %1261
	%1262 = bitcast double (double)* @"exp" to void ()*
	%1263 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 210
	store void ()* %1262, void ()** %1263
	%1264 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.215", i64 0, i64 0
	%1265 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1264, 1
	store {i64, i8*} %1265, {i64, i8*}* %tmp.211
	%1266 = load {i64, i8*}, {i64, i8*}* %tmp.211
	%1267 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 211
	store {i64, i8*} %1266, {i64, i8*}* %1267
	%1268 = bitcast double (double, i32*)* @"frexp" to void ()*
	%1269 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 211
	store void ()* %1268, void ()** %1269
	%1270 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.216", i64 0, i64 0
	%1271 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1270, 1
	store {i64, i8*} %1271, {i64, i8*}* %tmp.212
	%1272 = load {i64, i8*}, {i64, i8*}* %tmp.212
	%1273 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 212
	store {i64, i8*} %1272, {i64, i8*}* %1273
	%1274 = bitcast double (double, i32)* @"ldexp" to void ()*
	%1275 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 212
	store void ()* %1274, void ()** %1275
	%1276 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.217", i64 0, i64 0
	%1277 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1276, 1
	store {i64, i8*} %1277, {i64, i8*}* %tmp.213
	%1278 = load {i64, i8*}, {i64, i8*}* %tmp.213
	%1279 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 213
	store {i64, i8*} %1278, {i64, i8*}* %1279
	%1280 = bitcast double (double)* @"log" to void ()*
	%1281 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 213
	store void ()* %1280, void ()** %1281
	%1282 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.218", i64 0, i64 0
	%1283 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1282, 1
	store {i64, i8*} %1283, {i64, i8*}* %tmp.214
	%1284 = load {i64, i8*}, {i64, i8*}* %tmp.214
	%1285 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 214
	store {i64, i8*} %1284, {i64, i8*}* %1285
	%1286 = bitcast double (double)* @"log10" to void ()*
	%1287 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 214
	store void ()* %1286, void ()** %1287
	%1288 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.219", i64 0, i64 0
	%1289 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1288, 1
	store {i64, i8*} %1289, {i64, i8*}* %tmp.215
	%1290 = load {i64, i8*}, {i64, i8*}* %tmp.215
	%1291 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 215
	store {i64, i8*} %1290, {i64, i8*}* %1291
	%1292 = bitcast double (double, double*)* @"modf" to void ()*
	%1293 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 215
	store void ()* %1292, void ()** %1293
	%1294 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.220", i64 0, i64 0
	%1295 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1294, 1
	store {i64, i8*} %1295, {i64, i8*}* %tmp.216
	%1296 = load {i64, i8*}, {i64, i8*}* %tmp.216
	%1297 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 216
	store {i64, i8*} %1296, {i64, i8*}* %1297
	%1298 = bitcast double (double)* @"expm1" to void ()*
	%1299 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 216
	store void ()* %1298, void ()** %1299
	%1300 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.221", i64 0, i64 0
	%1301 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1300, 1
	store {i64, i8*} %1301, {i64, i8*}* %tmp.217
	%1302 = load {i64, i8*}, {i64, i8*}* %tmp.217
	%1303 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 217
	store {i64, i8*} %1302, {i64, i8*}* %1303
	%1304 = bitcast double (double)* @"log1p" to void ()*
	%1305 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 217
	store void ()* %1304, void ()** %1305
	%1306 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.222", i64 0, i64 0
	%1307 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1306, 1
	store {i64, i8*} %1307, {i64, i8*}* %tmp.218
	%1308 = load {i64, i8*}, {i64, i8*}* %tmp.218
	%1309 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 218
	store {i64, i8*} %1308, {i64, i8*}* %1309
	%1310 = bitcast double (double)* @"logb" to void ()*
	%1311 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 218
	store void ()* %1310, void ()** %1311
	%1312 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.223", i64 0, i64 0
	%1313 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1312, 1
	store {i64, i8*} %1313, {i64, i8*}* %tmp.219
	%1314 = load {i64, i8*}, {i64, i8*}* %tmp.219
	%1315 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 219
	store {i64, i8*} %1314, {i64, i8*}* %1315
	%1316 = bitcast double (double)* @"exp2" to void ()*
	%1317 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 219
	store void ()* %1316, void ()** %1317
	%1318 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.224", i64 0, i64 0
	%1319 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1318, 1
	store {i64, i8*} %1319, {i64, i8*}* %tmp.220
	%1320 = load {i64, i8*}, {i64, i8*}* %tmp.220
	%1321 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 220
	store {i64, i8*} %1320, {i64, i8*}* %1321
	%1322 = bitcast double (double)* @"log2" to void ()*
	%1323 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 220
	store void ()* %1322, void ()** %1323
	%1324 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.225", i64 0, i64 0
	%1325 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1324, 1
	store {i64, i8*} %1325, {i64, i8*}* %tmp.221
	%1326 = load {i64, i8*}, {i64, i8*}* %tmp.221
	%1327 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 221
	store {i64, i8*} %1326, {i64, i8*}* %1327
	%1328 = bitcast double (double, double)* @"pow" to void ()*
	%1329 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 221
	store void ()* %1328, void ()** %1329
	%1330 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.226", i64 0, i64 0
	%1331 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1330, 1
	store {i64, i8*} %1331, {i64, i8*}* %tmp.222
	%1332 = load {i64, i8*}, {i64, i8*}* %tmp.222
	%1333 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 222
	store {i64, i8*} %1332, {i64, i8*}* %1333
	%1334 = bitcast double (double)* @"sqrt" to void ()*
	%1335 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 222
	store void ()* %1334, void ()** %1335
	%1336 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.227", i64 0, i64 0
	%1337 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1336, 1
	store {i64, i8*} %1337, {i64, i8*}* %tmp.223
	%1338 = load {i64, i8*}, {i64, i8*}* %tmp.223
	%1339 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 223
	store {i64, i8*} %1338, {i64, i8*}* %1339
	%1340 = bitcast double (double, double)* @"hypot" to void ()*
	%1341 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 223
	store void ()* %1340, void ()** %1341
	%1342 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.228", i64 0, i64 0
	%1343 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1342, 1
	store {i64, i8*} %1343, {i64, i8*}* %tmp.224
	%1344 = load {i64, i8*}, {i64, i8*}* %tmp.224
	%1345 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 224
	store {i64, i8*} %1344, {i64, i8*}* %1345
	%1346 = bitcast double (double)* @"cbrt" to void ()*
	%1347 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 224
	store void ()* %1346, void ()** %1347
	%1348 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.229", i64 0, i64 0
	%1349 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1348, 1
	store {i64, i8*} %1349, {i64, i8*}* %tmp.225
	%1350 = load {i64, i8*}, {i64, i8*}* %tmp.225
	%1351 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 225
	store {i64, i8*} %1350, {i64, i8*}* %1351
	%1352 = bitcast double (double)* @"ceil" to void ()*
	%1353 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 225
	store void ()* %1352, void ()** %1353
	%1354 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.230", i64 0, i64 0
	%1355 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1354, 1
	store {i64, i8*} %1355, {i64, i8*}* %tmp.226
	%1356 = load {i64, i8*}, {i64, i8*}* %tmp.226
	%1357 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 226
	store {i64, i8*} %1356, {i64, i8*}* %1357
	%1358 = bitcast double (double)* @"fabs" to void ()*
	%1359 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 226
	store void ()* %1358, void ()** %1359
	%1360 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.231", i64 0, i64 0
	%1361 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1360, 1
	store {i64, i8*} %1361, {i64, i8*}* %tmp.227
	%1362 = load {i64, i8*}, {i64, i8*}* %tmp.227
	%1363 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 227
	store {i64, i8*} %1362, {i64, i8*}* %1363
	%1364 = bitcast double (double)* @"floor" to void ()*
	%1365 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 227
	store void ()* %1364, void ()** %1365
	%1366 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.232", i64 0, i64 0
	%1367 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1366, 1
	store {i64, i8*} %1367, {i64, i8*}* %tmp.228
	%1368 = load {i64, i8*}, {i64, i8*}* %tmp.228
	%1369 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 228
	store {i64, i8*} %1368, {i64, i8*}* %1369
	%1370 = bitcast double (double, double)* @"fmod" to void ()*
	%1371 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 228
	store void ()* %1370, void ()** %1371
	%1372 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.233", i64 0, i64 0
	%1373 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1372, 1
	store {i64, i8*} %1373, {i64, i8*}* %tmp.229
	%1374 = load {i64, i8*}, {i64, i8*}* %tmp.229
	%1375 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 229
	store {i64, i8*} %1374, {i64, i8*}* %1375
	%1376 = bitcast i32 (double)* @"isinf" to void ()*
	%1377 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 229
	store void ()* %1376, void ()** %1377
	%1378 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.234", i64 0, i64 0
	%1379 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1378, 1
	store {i64, i8*} %1379, {i64, i8*}* %tmp.230
	%1380 = load {i64, i8*}, {i64, i8*}* %tmp.230
	%1381 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 230
	store {i64, i8*} %1380, {i64, i8*}* %1381
	%1382 = bitcast i32 (double)* @"finite" to void ()*
	%1383 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 230
	store void ()* %1382, void ()** %1383
	%1384 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.235", i64 0, i64 0
	%1385 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1384, 1
	store {i64, i8*} %1385, {i64, i8*}* %tmp.231
	%1386 = load {i64, i8*}, {i64, i8*}* %tmp.231
	%1387 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 231
	store {i64, i8*} %1386, {i64, i8*}* %1387
	%1388 = bitcast double (double, double)* @"drem" to void ()*
	%1389 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 231
	store void ()* %1388, void ()** %1389
	%1390 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.236", i64 0, i64 0
	%1391 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1390, 1
	store {i64, i8*} %1391, {i64, i8*}* %tmp.232
	%1392 = load {i64, i8*}, {i64, i8*}* %tmp.232
	%1393 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 232
	store {i64, i8*} %1392, {i64, i8*}* %1393
	%1394 = bitcast double (double)* @"significand" to void ()*
	%1395 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 232
	store void ()* %1394, void ()** %1395
	%1396 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.237", i64 0, i64 0
	%1397 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1396, 1
	store {i64, i8*} %1397, {i64, i8*}* %tmp.233
	%1398 = load {i64, i8*}, {i64, i8*}* %tmp.233
	%1399 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 233
	store {i64, i8*} %1398, {i64, i8*}* %1399
	%1400 = bitcast double (double, double)* @"copysign" to void ()*
	%1401 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 233
	store void ()* %1400, void ()** %1401
	%1402 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.238", i64 0, i64 0
	%1403 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1402, 1
	store {i64, i8*} %1403, {i64, i8*}* %tmp.234
	%1404 = load {i64, i8*}, {i64, i8*}* %tmp.234
	%1405 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 234
	store {i64, i8*} %1404, {i64, i8*}* %1405
	%1406 = bitcast double (i8*)* @"nan" to void ()*
	%1407 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 234
	store void ()* %1406, void ()** %1407
	%1408 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.239", i64 0, i64 0
	%1409 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1408, 1
	store {i64, i8*} %1409, {i64, i8*}* %tmp.235
	%1410 = load {i64, i8*}, {i64, i8*}* %tmp.235
	%1411 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 235
	store {i64, i8*} %1410, {i64, i8*}* %1411
	%1412 = bitcast i32 (double)* @"isnan" to void ()*
	%1413 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 235
	store void ()* %1412, void ()** %1413
	%1414 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.240", i64 0, i64 0
	%1415 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1414, 1
	store {i64, i8*} %1415, {i64, i8*}* %tmp.236
	%1416 = load {i64, i8*}, {i64, i8*}* %tmp.236
	%1417 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 236
	store {i64, i8*} %1416, {i64, i8*}* %1417
	%1418 = bitcast double (double)* @"j0" to void ()*
	%1419 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 236
	store void ()* %1418, void ()** %1419
	%1420 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.241", i64 0, i64 0
	%1421 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1420, 1
	store {i64, i8*} %1421, {i64, i8*}* %tmp.237
	%1422 = load {i64, i8*}, {i64, i8*}* %tmp.237
	%1423 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 237
	store {i64, i8*} %1422, {i64, i8*}* %1423
	%1424 = bitcast double (double)* @"j1" to void ()*
	%1425 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 237
	store void ()* %1424, void ()** %1425
	%1426 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.242", i64 0, i64 0
	%1427 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1426, 1
	store {i64, i8*} %1427, {i64, i8*}* %tmp.238
	%1428 = load {i64, i8*}, {i64, i8*}* %tmp.238
	%1429 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 238
	store {i64, i8*} %1428, {i64, i8*}* %1429
	%1430 = bitcast double (i32, double)* @"jn" to void ()*
	%1431 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 238
	store void ()* %1430, void ()** %1431
	%1432 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.243", i64 0, i64 0
	%1433 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1432, 1
	store {i64, i8*} %1433, {i64, i8*}* %tmp.239
	%1434 = load {i64, i8*}, {i64, i8*}* %tmp.239
	%1435 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 239
	store {i64, i8*} %1434, {i64, i8*}* %1435
	%1436 = bitcast double (double)* @"y0" to void ()*
	%1437 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 239
	store void ()* %1436, void ()** %1437
	%1438 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.244", i64 0, i64 0
	%1439 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1438, 1
	store {i64, i8*} %1439, {i64, i8*}* %tmp.240
	%1440 = load {i64, i8*}, {i64, i8*}* %tmp.240
	%1441 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 240
	store {i64, i8*} %1440, {i64, i8*}* %1441
	%1442 = bitcast double (double)* @"y1" to void ()*
	%1443 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 240
	store void ()* %1442, void ()** %1443
	%1444 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.245", i64 0, i64 0
	%1445 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %1444, 1
	store {i64, i8*} %1445, {i64, i8*}* %tmp.241
	%1446 = load {i64, i8*}, {i64, i8*}* %tmp.241
	%1447 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 241
	store {i64, i8*} %1446, {i64, i8*}* %1447
	%1448 = bitcast double (i32, double)* @"yn" to void ()*
	%1449 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 241
	store void ()* %1448, void ()** %1449
	%1450 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.246", i64 0, i64 0
	%1451 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1450, 1
	store {i64, i8*} %1451, {i64, i8*}* %tmp.242
	%1452 = load {i64, i8*}, {i64, i8*}* %tmp.242
	%1453 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 242
	store {i64, i8*} %1452, {i64, i8*}* %1453
	%1454 = bitcast double (double)* @"erf" to void ()*
	%1455 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 242
	store void ()* %1454, void ()** %1455
	%1456 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.247", i64 0, i64 0
	%1457 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1456, 1
	store {i64, i8*} %1457, {i64, i8*}* %tmp.243
	%1458 = load {i64, i8*}, {i64, i8*}* %tmp.243
	%1459 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 243
	store {i64, i8*} %1458, {i64, i8*}* %1459
	%1460 = bitcast double (double)* @"erfc" to void ()*
	%1461 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 243
	store void ()* %1460, void ()** %1461
	%1462 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.248", i64 0, i64 0
	%1463 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1462, 1
	store {i64, i8*} %1463, {i64, i8*}* %tmp.244
	%1464 = load {i64, i8*}, {i64, i8*}* %tmp.244
	%1465 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 244
	store {i64, i8*} %1464, {i64, i8*}* %1465
	%1466 = bitcast double (double)* @"lgamma" to void ()*
	%1467 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 244
	store void ()* %1466, void ()** %1467
	%1468 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.249", i64 0, i64 0
	%1469 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1468, 1
	store {i64, i8*} %1469, {i64, i8*}* %tmp.245
	%1470 = load {i64, i8*}, {i64, i8*}* %tmp.245
	%1471 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 245
	store {i64, i8*} %1470, {i64, i8*}* %1471
	%1472 = bitcast double (double)* @"tgamma" to void ()*
	%1473 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 245
	store void ()* %1472, void ()** %1473
	%1474 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.250", i64 0, i64 0
	%1475 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1474, 1
	store {i64, i8*} %1475, {i64, i8*}* %tmp.246
	%1476 = load {i64, i8*}, {i64, i8*}* %tmp.246
	%1477 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 246
	store {i64, i8*} %1476, {i64, i8*}* %1477
	%1478 = bitcast double (double)* @"gamma" to void ()*
	%1479 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 246
	store void ()* %1478, void ()** %1479
	%1480 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.251", i64 0, i64 0
	%1481 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1480, 1
	store {i64, i8*} %1481, {i64, i8*}* %tmp.247
	%1482 = load {i64, i8*}, {i64, i8*}* %tmp.247
	%1483 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 247
	store {i64, i8*} %1482, {i64, i8*}* %1483
	%1484 = bitcast double (double, i32*)* @"lgamma_r" to void ()*
	%1485 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 247
	store void ()* %1484, void ()** %1485
	%1486 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.252", i64 0, i64 0
	%1487 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1486, 1
	store {i64, i8*} %1487, {i64, i8*}* %tmp.248
	%1488 = load {i64, i8*}, {i64, i8*}* %tmp.248
	%1489 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 248
	store {i64, i8*} %1488, {i64, i8*}* %1489
	%1490 = bitcast double (double)* @"rint" to void ()*
	%1491 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 248
	store void ()* %1490, void ()** %1491
	%1492 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.253", i64 0, i64 0
	%1493 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1492, 1
	store {i64, i8*} %1493, {i64, i8*}* %tmp.249
	%1494 = load {i64, i8*}, {i64, i8*}* %tmp.249
	%1495 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 249
	store {i64, i8*} %1494, {i64, i8*}* %1495
	%1496 = bitcast double (double, double)* @"nextafter" to void ()*
	%1497 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 249
	store void ()* %1496, void ()** %1497
	%1498 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.254", i64 0, i64 0
	%1499 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1498, 1
	store {i64, i8*} %1499, {i64, i8*}* %tmp.250
	%1500 = load {i64, i8*}, {i64, i8*}* %tmp.250
	%1501 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 250
	store {i64, i8*} %1500, {i64, i8*}* %1501
	%1502 = bitcast double (double, x86_fp80)* @"nexttoward" to void ()*
	%1503 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 250
	store void ()* %1502, void ()** %1503
	%1504 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.255", i64 0, i64 0
	%1505 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1504, 1
	store {i64, i8*} %1505, {i64, i8*}* %tmp.251
	%1506 = load {i64, i8*}, {i64, i8*}* %tmp.251
	%1507 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 251
	store {i64, i8*} %1506, {i64, i8*}* %1507
	%1508 = bitcast double (double, double)* @"remainder" to void ()*
	%1509 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 251
	store void ()* %1508, void ()** %1509
	%1510 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.256", i64 0, i64 0
	%1511 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1510, 1
	store {i64, i8*} %1511, {i64, i8*}* %tmp.252
	%1512 = load {i64, i8*}, {i64, i8*}* %tmp.252
	%1513 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 252
	store {i64, i8*} %1512, {i64, i8*}* %1513
	%1514 = bitcast double (double, i32)* @"scalbn" to void ()*
	%1515 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 252
	store void ()* %1514, void ()** %1515
	%1516 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.257", i64 0, i64 0
	%1517 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1516, 1
	store {i64, i8*} %1517, {i64, i8*}* %tmp.253
	%1518 = load {i64, i8*}, {i64, i8*}* %tmp.253
	%1519 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 253
	store {i64, i8*} %1518, {i64, i8*}* %1519
	%1520 = bitcast i32 (double)* @"ilogb" to void ()*
	%1521 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 253
	store void ()* %1520, void ()** %1521
	%1522 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.258", i64 0, i64 0
	%1523 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1522, 1
	store {i64, i8*} %1523, {i64, i8*}* %tmp.254
	%1524 = load {i64, i8*}, {i64, i8*}* %tmp.254
	%1525 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 254
	store {i64, i8*} %1524, {i64, i8*}* %1525
	%1526 = bitcast double (double, i64)* @"scalbln" to void ()*
	%1527 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 254
	store void ()* %1526, void ()** %1527
	%1528 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.259", i64 0, i64 0
	%1529 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1528, 1
	store {i64, i8*} %1529, {i64, i8*}* %tmp.255
	%1530 = load {i64, i8*}, {i64, i8*}* %tmp.255
	%1531 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 255
	store {i64, i8*} %1530, {i64, i8*}* %1531
	%1532 = bitcast double (double)* @"nearbyint" to void ()*
	%1533 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 255
	store void ()* %1532, void ()** %1533
	%1534 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.260", i64 0, i64 0
	%1535 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1534, 1
	store {i64, i8*} %1535, {i64, i8*}* %tmp.256
	%1536 = load {i64, i8*}, {i64, i8*}* %tmp.256
	%1537 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 256
	store {i64, i8*} %1536, {i64, i8*}* %1537
	%1538 = bitcast double (double)* @"round" to void ()*
	%1539 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 256
	store void ()* %1538, void ()** %1539
	%1540 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.261", i64 0, i64 0
	%1541 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1540, 1
	store {i64, i8*} %1541, {i64, i8*}* %tmp.257
	%1542 = load {i64, i8*}, {i64, i8*}* %tmp.257
	%1543 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 257
	store {i64, i8*} %1542, {i64, i8*}* %1543
	%1544 = bitcast double (double)* @"trunc" to void ()*
	%1545 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 257
	store void ()* %1544, void ()** %1545
	%1546 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.262", i64 0, i64 0
	%1547 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1546, 1
	store {i64, i8*} %1547, {i64, i8*}* %tmp.258
	%1548 = load {i64, i8*}, {i64, i8*}* %tmp.258
	%1549 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 258
	store {i64, i8*} %1548, {i64, i8*}* %1549
	%1550 = bitcast double (double, double, i32*)* @"remquo" to void ()*
	%1551 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 258
	store void ()* %1550, void ()** %1551
	%1552 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.263", i64 0, i64 0
	%1553 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1552, 1
	store {i64, i8*} %1553, {i64, i8*}* %tmp.259
	%1554 = load {i64, i8*}, {i64, i8*}* %tmp.259
	%1555 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 259
	store {i64, i8*} %1554, {i64, i8*}* %1555
	%1556 = bitcast i64 (double)* @"lrint" to void ()*
	%1557 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 259
	store void ()* %1556, void ()** %1557
	%1558 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.264", i64 0, i64 0
	%1559 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1558, 1
	store {i64, i8*} %1559, {i64, i8*}* %tmp.260
	%1560 = load {i64, i8*}, {i64, i8*}* %tmp.260
	%1561 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 260
	store {i64, i8*} %1560, {i64, i8*}* %1561
	%1562 = bitcast i64 (double)* @"llrint" to void ()*
	%1563 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 260
	store void ()* %1562, void ()** %1563
	%1564 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.265", i64 0, i64 0
	%1565 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1564, 1
	store {i64, i8*} %1565, {i64, i8*}* %tmp.261
	%1566 = load {i64, i8*}, {i64, i8*}* %tmp.261
	%1567 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 261
	store {i64, i8*} %1566, {i64, i8*}* %1567
	%1568 = bitcast i64 (double)* @"lround" to void ()*
	%1569 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 261
	store void ()* %1568, void ()** %1569
	%1570 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.266", i64 0, i64 0
	%1571 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1570, 1
	store {i64, i8*} %1571, {i64, i8*}* %tmp.262
	%1572 = load {i64, i8*}, {i64, i8*}* %tmp.262
	%1573 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 262
	store {i64, i8*} %1572, {i64, i8*}* %1573
	%1574 = bitcast i64 (double)* @"llround" to void ()*
	%1575 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 262
	store void ()* %1574, void ()** %1575
	%1576 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.267", i64 0, i64 0
	%1577 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1576, 1
	store {i64, i8*} %1577, {i64, i8*}* %tmp.263
	%1578 = load {i64, i8*}, {i64, i8*}* %tmp.263
	%1579 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 263
	store {i64, i8*} %1578, {i64, i8*}* %1579
	%1580 = bitcast double (double, double)* @"fdim" to void ()*
	%1581 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 263
	store void ()* %1580, void ()** %1581
	%1582 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.268", i64 0, i64 0
	%1583 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1582, 1
	store {i64, i8*} %1583, {i64, i8*}* %tmp.264
	%1584 = load {i64, i8*}, {i64, i8*}* %tmp.264
	%1585 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 264
	store {i64, i8*} %1584, {i64, i8*}* %1585
	%1586 = bitcast double (double, double)* @"fmax" to void ()*
	%1587 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 264
	store void ()* %1586, void ()** %1587
	%1588 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.269", i64 0, i64 0
	%1589 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1588, 1
	store {i64, i8*} %1589, {i64, i8*}* %tmp.265
	%1590 = load {i64, i8*}, {i64, i8*}* %tmp.265
	%1591 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 265
	store {i64, i8*} %1590, {i64, i8*}* %1591
	%1592 = bitcast double (double, double)* @"fmin" to void ()*
	%1593 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 265
	store void ()* %1592, void ()** %1593
	%1594 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.270", i64 0, i64 0
	%1595 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1594, 1
	store {i64, i8*} %1595, {i64, i8*}* %tmp.266
	%1596 = load {i64, i8*}, {i64, i8*}* %tmp.266
	%1597 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 266
	store {i64, i8*} %1596, {i64, i8*}* %1597
	%1598 = bitcast double (double, double, double)* @"fma" to void ()*
	%1599 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 266
	store void ()* %1598, void ()** %1599
	%1600 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.271", i64 0, i64 0
	%1601 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1600, 1
	store {i64, i8*} %1601, {i64, i8*}* %tmp.267
	%1602 = load {i64, i8*}, {i64, i8*}* %tmp.267
	%1603 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 267
	store {i64, i8*} %1602, {i64, i8*}* %1603
	%1604 = bitcast double (double, double)* @"scalb" to void ()*
	%1605 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 267
	store void ()* %1604, void ()** %1605
	%1606 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.272", i64 0, i64 0
	%1607 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1606, 1
	store {i64, i8*} %1607, {i64, i8*}* %tmp.268
	%1608 = load {i64, i8*}, {i64, i8*}* %tmp.268
	%1609 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 268
	store {i64, i8*} %1608, {i64, i8*}* %1609
	%1610 = bitcast i32 (float)* @"__fpclassifyf" to void ()*
	%1611 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 268
	store void ()* %1610, void ()** %1611
	%1612 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.273", i64 0, i64 0
	%1613 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1612, 1
	store {i64, i8*} %1613, {i64, i8*}* %tmp.269
	%1614 = load {i64, i8*}, {i64, i8*}* %tmp.269
	%1615 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 269
	store {i64, i8*} %1614, {i64, i8*}* %1615
	%1616 = bitcast i32 (float)* @"__signbitf" to void ()*
	%1617 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 269
	store void ()* %1616, void ()** %1617
	%1618 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.274", i64 0, i64 0
	%1619 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1618, 1
	store {i64, i8*} %1619, {i64, i8*}* %tmp.270
	%1620 = load {i64, i8*}, {i64, i8*}* %tmp.270
	%1621 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 270
	store {i64, i8*} %1620, {i64, i8*}* %1621
	%1622 = bitcast i32 (float)* @"__isinff" to void ()*
	%1623 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 270
	store void ()* %1622, void ()** %1623
	%1624 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.275", i64 0, i64 0
	%1625 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1624, 1
	store {i64, i8*} %1625, {i64, i8*}* %tmp.271
	%1626 = load {i64, i8*}, {i64, i8*}* %tmp.271
	%1627 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 271
	store {i64, i8*} %1626, {i64, i8*}* %1627
	%1628 = bitcast i32 (float)* @"__finitef" to void ()*
	%1629 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 271
	store void ()* %1628, void ()** %1629
	%1630 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.276", i64 0, i64 0
	%1631 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1630, 1
	store {i64, i8*} %1631, {i64, i8*}* %tmp.272
	%1632 = load {i64, i8*}, {i64, i8*}* %tmp.272
	%1633 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 272
	store {i64, i8*} %1632, {i64, i8*}* %1633
	%1634 = bitcast i32 (float)* @"__isnanf" to void ()*
	%1635 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 272
	store void ()* %1634, void ()** %1635
	%1636 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.277", i64 0, i64 0
	%1637 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1636, 1
	store {i64, i8*} %1637, {i64, i8*}* %tmp.273
	%1638 = load {i64, i8*}, {i64, i8*}* %tmp.273
	%1639 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 273
	store {i64, i8*} %1638, {i64, i8*}* %1639
	%1640 = bitcast i32 (float, float)* @"__iseqsigf" to void ()*
	%1641 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 273
	store void ()* %1640, void ()** %1641
	%1642 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.278", i64 0, i64 0
	%1643 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %1642, 1
	store {i64, i8*} %1643, {i64, i8*}* %tmp.274
	%1644 = load {i64, i8*}, {i64, i8*}* %tmp.274
	%1645 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 274
	store {i64, i8*} %1644, {i64, i8*}* %1645
	%1646 = bitcast i32 (float)* @"__issignalingf" to void ()*
	%1647 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 274
	store void ()* %1646, void ()** %1647
	%1648 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.279", i64 0, i64 0
	%1649 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1648, 1
	store {i64, i8*} %1649, {i64, i8*}* %tmp.275
	%1650 = load {i64, i8*}, {i64, i8*}* %tmp.275
	%1651 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 275
	store {i64, i8*} %1650, {i64, i8*}* %1651
	%1652 = bitcast float (float)* @"acosf" to void ()*
	%1653 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 275
	store void ()* %1652, void ()** %1653
	%1654 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.280", i64 0, i64 0
	%1655 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1654, 1
	store {i64, i8*} %1655, {i64, i8*}* %tmp.276
	%1656 = load {i64, i8*}, {i64, i8*}* %tmp.276
	%1657 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 276
	store {i64, i8*} %1656, {i64, i8*}* %1657
	%1658 = bitcast float (float)* @"asinf" to void ()*
	%1659 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 276
	store void ()* %1658, void ()** %1659
	%1660 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.281", i64 0, i64 0
	%1661 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1660, 1
	store {i64, i8*} %1661, {i64, i8*}* %tmp.277
	%1662 = load {i64, i8*}, {i64, i8*}* %tmp.277
	%1663 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 277
	store {i64, i8*} %1662, {i64, i8*}* %1663
	%1664 = bitcast float (float)* @"atanf" to void ()*
	%1665 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 277
	store void ()* %1664, void ()** %1665
	%1666 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.282", i64 0, i64 0
	%1667 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1666, 1
	store {i64, i8*} %1667, {i64, i8*}* %tmp.278
	%1668 = load {i64, i8*}, {i64, i8*}* %tmp.278
	%1669 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 278
	store {i64, i8*} %1668, {i64, i8*}* %1669
	%1670 = bitcast float (float, float)* @"atan2f" to void ()*
	%1671 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 278
	store void ()* %1670, void ()** %1671
	%1672 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.283", i64 0, i64 0
	%1673 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1672, 1
	store {i64, i8*} %1673, {i64, i8*}* %tmp.279
	%1674 = load {i64, i8*}, {i64, i8*}* %tmp.279
	%1675 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 279
	store {i64, i8*} %1674, {i64, i8*}* %1675
	%1676 = bitcast float (float)* @"cosf" to void ()*
	%1677 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 279
	store void ()* %1676, void ()** %1677
	%1678 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.284", i64 0, i64 0
	%1679 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1678, 1
	store {i64, i8*} %1679, {i64, i8*}* %tmp.280
	%1680 = load {i64, i8*}, {i64, i8*}* %tmp.280
	%1681 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 280
	store {i64, i8*} %1680, {i64, i8*}* %1681
	%1682 = bitcast float (float)* @"sinf" to void ()*
	%1683 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 280
	store void ()* %1682, void ()** %1683
	%1684 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.285", i64 0, i64 0
	%1685 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1684, 1
	store {i64, i8*} %1685, {i64, i8*}* %tmp.281
	%1686 = load {i64, i8*}, {i64, i8*}* %tmp.281
	%1687 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 281
	store {i64, i8*} %1686, {i64, i8*}* %1687
	%1688 = bitcast float (float)* @"tanf" to void ()*
	%1689 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 281
	store void ()* %1688, void ()** %1689
	%1690 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.286", i64 0, i64 0
	%1691 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1690, 1
	store {i64, i8*} %1691, {i64, i8*}* %tmp.282
	%1692 = load {i64, i8*}, {i64, i8*}* %tmp.282
	%1693 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 282
	store {i64, i8*} %1692, {i64, i8*}* %1693
	%1694 = bitcast float (float)* @"coshf" to void ()*
	%1695 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 282
	store void ()* %1694, void ()** %1695
	%1696 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.287", i64 0, i64 0
	%1697 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1696, 1
	store {i64, i8*} %1697, {i64, i8*}* %tmp.283
	%1698 = load {i64, i8*}, {i64, i8*}* %tmp.283
	%1699 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 283
	store {i64, i8*} %1698, {i64, i8*}* %1699
	%1700 = bitcast float (float)* @"sinhf" to void ()*
	%1701 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 283
	store void ()* %1700, void ()** %1701
	%1702 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.288", i64 0, i64 0
	%1703 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1702, 1
	store {i64, i8*} %1703, {i64, i8*}* %tmp.284
	%1704 = load {i64, i8*}, {i64, i8*}* %tmp.284
	%1705 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 284
	store {i64, i8*} %1704, {i64, i8*}* %1705
	%1706 = bitcast float (float)* @"tanhf" to void ()*
	%1707 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 284
	store void ()* %1706, void ()** %1707
	%1708 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.289", i64 0, i64 0
	%1709 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1708, 1
	store {i64, i8*} %1709, {i64, i8*}* %tmp.285
	%1710 = load {i64, i8*}, {i64, i8*}* %tmp.285
	%1711 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 285
	store {i64, i8*} %1710, {i64, i8*}* %1711
	%1712 = bitcast float (float)* @"acoshf" to void ()*
	%1713 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 285
	store void ()* %1712, void ()** %1713
	%1714 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.290", i64 0, i64 0
	%1715 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1714, 1
	store {i64, i8*} %1715, {i64, i8*}* %tmp.286
	%1716 = load {i64, i8*}, {i64, i8*}* %tmp.286
	%1717 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 286
	store {i64, i8*} %1716, {i64, i8*}* %1717
	%1718 = bitcast float (float)* @"asinhf" to void ()*
	%1719 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 286
	store void ()* %1718, void ()** %1719
	%1720 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.291", i64 0, i64 0
	%1721 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1720, 1
	store {i64, i8*} %1721, {i64, i8*}* %tmp.287
	%1722 = load {i64, i8*}, {i64, i8*}* %tmp.287
	%1723 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 287
	store {i64, i8*} %1722, {i64, i8*}* %1723
	%1724 = bitcast float (float)* @"atanhf" to void ()*
	%1725 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 287
	store void ()* %1724, void ()** %1725
	%1726 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.292", i64 0, i64 0
	%1727 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1726, 1
	store {i64, i8*} %1727, {i64, i8*}* %tmp.288
	%1728 = load {i64, i8*}, {i64, i8*}* %tmp.288
	%1729 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 288
	store {i64, i8*} %1728, {i64, i8*}* %1729
	%1730 = bitcast float (float)* @"expf" to void ()*
	%1731 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 288
	store void ()* %1730, void ()** %1731
	%1732 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.293", i64 0, i64 0
	%1733 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1732, 1
	store {i64, i8*} %1733, {i64, i8*}* %tmp.289
	%1734 = load {i64, i8*}, {i64, i8*}* %tmp.289
	%1735 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 289
	store {i64, i8*} %1734, {i64, i8*}* %1735
	%1736 = bitcast float (float, i32*)* @"frexpf" to void ()*
	%1737 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 289
	store void ()* %1736, void ()** %1737
	%1738 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.294", i64 0, i64 0
	%1739 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1738, 1
	store {i64, i8*} %1739, {i64, i8*}* %tmp.290
	%1740 = load {i64, i8*}, {i64, i8*}* %tmp.290
	%1741 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 290
	store {i64, i8*} %1740, {i64, i8*}* %1741
	%1742 = bitcast float (float, i32)* @"ldexpf" to void ()*
	%1743 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 290
	store void ()* %1742, void ()** %1743
	%1744 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.295", i64 0, i64 0
	%1745 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1744, 1
	store {i64, i8*} %1745, {i64, i8*}* %tmp.291
	%1746 = load {i64, i8*}, {i64, i8*}* %tmp.291
	%1747 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 291
	store {i64, i8*} %1746, {i64, i8*}* %1747
	%1748 = bitcast float (float)* @"logf" to void ()*
	%1749 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 291
	store void ()* %1748, void ()** %1749
	%1750 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.296", i64 0, i64 0
	%1751 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1750, 1
	store {i64, i8*} %1751, {i64, i8*}* %tmp.292
	%1752 = load {i64, i8*}, {i64, i8*}* %tmp.292
	%1753 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 292
	store {i64, i8*} %1752, {i64, i8*}* %1753
	%1754 = bitcast float (float)* @"log10f" to void ()*
	%1755 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 292
	store void ()* %1754, void ()** %1755
	%1756 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.297", i64 0, i64 0
	%1757 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1756, 1
	store {i64, i8*} %1757, {i64, i8*}* %tmp.293
	%1758 = load {i64, i8*}, {i64, i8*}* %tmp.293
	%1759 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 293
	store {i64, i8*} %1758, {i64, i8*}* %1759
	%1760 = bitcast float (float, float*)* @"modff" to void ()*
	%1761 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 293
	store void ()* %1760, void ()** %1761
	%1762 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.298", i64 0, i64 0
	%1763 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1762, 1
	store {i64, i8*} %1763, {i64, i8*}* %tmp.294
	%1764 = load {i64, i8*}, {i64, i8*}* %tmp.294
	%1765 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 294
	store {i64, i8*} %1764, {i64, i8*}* %1765
	%1766 = bitcast float (float)* @"expm1f" to void ()*
	%1767 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 294
	store void ()* %1766, void ()** %1767
	%1768 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.299", i64 0, i64 0
	%1769 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1768, 1
	store {i64, i8*} %1769, {i64, i8*}* %tmp.295
	%1770 = load {i64, i8*}, {i64, i8*}* %tmp.295
	%1771 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 295
	store {i64, i8*} %1770, {i64, i8*}* %1771
	%1772 = bitcast float (float)* @"log1pf" to void ()*
	%1773 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 295
	store void ()* %1772, void ()** %1773
	%1774 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.300", i64 0, i64 0
	%1775 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1774, 1
	store {i64, i8*} %1775, {i64, i8*}* %tmp.296
	%1776 = load {i64, i8*}, {i64, i8*}* %tmp.296
	%1777 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 296
	store {i64, i8*} %1776, {i64, i8*}* %1777
	%1778 = bitcast float (float)* @"logbf" to void ()*
	%1779 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 296
	store void ()* %1778, void ()** %1779
	%1780 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.301", i64 0, i64 0
	%1781 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1780, 1
	store {i64, i8*} %1781, {i64, i8*}* %tmp.297
	%1782 = load {i64, i8*}, {i64, i8*}* %tmp.297
	%1783 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 297
	store {i64, i8*} %1782, {i64, i8*}* %1783
	%1784 = bitcast float (float)* @"exp2f" to void ()*
	%1785 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 297
	store void ()* %1784, void ()** %1785
	%1786 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.302", i64 0, i64 0
	%1787 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1786, 1
	store {i64, i8*} %1787, {i64, i8*}* %tmp.298
	%1788 = load {i64, i8*}, {i64, i8*}* %tmp.298
	%1789 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 298
	store {i64, i8*} %1788, {i64, i8*}* %1789
	%1790 = bitcast float (float)* @"log2f" to void ()*
	%1791 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 298
	store void ()* %1790, void ()** %1791
	%1792 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.303", i64 0, i64 0
	%1793 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1792, 1
	store {i64, i8*} %1793, {i64, i8*}* %tmp.299
	%1794 = load {i64, i8*}, {i64, i8*}* %tmp.299
	%1795 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 299
	store {i64, i8*} %1794, {i64, i8*}* %1795
	%1796 = bitcast float (float, float)* @"powf" to void ()*
	%1797 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 299
	store void ()* %1796, void ()** %1797
	%1798 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.304", i64 0, i64 0
	%1799 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1798, 1
	store {i64, i8*} %1799, {i64, i8*}* %tmp.300
	%1800 = load {i64, i8*}, {i64, i8*}* %tmp.300
	%1801 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 300
	store {i64, i8*} %1800, {i64, i8*}* %1801
	%1802 = bitcast float (float)* @"sqrtf" to void ()*
	%1803 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 300
	store void ()* %1802, void ()** %1803
	%1804 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.305", i64 0, i64 0
	%1805 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1804, 1
	store {i64, i8*} %1805, {i64, i8*}* %tmp.301
	%1806 = load {i64, i8*}, {i64, i8*}* %tmp.301
	%1807 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 301
	store {i64, i8*} %1806, {i64, i8*}* %1807
	%1808 = bitcast float (float, float)* @"hypotf" to void ()*
	%1809 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 301
	store void ()* %1808, void ()** %1809
	%1810 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.306", i64 0, i64 0
	%1811 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1810, 1
	store {i64, i8*} %1811, {i64, i8*}* %tmp.302
	%1812 = load {i64, i8*}, {i64, i8*}* %tmp.302
	%1813 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 302
	store {i64, i8*} %1812, {i64, i8*}* %1813
	%1814 = bitcast float (float)* @"cbrtf" to void ()*
	%1815 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 302
	store void ()* %1814, void ()** %1815
	%1816 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.307", i64 0, i64 0
	%1817 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1816, 1
	store {i64, i8*} %1817, {i64, i8*}* %tmp.303
	%1818 = load {i64, i8*}, {i64, i8*}* %tmp.303
	%1819 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 303
	store {i64, i8*} %1818, {i64, i8*}* %1819
	%1820 = bitcast float (float)* @"ceilf" to void ()*
	%1821 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 303
	store void ()* %1820, void ()** %1821
	%1822 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.308", i64 0, i64 0
	%1823 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1822, 1
	store {i64, i8*} %1823, {i64, i8*}* %tmp.304
	%1824 = load {i64, i8*}, {i64, i8*}* %tmp.304
	%1825 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 304
	store {i64, i8*} %1824, {i64, i8*}* %1825
	%1826 = bitcast float (float)* @"fabsf" to void ()*
	%1827 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 304
	store void ()* %1826, void ()** %1827
	%1828 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.309", i64 0, i64 0
	%1829 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1828, 1
	store {i64, i8*} %1829, {i64, i8*}* %tmp.305
	%1830 = load {i64, i8*}, {i64, i8*}* %tmp.305
	%1831 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 305
	store {i64, i8*} %1830, {i64, i8*}* %1831
	%1832 = bitcast float (float)* @"floorf" to void ()*
	%1833 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 305
	store void ()* %1832, void ()** %1833
	%1834 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.310", i64 0, i64 0
	%1835 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1834, 1
	store {i64, i8*} %1835, {i64, i8*}* %tmp.306
	%1836 = load {i64, i8*}, {i64, i8*}* %tmp.306
	%1837 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 306
	store {i64, i8*} %1836, {i64, i8*}* %1837
	%1838 = bitcast float (float, float)* @"fmodf" to void ()*
	%1839 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 306
	store void ()* %1838, void ()** %1839
	%1840 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.311", i64 0, i64 0
	%1841 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1840, 1
	store {i64, i8*} %1841, {i64, i8*}* %tmp.307
	%1842 = load {i64, i8*}, {i64, i8*}* %tmp.307
	%1843 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 307
	store {i64, i8*} %1842, {i64, i8*}* %1843
	%1844 = bitcast i32 (float)* @"isinff" to void ()*
	%1845 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 307
	store void ()* %1844, void ()** %1845
	%1846 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.312", i64 0, i64 0
	%1847 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1846, 1
	store {i64, i8*} %1847, {i64, i8*}* %tmp.308
	%1848 = load {i64, i8*}, {i64, i8*}* %tmp.308
	%1849 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 308
	store {i64, i8*} %1848, {i64, i8*}* %1849
	%1850 = bitcast i32 (float)* @"finitef" to void ()*
	%1851 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 308
	store void ()* %1850, void ()** %1851
	%1852 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.313", i64 0, i64 0
	%1853 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1852, 1
	store {i64, i8*} %1853, {i64, i8*}* %tmp.309
	%1854 = load {i64, i8*}, {i64, i8*}* %tmp.309
	%1855 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 309
	store {i64, i8*} %1854, {i64, i8*}* %1855
	%1856 = bitcast float (float, float)* @"dremf" to void ()*
	%1857 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 309
	store void ()* %1856, void ()** %1857
	%1858 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.314", i64 0, i64 0
	%1859 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1858, 1
	store {i64, i8*} %1859, {i64, i8*}* %tmp.310
	%1860 = load {i64, i8*}, {i64, i8*}* %tmp.310
	%1861 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 310
	store {i64, i8*} %1860, {i64, i8*}* %1861
	%1862 = bitcast float (float)* @"significandf" to void ()*
	%1863 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 310
	store void ()* %1862, void ()** %1863
	%1864 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.315", i64 0, i64 0
	%1865 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1864, 1
	store {i64, i8*} %1865, {i64, i8*}* %tmp.311
	%1866 = load {i64, i8*}, {i64, i8*}* %tmp.311
	%1867 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 311
	store {i64, i8*} %1866, {i64, i8*}* %1867
	%1868 = bitcast float (float, float)* @"copysignf" to void ()*
	%1869 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 311
	store void ()* %1868, void ()** %1869
	%1870 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.316", i64 0, i64 0
	%1871 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1870, 1
	store {i64, i8*} %1871, {i64, i8*}* %tmp.312
	%1872 = load {i64, i8*}, {i64, i8*}* %tmp.312
	%1873 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 312
	store {i64, i8*} %1872, {i64, i8*}* %1873
	%1874 = bitcast float (i8*)* @"nanf" to void ()*
	%1875 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 312
	store void ()* %1874, void ()** %1875
	%1876 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.317", i64 0, i64 0
	%1877 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1876, 1
	store {i64, i8*} %1877, {i64, i8*}* %tmp.313
	%1878 = load {i64, i8*}, {i64, i8*}* %tmp.313
	%1879 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 313
	store {i64, i8*} %1878, {i64, i8*}* %1879
	%1880 = bitcast i32 (float)* @"isnanf" to void ()*
	%1881 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 313
	store void ()* %1880, void ()** %1881
	%1882 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.318", i64 0, i64 0
	%1883 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1882, 1
	store {i64, i8*} %1883, {i64, i8*}* %tmp.314
	%1884 = load {i64, i8*}, {i64, i8*}* %tmp.314
	%1885 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 314
	store {i64, i8*} %1884, {i64, i8*}* %1885
	%1886 = bitcast float (float)* @"j0f" to void ()*
	%1887 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 314
	store void ()* %1886, void ()** %1887
	%1888 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.319", i64 0, i64 0
	%1889 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1888, 1
	store {i64, i8*} %1889, {i64, i8*}* %tmp.315
	%1890 = load {i64, i8*}, {i64, i8*}* %tmp.315
	%1891 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 315
	store {i64, i8*} %1890, {i64, i8*}* %1891
	%1892 = bitcast float (float)* @"j1f" to void ()*
	%1893 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 315
	store void ()* %1892, void ()** %1893
	%1894 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.320", i64 0, i64 0
	%1895 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1894, 1
	store {i64, i8*} %1895, {i64, i8*}* %tmp.316
	%1896 = load {i64, i8*}, {i64, i8*}* %tmp.316
	%1897 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 316
	store {i64, i8*} %1896, {i64, i8*}* %1897
	%1898 = bitcast float (i32, float)* @"jnf" to void ()*
	%1899 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 316
	store void ()* %1898, void ()** %1899
	%1900 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.321", i64 0, i64 0
	%1901 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1900, 1
	store {i64, i8*} %1901, {i64, i8*}* %tmp.317
	%1902 = load {i64, i8*}, {i64, i8*}* %tmp.317
	%1903 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 317
	store {i64, i8*} %1902, {i64, i8*}* %1903
	%1904 = bitcast float (float)* @"y0f" to void ()*
	%1905 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 317
	store void ()* %1904, void ()** %1905
	%1906 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.322", i64 0, i64 0
	%1907 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1906, 1
	store {i64, i8*} %1907, {i64, i8*}* %tmp.318
	%1908 = load {i64, i8*}, {i64, i8*}* %tmp.318
	%1909 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 318
	store {i64, i8*} %1908, {i64, i8*}* %1909
	%1910 = bitcast float (float)* @"y1f" to void ()*
	%1911 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 318
	store void ()* %1910, void ()** %1911
	%1912 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.323", i64 0, i64 0
	%1913 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1912, 1
	store {i64, i8*} %1913, {i64, i8*}* %tmp.319
	%1914 = load {i64, i8*}, {i64, i8*}* %tmp.319
	%1915 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 319
	store {i64, i8*} %1914, {i64, i8*}* %1915
	%1916 = bitcast float (i32, float)* @"ynf" to void ()*
	%1917 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 319
	store void ()* %1916, void ()** %1917
	%1918 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.324", i64 0, i64 0
	%1919 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1918, 1
	store {i64, i8*} %1919, {i64, i8*}* %tmp.320
	%1920 = load {i64, i8*}, {i64, i8*}* %tmp.320
	%1921 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 320
	store {i64, i8*} %1920, {i64, i8*}* %1921
	%1922 = bitcast float (float)* @"erff" to void ()*
	%1923 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 320
	store void ()* %1922, void ()** %1923
	%1924 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.325", i64 0, i64 0
	%1925 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1924, 1
	store {i64, i8*} %1925, {i64, i8*}* %tmp.321
	%1926 = load {i64, i8*}, {i64, i8*}* %tmp.321
	%1927 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 321
	store {i64, i8*} %1926, {i64, i8*}* %1927
	%1928 = bitcast float (float)* @"erfcf" to void ()*
	%1929 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 321
	store void ()* %1928, void ()** %1929
	%1930 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.326", i64 0, i64 0
	%1931 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1930, 1
	store {i64, i8*} %1931, {i64, i8*}* %tmp.322
	%1932 = load {i64, i8*}, {i64, i8*}* %tmp.322
	%1933 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 322
	store {i64, i8*} %1932, {i64, i8*}* %1933
	%1934 = bitcast float (float)* @"lgammaf" to void ()*
	%1935 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 322
	store void ()* %1934, void ()** %1935
	%1936 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.327", i64 0, i64 0
	%1937 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1936, 1
	store {i64, i8*} %1937, {i64, i8*}* %tmp.323
	%1938 = load {i64, i8*}, {i64, i8*}* %tmp.323
	%1939 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 323
	store {i64, i8*} %1938, {i64, i8*}* %1939
	%1940 = bitcast float (float)* @"tgammaf" to void ()*
	%1941 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 323
	store void ()* %1940, void ()** %1941
	%1942 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.328", i64 0, i64 0
	%1943 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1942, 1
	store {i64, i8*} %1943, {i64, i8*}* %tmp.324
	%1944 = load {i64, i8*}, {i64, i8*}* %tmp.324
	%1945 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 324
	store {i64, i8*} %1944, {i64, i8*}* %1945
	%1946 = bitcast float (float)* @"gammaf" to void ()*
	%1947 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 324
	store void ()* %1946, void ()** %1947
	%1948 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.329", i64 0, i64 0
	%1949 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1948, 1
	store {i64, i8*} %1949, {i64, i8*}* %tmp.325
	%1950 = load {i64, i8*}, {i64, i8*}* %tmp.325
	%1951 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 325
	store {i64, i8*} %1950, {i64, i8*}* %1951
	%1952 = bitcast float (float, i32*)* @"lgammaf_r" to void ()*
	%1953 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 325
	store void ()* %1952, void ()** %1953
	%1954 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.330", i64 0, i64 0
	%1955 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1954, 1
	store {i64, i8*} %1955, {i64, i8*}* %tmp.326
	%1956 = load {i64, i8*}, {i64, i8*}* %tmp.326
	%1957 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 326
	store {i64, i8*} %1956, {i64, i8*}* %1957
	%1958 = bitcast float (float)* @"rintf" to void ()*
	%1959 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 326
	store void ()* %1958, void ()** %1959
	%1960 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.331", i64 0, i64 0
	%1961 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1960, 1
	store {i64, i8*} %1961, {i64, i8*}* %tmp.327
	%1962 = load {i64, i8*}, {i64, i8*}* %tmp.327
	%1963 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 327
	store {i64, i8*} %1962, {i64, i8*}* %1963
	%1964 = bitcast float (float, float)* @"nextafterf" to void ()*
	%1965 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 327
	store void ()* %1964, void ()** %1965
	%1966 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.332", i64 0, i64 0
	%1967 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1966, 1
	store {i64, i8*} %1967, {i64, i8*}* %tmp.328
	%1968 = load {i64, i8*}, {i64, i8*}* %tmp.328
	%1969 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 328
	store {i64, i8*} %1968, {i64, i8*}* %1969
	%1970 = bitcast float (float, x86_fp80)* @"nexttowardf" to void ()*
	%1971 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 328
	store void ()* %1970, void ()** %1971
	%1972 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.333", i64 0, i64 0
	%1973 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1972, 1
	store {i64, i8*} %1973, {i64, i8*}* %tmp.329
	%1974 = load {i64, i8*}, {i64, i8*}* %tmp.329
	%1975 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 329
	store {i64, i8*} %1974, {i64, i8*}* %1975
	%1976 = bitcast float (float, float)* @"remainderf" to void ()*
	%1977 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 329
	store void ()* %1976, void ()** %1977
	%1978 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.334", i64 0, i64 0
	%1979 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1978, 1
	store {i64, i8*} %1979, {i64, i8*}* %tmp.330
	%1980 = load {i64, i8*}, {i64, i8*}* %tmp.330
	%1981 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 330
	store {i64, i8*} %1980, {i64, i8*}* %1981
	%1982 = bitcast float (float, i32)* @"scalbnf" to void ()*
	%1983 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 330
	store void ()* %1982, void ()** %1983
	%1984 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.335", i64 0, i64 0
	%1985 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1984, 1
	store {i64, i8*} %1985, {i64, i8*}* %tmp.331
	%1986 = load {i64, i8*}, {i64, i8*}* %tmp.331
	%1987 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 331
	store {i64, i8*} %1986, {i64, i8*}* %1987
	%1988 = bitcast i32 (float)* @"ilogbf" to void ()*
	%1989 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 331
	store void ()* %1988, void ()** %1989
	%1990 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.336", i64 0, i64 0
	%1991 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1990, 1
	store {i64, i8*} %1991, {i64, i8*}* %tmp.332
	%1992 = load {i64, i8*}, {i64, i8*}* %tmp.332
	%1993 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 332
	store {i64, i8*} %1992, {i64, i8*}* %1993
	%1994 = bitcast float (float, i64)* @"scalblnf" to void ()*
	%1995 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 332
	store void ()* %1994, void ()** %1995
	%1996 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.337", i64 0, i64 0
	%1997 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1996, 1
	store {i64, i8*} %1997, {i64, i8*}* %tmp.333
	%1998 = load {i64, i8*}, {i64, i8*}* %tmp.333
	%1999 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 333
	store {i64, i8*} %1998, {i64, i8*}* %1999
	%2000 = bitcast float (float)* @"nearbyintf" to void ()*
	%2001 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 333
	store void ()* %2000, void ()** %2001
	%2002 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.338", i64 0, i64 0
	%2003 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2002, 1
	store {i64, i8*} %2003, {i64, i8*}* %tmp.334
	%2004 = load {i64, i8*}, {i64, i8*}* %tmp.334
	%2005 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 334
	store {i64, i8*} %2004, {i64, i8*}* %2005
	%2006 = bitcast float (float)* @"roundf" to void ()*
	%2007 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 334
	store void ()* %2006, void ()** %2007
	%2008 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.339", i64 0, i64 0
	%2009 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2008, 1
	store {i64, i8*} %2009, {i64, i8*}* %tmp.335
	%2010 = load {i64, i8*}, {i64, i8*}* %tmp.335
	%2011 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 335
	store {i64, i8*} %2010, {i64, i8*}* %2011
	%2012 = bitcast float (float)* @"truncf" to void ()*
	%2013 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 335
	store void ()* %2012, void ()** %2013
	%2014 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.340", i64 0, i64 0
	%2015 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2014, 1
	store {i64, i8*} %2015, {i64, i8*}* %tmp.336
	%2016 = load {i64, i8*}, {i64, i8*}* %tmp.336
	%2017 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 336
	store {i64, i8*} %2016, {i64, i8*}* %2017
	%2018 = bitcast float (float, float, i32*)* @"remquof" to void ()*
	%2019 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 336
	store void ()* %2018, void ()** %2019
	%2020 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.341", i64 0, i64 0
	%2021 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2020, 1
	store {i64, i8*} %2021, {i64, i8*}* %tmp.337
	%2022 = load {i64, i8*}, {i64, i8*}* %tmp.337
	%2023 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 337
	store {i64, i8*} %2022, {i64, i8*}* %2023
	%2024 = bitcast i64 (float)* @"lrintf" to void ()*
	%2025 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 337
	store void ()* %2024, void ()** %2025
	%2026 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.342", i64 0, i64 0
	%2027 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2026, 1
	store {i64, i8*} %2027, {i64, i8*}* %tmp.338
	%2028 = load {i64, i8*}, {i64, i8*}* %tmp.338
	%2029 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 338
	store {i64, i8*} %2028, {i64, i8*}* %2029
	%2030 = bitcast i64 (float)* @"llrintf" to void ()*
	%2031 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 338
	store void ()* %2030, void ()** %2031
	%2032 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.343", i64 0, i64 0
	%2033 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2032, 1
	store {i64, i8*} %2033, {i64, i8*}* %tmp.339
	%2034 = load {i64, i8*}, {i64, i8*}* %tmp.339
	%2035 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 339
	store {i64, i8*} %2034, {i64, i8*}* %2035
	%2036 = bitcast i64 (float)* @"lroundf" to void ()*
	%2037 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 339
	store void ()* %2036, void ()** %2037
	%2038 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.344", i64 0, i64 0
	%2039 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2038, 1
	store {i64, i8*} %2039, {i64, i8*}* %tmp.340
	%2040 = load {i64, i8*}, {i64, i8*}* %tmp.340
	%2041 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 340
	store {i64, i8*} %2040, {i64, i8*}* %2041
	%2042 = bitcast i64 (float)* @"llroundf" to void ()*
	%2043 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 340
	store void ()* %2042, void ()** %2043
	%2044 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.345", i64 0, i64 0
	%2045 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2044, 1
	store {i64, i8*} %2045, {i64, i8*}* %tmp.341
	%2046 = load {i64, i8*}, {i64, i8*}* %tmp.341
	%2047 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 341
	store {i64, i8*} %2046, {i64, i8*}* %2047
	%2048 = bitcast float (float, float)* @"fdimf" to void ()*
	%2049 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 341
	store void ()* %2048, void ()** %2049
	%2050 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.346", i64 0, i64 0
	%2051 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2050, 1
	store {i64, i8*} %2051, {i64, i8*}* %tmp.342
	%2052 = load {i64, i8*}, {i64, i8*}* %tmp.342
	%2053 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 342
	store {i64, i8*} %2052, {i64, i8*}* %2053
	%2054 = bitcast float (float, float)* @"fmaxf" to void ()*
	%2055 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 342
	store void ()* %2054, void ()** %2055
	%2056 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.347", i64 0, i64 0
	%2057 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2056, 1
	store {i64, i8*} %2057, {i64, i8*}* %tmp.343
	%2058 = load {i64, i8*}, {i64, i8*}* %tmp.343
	%2059 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 343
	store {i64, i8*} %2058, {i64, i8*}* %2059
	%2060 = bitcast float (float, float)* @"fminf" to void ()*
	%2061 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 343
	store void ()* %2060, void ()** %2061
	%2062 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.348", i64 0, i64 0
	%2063 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2062, 1
	store {i64, i8*} %2063, {i64, i8*}* %tmp.344
	%2064 = load {i64, i8*}, {i64, i8*}* %tmp.344
	%2065 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 344
	store {i64, i8*} %2064, {i64, i8*}* %2065
	%2066 = bitcast float (float, float, float)* @"fmaf" to void ()*
	%2067 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 344
	store void ()* %2066, void ()** %2067
	%2068 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.349", i64 0, i64 0
	%2069 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2068, 1
	store {i64, i8*} %2069, {i64, i8*}* %tmp.345
	%2070 = load {i64, i8*}, {i64, i8*}* %tmp.345
	%2071 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 345
	store {i64, i8*} %2070, {i64, i8*}* %2071
	%2072 = bitcast float (float, float)* @"scalbf" to void ()*
	%2073 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 345
	store void ()* %2072, void ()** %2073
	%2074 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.350", i64 0, i64 0
	%2075 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %2074, 1
	store {i64, i8*} %2075, {i64, i8*}* %tmp.346
	%2076 = load {i64, i8*}, {i64, i8*}* %tmp.346
	%2077 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 346
	store {i64, i8*} %2076, {i64, i8*}* %2077
	%2078 = bitcast i32 (x86_fp80)* @"__fpclassifyl" to void ()*
	%2079 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 346
	store void ()* %2078, void ()** %2079
	%2080 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.351", i64 0, i64 0
	%2081 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2080, 1
	store {i64, i8*} %2081, {i64, i8*}* %tmp.347
	%2082 = load {i64, i8*}, {i64, i8*}* %tmp.347
	%2083 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 347
	store {i64, i8*} %2082, {i64, i8*}* %2083
	%2084 = bitcast i32 (x86_fp80)* @"__signbitl" to void ()*
	%2085 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 347
	store void ()* %2084, void ()** %2085
	%2086 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.352", i64 0, i64 0
	%2087 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2086, 1
	store {i64, i8*} %2087, {i64, i8*}* %tmp.348
	%2088 = load {i64, i8*}, {i64, i8*}* %tmp.348
	%2089 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 348
	store {i64, i8*} %2088, {i64, i8*}* %2089
	%2090 = bitcast i32 (x86_fp80)* @"__isinfl" to void ()*
	%2091 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 348
	store void ()* %2090, void ()** %2091
	%2092 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.353", i64 0, i64 0
	%2093 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2092, 1
	store {i64, i8*} %2093, {i64, i8*}* %tmp.349
	%2094 = load {i64, i8*}, {i64, i8*}* %tmp.349
	%2095 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 349
	store {i64, i8*} %2094, {i64, i8*}* %2095
	%2096 = bitcast i32 (x86_fp80)* @"__finitel" to void ()*
	%2097 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 349
	store void ()* %2096, void ()** %2097
	%2098 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.354", i64 0, i64 0
	%2099 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2098, 1
	store {i64, i8*} %2099, {i64, i8*}* %tmp.350
	%2100 = load {i64, i8*}, {i64, i8*}* %tmp.350
	%2101 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 350
	store {i64, i8*} %2100, {i64, i8*}* %2101
	%2102 = bitcast i32 (x86_fp80)* @"__isnanl" to void ()*
	%2103 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 350
	store void ()* %2102, void ()** %2103
	%2104 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.355", i64 0, i64 0
	%2105 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2104, 1
	store {i64, i8*} %2105, {i64, i8*}* %tmp.351
	%2106 = load {i64, i8*}, {i64, i8*}* %tmp.351
	%2107 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 351
	store {i64, i8*} %2106, {i64, i8*}* %2107
	%2108 = bitcast i32 (x86_fp80, x86_fp80)* @"__iseqsigl" to void ()*
	%2109 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 351
	store void ()* %2108, void ()** %2109
	%2110 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.356", i64 0, i64 0
	%2111 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %2110, 1
	store {i64, i8*} %2111, {i64, i8*}* %tmp.352
	%2112 = load {i64, i8*}, {i64, i8*}* %tmp.352
	%2113 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 352
	store {i64, i8*} %2112, {i64, i8*}* %2113
	%2114 = bitcast i32 (x86_fp80)* @"__issignalingl" to void ()*
	%2115 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 352
	store void ()* %2114, void ()** %2115
	%2116 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.357", i64 0, i64 0
	%2117 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2116, 1
	store {i64, i8*} %2117, {i64, i8*}* %tmp.353
	%2118 = load {i64, i8*}, {i64, i8*}* %tmp.353
	%2119 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 353
	store {i64, i8*} %2118, {i64, i8*}* %2119
	%2120 = bitcast x86_fp80 (x86_fp80)* @"acosl" to void ()*
	%2121 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 353
	store void ()* %2120, void ()** %2121
	%2122 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.358", i64 0, i64 0
	%2123 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2122, 1
	store {i64, i8*} %2123, {i64, i8*}* %tmp.354
	%2124 = load {i64, i8*}, {i64, i8*}* %tmp.354
	%2125 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 354
	store {i64, i8*} %2124, {i64, i8*}* %2125
	%2126 = bitcast x86_fp80 (x86_fp80)* @"asinl" to void ()*
	%2127 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 354
	store void ()* %2126, void ()** %2127
	%2128 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.359", i64 0, i64 0
	%2129 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2128, 1
	store {i64, i8*} %2129, {i64, i8*}* %tmp.355
	%2130 = load {i64, i8*}, {i64, i8*}* %tmp.355
	%2131 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 355
	store {i64, i8*} %2130, {i64, i8*}* %2131
	%2132 = bitcast x86_fp80 (x86_fp80)* @"atanl" to void ()*
	%2133 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 355
	store void ()* %2132, void ()** %2133
	%2134 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.360", i64 0, i64 0
	%2135 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2134, 1
	store {i64, i8*} %2135, {i64, i8*}* %tmp.356
	%2136 = load {i64, i8*}, {i64, i8*}* %tmp.356
	%2137 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 356
	store {i64, i8*} %2136, {i64, i8*}* %2137
	%2138 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"atan2l" to void ()*
	%2139 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 356
	store void ()* %2138, void ()** %2139
	%2140 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.361", i64 0, i64 0
	%2141 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2140, 1
	store {i64, i8*} %2141, {i64, i8*}* %tmp.357
	%2142 = load {i64, i8*}, {i64, i8*}* %tmp.357
	%2143 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 357
	store {i64, i8*} %2142, {i64, i8*}* %2143
	%2144 = bitcast x86_fp80 (x86_fp80)* @"cosl" to void ()*
	%2145 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 357
	store void ()* %2144, void ()** %2145
	%2146 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.362", i64 0, i64 0
	%2147 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2146, 1
	store {i64, i8*} %2147, {i64, i8*}* %tmp.358
	%2148 = load {i64, i8*}, {i64, i8*}* %tmp.358
	%2149 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 358
	store {i64, i8*} %2148, {i64, i8*}* %2149
	%2150 = bitcast x86_fp80 (x86_fp80)* @"sinl" to void ()*
	%2151 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 358
	store void ()* %2150, void ()** %2151
	%2152 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.363", i64 0, i64 0
	%2153 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2152, 1
	store {i64, i8*} %2153, {i64, i8*}* %tmp.359
	%2154 = load {i64, i8*}, {i64, i8*}* %tmp.359
	%2155 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 359
	store {i64, i8*} %2154, {i64, i8*}* %2155
	%2156 = bitcast x86_fp80 (x86_fp80)* @"tanl" to void ()*
	%2157 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 359
	store void ()* %2156, void ()** %2157
	%2158 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.364", i64 0, i64 0
	%2159 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2158, 1
	store {i64, i8*} %2159, {i64, i8*}* %tmp.360
	%2160 = load {i64, i8*}, {i64, i8*}* %tmp.360
	%2161 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 360
	store {i64, i8*} %2160, {i64, i8*}* %2161
	%2162 = bitcast x86_fp80 (x86_fp80)* @"coshl" to void ()*
	%2163 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 360
	store void ()* %2162, void ()** %2163
	%2164 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.365", i64 0, i64 0
	%2165 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2164, 1
	store {i64, i8*} %2165, {i64, i8*}* %tmp.361
	%2166 = load {i64, i8*}, {i64, i8*}* %tmp.361
	%2167 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 361
	store {i64, i8*} %2166, {i64, i8*}* %2167
	%2168 = bitcast x86_fp80 (x86_fp80)* @"sinhl" to void ()*
	%2169 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 361
	store void ()* %2168, void ()** %2169
	%2170 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.366", i64 0, i64 0
	%2171 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2170, 1
	store {i64, i8*} %2171, {i64, i8*}* %tmp.362
	%2172 = load {i64, i8*}, {i64, i8*}* %tmp.362
	%2173 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 362
	store {i64, i8*} %2172, {i64, i8*}* %2173
	%2174 = bitcast x86_fp80 (x86_fp80)* @"tanhl" to void ()*
	%2175 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 362
	store void ()* %2174, void ()** %2175
	%2176 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.367", i64 0, i64 0
	%2177 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2176, 1
	store {i64, i8*} %2177, {i64, i8*}* %tmp.363
	%2178 = load {i64, i8*}, {i64, i8*}* %tmp.363
	%2179 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 363
	store {i64, i8*} %2178, {i64, i8*}* %2179
	%2180 = bitcast x86_fp80 (x86_fp80)* @"acoshl" to void ()*
	%2181 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 363
	store void ()* %2180, void ()** %2181
	%2182 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.368", i64 0, i64 0
	%2183 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2182, 1
	store {i64, i8*} %2183, {i64, i8*}* %tmp.364
	%2184 = load {i64, i8*}, {i64, i8*}* %tmp.364
	%2185 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 364
	store {i64, i8*} %2184, {i64, i8*}* %2185
	%2186 = bitcast x86_fp80 (x86_fp80)* @"asinhl" to void ()*
	%2187 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 364
	store void ()* %2186, void ()** %2187
	%2188 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.369", i64 0, i64 0
	%2189 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2188, 1
	store {i64, i8*} %2189, {i64, i8*}* %tmp.365
	%2190 = load {i64, i8*}, {i64, i8*}* %tmp.365
	%2191 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 365
	store {i64, i8*} %2190, {i64, i8*}* %2191
	%2192 = bitcast x86_fp80 (x86_fp80)* @"atanhl" to void ()*
	%2193 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 365
	store void ()* %2192, void ()** %2193
	%2194 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.370", i64 0, i64 0
	%2195 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2194, 1
	store {i64, i8*} %2195, {i64, i8*}* %tmp.366
	%2196 = load {i64, i8*}, {i64, i8*}* %tmp.366
	%2197 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 366
	store {i64, i8*} %2196, {i64, i8*}* %2197
	%2198 = bitcast x86_fp80 (x86_fp80)* @"expl" to void ()*
	%2199 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 366
	store void ()* %2198, void ()** %2199
	%2200 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.371", i64 0, i64 0
	%2201 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2200, 1
	store {i64, i8*} %2201, {i64, i8*}* %tmp.367
	%2202 = load {i64, i8*}, {i64, i8*}* %tmp.367
	%2203 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 367
	store {i64, i8*} %2202, {i64, i8*}* %2203
	%2204 = bitcast x86_fp80 (x86_fp80, i32*)* @"frexpl" to void ()*
	%2205 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 367
	store void ()* %2204, void ()** %2205
	%2206 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.372", i64 0, i64 0
	%2207 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2206, 1
	store {i64, i8*} %2207, {i64, i8*}* %tmp.368
	%2208 = load {i64, i8*}, {i64, i8*}* %tmp.368
	%2209 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 368
	store {i64, i8*} %2208, {i64, i8*}* %2209
	%2210 = bitcast x86_fp80 (x86_fp80, i32)* @"ldexpl" to void ()*
	%2211 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 368
	store void ()* %2210, void ()** %2211
	%2212 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.373", i64 0, i64 0
	%2213 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2212, 1
	store {i64, i8*} %2213, {i64, i8*}* %tmp.369
	%2214 = load {i64, i8*}, {i64, i8*}* %tmp.369
	%2215 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 369
	store {i64, i8*} %2214, {i64, i8*}* %2215
	%2216 = bitcast x86_fp80 (x86_fp80)* @"logl" to void ()*
	%2217 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 369
	store void ()* %2216, void ()** %2217
	%2218 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.374", i64 0, i64 0
	%2219 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2218, 1
	store {i64, i8*} %2219, {i64, i8*}* %tmp.370
	%2220 = load {i64, i8*}, {i64, i8*}* %tmp.370
	%2221 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 370
	store {i64, i8*} %2220, {i64, i8*}* %2221
	%2222 = bitcast x86_fp80 (x86_fp80)* @"log10l" to void ()*
	%2223 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 370
	store void ()* %2222, void ()** %2223
	%2224 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.375", i64 0, i64 0
	%2225 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2224, 1
	store {i64, i8*} %2225, {i64, i8*}* %tmp.371
	%2226 = load {i64, i8*}, {i64, i8*}* %tmp.371
	%2227 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 371
	store {i64, i8*} %2226, {i64, i8*}* %2227
	%2228 = bitcast x86_fp80 (x86_fp80, x86_fp80*)* @"modfl" to void ()*
	%2229 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 371
	store void ()* %2228, void ()** %2229
	%2230 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.376", i64 0, i64 0
	%2231 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2230, 1
	store {i64, i8*} %2231, {i64, i8*}* %tmp.372
	%2232 = load {i64, i8*}, {i64, i8*}* %tmp.372
	%2233 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 372
	store {i64, i8*} %2232, {i64, i8*}* %2233
	%2234 = bitcast x86_fp80 (x86_fp80)* @"expm1l" to void ()*
	%2235 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 372
	store void ()* %2234, void ()** %2235
	%2236 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.377", i64 0, i64 0
	%2237 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2236, 1
	store {i64, i8*} %2237, {i64, i8*}* %tmp.373
	%2238 = load {i64, i8*}, {i64, i8*}* %tmp.373
	%2239 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 373
	store {i64, i8*} %2238, {i64, i8*}* %2239
	%2240 = bitcast x86_fp80 (x86_fp80)* @"log1pl" to void ()*
	%2241 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 373
	store void ()* %2240, void ()** %2241
	%2242 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.378", i64 0, i64 0
	%2243 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2242, 1
	store {i64, i8*} %2243, {i64, i8*}* %tmp.374
	%2244 = load {i64, i8*}, {i64, i8*}* %tmp.374
	%2245 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 374
	store {i64, i8*} %2244, {i64, i8*}* %2245
	%2246 = bitcast x86_fp80 (x86_fp80)* @"logbl" to void ()*
	%2247 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 374
	store void ()* %2246, void ()** %2247
	%2248 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.379", i64 0, i64 0
	%2249 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2248, 1
	store {i64, i8*} %2249, {i64, i8*}* %tmp.375
	%2250 = load {i64, i8*}, {i64, i8*}* %tmp.375
	%2251 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 375
	store {i64, i8*} %2250, {i64, i8*}* %2251
	%2252 = bitcast x86_fp80 (x86_fp80)* @"exp2l" to void ()*
	%2253 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 375
	store void ()* %2252, void ()** %2253
	%2254 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.380", i64 0, i64 0
	%2255 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2254, 1
	store {i64, i8*} %2255, {i64, i8*}* %tmp.376
	%2256 = load {i64, i8*}, {i64, i8*}* %tmp.376
	%2257 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 376
	store {i64, i8*} %2256, {i64, i8*}* %2257
	%2258 = bitcast x86_fp80 (x86_fp80)* @"log2l" to void ()*
	%2259 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 376
	store void ()* %2258, void ()** %2259
	%2260 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.381", i64 0, i64 0
	%2261 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2260, 1
	store {i64, i8*} %2261, {i64, i8*}* %tmp.377
	%2262 = load {i64, i8*}, {i64, i8*}* %tmp.377
	%2263 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 377
	store {i64, i8*} %2262, {i64, i8*}* %2263
	%2264 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"powl" to void ()*
	%2265 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 377
	store void ()* %2264, void ()** %2265
	%2266 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.382", i64 0, i64 0
	%2267 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2266, 1
	store {i64, i8*} %2267, {i64, i8*}* %tmp.378
	%2268 = load {i64, i8*}, {i64, i8*}* %tmp.378
	%2269 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 378
	store {i64, i8*} %2268, {i64, i8*}* %2269
	%2270 = bitcast x86_fp80 (x86_fp80)* @"sqrtl" to void ()*
	%2271 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 378
	store void ()* %2270, void ()** %2271
	%2272 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.383", i64 0, i64 0
	%2273 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2272, 1
	store {i64, i8*} %2273, {i64, i8*}* %tmp.379
	%2274 = load {i64, i8*}, {i64, i8*}* %tmp.379
	%2275 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 379
	store {i64, i8*} %2274, {i64, i8*}* %2275
	%2276 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"hypotl" to void ()*
	%2277 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 379
	store void ()* %2276, void ()** %2277
	%2278 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.384", i64 0, i64 0
	%2279 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2278, 1
	store {i64, i8*} %2279, {i64, i8*}* %tmp.380
	%2280 = load {i64, i8*}, {i64, i8*}* %tmp.380
	%2281 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 380
	store {i64, i8*} %2280, {i64, i8*}* %2281
	%2282 = bitcast x86_fp80 (x86_fp80)* @"cbrtl" to void ()*
	%2283 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 380
	store void ()* %2282, void ()** %2283
	%2284 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.385", i64 0, i64 0
	%2285 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2284, 1
	store {i64, i8*} %2285, {i64, i8*}* %tmp.381
	%2286 = load {i64, i8*}, {i64, i8*}* %tmp.381
	%2287 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 381
	store {i64, i8*} %2286, {i64, i8*}* %2287
	%2288 = bitcast x86_fp80 (x86_fp80)* @"ceill" to void ()*
	%2289 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 381
	store void ()* %2288, void ()** %2289
	%2290 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.386", i64 0, i64 0
	%2291 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2290, 1
	store {i64, i8*} %2291, {i64, i8*}* %tmp.382
	%2292 = load {i64, i8*}, {i64, i8*}* %tmp.382
	%2293 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 382
	store {i64, i8*} %2292, {i64, i8*}* %2293
	%2294 = bitcast x86_fp80 (x86_fp80)* @"fabsl" to void ()*
	%2295 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 382
	store void ()* %2294, void ()** %2295
	%2296 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.387", i64 0, i64 0
	%2297 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2296, 1
	store {i64, i8*} %2297, {i64, i8*}* %tmp.383
	%2298 = load {i64, i8*}, {i64, i8*}* %tmp.383
	%2299 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 383
	store {i64, i8*} %2298, {i64, i8*}* %2299
	%2300 = bitcast x86_fp80 (x86_fp80)* @"floorl" to void ()*
	%2301 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 383
	store void ()* %2300, void ()** %2301
	%2302 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.388", i64 0, i64 0
	%2303 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2302, 1
	store {i64, i8*} %2303, {i64, i8*}* %tmp.384
	%2304 = load {i64, i8*}, {i64, i8*}* %tmp.384
	%2305 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 384
	store {i64, i8*} %2304, {i64, i8*}* %2305
	%2306 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fmodl" to void ()*
	%2307 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 384
	store void ()* %2306, void ()** %2307
	%2308 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.389", i64 0, i64 0
	%2309 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2308, 1
	store {i64, i8*} %2309, {i64, i8*}* %tmp.385
	%2310 = load {i64, i8*}, {i64, i8*}* %tmp.385
	%2311 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 385
	store {i64, i8*} %2310, {i64, i8*}* %2311
	%2312 = bitcast i32 (x86_fp80)* @"isinfl" to void ()*
	%2313 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 385
	store void ()* %2312, void ()** %2313
	%2314 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.390", i64 0, i64 0
	%2315 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2314, 1
	store {i64, i8*} %2315, {i64, i8*}* %tmp.386
	%2316 = load {i64, i8*}, {i64, i8*}* %tmp.386
	%2317 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 386
	store {i64, i8*} %2316, {i64, i8*}* %2317
	%2318 = bitcast i32 (x86_fp80)* @"finitel" to void ()*
	%2319 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 386
	store void ()* %2318, void ()** %2319
	%2320 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.391", i64 0, i64 0
	%2321 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2320, 1
	store {i64, i8*} %2321, {i64, i8*}* %tmp.387
	%2322 = load {i64, i8*}, {i64, i8*}* %tmp.387
	%2323 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 387
	store {i64, i8*} %2322, {i64, i8*}* %2323
	%2324 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"dreml" to void ()*
	%2325 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 387
	store void ()* %2324, void ()** %2325
	%2326 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.392", i64 0, i64 0
	%2327 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %2326, 1
	store {i64, i8*} %2327, {i64, i8*}* %tmp.388
	%2328 = load {i64, i8*}, {i64, i8*}* %tmp.388
	%2329 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 388
	store {i64, i8*} %2328, {i64, i8*}* %2329
	%2330 = bitcast x86_fp80 (x86_fp80)* @"significandl" to void ()*
	%2331 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 388
	store void ()* %2330, void ()** %2331
	%2332 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.393", i64 0, i64 0
	%2333 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2332, 1
	store {i64, i8*} %2333, {i64, i8*}* %tmp.389
	%2334 = load {i64, i8*}, {i64, i8*}* %tmp.389
	%2335 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 389
	store {i64, i8*} %2334, {i64, i8*}* %2335
	%2336 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"copysignl" to void ()*
	%2337 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 389
	store void ()* %2336, void ()** %2337
	%2338 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.394", i64 0, i64 0
	%2339 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2338, 1
	store {i64, i8*} %2339, {i64, i8*}* %tmp.390
	%2340 = load {i64, i8*}, {i64, i8*}* %tmp.390
	%2341 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 390
	store {i64, i8*} %2340, {i64, i8*}* %2341
	%2342 = bitcast x86_fp80 (i8*)* @"nanl" to void ()*
	%2343 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 390
	store void ()* %2342, void ()** %2343
	%2344 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.395", i64 0, i64 0
	%2345 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2344, 1
	store {i64, i8*} %2345, {i64, i8*}* %tmp.391
	%2346 = load {i64, i8*}, {i64, i8*}* %tmp.391
	%2347 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 391
	store {i64, i8*} %2346, {i64, i8*}* %2347
	%2348 = bitcast i32 (x86_fp80)* @"isnanl" to void ()*
	%2349 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 391
	store void ()* %2348, void ()** %2349
	%2350 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.396", i64 0, i64 0
	%2351 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2350, 1
	store {i64, i8*} %2351, {i64, i8*}* %tmp.392
	%2352 = load {i64, i8*}, {i64, i8*}* %tmp.392
	%2353 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 392
	store {i64, i8*} %2352, {i64, i8*}* %2353
	%2354 = bitcast x86_fp80 (x86_fp80)* @"j0l" to void ()*
	%2355 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 392
	store void ()* %2354, void ()** %2355
	%2356 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.397", i64 0, i64 0
	%2357 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2356, 1
	store {i64, i8*} %2357, {i64, i8*}* %tmp.393
	%2358 = load {i64, i8*}, {i64, i8*}* %tmp.393
	%2359 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 393
	store {i64, i8*} %2358, {i64, i8*}* %2359
	%2360 = bitcast x86_fp80 (x86_fp80)* @"j1l" to void ()*
	%2361 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 393
	store void ()* %2360, void ()** %2361
	%2362 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.398", i64 0, i64 0
	%2363 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2362, 1
	store {i64, i8*} %2363, {i64, i8*}* %tmp.394
	%2364 = load {i64, i8*}, {i64, i8*}* %tmp.394
	%2365 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 394
	store {i64, i8*} %2364, {i64, i8*}* %2365
	%2366 = bitcast x86_fp80 (i32, x86_fp80)* @"jnl" to void ()*
	%2367 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 394
	store void ()* %2366, void ()** %2367
	%2368 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.399", i64 0, i64 0
	%2369 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2368, 1
	store {i64, i8*} %2369, {i64, i8*}* %tmp.395
	%2370 = load {i64, i8*}, {i64, i8*}* %tmp.395
	%2371 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 395
	store {i64, i8*} %2370, {i64, i8*}* %2371
	%2372 = bitcast x86_fp80 (x86_fp80)* @"y0l" to void ()*
	%2373 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 395
	store void ()* %2372, void ()** %2373
	%2374 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.400", i64 0, i64 0
	%2375 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2374, 1
	store {i64, i8*} %2375, {i64, i8*}* %tmp.396
	%2376 = load {i64, i8*}, {i64, i8*}* %tmp.396
	%2377 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 396
	store {i64, i8*} %2376, {i64, i8*}* %2377
	%2378 = bitcast x86_fp80 (x86_fp80)* @"y1l" to void ()*
	%2379 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 396
	store void ()* %2378, void ()** %2379
	%2380 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.401", i64 0, i64 0
	%2381 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2380, 1
	store {i64, i8*} %2381, {i64, i8*}* %tmp.397
	%2382 = load {i64, i8*}, {i64, i8*}* %tmp.397
	%2383 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 397
	store {i64, i8*} %2382, {i64, i8*}* %2383
	%2384 = bitcast x86_fp80 (i32, x86_fp80)* @"ynl" to void ()*
	%2385 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 397
	store void ()* %2384, void ()** %2385
	%2386 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.402", i64 0, i64 0
	%2387 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2386, 1
	store {i64, i8*} %2387, {i64, i8*}* %tmp.398
	%2388 = load {i64, i8*}, {i64, i8*}* %tmp.398
	%2389 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 398
	store {i64, i8*} %2388, {i64, i8*}* %2389
	%2390 = bitcast x86_fp80 (x86_fp80)* @"erfl" to void ()*
	%2391 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 398
	store void ()* %2390, void ()** %2391
	%2392 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.403", i64 0, i64 0
	%2393 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2392, 1
	store {i64, i8*} %2393, {i64, i8*}* %tmp.399
	%2394 = load {i64, i8*}, {i64, i8*}* %tmp.399
	%2395 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 399
	store {i64, i8*} %2394, {i64, i8*}* %2395
	%2396 = bitcast x86_fp80 (x86_fp80)* @"erfcl" to void ()*
	%2397 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 399
	store void ()* %2396, void ()** %2397
	%2398 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.404", i64 0, i64 0
	%2399 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2398, 1
	store {i64, i8*} %2399, {i64, i8*}* %tmp.400
	%2400 = load {i64, i8*}, {i64, i8*}* %tmp.400
	%2401 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 400
	store {i64, i8*} %2400, {i64, i8*}* %2401
	%2402 = bitcast x86_fp80 (x86_fp80)* @"lgammal" to void ()*
	%2403 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 400
	store void ()* %2402, void ()** %2403
	%2404 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.405", i64 0, i64 0
	%2405 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2404, 1
	store {i64, i8*} %2405, {i64, i8*}* %tmp.401
	%2406 = load {i64, i8*}, {i64, i8*}* %tmp.401
	%2407 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 401
	store {i64, i8*} %2406, {i64, i8*}* %2407
	%2408 = bitcast x86_fp80 (x86_fp80)* @"tgammal" to void ()*
	%2409 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 401
	store void ()* %2408, void ()** %2409
	%2410 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.406", i64 0, i64 0
	%2411 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2410, 1
	store {i64, i8*} %2411, {i64, i8*}* %tmp.402
	%2412 = load {i64, i8*}, {i64, i8*}* %tmp.402
	%2413 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 402
	store {i64, i8*} %2412, {i64, i8*}* %2413
	%2414 = bitcast x86_fp80 (x86_fp80)* @"gammal" to void ()*
	%2415 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 402
	store void ()* %2414, void ()** %2415
	%2416 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.407", i64 0, i64 0
	%2417 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2416, 1
	store {i64, i8*} %2417, {i64, i8*}* %tmp.403
	%2418 = load {i64, i8*}, {i64, i8*}* %tmp.403
	%2419 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 403
	store {i64, i8*} %2418, {i64, i8*}* %2419
	%2420 = bitcast x86_fp80 (x86_fp80, i32*)* @"lgammal_r" to void ()*
	%2421 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 403
	store void ()* %2420, void ()** %2421
	%2422 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.408", i64 0, i64 0
	%2423 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2422, 1
	store {i64, i8*} %2423, {i64, i8*}* %tmp.404
	%2424 = load {i64, i8*}, {i64, i8*}* %tmp.404
	%2425 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 404
	store {i64, i8*} %2424, {i64, i8*}* %2425
	%2426 = bitcast x86_fp80 (x86_fp80)* @"rintl" to void ()*
	%2427 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 404
	store void ()* %2426, void ()** %2427
	%2428 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.409", i64 0, i64 0
	%2429 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2428, 1
	store {i64, i8*} %2429, {i64, i8*}* %tmp.405
	%2430 = load {i64, i8*}, {i64, i8*}* %tmp.405
	%2431 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 405
	store {i64, i8*} %2430, {i64, i8*}* %2431
	%2432 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"nextafterl" to void ()*
	%2433 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 405
	store void ()* %2432, void ()** %2433
	%2434 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.410", i64 0, i64 0
	%2435 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2434, 1
	store {i64, i8*} %2435, {i64, i8*}* %tmp.406
	%2436 = load {i64, i8*}, {i64, i8*}* %tmp.406
	%2437 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 406
	store {i64, i8*} %2436, {i64, i8*}* %2437
	%2438 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"nexttowardl" to void ()*
	%2439 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 406
	store void ()* %2438, void ()** %2439
	%2440 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.411", i64 0, i64 0
	%2441 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2440, 1
	store {i64, i8*} %2441, {i64, i8*}* %tmp.407
	%2442 = load {i64, i8*}, {i64, i8*}* %tmp.407
	%2443 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 407
	store {i64, i8*} %2442, {i64, i8*}* %2443
	%2444 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"remainderl" to void ()*
	%2445 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 407
	store void ()* %2444, void ()** %2445
	%2446 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.412", i64 0, i64 0
	%2447 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2446, 1
	store {i64, i8*} %2447, {i64, i8*}* %tmp.408
	%2448 = load {i64, i8*}, {i64, i8*}* %tmp.408
	%2449 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 408
	store {i64, i8*} %2448, {i64, i8*}* %2449
	%2450 = bitcast x86_fp80 (x86_fp80, i32)* @"scalbnl" to void ()*
	%2451 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 408
	store void ()* %2450, void ()** %2451
	%2452 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.413", i64 0, i64 0
	%2453 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2452, 1
	store {i64, i8*} %2453, {i64, i8*}* %tmp.409
	%2454 = load {i64, i8*}, {i64, i8*}* %tmp.409
	%2455 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 409
	store {i64, i8*} %2454, {i64, i8*}* %2455
	%2456 = bitcast i32 (x86_fp80)* @"ilogbl" to void ()*
	%2457 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 409
	store void ()* %2456, void ()** %2457
	%2458 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.414", i64 0, i64 0
	%2459 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2458, 1
	store {i64, i8*} %2459, {i64, i8*}* %tmp.410
	%2460 = load {i64, i8*}, {i64, i8*}* %tmp.410
	%2461 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 410
	store {i64, i8*} %2460, {i64, i8*}* %2461
	%2462 = bitcast x86_fp80 (x86_fp80, i64)* @"scalblnl" to void ()*
	%2463 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 410
	store void ()* %2462, void ()** %2463
	%2464 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.415", i64 0, i64 0
	%2465 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2464, 1
	store {i64, i8*} %2465, {i64, i8*}* %tmp.411
	%2466 = load {i64, i8*}, {i64, i8*}* %tmp.411
	%2467 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 411
	store {i64, i8*} %2466, {i64, i8*}* %2467
	%2468 = bitcast x86_fp80 (x86_fp80)* @"nearbyintl" to void ()*
	%2469 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 411
	store void ()* %2468, void ()** %2469
	%2470 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.416", i64 0, i64 0
	%2471 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2470, 1
	store {i64, i8*} %2471, {i64, i8*}* %tmp.412
	%2472 = load {i64, i8*}, {i64, i8*}* %tmp.412
	%2473 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 412
	store {i64, i8*} %2472, {i64, i8*}* %2473
	%2474 = bitcast x86_fp80 (x86_fp80)* @"roundl" to void ()*
	%2475 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 412
	store void ()* %2474, void ()** %2475
	%2476 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.417", i64 0, i64 0
	%2477 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2476, 1
	store {i64, i8*} %2477, {i64, i8*}* %tmp.413
	%2478 = load {i64, i8*}, {i64, i8*}* %tmp.413
	%2479 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 413
	store {i64, i8*} %2478, {i64, i8*}* %2479
	%2480 = bitcast x86_fp80 (x86_fp80)* @"truncl" to void ()*
	%2481 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 413
	store void ()* %2480, void ()** %2481
	%2482 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.418", i64 0, i64 0
	%2483 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2482, 1
	store {i64, i8*} %2483, {i64, i8*}* %tmp.414
	%2484 = load {i64, i8*}, {i64, i8*}* %tmp.414
	%2485 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 414
	store {i64, i8*} %2484, {i64, i8*}* %2485
	%2486 = bitcast x86_fp80 (x86_fp80, x86_fp80, i32*)* @"remquol" to void ()*
	%2487 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 414
	store void ()* %2486, void ()** %2487
	%2488 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.419", i64 0, i64 0
	%2489 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2488, 1
	store {i64, i8*} %2489, {i64, i8*}* %tmp.415
	%2490 = load {i64, i8*}, {i64, i8*}* %tmp.415
	%2491 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 415
	store {i64, i8*} %2490, {i64, i8*}* %2491
	%2492 = bitcast i64 (x86_fp80)* @"lrintl" to void ()*
	%2493 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 415
	store void ()* %2492, void ()** %2493
	%2494 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.420", i64 0, i64 0
	%2495 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2494, 1
	store {i64, i8*} %2495, {i64, i8*}* %tmp.416
	%2496 = load {i64, i8*}, {i64, i8*}* %tmp.416
	%2497 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 416
	store {i64, i8*} %2496, {i64, i8*}* %2497
	%2498 = bitcast i64 (x86_fp80)* @"llrintl" to void ()*
	%2499 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 416
	store void ()* %2498, void ()** %2499
	%2500 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.421", i64 0, i64 0
	%2501 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2500, 1
	store {i64, i8*} %2501, {i64, i8*}* %tmp.417
	%2502 = load {i64, i8*}, {i64, i8*}* %tmp.417
	%2503 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 417
	store {i64, i8*} %2502, {i64, i8*}* %2503
	%2504 = bitcast i64 (x86_fp80)* @"lroundl" to void ()*
	%2505 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 417
	store void ()* %2504, void ()** %2505
	%2506 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.422", i64 0, i64 0
	%2507 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2506, 1
	store {i64, i8*} %2507, {i64, i8*}* %tmp.418
	%2508 = load {i64, i8*}, {i64, i8*}* %tmp.418
	%2509 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 418
	store {i64, i8*} %2508, {i64, i8*}* %2509
	%2510 = bitcast i64 (x86_fp80)* @"llroundl" to void ()*
	%2511 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 418
	store void ()* %2510, void ()** %2511
	%2512 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.423", i64 0, i64 0
	%2513 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2512, 1
	store {i64, i8*} %2513, {i64, i8*}* %tmp.419
	%2514 = load {i64, i8*}, {i64, i8*}* %tmp.419
	%2515 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 419
	store {i64, i8*} %2514, {i64, i8*}* %2515
	%2516 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fdiml" to void ()*
	%2517 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 419
	store void ()* %2516, void ()** %2517
	%2518 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.424", i64 0, i64 0
	%2519 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2518, 1
	store {i64, i8*} %2519, {i64, i8*}* %tmp.420
	%2520 = load {i64, i8*}, {i64, i8*}* %tmp.420
	%2521 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 420
	store {i64, i8*} %2520, {i64, i8*}* %2521
	%2522 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fmaxl" to void ()*
	%2523 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 420
	store void ()* %2522, void ()** %2523
	%2524 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.425", i64 0, i64 0
	%2525 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2524, 1
	store {i64, i8*} %2525, {i64, i8*}* %tmp.421
	%2526 = load {i64, i8*}, {i64, i8*}* %tmp.421
	%2527 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 421
	store {i64, i8*} %2526, {i64, i8*}* %2527
	%2528 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fminl" to void ()*
	%2529 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 421
	store void ()* %2528, void ()** %2529
	%2530 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.426", i64 0, i64 0
	%2531 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2530, 1
	store {i64, i8*} %2531, {i64, i8*}* %tmp.422
	%2532 = load {i64, i8*}, {i64, i8*}* %tmp.422
	%2533 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 422
	store {i64, i8*} %2532, {i64, i8*}* %2533
	%2534 = bitcast x86_fp80 (x86_fp80, x86_fp80, x86_fp80)* @"fmal" to void ()*
	%2535 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 422
	store void ()* %2534, void ()** %2535
	%2536 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.427", i64 0, i64 0
	%2537 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2536, 1
	store {i64, i8*} %2537, {i64, i8*}* %tmp.423
	%2538 = load {i64, i8*}, {i64, i8*}* %tmp.423
	%2539 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 423
	store {i64, i8*} %2538, {i64, i8*}* %2539
	%2540 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"scalbl" to void ()*
	%2541 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 423
	store void ()* %2540, void ()** %2541
	%2542 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.428", i64 0, i64 0
	%2543 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %2542, 1
	store {i64, i8*} %2543, {i64, i8*}* %tmp.424
	%2544 = load {i64, i8*}, {i64, i8*}* %tmp.424
	%2545 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 424
	store {i64, i8*} %2544, {i64, i8*}* %2545
	%2546 = bitcast void (i8*, i8*, i32, i8*)* @"__assert_fail" to void ()*
	%2547 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 424
	store void ()* %2546, void ()** %2547
	%2548 = getelementptr [21 x i8], [21 x i8]* @"cstd::str.429", i64 0, i64 0
	%2549 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %2548, 1
	store {i64, i8*} %2549, {i64, i8*}* %tmp.425
	%2550 = load {i64, i8*}, {i64, i8*}* %tmp.425
	%2551 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 425
	store {i64, i8*} %2550, {i64, i8*}* %2551
	%2552 = bitcast void (i32, i8*, i32, i8*)* @"__assert_perror_fail" to void ()*
	%2553 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 425
	store void ()* %2552, void ()** %2553
	%2554 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.430", i64 0, i64 0
	%2555 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2554, 1
	store {i64, i8*} %2555, {i64, i8*}* %tmp.426
	%2556 = load {i64, i8*}, {i64, i8*}* %tmp.426
	%2557 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 426
	store {i64, i8*} %2556, {i64, i8*}* %2557
	%2558 = bitcast void (i8*, i8*, i32)* @"__assert" to void ()*
	%2559 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 426
	store void ()* %2558, void ()** %2559
	%2560 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.431", i64 0, i64 0
	%2561 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %2560, 1
	store {i64, i8*} %2561, {i64, i8*}* %tmp.427
	%2562 = load {i64, i8*}, {i64, i8*}* %tmp.427
	%2563 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 427
	store {i64, i8*} %2562, {i64, i8*}* %2563
	%2564 = bitcast i16** ()* @"__ctype_b_loc" to void ()*
	%2565 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 427
	store void ()* %2564, void ()** %2565
	%2566 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.432", i64 0, i64 0
	%2567 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %2566, 1
	store {i64, i8*} %2567, {i64, i8*}* %tmp.428
	%2568 = load {i64, i8*}, {i64, i8*}* %tmp.428
	%2569 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 428
	store {i64, i8*} %2568, {i64, i8*}* %2569
	%2570 = bitcast i32** ()* @"__ctype_tolower_loc" to void ()*
	%2571 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 428
	store void ()* %2570, void ()** %2571
	%2572 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.433", i64 0, i64 0
	%2573 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %2572, 1
	store {i64, i8*} %2573, {i64, i8*}* %tmp.429
	%2574 = load {i64, i8*}, {i64, i8*}* %tmp.429
	%2575 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 429
	store {i64, i8*} %2574, {i64, i8*}* %2575
	%2576 = bitcast i32** ()* @"__ctype_toupper_loc" to void ()*
	%2577 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 429
	store void ()* %2576, void ()** %2577
	%2578 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.434", i64 0, i64 0
	%2579 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2578, 1
	store {i64, i8*} %2579, {i64, i8*}* %tmp.430
	%2580 = load {i64, i8*}, {i64, i8*}* %tmp.430
	%2581 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 430
	store {i64, i8*} %2580, {i64, i8*}* %2581
	%2582 = bitcast i32 (i32)* @"isalnum" to void ()*
	%2583 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 430
	store void ()* %2582, void ()** %2583
	%2584 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.435", i64 0, i64 0
	%2585 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2584, 1
	store {i64, i8*} %2585, {i64, i8*}* %tmp.431
	%2586 = load {i64, i8*}, {i64, i8*}* %tmp.431
	%2587 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 431
	store {i64, i8*} %2586, {i64, i8*}* %2587
	%2588 = bitcast i32 (i32)* @"isalpha" to void ()*
	%2589 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 431
	store void ()* %2588, void ()** %2589
	%2590 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.436", i64 0, i64 0
	%2591 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2590, 1
	store {i64, i8*} %2591, {i64, i8*}* %tmp.432
	%2592 = load {i64, i8*}, {i64, i8*}* %tmp.432
	%2593 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 432
	store {i64, i8*} %2592, {i64, i8*}* %2593
	%2594 = bitcast i32 (i32)* @"iscntrl" to void ()*
	%2595 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 432
	store void ()* %2594, void ()** %2595
	%2596 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.437", i64 0, i64 0
	%2597 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2596, 1
	store {i64, i8*} %2597, {i64, i8*}* %tmp.433
	%2598 = load {i64, i8*}, {i64, i8*}* %tmp.433
	%2599 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 433
	store {i64, i8*} %2598, {i64, i8*}* %2599
	%2600 = bitcast i32 (i32)* @"isdigit" to void ()*
	%2601 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 433
	store void ()* %2600, void ()** %2601
	%2602 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.438", i64 0, i64 0
	%2603 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2602, 1
	store {i64, i8*} %2603, {i64, i8*}* %tmp.434
	%2604 = load {i64, i8*}, {i64, i8*}* %tmp.434
	%2605 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 434
	store {i64, i8*} %2604, {i64, i8*}* %2605
	%2606 = bitcast i32 (i32)* @"islower" to void ()*
	%2607 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 434
	store void ()* %2606, void ()** %2607
	%2608 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.439", i64 0, i64 0
	%2609 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2608, 1
	store {i64, i8*} %2609, {i64, i8*}* %tmp.435
	%2610 = load {i64, i8*}, {i64, i8*}* %tmp.435
	%2611 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 435
	store {i64, i8*} %2610, {i64, i8*}* %2611
	%2612 = bitcast i32 (i32)* @"isgraph" to void ()*
	%2613 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 435
	store void ()* %2612, void ()** %2613
	%2614 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.440", i64 0, i64 0
	%2615 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2614, 1
	store {i64, i8*} %2615, {i64, i8*}* %tmp.436
	%2616 = load {i64, i8*}, {i64, i8*}* %tmp.436
	%2617 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 436
	store {i64, i8*} %2616, {i64, i8*}* %2617
	%2618 = bitcast i32 (i32)* @"isprint" to void ()*
	%2619 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 436
	store void ()* %2618, void ()** %2619
	%2620 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.441", i64 0, i64 0
	%2621 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2620, 1
	store {i64, i8*} %2621, {i64, i8*}* %tmp.437
	%2622 = load {i64, i8*}, {i64, i8*}* %tmp.437
	%2623 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 437
	store {i64, i8*} %2622, {i64, i8*}* %2623
	%2624 = bitcast i32 (i32)* @"ispunct" to void ()*
	%2625 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 437
	store void ()* %2624, void ()** %2625
	%2626 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.442", i64 0, i64 0
	%2627 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2626, 1
	store {i64, i8*} %2627, {i64, i8*}* %tmp.438
	%2628 = load {i64, i8*}, {i64, i8*}* %tmp.438
	%2629 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 438
	store {i64, i8*} %2628, {i64, i8*}* %2629
	%2630 = bitcast i32 (i32)* @"isspace" to void ()*
	%2631 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 438
	store void ()* %2630, void ()** %2631
	%2632 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.443", i64 0, i64 0
	%2633 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2632, 1
	store {i64, i8*} %2633, {i64, i8*}* %tmp.439
	%2634 = load {i64, i8*}, {i64, i8*}* %tmp.439
	%2635 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 439
	store {i64, i8*} %2634, {i64, i8*}* %2635
	%2636 = bitcast i32 (i32)* @"isupper" to void ()*
	%2637 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 439
	store void ()* %2636, void ()** %2637
	%2638 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.444", i64 0, i64 0
	%2639 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2638, 1
	store {i64, i8*} %2639, {i64, i8*}* %tmp.440
	%2640 = load {i64, i8*}, {i64, i8*}* %tmp.440
	%2641 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 440
	store {i64, i8*} %2640, {i64, i8*}* %2641
	%2642 = bitcast i32 (i32)* @"isxdigit" to void ()*
	%2643 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 440
	store void ()* %2642, void ()** %2643
	%2644 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.445", i64 0, i64 0
	%2645 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2644, 1
	store {i64, i8*} %2645, {i64, i8*}* %tmp.441
	%2646 = load {i64, i8*}, {i64, i8*}* %tmp.441
	%2647 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 441
	store {i64, i8*} %2646, {i64, i8*}* %2647
	%2648 = bitcast i32 (i32)* @"tolower" to void ()*
	%2649 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 441
	store void ()* %2648, void ()** %2649
	%2650 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.446", i64 0, i64 0
	%2651 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2650, 1
	store {i64, i8*} %2651, {i64, i8*}* %tmp.442
	%2652 = load {i64, i8*}, {i64, i8*}* %tmp.442
	%2653 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 442
	store {i64, i8*} %2652, {i64, i8*}* %2653
	%2654 = bitcast i32 (i32)* @"toupper" to void ()*
	%2655 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 442
	store void ()* %2654, void ()** %2655
	%2656 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.447", i64 0, i64 0
	%2657 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2656, 1
	store {i64, i8*} %2657, {i64, i8*}* %tmp.443
	%2658 = load {i64, i8*}, {i64, i8*}* %tmp.443
	%2659 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 443
	store {i64, i8*} %2658, {i64, i8*}* %2659
	%2660 = bitcast i32 (i32)* @"isblank" to void ()*
	%2661 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 443
	store void ()* %2660, void ()** %2661
	%2662 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.448", i64 0, i64 0
	%2663 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2662, 1
	store {i64, i8*} %2663, {i64, i8*}* %tmp.444
	%2664 = load {i64, i8*}, {i64, i8*}* %tmp.444
	%2665 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 444
	store {i64, i8*} %2664, {i64, i8*}* %2665
	%2666 = bitcast i32 (i32)* @"isascii" to void ()*
	%2667 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 444
	store void ()* %2666, void ()** %2667
	%2668 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.449", i64 0, i64 0
	%2669 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2668, 1
	store {i64, i8*} %2669, {i64, i8*}* %tmp.445
	%2670 = load {i64, i8*}, {i64, i8*}* %tmp.445
	%2671 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 445
	store {i64, i8*} %2670, {i64, i8*}* %2671
	%2672 = bitcast i32 (i32)* @"toascii" to void ()*
	%2673 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 445
	store void ()* %2672, void ()** %2673
	%2674 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.450", i64 0, i64 0
	%2675 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2674, 1
	store {i64, i8*} %2675, {i64, i8*}* %tmp.446
	%2676 = load {i64, i8*}, {i64, i8*}* %tmp.446
	%2677 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 446
	store {i64, i8*} %2676, {i64, i8*}* %2677
	%2678 = bitcast i32 (i32)* @"_toupper" to void ()*
	%2679 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 446
	store void ()* %2678, void ()** %2679
	%2680 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.451", i64 0, i64 0
	%2681 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2680, 1
	store {i64, i8*} %2681, {i64, i8*}* %tmp.447
	%2682 = load {i64, i8*}, {i64, i8*}* %tmp.447
	%2683 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 447
	store {i64, i8*} %2682, {i64, i8*}* %2683
	%2684 = bitcast i32 (i32)* @"_tolower" to void ()*
	%2685 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 447
	store void ()* %2684, void ()** %2685
	%2686 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.452", i64 0, i64 0
	%2687 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2686, 1
	store {i64, i8*} %2687, {i64, i8*}* %tmp.448
	%2688 = load {i64, i8*}, {i64, i8*}* %tmp.448
	%2689 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 448
	store {i64, i8*} %2688, {i64, i8*}* %2689
	%2690 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isalnum_l" to void ()*
	%2691 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 448
	store void ()* %2690, void ()** %2691
	%2692 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.453", i64 0, i64 0
	%2693 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2692, 1
	store {i64, i8*} %2693, {i64, i8*}* %tmp.449
	%2694 = load {i64, i8*}, {i64, i8*}* %tmp.449
	%2695 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 449
	store {i64, i8*} %2694, {i64, i8*}* %2695
	%2696 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isalpha_l" to void ()*
	%2697 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 449
	store void ()* %2696, void ()** %2697
	%2698 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.454", i64 0, i64 0
	%2699 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2698, 1
	store {i64, i8*} %2699, {i64, i8*}* %tmp.450
	%2700 = load {i64, i8*}, {i64, i8*}* %tmp.450
	%2701 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 450
	store {i64, i8*} %2700, {i64, i8*}* %2701
	%2702 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"iscntrl_l" to void ()*
	%2703 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 450
	store void ()* %2702, void ()** %2703
	%2704 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.455", i64 0, i64 0
	%2705 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2704, 1
	store {i64, i8*} %2705, {i64, i8*}* %tmp.451
	%2706 = load {i64, i8*}, {i64, i8*}* %tmp.451
	%2707 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 451
	store {i64, i8*} %2706, {i64, i8*}* %2707
	%2708 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isdigit_l" to void ()*
	%2709 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 451
	store void ()* %2708, void ()** %2709
	%2710 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.456", i64 0, i64 0
	%2711 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2710, 1
	store {i64, i8*} %2711, {i64, i8*}* %tmp.452
	%2712 = load {i64, i8*}, {i64, i8*}* %tmp.452
	%2713 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 452
	store {i64, i8*} %2712, {i64, i8*}* %2713
	%2714 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"islower_l" to void ()*
	%2715 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 452
	store void ()* %2714, void ()** %2715
	%2716 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.457", i64 0, i64 0
	%2717 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2716, 1
	store {i64, i8*} %2717, {i64, i8*}* %tmp.453
	%2718 = load {i64, i8*}, {i64, i8*}* %tmp.453
	%2719 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 453
	store {i64, i8*} %2718, {i64, i8*}* %2719
	%2720 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isgraph_l" to void ()*
	%2721 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 453
	store void ()* %2720, void ()** %2721
	%2722 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.458", i64 0, i64 0
	%2723 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2722, 1
	store {i64, i8*} %2723, {i64, i8*}* %tmp.454
	%2724 = load {i64, i8*}, {i64, i8*}* %tmp.454
	%2725 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 454
	store {i64, i8*} %2724, {i64, i8*}* %2725
	%2726 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isprint_l" to void ()*
	%2727 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 454
	store void ()* %2726, void ()** %2727
	%2728 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.459", i64 0, i64 0
	%2729 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2728, 1
	store {i64, i8*} %2729, {i64, i8*}* %tmp.455
	%2730 = load {i64, i8*}, {i64, i8*}* %tmp.455
	%2731 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 455
	store {i64, i8*} %2730, {i64, i8*}* %2731
	%2732 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"ispunct_l" to void ()*
	%2733 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 455
	store void ()* %2732, void ()** %2733
	%2734 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.460", i64 0, i64 0
	%2735 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2734, 1
	store {i64, i8*} %2735, {i64, i8*}* %tmp.456
	%2736 = load {i64, i8*}, {i64, i8*}* %tmp.456
	%2737 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 456
	store {i64, i8*} %2736, {i64, i8*}* %2737
	%2738 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isspace_l" to void ()*
	%2739 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 456
	store void ()* %2738, void ()** %2739
	%2740 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.461", i64 0, i64 0
	%2741 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2740, 1
	store {i64, i8*} %2741, {i64, i8*}* %tmp.457
	%2742 = load {i64, i8*}, {i64, i8*}* %tmp.457
	%2743 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 457
	store {i64, i8*} %2742, {i64, i8*}* %2743
	%2744 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isupper_l" to void ()*
	%2745 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 457
	store void ()* %2744, void ()** %2745
	%2746 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.462", i64 0, i64 0
	%2747 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2746, 1
	store {i64, i8*} %2747, {i64, i8*}* %tmp.458
	%2748 = load {i64, i8*}, {i64, i8*}* %tmp.458
	%2749 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 458
	store {i64, i8*} %2748, {i64, i8*}* %2749
	%2750 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isxdigit_l" to void ()*
	%2751 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 458
	store void ()* %2750, void ()** %2751
	%2752 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.463", i64 0, i64 0
	%2753 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2752, 1
	store {i64, i8*} %2753, {i64, i8*}* %tmp.459
	%2754 = load {i64, i8*}, {i64, i8*}* %tmp.459
	%2755 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 459
	store {i64, i8*} %2754, {i64, i8*}* %2755
	%2756 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isblank_l" to void ()*
	%2757 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 459
	store void ()* %2756, void ()** %2757
	%2758 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.464", i64 0, i64 0
	%2759 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2758, 1
	store {i64, i8*} %2759, {i64, i8*}* %tmp.460
	%2760 = load {i64, i8*}, {i64, i8*}* %tmp.460
	%2761 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 460
	store {i64, i8*} %2760, {i64, i8*}* %2761
	%2762 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"__tolower_l" to void ()*
	%2763 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 460
	store void ()* %2762, void ()** %2763
	%2764 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.465", i64 0, i64 0
	%2765 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2764, 1
	store {i64, i8*} %2765, {i64, i8*}* %tmp.461
	%2766 = load {i64, i8*}, {i64, i8*}* %tmp.461
	%2767 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 461
	store {i64, i8*} %2766, {i64, i8*}* %2767
	%2768 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"tolower_l" to void ()*
	%2769 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 461
	store void ()* %2768, void ()** %2769
	%2770 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.466", i64 0, i64 0
	%2771 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2770, 1
	store {i64, i8*} %2771, {i64, i8*}* %tmp.462
	%2772 = load {i64, i8*}, {i64, i8*}* %tmp.462
	%2773 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 462
	store {i64, i8*} %2772, {i64, i8*}* %2773
	%2774 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"__toupper_l" to void ()*
	%2775 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 462
	store void ()* %2774, void ()** %2775
	%2776 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.467", i64 0, i64 0
	%2777 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2776, 1
	store {i64, i8*} %2777, {i64, i8*}* %tmp.463
	%2778 = load {i64, i8*}, {i64, i8*}* %tmp.463
	%2779 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 463
	store {i64, i8*} %2778, {i64, i8*}* %2779
	%2780 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"toupper_l" to void ()*
	%2781 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 463
	store void ()* %2780, void ()** %2781
	%2782 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.468", i64 0, i64 0
	%2783 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2782, 1
	store {i64, i8*} %2783, {i64, i8*}* %tmp.464
	%2784 = load {i64, i8*}, {i64, i8*}* %tmp.464
	%2785 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 464
	store {i64, i8*} %2784, {i64, i8*}* %2785
	%2786 = bitcast i8* (i32, i8*)* @"setlocale" to void ()*
	%2787 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 464
	store void ()* %2786, void ()** %2787
	%2788 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.469", i64 0, i64 0
	%2789 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2788, 1
	store {i64, i8*} %2789, {i64, i8*}* %tmp.465
	%2790 = load {i64, i8*}, {i64, i8*}* %tmp.465
	%2791 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 465
	store {i64, i8*} %2790, {i64, i8*}* %2791
	%2792 = bitcast %"cstd::s_lconv"* ()* @"localeconv" to void ()*
	%2793 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 465
	store void ()* %2792, void ()** %2793
	%2794 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.470", i64 0, i64 0
	%2795 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2794, 1
	store {i64, i8*} %2795, {i64, i8*}* %tmp.466
	%2796 = load {i64, i8*}, {i64, i8*}* %tmp.466
	%2797 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 466
	store {i64, i8*} %2796, {i64, i8*}* %2797
	%2798 = bitcast %"cstd::s___locale_struct"* (i32, i8*, %"cstd::s___locale_struct"*)* @"newlocale" to void ()*
	%2799 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 466
	store void ()* %2798, void ()** %2799
	%2800 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.471", i64 0, i64 0
	%2801 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2800, 1
	store {i64, i8*} %2801, {i64, i8*}* %tmp.467
	%2802 = load {i64, i8*}, {i64, i8*}* %tmp.467
	%2803 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 467
	store {i64, i8*} %2802, {i64, i8*}* %2803
	%2804 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @"duplocale" to void ()*
	%2805 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 467
	store void ()* %2804, void ()** %2805
	%2806 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.472", i64 0, i64 0
	%2807 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2806, 1
	store {i64, i8*} %2807, {i64, i8*}* %tmp.468
	%2808 = load {i64, i8*}, {i64, i8*}* %tmp.468
	%2809 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 468
	store {i64, i8*} %2808, {i64, i8*}* %2809
	%2810 = bitcast void (%"cstd::s___locale_struct"*)* @"freelocale" to void ()*
	%2811 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 468
	store void ()* %2810, void ()** %2811
	%2812 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.473", i64 0, i64 0
	%2813 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2812, 1
	store {i64, i8*} %2813, {i64, i8*}* %tmp.469
	%2814 = load {i64, i8*}, {i64, i8*}* %tmp.469
	%2815 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 469
	store {i64, i8*} %2814, {i64, i8*}* %2815
	%2816 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @"uselocale" to void ()*
	%2817 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 469
	store void ()* %2816, void ()** %2817
	%2818 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.474", i64 0, i64 0
	%2819 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2818, 1
	store {i64, i8*} %2819, {i64, i8*}* %tmp.470
	%2820 = load {i64, i8*}, {i64, i8*}* %tmp.470
	%2821 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 470
	store {i64, i8*} %2820, {i64, i8*}* %2821
	%2822 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @"setjmp" to void ()*
	%2823 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 470
	store void ()* %2822, void ()** %2823
	%2824 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.475", i64 0, i64 0
	%2825 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2824, 1
	store {i64, i8*} %2825, {i64, i8*}* %tmp.471
	%2826 = load {i64, i8*}, {i64, i8*}* %tmp.471
	%2827 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 471
	store {i64, i8*} %2826, {i64, i8*}* %2827
	%2828 = bitcast i32 (%"cstd::s___jmp_buf_tag"*, i32)* @"__sigsetjmp" to void ()*
	%2829 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 471
	store void ()* %2828, void ()** %2829
	%2830 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.476", i64 0, i64 0
	%2831 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2830, 1
	store {i64, i8*} %2831, {i64, i8*}* %tmp.472
	%2832 = load {i64, i8*}, {i64, i8*}* %tmp.472
	%2833 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 472
	store {i64, i8*} %2832, {i64, i8*}* %2833
	%2834 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @"_setjmp" to void ()*
	%2835 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 472
	store void ()* %2834, void ()** %2835
	%2836 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.477", i64 0, i64 0
	%2837 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2836, 1
	store {i64, i8*} %2837, {i64, i8*}* %tmp.473
	%2838 = load {i64, i8*}, {i64, i8*}* %tmp.473
	%2839 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 473
	store {i64, i8*} %2838, {i64, i8*}* %2839
	%2840 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"longjmp" to void ()*
	%2841 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 473
	store void ()* %2840, void ()** %2841
	%2842 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.478", i64 0, i64 0
	%2843 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2842, 1
	store {i64, i8*} %2843, {i64, i8*}* %tmp.474
	%2844 = load {i64, i8*}, {i64, i8*}* %tmp.474
	%2845 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 474
	store {i64, i8*} %2844, {i64, i8*}* %2845
	%2846 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"_longjmp" to void ()*
	%2847 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 474
	store void ()* %2846, void ()** %2847
	%2848 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.479", i64 0, i64 0
	%2849 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2848, 1
	store {i64, i8*} %2849, {i64, i8*}* %tmp.475
	%2850 = load {i64, i8*}, {i64, i8*}* %tmp.475
	%2851 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 475
	store {i64, i8*} %2850, {i64, i8*}* %2851
	%2852 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"siglongjmp" to void ()*
	%2853 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 475
	store void ()* %2852, void ()** %2853
	%2854 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.480", i64 0, i64 0
	%2855 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %2854, 1
	store {i64, i8*} %2855, {i64, i8*}* %tmp.476
	%2856 = load {i64, i8*}, {i64, i8*}* %tmp.476
	%2857 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 476
	store {i64, i8*} %2856, {i64, i8*}* %2857
	%2858 = bitcast i32* ()* @"__errno_location" to void ()*
	%2859 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 476
	store void ()* %2858, void ()** %2859
	%2860 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.481", i64 0, i64 0
	%2861 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2860, 1
	store {i64, i8*} %2861, {i64, i8*}* %tmp.477
	%2862 = load {i64, i8*}, {i64, i8*}* %tmp.477
	%2863 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 477
	store {i64, i8*} %2862, {i64, i8*}* %2863
	%2864 = bitcast i32 (i8*, i8*, ...)* @"concat" to void ()*
	%2865 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 477
	store void ()* %2864, void ()** %2865
	%2866 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.482", i64 0, i64 0
	%2867 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2866, 1
	store {i64, i8*} %2867, {i64, i8*}* %tmp.478
	%2868 = load {i64, i8*}, {i64, i8*}* %tmp.478
	%2869 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 0
	store {i64, i8*} %2868, {i64, i8*}* %2869
	%2870 = bitcast %"cstd::s__IO_FILE"** @"stdin" to i8*
	%2871 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 0
	store i8* %2870, i8** %2871
	%2872 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.483", i64 0, i64 0
	%2873 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2872, 1
	store {i64, i8*} %2873, {i64, i8*}* %tmp.479
	%2874 = load {i64, i8*}, {i64, i8*}* %tmp.479
	%2875 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 1
	store {i64, i8*} %2874, {i64, i8*}* %2875
	%2876 = bitcast %"cstd::s__IO_FILE"** @"stdout" to i8*
	%2877 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 1
	store i8* %2876, i8** %2877
	%2878 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.484", i64 0, i64 0
	%2879 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2878, 1
	store {i64, i8*} %2879, {i64, i8*}* %tmp.480
	%2880 = load {i64, i8*}, {i64, i8*}* %tmp.480
	%2881 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 2
	store {i64, i8*} %2880, {i64, i8*}* %2881
	%2882 = bitcast %"cstd::s__IO_FILE"** @"stderr" to i8*
	%2883 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 2
	store i8* %2882, i8** %2883
	%2884 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.485", i64 0, i64 0
	%2885 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2884, 1
	store {i64, i8*} %2885, {i64, i8*}* %tmp.481
	%2886 = load {i64, i8*}, {i64, i8*}* %tmp.481
	%2887 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 3
	store {i64, i8*} %2886, {i64, i8*}* %2887
	%2888 = bitcast [2 x i8*]* @"__tzname" to i8*
	%2889 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 3
	store i8* %2888, i8** %2889
	%2890 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.486", i64 0, i64 0
	%2891 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2890, 1
	store {i64, i8*} %2891, {i64, i8*}* %tmp.482
	%2892 = load {i64, i8*}, {i64, i8*}* %tmp.482
	%2893 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 4
	store {i64, i8*} %2892, {i64, i8*}* %2893
	%2894 = bitcast i32* @"__daylight" to i8*
	%2895 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 4
	store i8* %2894, i8** %2895
	%2896 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.487", i64 0, i64 0
	%2897 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2896, 1
	store {i64, i8*} %2897, {i64, i8*}* %tmp.483
	%2898 = load {i64, i8*}, {i64, i8*}* %tmp.483
	%2899 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 5
	store {i64, i8*} %2898, {i64, i8*}* %2899
	%2900 = bitcast i64* @"__timezone" to i8*
	%2901 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 5
	store i8* %2900, i8** %2901
	%2902 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.488", i64 0, i64 0
	%2903 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2902, 1
	store {i64, i8*} %2903, {i64, i8*}* %tmp.484
	%2904 = load {i64, i8*}, {i64, i8*}* %tmp.484
	%2905 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 6
	store {i64, i8*} %2904, {i64, i8*}* %2905
	%2906 = bitcast [2 x i8*]* @"tzname" to i8*
	%2907 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 6
	store i8* %2906, i8** %2907
	%2908 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.489", i64 0, i64 0
	%2909 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2908, 1
	store {i64, i8*} %2909, {i64, i8*}* %tmp.485
	%2910 = load {i64, i8*}, {i64, i8*}* %tmp.485
	%2911 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 7
	store {i64, i8*} %2910, {i64, i8*}* %2911
	%2912 = bitcast i32* @"daylight" to i8*
	%2913 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 7
	store i8* %2912, i8** %2913
	%2914 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.490", i64 0, i64 0
	%2915 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2914, 1
	store {i64, i8*} %2915, {i64, i8*}* %tmp.486
	%2916 = load {i64, i8*}, {i64, i8*}* %tmp.486
	%2917 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 8
	store {i64, i8*} %2916, {i64, i8*}* %2917
	%2918 = bitcast i64* @"timezone" to i8*
	%2919 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 8
	store i8* %2918, i8** %2919
	%2920 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.491", i64 0, i64 0
	%2921 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2920, 1
	store {i64, i8*} %2921, {i64, i8*}* %tmp.487
	%2922 = load {i64, i8*}, {i64, i8*}* %tmp.487
	%2923 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 9
	store {i64, i8*} %2922, {i64, i8*}* %2923
	%2924 = bitcast i32* @"signgam" to i8*
	%2925 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 9
	store i8* %2924, i8** %2925
	ret void
}
declare i32 @"vscanf"(i8*, %"__va_list_tag"*)
declare x86_fp80 @"powl"(x86_fp80, x86_fp80)
declare i8* @"fgets"(i8*, i32, %"cstd::s__IO_FILE"*)
declare i32 @"isnanf"(float)
declare double @"scalb"(double, double)
declare i32 @"isnanl"(x86_fp80)
declare void @"exit"(i32)
declare %"cstd::s__IO_FILE"* @"open_memstream"(i8**, i64*)
declare double @"sqrt"(double)
declare i64 @"strftime"(i8*, i64, i8*, %"cstd::s_tm"*)
declare float @"exp2f"(float)
declare void @"longjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i8* @"malloc"(i64)
declare x86_fp80 @"exp2l"(x86_fp80)
declare i32 @"__iseqsig"(double, double)
declare i32 @"__sigsetjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i32 @"__isinff"(float)
declare i32 @"__isinfl"(x86_fp80)
declare i32 @"fileno_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"getchar"()
declare i32 @"__issignaling"(double)
declare float @"dremf"(float, float)
declare x86_fp80 @"dreml"(x86_fp80, x86_fp80)
declare double @"atof"(i8*)
declare i32 @"atoi"(i8*)
declare i64 @"atol"(i8*)
declare i32 @"concat"(i8*, i8*, ...)
declare i32 @"isprint"(i32)
declare double @"log"(double)
declare i64 @"getdelim"(i8**, i64*, i32, %"cstd::s__IO_FILE"*)
declare i32 @"ilogb"(double)
declare i32 @"scanf"(i8*, ...)
declare i32 @"strncmp"(i8*, i8*, i64)
declare double @"round"(double)
declare void @"qsort"(i8*, i64, i64, i32 (i8*, i8*)*)
declare i32 @"__isnan"(double)
declare double @"log2"(double)
declare double @"ldexp"(double, i32)
declare double @"remainder"(double, double)
declare float @"cbrtf"(float)
declare i64 @"fwrite"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i8* @"__stpcpy"(i8*, i8*)
declare float @"nextafterf"(float, float)
declare x86_fp80 @"cbrtl"(x86_fp80)
declare i32 @"rename"(i8*, i8*)
declare double @"trunc"(double)
declare i8* @"ctime"(i64*)
declare x86_fp80 @"nextafterl"(x86_fp80, x86_fp80)
declare double @"acos"(double)
declare float @"fminf"(float, float)
declare i32 @"ispunct_l"(i32, %"cstd::s___locale_struct"*)
declare float @"lgammaf_r"(float, i32*)
declare i32 @"memcmp"(i8*, i8*, i64)
declare x86_fp80 @"fminl"(x86_fp80, x86_fp80)
declare i64 @"strtoul"(i8*, i8**, i32)
declare i64 @"lroundf"(float)
declare i32 @"islower_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"strncasecmp_l"(i8*, i8*, i64, %"cstd::s___locale_struct"*)
declare i32 @"printf"(i8*, ...)
declare float @"rintf"(float)
declare void @"clearerr_unlocked"(%"cstd::s__IO_FILE"*)
declare i64 @"lroundl"(x86_fp80)
declare double @"logb"(double)
declare i64 @"llround"(double)
declare float @"ldexpf"(float, i32)
declare float @"remainderf"(float, float)
declare x86_fp80 @"rintl"(x86_fp80)
declare i32 @"__signbit"(double)
declare float @"logf"(float)
declare double @"frexp"(double, i32*)
declare i32 @"bcmp"(i8*, i8*, i64)
declare double @"modf"(double, double*)
declare x86_fp80 @"ldexpl"(x86_fp80, i32)
declare x86_fp80 @"remainderl"(x86_fp80, x86_fp80)
declare x86_fp80 @"logl"(x86_fp80)
declare i32 @"islower"(i32)
declare i64 @"strcspn"(i8*, i8*)
declare i32 @"ferror_unlocked"(%"cstd::s__IO_FILE"*)
declare double @"tan"(double)
declare float @"jnf"(i32, float)
declare double @"exp2"(double)
declare double @"drem"(double, double)
declare x86_fp80 @"jnl"(i32, x86_fp80)
declare i64 @"fwrite_unlocked"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i8* @"strncpy"(i8*, i8*, i64)
declare i32 @"ffs"(i32)
declare i32 @"pclose"(%"cstd::s__IO_FILE"*)
declare void @"__assert_perror_fail"(i32, i8*, i32, i8*)
declare i32 @"clock_settime"(i32, %"cstd::s_timespec"*)
declare void @"perror"(i8*)
declare i64 @"llrintf"(float)
declare i64 @"getline"(i8**, i64*, %"cstd::s__IO_FILE"*)
declare void @"bzero"(i8*, i64)
declare i32 @"isxdigit"(i32)
declare i8* @"rindex"(i8*, i32)
declare i64 @"llrintl"(x86_fp80)
declare i32 @"getc_unlocked"(%"cstd::s__IO_FILE"*)
declare float @"expf"(float)
declare x86_fp80 @"expl"(x86_fp80)
declare double @"tgamma"(double)
declare %"cstd::s___locale_struct"* @"uselocale"(%"cstd::s___locale_struct"*)
declare i32 @"snprintf"(i8*, i64, i8*, ...)
declare i8* @"memcpy"(i8*, i8*, i64)
declare i32** @"__ctype_tolower_loc"()
declare i32 @"isascii"(i32)
declare i64 @"llrint"(double)
define {i64, i8*} @"to_string::(cstd::idtype_t)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %9 [
		i32 1, label %0
		i32 2, label %3
		i32 0, label %6
	]
0:
	%1 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
}
declare i32 @"ilogbf"(float)
declare float @"ynf"(i32, float)
declare i32 @"ilogbl"(x86_fp80)
declare i32 @"timer_settime"(i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)
declare x86_fp80 @"ynl"(i32, x86_fp80)
declare i32 @"atexit"(void ()*)
declare i8* @"strndup"(i8*, i64)
declare float @"fdimf"(float, float)
declare double @"nextafter"(double, double)
declare i8* @"bsearch"(i8*, i8*, i64, i64, i32 (i8*, i8*)*)
declare x86_fp80 @"fdiml"(x86_fp80, x86_fp80)
declare void @"setlinebuf"(%"cstd::s__IO_FILE"*)
declare i32 @"isalnum"(i32)
declare i64 @"strnlen"(i8*, i64)
declare double @"erfc"(double)
declare i32 @"strncasecmp"(i8*, i8*, i64)
declare i32 @"setjmp"(%"cstd::s___jmp_buf_tag"*)
declare float @"erff"(float)
declare i32 @"__fpclassify"(double)
declare i32 @"strcoll"(i8*, i8*)
declare double @"remquo"(double, double, i32*)
declare i8* @"strtok_r"(i8*, i8*, i8**)
declare float @"j0f"(float)
declare x86_fp80 @"erfl"(x86_fp80)
declare x86_fp80 @"j0l"(x86_fp80)
declare i8* @"ctermid"(i8*)
declare double @"rint"(double)
declare i8* @"strrchr"(i8*, i32)
declare float @"scalbf"(float, float)
declare float @"asinf"(float)
declare i32 @"isprint_l"(i32, %"cstd::s___locale_struct"*)
declare double @"asinh"(double)
declare i32 @"clock_nanosleep"(i32, i32, %"cstd::s_timespec"*, %"cstd::s_timespec"*)
declare i8* @"strcat"(i8*, i8*)
declare x86_fp80 @"scalbl"(x86_fp80, x86_fp80)
declare double @"scalbn"(double, i32)
declare x86_fp80 @"asinl"(x86_fp80)
declare %"cstd::s__IO_FILE"* @"fdopen"(i32, i8*)
declare i32 @"_toupper"(i32)
declare i32 @"isinf"(double)
declare double @"fabs"(double)
declare i32 @"dprintf"(i32, i8*, ...)
declare i8* @"asctime"(%"cstd::s_tm"*)
declare float @"j1f"(float)
declare float @"asinhf"(float)
declare x86_fp80 @"j1l"(x86_fp80)
declare float @"logbf"(float)
declare x86_fp80 @"asinhl"(x86_fp80)
declare i32 @"isspace_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"putc_unlocked"(i32, %"cstd::s__IO_FILE"*)
declare x86_fp80 @"logbl"(x86_fp80)
declare double @"fdim"(double, double)
declare float @"log1pf"(float)
declare i32 @"__toupper_l"(i32, %"cstd::s___locale_struct"*)
declare x86_fp80 @"log1pl"(x86_fp80)
declare i32 @"vfscanf"(%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)
declare void @"free"(i8*)
declare i8* @"realloc"(i8*, i64)
declare void @"setbuffer"(%"cstd::s__IO_FILE"*, i8*, i64)
declare float @"truncf"(float)
declare i32 @"fileno"(%"cstd::s__IO_FILE"*)
declare i32 @"vsscanf"(i8*, i8*, %"__va_list_tag"*)
declare x86_fp80 @"truncl"(x86_fp80)
declare float @"y0f"(float)
declare i32 @"abs"(i32)
declare float @"expm1f"(float)
declare void @"freelocale"(%"cstd::s___locale_struct"*)
declare x86_fp80 @"y0l"(x86_fp80)
declare i32 @"vfprintf"(%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)
declare x86_fp80 @"expm1l"(x86_fp80)
declare %"cstd::s__IO_FILE"* @"popen"(i8*, i8*)
declare double @"fma"(double, double, double)
declare float @"sinf"(float)
declare float @"nexttowardf"(float, x86_fp80)
declare double @"sinh"(double)
declare i32 @"fseeko"(%"cstd::s__IO_FILE"*, i64, i32)
declare x86_fp80 @"sinl"(x86_fp80)
declare x86_fp80 @"nexttowardl"(x86_fp80, x86_fp80)
declare i64 @"llroundf"(float)
declare double @"scalbln"(double, i64)
declare i32 @"_setjmp"(%"cstd::s___jmp_buf_tag"*)
declare float @"lgammaf"(float)
declare i64 @"llroundl"(x86_fp80)
declare float @"y1f"(float)
declare i32 @"__overflow"(%"cstd::s__IO_FILE"*, i32)
declare %"cstd::div_t" @"div"(i32, i32)
declare float @"log10f"(float)
declare float @"significandf"(float)
declare x86_fp80 @"lgammal"(x86_fp80)
declare x86_fp80 @"y1l"(x86_fp80)
declare void @"bcopy"(i8*, i8*, i64)
declare x86_fp80 @"log10l"(x86_fp80)
declare x86_fp80 @"significandl"(x86_fp80)
declare float @"nanf"(i8*)
declare x86_fp80 @"nanl"(i8*)
declare i64 @"timegm"(%"cstd::s_tm"*)
declare i8* @"stpncpy"(i8*, i8*, i64)
declare i32 @"remove"(i8*)
declare i32 @"clock_gettime"(i32, %"cstd::s_timespec"*)
declare double @"j0"(double)
declare double @"j1"(double)
declare i8* @"strsep"(i8**, i8*)
declare i64 @"time"(i64*)
declare i64 @"fread"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i64 @"strftime_l"(i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)
declare float @"scalbnf"(float, i32)
declare void @"_longjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i32 @"feof"(%"cstd::s__IO_FILE"*)
declare i32 @"__signbitf"(float)
declare x86_fp80 @"scalbnl"(x86_fp80, i32)
declare float @"roundf"(float)
declare i64 @"wcstombs"(i8*, i32*, i64)
declare float @"fmodf"(float, float)
declare i32 @"__signbitl"(x86_fp80)
declare float @"atanhf"(float)
declare x86_fp80 @"roundl"(x86_fp80)
declare void @"flockfile"(%"cstd::s__IO_FILE"*)
declare double @"cbrt"(double)
declare i64 @"lround"(double)
declare x86_fp80 @"fmodl"(x86_fp80, x86_fp80)
declare x86_fp80 @"atanhl"(x86_fp80)
declare void @"srand"(i32)
declare double @"sin"(double)
declare double @"nexttoward"(double, x86_fp80)
declare i8* @"strpbrk"(i8*, i8*)
declare i32 @"finite"(double)
declare i8* @"calloc"(i64, i64)
declare %"cstd::s_tm"* @"gmtime"(i64*)
declare float @"frexpf"(float, i32*)
declare i8* @"strerror"(i32)
declare i32 @"isupper_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"tolower"(i32)
declare %"cstd::s__IO_FILE"* @"fmemopen"(i8*, i64, i8*)
declare void @"rewind"(%"cstd::s__IO_FILE"*)
declare i32 @"timer_gettime"(i8*, %"cstd::s_itimerspec"*)
declare x86_fp80 @"frexpl"(x86_fp80, i32*)
declare void @"abort"()
declare double @"jn"(i32, double)
declare i32 @"isinff"(float)
declare float @"modff"(float, float*)
declare i32 @"isinfl"(x86_fp80)
declare float @"sqrtf"(float)
declare i32** @"__ctype_toupper_loc"()
declare i32 @"ffsl"(i64)
declare x86_fp80 @"modfl"(x86_fp80, x86_fp80*)
declare i8* @"strchr"(i8*, i32)
declare i64 @"lrintf"(float)
declare i32 @"sprintf"(i8*, i8*, ...)
declare x86_fp80 @"sqrtl"(x86_fp80)
declare i32 @"fscanf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare i64 @"lrintl"(x86_fp80)
declare i32 @"tolower_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"finitef"(float)
declare i32 @"isblank_l"(i32, %"cstd::s___locale_struct"*)
declare float @"fmaf"(float, float, float)
declare double @"nan"(i8*)
declare i32 @"finitel"(x86_fp80)
declare i32 @"setvbuf"(%"cstd::s__IO_FILE"*, i8*, i32, i64)
declare double @"copysign"(double, double)
declare x86_fp80 @"fmal"(x86_fp80, x86_fp80, x86_fp80)
declare i32 @"putc"(i32, %"cstd::s__IO_FILE"*)
declare i8* @"ctime_r"(i64*, i8*)
declare i32 @"__isnanf"(float)
declare i32 @"sscanf"(i8*, i8*, ...)
declare i32 @"__issignalingf"(float)
declare i32 @"__isnanl"(x86_fp80)
declare i32 @"vsnprintf"(i8*, i64, i8*, %"__va_list_tag"*)
declare i32 @"__issignalingl"(x86_fp80)
declare double @"fmax"(double, double)
declare i32 @"puts"(i8*)
declare float @"acoshf"(float)
declare float @"copysignf"(float, float)
declare i32 @"putw"(i32, %"cstd::s__IO_FILE"*)
declare i32 @"toascii"(i32)
declare x86_fp80 @"acoshl"(x86_fp80)
declare i32 @"isupper"(i32)
declare x86_fp80 @"copysignl"(x86_fp80, x86_fp80)
declare %"cstd::s___locale_struct"* @"newlocale"(i32, i8*, %"cstd::s___locale_struct"*)
declare float @"erfcf"(float)
declare %"cstd::s_lconv"* @"localeconv"()
declare i32* @"__errno_location"()
declare i8* @"memccpy"(i8*, i8*, i32, i64)
declare x86_fp80 @"erfcl"(x86_fp80)
declare i8* @"stpcpy"(i8*, i8*)
declare i8* @"strerror_l"(i32, %"cstd::s___locale_struct"*)
declare void @"__assert_fail"(i8*, i8*, i32, i8*)
declare i32 @"strerror_r"(i32, i8*, i64)
declare i8* @"strsignal"(i32)
declare double @"erf"(double)
declare float @"fabsf"(float)
declare float @"acosf"(float)
declare x86_fp80 @"fabsl"(x86_fp80)
declare double @"acosh"(double)
declare double @"hypot"(double, double)
declare x86_fp80 @"acosl"(x86_fp80)
declare i32 @"iscntrl_l"(i32, %"cstd::s___locale_struct"*)
@"daylight" = external global i32 
@"cstd::FP_SUBNORMAL" = global i32 3
@"cstd::_ISprint" = global i32 16384
@"cstd::__DEFS" = global [478 x void ()*] zeroinitializer
@"cstd::_ISlower" = global i32 512
@"cstd::__VAR_NAMES" = global [10 x {i64, i8*}] zeroinitializer
@"tzname" = external global [2 x i8*] 
@"cstd::FP_NORMAL" = global i32 4
@"timezone" = external global i64 
@"stdout" = external global %"cstd::s__IO_FILE"* 
@"cstd::str.400" = private global [4 x i8] c"y1l\00"
@"cstd::str.401" = private global [4 x i8] c"ynl\00"
@"cstd::str.402" = private global [5 x i8] c"erfl\00"
@"cstd::str.403" = private global [6 x i8] c"erfcl\00"
@"cstd::str.404" = private global [8 x i8] c"lgammal\00"
@"cstd::str.405" = private global [8 x i8] c"tgammal\00"
@"cstd::str.406" = private global [7 x i8] c"gammal\00"
@"cstd::str.407" = private global [10 x i8] c"lgammal_r\00"
@"cstd::str.408" = private global [6 x i8] c"rintl\00"
@"cstd::_ISalnum" = global i32 8
@"cstd::str.409" = private global [11 x i8] c"nextafterl\00"
@"cstd::str.410" = private global [12 x i8] c"nexttowardl\00"
@"cstd::str.411" = private global [11 x i8] c"remainderl\00"
@"cstd::str.412" = private global [8 x i8] c"scalbnl\00"
@"cstd::str.413" = private global [7 x i8] c"ilogbl\00"
@"cstd::str.414" = private global [9 x i8] c"scalblnl\00"
@"cstd::str.415" = private global [11 x i8] c"nearbyintl\00"
@"cstd::str.416" = private global [7 x i8] c"roundl\00"
@"cstd::str.417" = private global [7 x i8] c"truncl\00"
@"cstd::str.418" = private global [8 x i8] c"remquol\00"
@"cstd::str.419" = private global [7 x i8] c"lrintl\00"
@"cstd::str.420" = private global [8 x i8] c"llrintl\00"
@"cstd::str.300" = private global [6 x i8] c"logbf\00"
@"cstd::str.421" = private global [8 x i8] c"lroundl\00"
@"cstd::str.301" = private global [6 x i8] c"exp2f\00"
@"cstd::str.422" = private global [9 x i8] c"llroundl\00"
@"cstd::str.302" = private global [6 x i8] c"log2f\00"
@"cstd::str.423" = private global [6 x i8] c"fdiml\00"
@"cstd::str.303" = private global [5 x i8] c"powf\00"
@"cstd::str.424" = private global [6 x i8] c"fmaxl\00"
@"cstd::str.304" = private global [6 x i8] c"sqrtf\00"
@"cstd::str.425" = private global [6 x i8] c"fminl\00"
@"cstd::str.305" = private global [7 x i8] c"hypotf\00"
@"cstd::str.426" = private global [5 x i8] c"fmal\00"
@"cstd::str.306" = private global [6 x i8] c"cbrtf\00"
@"cstd::str.427" = private global [7 x i8] c"scalbl\00"
@"cstd::str.307" = private global [6 x i8] c"ceilf\00"
@"cstd::str.428" = private global [14 x i8] c"__assert_fail\00"
@"cstd::str.308" = private global [6 x i8] c"fabsf\00"
@"cstd::str.429" = private global [21 x i8] c"__assert_perror_fail\00"
@"cstd::str.309" = private global [7 x i8] c"floorf\00"
@"cstd::str.430" = private global [9 x i8] c"__assert\00"
@"cstd::str.310" = private global [6 x i8] c"fmodf\00"
@"cstd::str.431" = private global [14 x i8] c"__ctype_b_loc\00"
@"cstd::str.311" = private global [7 x i8] c"isinff\00"
@"cstd::str.432" = private global [20 x i8] c"__ctype_tolower_loc\00"
@"cstd::str.312" = private global [8 x i8] c"finitef\00"
@"cstd::str.433" = private global [20 x i8] c"__ctype_toupper_loc\00"
@"cstd::str.313" = private global [6 x i8] c"dremf\00"
@"cstd::str.434" = private global [8 x i8] c"isalnum\00"
@"cstd::str.314" = private global [13 x i8] c"significandf\00"
@"cstd::str.435" = private global [8 x i8] c"isalpha\00"
@"cstd::str.315" = private global [10 x i8] c"copysignf\00"
@"cstd::str.436" = private global [8 x i8] c"iscntrl\00"
@"cstd::str.316" = private global [5 x i8] c"nanf\00"
@"cstd::str.437" = private global [8 x i8] c"isdigit\00"
@"cstd::str.317" = private global [7 x i8] c"isnanf\00"
@"cstd::str.438" = private global [8 x i8] c"islower\00"
@"cstd::str.318" = private global [4 x i8] c"j0f\00"
@"cstd::str.439" = private global [8 x i8] c"isgraph\00"
@"cstd::str.319" = private global [4 x i8] c"j1f\00"
@"cstd::str.440" = private global [8 x i8] c"isprint\00"
@"cstd::str.320" = private global [4 x i8] c"jnf\00"
@"cstd::str.441" = private global [8 x i8] c"ispunct\00"
@"cstd::str.200" = private global [14 x i8] c"__issignaling\00"
@"cstd::str.321" = private global [4 x i8] c"y0f\00"
@"cstd::str.442" = private global [8 x i8] c"isspace\00"
@"cstd::str.201" = private global [5 x i8] c"acos\00"
@"cstd::str.322" = private global [4 x i8] c"y1f\00"
@"cstd::str.443" = private global [8 x i8] c"isupper\00"
@"cstd::str.202" = private global [5 x i8] c"asin\00"
@"cstd::str.323" = private global [4 x i8] c"ynf\00"
@"cstd::str.444" = private global [9 x i8] c"isxdigit\00"
@"cstd::str.203" = private global [5 x i8] c"atan\00"
@"cstd::str.324" = private global [5 x i8] c"erff\00"
@"cstd::str.445" = private global [8 x i8] c"tolower\00"
@"cstd::str.204" = private global [6 x i8] c"atan2\00"
@"cstd::str.325" = private global [6 x i8] c"erfcf\00"
@"cstd::str.446" = private global [8 x i8] c"toupper\00"
@"cstd::__VARS" = global [10 x i8*] zeroinitializer
@"cstd::str.205" = private global [4 x i8] c"cos\00"
@"cstd::str.326" = private global [8 x i8] c"lgammaf\00"
@"cstd::str.447" = private global [8 x i8] c"isblank\00"
@"cstd::str.206" = private global [4 x i8] c"sin\00"
@"cstd::str.327" = private global [8 x i8] c"tgammaf\00"
@"cstd::str.448" = private global [8 x i8] c"isascii\00"
@"cstd::str.207" = private global [4 x i8] c"tan\00"
@"cstd::str.328" = private global [7 x i8] c"gammaf\00"
@"cstd::str.449" = private global [8 x i8] c"toascii\00"
@"cstd::str.208" = private global [5 x i8] c"cosh\00"
@"cstd::str.329" = private global [10 x i8] c"lgammaf_r\00"
@"cstd::_ISxdigit" = global i32 4096
@"cstd::str.209" = private global [5 x i8] c"sinh\00"
@"cstd::str.450" = private global [9 x i8] c"_toupper\00"
@"cstd::str.330" = private global [6 x i8] c"rintf\00"
@"cstd::str.451" = private global [9 x i8] c"_tolower\00"
@"cstd::str.210" = private global [5 x i8] c"tanh\00"
@"cstd::str.331" = private global [11 x i8] c"nextafterf\00"
@"cstd::str.452" = private global [10 x i8] c"isalnum_l\00"
@"cstd::str.211" = private global [6 x i8] c"acosh\00"
@"cstd::str.332" = private global [12 x i8] c"nexttowardf\00"
@"cstd::str.453" = private global [10 x i8] c"isalpha_l\00"
@"cstd::str.212" = private global [6 x i8] c"asinh\00"
@"cstd::str.333" = private global [11 x i8] c"remainderf\00"
@"cstd::str.454" = private global [10 x i8] c"iscntrl_l\00"
@"cstd::str.213" = private global [6 x i8] c"atanh\00"
@"cstd::str.334" = private global [8 x i8] c"scalbnf\00"
@"cstd::str.455" = private global [10 x i8] c"isdigit_l\00"
@"cstd::str.214" = private global [4 x i8] c"exp\00"
@"cstd::str.335" = private global [7 x i8] c"ilogbf\00"
@"cstd::str.456" = private global [10 x i8] c"islower_l\00"
@"cstd::str.215" = private global [6 x i8] c"frexp\00"
@"cstd::str.336" = private global [9 x i8] c"scalblnf\00"
@"cstd::str.457" = private global [10 x i8] c"isgraph_l\00"
@"cstd::str.216" = private global [6 x i8] c"ldexp\00"
@"cstd::str.337" = private global [11 x i8] c"nearbyintf\00"
@"cstd::str.458" = private global [10 x i8] c"isprint_l\00"
@"cstd::str.217" = private global [4 x i8] c"log\00"
@"cstd::str.338" = private global [7 x i8] c"roundf\00"
@"cstd::str.459" = private global [10 x i8] c"ispunct_l\00"
@"cstd::str.218" = private global [6 x i8] c"log10\00"
@"cstd::str.339" = private global [7 x i8] c"truncf\00"
@"cstd::str.219" = private global [5 x i8] c"modf\00"
@"cstd::str.460" = private global [10 x i8] c"isspace_l\00"
@"cstd::str.340" = private global [8 x i8] c"remquof\00"
@"cstd::str.461" = private global [10 x i8] c"isupper_l\00"
@"cstd::str.220" = private global [6 x i8] c"expm1\00"
@"cstd::str.341" = private global [7 x i8] c"lrintf\00"
@"cstd::str.462" = private global [11 x i8] c"isxdigit_l\00"
@"cstd::str.100" = private global [14 x i8] c"feof_unlocked\00"
@"cstd::str.221" = private global [6 x i8] c"log1p\00"
@"cstd::str.342" = private global [8 x i8] c"llrintf\00"
@"cstd::str.463" = private global [10 x i8] c"isblank_l\00"
@"cstd::str.101" = private global [16 x i8] c"ferror_unlocked\00"
@"cstd::str.222" = private global [5 x i8] c"logb\00"
@"cstd::str.343" = private global [8 x i8] c"lroundf\00"
@"cstd::str.464" = private global [12 x i8] c"__tolower_l\00"
@"cstd::str.102" = private global [7 x i8] c"perror\00"
@"cstd::str.223" = private global [5 x i8] c"exp2\00"
@"cstd::str.344" = private global [9 x i8] c"llroundf\00"
@"cstd::str.465" = private global [10 x i8] c"tolower_l\00"
@"cstd::str.103" = private global [7 x i8] c"fileno\00"
@"cstd::str.224" = private global [5 x i8] c"log2\00"
@"cstd::str.345" = private global [6 x i8] c"fdimf\00"
@"cstd::str.466" = private global [12 x i8] c"__toupper_l\00"
@"cstd::str.104" = private global [16 x i8] c"fileno_unlocked\00"
@"cstd::str.225" = private global [4 x i8] c"pow\00"
@"cstd::str.346" = private global [6 x i8] c"fmaxf\00"
@"cstd::str.467" = private global [10 x i8] c"toupper_l\00"
@"cstd::str.105" = private global [6 x i8] c"popen\00"
@"cstd::str.226" = private global [5 x i8] c"sqrt\00"
@"cstd::str.347" = private global [6 x i8] c"fminf\00"
@"cstd::str.468" = private global [10 x i8] c"setlocale\00"
@"cstd::str.106" = private global [7 x i8] c"pclose\00"
@"cstd::str.227" = private global [6 x i8] c"hypot\00"
@"cstd::str.348" = private global [5 x i8] c"fmaf\00"
@"cstd::str.469" = private global [11 x i8] c"localeconv\00"
@"cstd::str.107" = private global [8 x i8] c"ctermid\00"
@"cstd::str.228" = private global [5 x i8] c"cbrt\00"
@"cstd::str.349" = private global [7 x i8] c"scalbf\00"
@"cstd::str.108" = private global [10 x i8] c"flockfile\00"
@"cstd::str.229" = private global [5 x i8] c"ceil\00"
@"cstd::str.109" = private global [13 x i8] c"ftrylockfile\00"
@"cstd::str.470" = private global [10 x i8] c"newlocale\00"
@"cstd::str.350" = private global [14 x i8] c"__fpclassifyl\00"
@"cstd::str.471" = private global [10 x i8] c"duplocale\00"
@"cstd::str.230" = private global [5 x i8] c"fabs\00"
@"cstd::str.351" = private global [11 x i8] c"__signbitl\00"
@"cstd::str.472" = private global [11 x i8] c"freelocale\00"
@"cstd::str.110" = private global [12 x i8] c"funlockfile\00"
@"cstd::str.231" = private global [6 x i8] c"floor\00"
@"cstd::str.352" = private global [9 x i8] c"__isinfl\00"
@"cstd::str.473" = private global [10 x i8] c"uselocale\00"
@"cstd::str.111" = private global [8 x i8] c"__uflow\00"
@"cstd::str.232" = private global [5 x i8] c"fmod\00"
@"cstd::str.353" = private global [10 x i8] c"__finitel\00"
@"cstd::str.474" = private global [7 x i8] c"setjmp\00"
@"cstd::str.112" = private global [11 x i8] c"__overflow\00"
@"cstd::str.233" = private global [6 x i8] c"isinf\00"
@"cstd::str.354" = private global [9 x i8] c"__isnanl\00"
@"cstd::str.475" = private global [12 x i8] c"__sigsetjmp\00"
@"signgam" = external global i32 
@"cstd::str.113" = private global [7 x i8] c"memcpy\00"
@"cstd::str.234" = private global [7 x i8] c"finite\00"
@"cstd::str.355" = private global [11 x i8] c"__iseqsigl\00"
@"cstd::str.476" = private global [8 x i8] c"_setjmp\00"
@"cstd::str.114" = private global [8 x i8] c"memmove\00"
@"cstd::str.235" = private global [5 x i8] c"drem\00"
@"cstd::str.356" = private global [15 x i8] c"__issignalingl\00"
@"cstd::str.477" = private global [8 x i8] c"longjmp\00"
@"cstd::str.115" = private global [8 x i8] c"memccpy\00"
@"cstd::str.236" = private global [12 x i8] c"significand\00"
@"cstd::str.357" = private global [6 x i8] c"acosl\00"
@"cstd::str.478" = private global [9 x i8] c"_longjmp\00"
@"cstd::str.116" = private global [7 x i8] c"memset\00"
@"cstd::str.237" = private global [9 x i8] c"copysign\00"
@"cstd::str.358" = private global [6 x i8] c"asinl\00"
@"cstd::str.479" = private global [11 x i8] c"siglongjmp\00"
@"cstd::str.117" = private global [7 x i8] c"memcmp\00"
@"cstd::str.238" = private global [4 x i8] c"nan\00"
@"cstd::str.359" = private global [6 x i8] c"atanl\00"
@"cstd::str.118" = private global [7 x i8] c"memchr\00"
@"cstd::str.239" = private global [6 x i8] c"isnan\00"
@"cstd::str.119" = private global [7 x i8] c"strcpy\00"
@"__daylight" = external global i32 
@"cstd::str.480" = private global [17 x i8] c"__errno_location\00"
@"cstd::str.360" = private global [7 x i8] c"atan2l\00"
@"cstd::str.481" = private global [7 x i8] c"concat\00"
@"cstd::str.240" = private global [3 x i8] c"j0\00"
@"cstd::str.361" = private global [5 x i8] c"cosl\00"
@"cstd::str.482" = private global [6 x i8] c"stdin\00"
@"cstd::str.120" = private global [8 x i8] c"strncpy\00"
@"cstd::str.241" = private global [3 x i8] c"j1\00"
@"cstd::str.362" = private global [5 x i8] c"sinl\00"
@"cstd::str.483" = private global [7 x i8] c"stdout\00"
@"cstd::str.121" = private global [7 x i8] c"strcat\00"
@"cstd::str.242" = private global [3 x i8] c"jn\00"
@"cstd::str.363" = private global [5 x i8] c"tanl\00"
@"cstd::str.484" = private global [7 x i8] c"stderr\00"
@"cstd::str.122" = private global [8 x i8] c"strncat\00"
@"cstd::str.243" = private global [3 x i8] c"y0\00"
@"cstd::str.364" = private global [6 x i8] c"coshl\00"
@"cstd::str.485" = private global [9 x i8] c"__tzname\00"
@"cstd::str.123" = private global [7 x i8] c"strcmp\00"
@"cstd::str.244" = private global [3 x i8] c"y1\00"
@"cstd::str.365" = private global [6 x i8] c"sinhl\00"
@"cstd::str.486" = private global [11 x i8] c"__daylight\00"
@"cstd::str.124" = private global [8 x i8] c"strncmp\00"
@"cstd::str.245" = private global [3 x i8] c"yn\00"
@"cstd::str.366" = private global [6 x i8] c"tanhl\00"
@"cstd::str.487" = private global [11 x i8] c"__timezone\00"
@"cstd::str.125" = private global [8 x i8] c"strcoll\00"
@"cstd::str.246" = private global [4 x i8] c"erf\00"
@"cstd::str.367" = private global [7 x i8] c"acoshl\00"
@"cstd::str.488" = private global [7 x i8] c"tzname\00"
@"cstd::str.126" = private global [8 x i8] c"strxfrm\00"
@"cstd::str.247" = private global [5 x i8] c"erfc\00"
@"cstd::str.368" = private global [7 x i8] c"asinhl\00"
@"cstd::str.489" = private global [9 x i8] c"daylight\00"
@"cstd::str.127" = private global [10 x i8] c"strcoll_l\00"
@"cstd::str.248" = private global [7 x i8] c"lgamma\00"
@"cstd::str.369" = private global [7 x i8] c"atanhl\00"
@"cstd::str.128" = private global [10 x i8] c"strxfrm_l\00"
@"cstd::str.249" = private global [7 x i8] c"tgamma\00"
@"cstd::str.129" = private global [7 x i8] c"strdup\00"
@"cstd::FP_ZERO" = global i32 2
@"cstd::str.490" = private global [9 x i8] c"timezone\00"
@"cstd::str.370" = private global [5 x i8] c"expl\00"
@"cstd::str.491" = private global [8 x i8] c"signgam\00"
@"cstd::str.250" = private global [6 x i8] c"gamma\00"
@"cstd::str.371" = private global [7 x i8] c"frexpl\00"
@"cstd::str.130" = private global [8 x i8] c"strndup\00"
@"cstd::str.251" = private global [9 x i8] c"lgamma_r\00"
@"cstd::str.372" = private global [7 x i8] c"ldexpl\00"
@"cstd::str.131" = private global [7 x i8] c"strchr\00"
@"cstd::str.252" = private global [5 x i8] c"rint\00"
@"cstd::str.373" = private global [5 x i8] c"logl\00"
@"cstd::str.132" = private global [8 x i8] c"strrchr\00"
@"cstd::str.253" = private global [10 x i8] c"nextafter\00"
@"cstd::str.374" = private global [7 x i8] c"log10l\00"
@"cstd::str.133" = private global [8 x i8] c"strcspn\00"
@"cstd::str.254" = private global [11 x i8] c"nexttoward\00"
@"cstd::str.375" = private global [6 x i8] c"modfl\00"
@"cstd::str.134" = private global [7 x i8] c"strspn\00"
@"cstd::str.255" = private global [10 x i8] c"remainder\00"
@"cstd::str.376" = private global [7 x i8] c"expm1l\00"
@"cstd::str.135" = private global [8 x i8] c"strpbrk\00"
@"cstd::str.256" = private global [7 x i8] c"scalbn\00"
@"cstd::str.377" = private global [7 x i8] c"log1pl\00"
@"cstd::str.136" = private global [7 x i8] c"strstr\00"
@"cstd::str.257" = private global [6 x i8] c"ilogb\00"
@"cstd::str.378" = private global [6 x i8] c"logbl\00"
@"cstd::str.137" = private global [7 x i8] c"strtok\00"
@"cstd::str.258" = private global [8 x i8] c"scalbln\00"
@"cstd::str.379" = private global [6 x i8] c"exp2l\00"
@"cstd::str.138" = private global [11 x i8] c"__strtok_r\00"
@"cstd::str.259" = private global [10 x i8] c"nearbyint\00"
@"cstd::str.139" = private global [9 x i8] c"strtok_r\00"
@"cstd::_ISupper" = global i32 256
@"cstd::str.380" = private global [6 x i8] c"log2l\00"
@"cstd::str.260" = private global [6 x i8] c"round\00"
@"cstd::str.381" = private global [5 x i8] c"powl\00"
@"cstd::str.140" = private global [7 x i8] c"strlen\00"
@"cstd::str.261" = private global [6 x i8] c"trunc\00"
@"cstd::str.382" = private global [6 x i8] c"sqrtl\00"
@"cstd::str.141" = private global [8 x i8] c"strnlen\00"
@"cstd::str.262" = private global [7 x i8] c"remquo\00"
@"cstd::str.383" = private global [7 x i8] c"hypotl\00"
@"cstd::str.142" = private global [9 x i8] c"strerror\00"
@"cstd::str.263" = private global [6 x i8] c"lrint\00"
@"cstd::str.384" = private global [6 x i8] c"cbrtl\00"
@"cstd::str.143" = private global [11 x i8] c"strerror_r\00"
@"cstd::str.264" = private global [7 x i8] c"llrint\00"
@"cstd::str.385" = private global [6 x i8] c"ceill\00"
@"cstd::str.144" = private global [11 x i8] c"strerror_l\00"
@"cstd::str.265" = private global [7 x i8] c"lround\00"
@"cstd::str.386" = private global [6 x i8] c"fabsl\00"
@"cstd::str.145" = private global [5 x i8] c"bcmp\00"
@"cstd::str.266" = private global [8 x i8] c"llround\00"
@"cstd::str.387" = private global [7 x i8] c"floorl\00"
@"cstd::str.146" = private global [6 x i8] c"bcopy\00"
@"cstd::str.267" = private global [5 x i8] c"fdim\00"
@"cstd::str.388" = private global [6 x i8] c"fmodl\00"
@"cstd::str.147" = private global [6 x i8] c"bzero\00"
@"cstd::str.268" = private global [5 x i8] c"fmax\00"
@"cstd::str.389" = private global [7 x i8] c"isinfl\00"
@"cstd::str.148" = private global [6 x i8] c"index\00"
@"cstd::str.269" = private global [5 x i8] c"fmin\00"
@"cstd::str.149" = private global [7 x i8] c"rindex\00"
@"cstd::str.390" = private global [8 x i8] c"finitel\00"
@"cstd::str.270" = private global [4 x i8] c"fma\00"
@"cstd::str.391" = private global [6 x i8] c"dreml\00"
@"cstd::str.150" = private global [4 x i8] c"ffs\00"
@"cstd::str.271" = private global [6 x i8] c"scalb\00"
@"cstd::str.392" = private global [13 x i8] c"significandl\00"
@"cstd::str.151" = private global [5 x i8] c"ffsl\00"
@"cstd::str.272" = private global [14 x i8] c"__fpclassifyf\00"
@"cstd::str.393" = private global [10 x i8] c"copysignl\00"
@"cstd::str.152" = private global [6 x i8] c"ffsll\00"
@"cstd::str.273" = private global [11 x i8] c"__signbitf\00"
@"cstd::str.394" = private global [5 x i8] c"nanl\00"
@"cstd::str.153" = private global [11 x i8] c"strcasecmp\00"
@"cstd::str.274" = private global [9 x i8] c"__isinff\00"
@"cstd::str.395" = private global [7 x i8] c"isnanl\00"
@"cstd::str.154" = private global [12 x i8] c"strncasecmp\00"
@"cstd::str.275" = private global [10 x i8] c"__finitef\00"
@"cstd::str.396" = private global [4 x i8] c"j0l\00"
@"cstd::str.155" = private global [13 x i8] c"strcasecmp_l\00"
@"cstd::str.276" = private global [9 x i8] c"__isnanf\00"
@"cstd::str.397" = private global [4 x i8] c"j1l\00"
@"cstd::str.156" = private global [14 x i8] c"strncasecmp_l\00"
@"cstd::str.277" = private global [11 x i8] c"__iseqsigf\00"
@"cstd::str.398" = private global [4 x i8] c"jnl\00"
@"cstd::str.157" = private global [15 x i8] c"explicit_bzero\00"
@"cstd::str.278" = private global [15 x i8] c"__issignalingf\00"
@"cstd::str.399" = private global [4 x i8] c"y0l\00"
@"cstd::str.158" = private global [7 x i8] c"strsep\00"
@"cstd::str.279" = private global [6 x i8] c"acosf\00"
@"cstd::str.159" = private global [10 x i8] c"strsignal\00"
@"cstd::FP_INFINITE" = global i32 1
@"cstd::str.10" = private global [5 x i8] c"rand\00"
@"cstd::str.11" = private global [6 x i8] c"srand\00"
@"cstd::str.12" = private global [7 x i8] c"malloc\00"
@"cstd::str.13" = private global [7 x i8] c"calloc\00"
@"cstd::str.280" = private global [6 x i8] c"asinf\00"
@"cstd::str.14" = private global [8 x i8] c"realloc\00"
@"cstd::str.160" = private global [9 x i8] c"__stpcpy\00"
@"cstd::str.281" = private global [6 x i8] c"atanf\00"
@"cstd::str.15" = private global [5 x i8] c"free\00"
@"cstd::str.161" = private global [7 x i8] c"stpcpy\00"
@"cstd::str.282" = private global [7 x i8] c"atan2f\00"
@"cstd::str.16" = private global [6 x i8] c"abort\00"
@"cstd::str.162" = private global [10 x i8] c"__stpncpy\00"
@"cstd::str.283" = private global [5 x i8] c"cosf\00"
@"cstd::str.17" = private global [7 x i8] c"atexit\00"
@"cstd::str.163" = private global [8 x i8] c"stpncpy\00"
@"cstd::str.284" = private global [5 x i8] c"sinf\00"
@"cstd::str.18" = private global [5 x i8] c"exit\00"
@"cstd::str.164" = private global [6 x i8] c"clock\00"
@"cstd::str.285" = private global [5 x i8] c"tanf\00"
@"cstd::str.19" = private global [7 x i8] c"getenv\00"
@"cstd::str.165" = private global [5 x i8] c"time\00"
@"cstd::str.286" = private global [6 x i8] c"coshf\00"
@"cstd::str.166" = private global [9 x i8] c"difftime\00"
@"cstd::str.287" = private global [6 x i8] c"sinhf\00"
@"cstd::str.167" = private global [7 x i8] c"mktime\00"
@"cstd::str.288" = private global [6 x i8] c"tanhf\00"
@"cstd::str.168" = private global [9 x i8] c"strftime\00"
@"cstd::str.289" = private global [7 x i8] c"acoshf\00"
@"cstd::str.169" = private global [11 x i8] c"strftime_l\00"
@"cstd::str.20" = private global [7 x i8] c"system\00"
@"cstd::str.21" = private global [8 x i8] c"bsearch\00"
@"cstd::_ISspace" = global i32 8192
@"cstd::str.22" = private global [6 x i8] c"qsort\00"
@"cstd::str.23" = private global [4 x i8] c"abs\00"
@"cstd::str.290" = private global [7 x i8] c"asinhf\00"
@"cstd::str.24" = private global [5 x i8] c"labs\00"
@"cstd::str.170" = private global [7 x i8] c"gmtime\00"
@"cstd::str.291" = private global [7 x i8] c"atanhf\00"
@"cstd::str.25" = private global [4 x i8] c"div\00"
@"cstd::str.171" = private global [10 x i8] c"localtime\00"
@"cstd::str.292" = private global [5 x i8] c"expf\00"
@"cstd::str.26" = private global [5 x i8] c"ldiv\00"
@"cstd::str.172" = private global [9 x i8] c"gmtime_r\00"
@"cstd::str.293" = private global [7 x i8] c"frexpf\00"
@"cstd::str.27" = private global [6 x i8] c"mblen\00"
@"cstd::str.173" = private global [12 x i8] c"localtime_r\00"
@"cstd::str.294" = private global [7 x i8] c"ldexpf\00"
@"cstd::str.28" = private global [7 x i8] c"mbtowc\00"
@"cstd::str.174" = private global [8 x i8] c"asctime\00"
@"cstd::str.295" = private global [5 x i8] c"logf\00"
@"cstd::str.29" = private global [7 x i8] c"wctomb\00"
@"cstd::str.175" = private global [6 x i8] c"ctime\00"
@"cstd::str.296" = private global [7 x i8] c"log10f\00"
@"cstd::str.176" = private global [10 x i8] c"asctime_r\00"
@"cstd::str.297" = private global [6 x i8] c"modff\00"
@"cstd::str.177" = private global [8 x i8] c"ctime_r\00"
@"cstd::str.298" = private global [7 x i8] c"expm1f\00"
@"cstd::str.178" = private global [6 x i8] c"tzset\00"
@"cstd::str.299" = private global [7 x i8] c"log1pf\00"
@"cstd::str.179" = private global [7 x i8] c"timegm\00"
@"stdin" = external global %"cstd::s__IO_FILE"* 
@"cstd::str.30" = private global [9 x i8] c"mbstowcs\00"
@"cstd::str.31" = private global [9 x i8] c"wcstombs\00"
@"cstd::str.32" = private global [7 x i8] c"remove\00"
@"cstd::str.33" = private global [7 x i8] c"rename\00"
@"cstd::str.34" = private global [9 x i8] c"renameat\00"
@"cstd::str.180" = private global [10 x i8] c"timelocal\00"
@"cstd::str.35" = private global [8 x i8] c"tmpfile\00"
@"cstd::str.181" = private global [7 x i8] c"dysize\00"
@"cstd::str.36" = private global [7 x i8] c"fclose\00"
@"cstd::str.182" = private global [10 x i8] c"nanosleep\00"
@"cstd::str.37" = private global [7 x i8] c"fflush\00"
@"cstd::str.183" = private global [13 x i8] c"clock_getres\00"
@"cstd::str.38" = private global [16 x i8] c"fflush_unlocked\00"
@"cstd::str.184" = private global [14 x i8] c"clock_gettime\00"
@"cstd::str.39" = private global [6 x i8] c"fopen\00"
@"cstd::str.185" = private global [14 x i8] c"clock_settime\00"
@"cstd::_ISdigit" = global i32 2048
@"cstd::str.186" = private global [16 x i8] c"clock_nanosleep\00"
@"cstd::str.187" = private global [20 x i8] c"clock_getcpuclockid\00"
@"cstd::str.188" = private global [13 x i8] c"timer_create\00"
@"cstd::str.189" = private global [13 x i8] c"timer_delete\00"
@"cstd::_ISpunct" = global i32 4
@"__tzname" = external global [2 x i8*] 
@"cstd::str.40" = private global [8 x i8] c"freopen\00"
@"cstd::str.41" = private global [7 x i8] c"fdopen\00"
@"cstd::str.42" = private global [9 x i8] c"fmemopen\00"
@"cstd::str.43" = private global [15 x i8] c"open_memstream\00"
@"cstd::str.44" = private global [7 x i8] c"setbuf\00"
@"cstd::str.190" = private global [14 x i8] c"timer_settime\00"
@"cstd::str.45" = private global [8 x i8] c"setvbuf\00"
@"cstd::str.191" = private global [14 x i8] c"timer_gettime\00"
@"cstd::str.46" = private global [10 x i8] c"setbuffer\00"
@"cstd::str.192" = private global [17 x i8] c"timer_getoverrun\00"
@"cstd::str.47" = private global [11 x i8] c"setlinebuf\00"
@"cstd::str.193" = private global [13 x i8] c"timespec_get\00"
@"cstd::str.48" = private global [8 x i8] c"fprintf\00"
@"cstd::str.194" = private global [13 x i8] c"__fpclassify\00"
@"cstd::str.49" = private global [7 x i8] c"printf\00"
@"cstd::str.195" = private global [10 x i8] c"__signbit\00"
@"cstd::str.196" = private global [8 x i8] c"__isinf\00"
@"cstd::str.197" = private global [9 x i8] c"__finite\00"
@"cstd::_ISgraph" = global i32 32768
@"cstd::str.198" = private global [8 x i8] c"__isnan\00"
@"cstd::str.199" = private global [10 x i8] c"__iseqsig\00"
@"cstd::_ISblank" = global i32 1
@"cstd::_ISalpha" = global i32 1024
@"cstd::str.50" = private global [8 x i8] c"sprintf\00"
@"__timezone" = external global i64 
@"cstd::str.51" = private global [9 x i8] c"vfprintf\00"
@"cstd::_IScntrl" = global i32 2
@"cstd::str.52" = private global [8 x i8] c"vprintf\00"
@"cstd::str.53" = private global [9 x i8] c"vsprintf\00"
@"cstd::str.54" = private global [9 x i8] c"snprintf\00"
@"cstd::str.55" = private global [10 x i8] c"vsnprintf\00"
@"cstd::str.56" = private global [9 x i8] c"vdprintf\00"
@"cstd::str.57" = private global [8 x i8] c"dprintf\00"
@"cstd::__DEF_NAMES" = global [478 x {i64, i8*}] zeroinitializer
@"cstd::str.58" = private global [7 x i8] c"fscanf\00"
@"cstd::str.59" = private global [6 x i8] c"scanf\00"
@"stderr" = external global %"cstd::s__IO_FILE"* 
@"cstd::str.0" = private global [6 x i8] c"P_PID\00"
@"cstd::str.1" = private global [7 x i8] c"P_PGID\00"
@"cstd::str.2" = private global [6 x i8] c"P_ALL\00"
@"cstd::str.3" = private global [10 x i8] c"INVALID!!\00"
@"cstd::str.4" = private global [5 x i8] c"atof\00"
@"cstd::str.5" = private global [5 x i8] c"atoi\00"
@"cstd::str.6" = private global [5 x i8] c"atol\00"
@"cstd::str.7" = private global [7 x i8] c"strtod\00"
@"cstd::str.8" = private global [7 x i8] c"strtol\00"
@"cstd::str.9" = private global [8 x i8] c"strtoul\00"
@"cstd::str.60" = private global [7 x i8] c"sscanf\00"
@"cstd::str.61" = private global [8 x i8] c"vfscanf\00"
@"cstd::str.62" = private global [7 x i8] c"vscanf\00"
@"cstd::str.63" = private global [8 x i8] c"vsscanf\00"
@"cstd::str.64" = private global [6 x i8] c"fgetc\00"
@"cstd::str.65" = private global [5 x i8] c"getc\00"
@"cstd::str.66" = private global [8 x i8] c"getchar\00"
@"cstd::str.67" = private global [14 x i8] c"getc_unlocked\00"
@"cstd::str.68" = private global [17 x i8] c"getchar_unlocked\00"
@"cstd::str.69" = private global [15 x i8] c"fgetc_unlocked\00"
@"cstd::str.70" = private global [6 x i8] c"fputc\00"
@"cstd::str.71" = private global [5 x i8] c"putc\00"
@"cstd::str.72" = private global [8 x i8] c"putchar\00"
@"cstd::str.73" = private global [15 x i8] c"fputc_unlocked\00"
@"cstd::str.74" = private global [14 x i8] c"putc_unlocked\00"
@"cstd::str.75" = private global [17 x i8] c"putchar_unlocked\00"
@"cstd::str.76" = private global [5 x i8] c"getw\00"
@"cstd::str.77" = private global [5 x i8] c"putw\00"
@"cstd::str.78" = private global [6 x i8] c"fgets\00"
@"cstd::str.79" = private global [11 x i8] c"__getdelim\00"
@"cstd::str.80" = private global [9 x i8] c"getdelim\00"
@"cstd::str.81" = private global [8 x i8] c"getline\00"
@"cstd::str.82" = private global [6 x i8] c"fputs\00"
@"cstd::str.83" = private global [5 x i8] c"puts\00"
@"cstd::str.84" = private global [7 x i8] c"ungetc\00"
@"cstd::str.85" = private global [6 x i8] c"fread\00"
@"cstd::str.86" = private global [7 x i8] c"fwrite\00"
@"cstd::str.87" = private global [15 x i8] c"fread_unlocked\00"
@"cstd::str.88" = private global [16 x i8] c"fwrite_unlocked\00"
@"cstd::str.89" = private global [6 x i8] c"fseek\00"
@"cstd::str.90" = private global [6 x i8] c"ftell\00"
@"cstd::str.91" = private global [7 x i8] c"rewind\00"
@"cstd::str.92" = private global [7 x i8] c"fseeko\00"
@"cstd::str.93" = private global [7 x i8] c"ftello\00"
@"cstd::str.94" = private global [8 x i8] c"fgetpos\00"
@"cstd::str.95" = private global [8 x i8] c"fsetpos\00"
@"cstd::str.96" = private global [9 x i8] c"clearerr\00"
@"cstd::str.97" = private global [5 x i8] c"feof\00"
@"cstd::str.98" = private global [7 x i8] c"ferror\00"
@"cstd::str.99" = private global [18 x i8] c"clearerr_unlocked\00"
@"cstd::FP_NAN" = global i32 0
