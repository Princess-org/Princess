; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/c/Users/Vic/Programming/Princess/bin//../include/cstd.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"cstd::ldiv_t" = type {i64, i64}
%"cstd::ffi_java_raw_closure" = type {[24 x i8], %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*}
%"cstd::sigevent_t" = type {%"cstd::u_sigval", i32, i32, %"<anonymous>.1"}
%"cstd::ffi_raw_closure" = type {[24 x i8], %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*}
%"cstd::s_stat" = type {i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"cstd::s_timespec", %"cstd::s_timespec", %"cstd::s_timespec", [3 x i64]}
%"cstd::s__IO_codecvt" = type opaque
%"cstd::fd_set" = type {[16 x i64]}
%"<anonymous>.1" = type {[48 x i8]}
%"cstd::s__IO_wide_data" = type opaque
%"<anonymous>.2" = type {void (%"cstd::u_sigval")*, %"cstd::u_pthread_attr_t"*}
%"cstd::ffi_raw" = type {[8 x i8]}
%"cstd::s_lconv" = type {i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8}
%"cstd::s_drand48_data" = type {[3 x i16], [3 x i16], i16, i16, i64}
%"cstd::s_random_data" = type {i32*, i32*, i32*, i32, i32, i32, i32*}
%"cstd::ffi_closure" = type {[24 x i8], %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*}
%"cstd::s_timeval" = type {i64, i64}
%"cstd::u_sigval" = type {[8 x i8]}
%"cstd::ffi_go_closure" = type {i8*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*}
%"cstd::ffi_cif" = type {i32, i32, %"cstd::ffi_type"**, %"cstd::ffi_type"*, i32, i32}
%"cstd::s___locale_struct" = type {[13 x %"cstd::s___locale_data"*], i16*, i32*, i32*, [13 x i8*]}
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s___jmp_buf_tag" = type {[8 x i64], i32, %"cstd::__sigset_t"}
%"cstd::__mbstate_t" = type {i32, %"<anonymous>.1"}
%"cstd::__fpos_t" = type {i64, %"cstd::__mbstate_t"}
%"cstd::s_itimerspec" = type {%"cstd::s_timespec", %"cstd::s_timespec"}
%"cstd::s_tm" = type {i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*}
%"cstd::__sigset_t" = type {[16 x i64]}
%"cstd::siginfo_t" = type {i32, i32, i32, i32, %"<anonymous>.1"}
%"cstd::s_sigaction" = type {%"<anonymous>.1", %"cstd::__sigset_t", i32, void ()*}
%"cstd::stack_t" = type {i8*, i32, i64}
%"cstd::ffi_type" = type {i64, i16, i16, %"cstd::ffi_type"**}
%"cstd::s_timespec" = type {i64, i64}
%"cstd::u_pthread_attr_t" = type {[56 x i8]}
%"cstd::s___locale_data" = type opaque
%"cstd::div_t" = type {i32, i32}
%"cstd::lldiv_t" = type {i64, i64}
declare i64 @"__getdelim"(i8**, i64*, i32, %"cstd::s__IO_FILE"*)
declare double @"gamma"(double)
declare void @"explicit_bzero"(i8*, i64)
declare %"cstd::s__IO_FILE"* @"fopen"(i8*, i8*)
declare i32 @"isnan"(double)
declare i32 @"sigaddset"(%"cstd::__sigset_t"*, i32)
declare i32 @"setenv"(i8*, i8*, i32)
declare i32 @"fstat"(i32, %"cstd::s_stat"*)
declare i32 @"getchar_unlocked"()
declare double @"cos"(double)
declare i8* @"qecvt"(x86_fp80, i32, i32*, i32*)
declare double @"erand48"(i16*)
declare i32 @"ferror"(%"cstd::s__IO_FILE"*)
declare i32 @"fchdir"(i32)
declare void @"__assert"(i8*, i8*, i32)
declare float @"sinhf"(float)
declare i64 @"mktime"(%"cstd::s_tm"*)
declare i32 @"fcvt_r"(double, i32, i32*, i32*, i8*, i64)
declare x86_fp80 @"sinhl"(x86_fp80)
declare i32 @"isspace"(i32)
declare i8* @"getusershell"()
declare i32 @"fseek"(%"cstd::s__IO_FILE"*, i64, i32)
declare i32 @"strcmp"(i8*, i8*)
declare i8* @"reallocarray"(i8*, i64, i64)
declare double @"strtod"(i8*, i8**)
declare float @"strtof"(i8*, i8**)
declare %"cstd::s_tm"* @"localtime_r"(i64*, %"cstd::s_tm"*)
declare i8* @"strtok"(i8*, i8*)
declare i64 @"strtol"(i8*, i8**, i32)
declare i64 @"strtoq"(i8*, i8**, i32)
declare i32 @"__fpclassifyf"(float)
declare i32 @"posix_memalign"(i8**, i64, i64)
declare i32 @"getc"(%"cstd::s__IO_FILE"*)
declare i32 @"__fpclassifyl"(x86_fp80)
declare i32 @"isdigit"(i32)
declare i8* @"ecvt"(double, i32, i32*, i32*)
declare double @"floor"(double)
declare float @"gammaf"(float)
declare i64 @"clock"()
declare i32 @"srand48_r"(i64, %"cstd::s_drand48_data"*)
declare i32 @"getw"(%"cstd::s__IO_FILE"*)
declare i32 @"ispunct"(i32)
declare i64 @"jrand48"(i16*)
declare x86_fp80 @"gammal"(x86_fp80)
declare i32 @"seed48_r"(i16*, %"cstd::s_drand48_data"*)
declare i8* @"strncat"(i8*, i8*, i64)
declare i32 @"isgraph"(i32)
declare i32 @"isblank"(i32)
declare i32 @"getgroups"(i32, i32*)
declare i32 @"ffi_prep_closure_loc"(%"cstd::ffi_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)
declare i64 @"fread_unlocked"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i32 @"isalpha"(i32)
declare i32 @"vdprintf"(i32, i8*, %"__va_list_tag"*)
declare i32 @"iscntrl"(i32)
declare double @"expm1"(double)
declare i32 @"killpg"(i32, i32)
declare i32 @"ffi_prep_java_raw_closure_loc"(%"cstd::ffi_java_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*, i8*)
declare i8* @"getenv"(i8*)
declare i8* @"strcpy"(i8*, i8*)
declare void @"setusershell"()
declare i32 @"rand"()
declare i32 @"sigprocmask"(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)
declare float @"remquof"(float, float, i32*)
declare i32 @"fsetpos"(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)
declare double @"fmin"(double, double)
declare x86_fp80 @"remquol"(x86_fp80, x86_fp80, i32*)
declare double @"exp"(double)
declare i32 @"mkdirat"(i32, i8*, i32)
declare i32 @"chmod"(i8*, i32)
declare i8* @"__strtok_r"(i8*, i8*, i8**)
declare i32 @"unlink"(i8*)
declare i32 @"dysize"(i32)
declare i32 @"wctomb"(i8*, i32)
declare i8* @"qgcvt"(x86_fp80, i32, i8*)
declare i32 @"getpgrp"()
declare double @"nearbyint"(double)
declare i32 @"isatty"(i32)
declare double @"atan2"(double, double)
declare %"cstd::s_tm"* @"gmtime_r"(i64*, %"cstd::s_tm"*)
declare double @"pow"(double, double)
declare %"cstd::s___locale_struct"* @"duplocale"(%"cstd::s___locale_struct"*)
declare i32 @"fputc"(i32, %"cstd::s__IO_FILE"*)
declare i8* @"ffi_closure_alloc"(i64, i8**)
declare double @"lgamma_r"(double, i32*)
declare i32 @"system"(i8*)
declare %"cstd::s__IO_FILE"* @"freopen"(i8*, i8*, %"cstd::s__IO_FILE"*)
declare x86_fp80 @"strtold"(i8*, i8**)
declare i32 @"putchar"(i32)
declare i64 @"ftello"(%"cstd::s__IO_FILE"*)
declare i64 @"lrint"(double)
declare i32 @"sigtimedwait"(%"cstd::__sigset_t"*, %"cstd::siginfo_t"*, %"cstd::s_timespec"*)
declare i32 @"fputs"(i8*, %"cstd::s__IO_FILE"*)
declare i32 @"putchar_unlocked"(i32)
declare i64 @"strtoll"(i8*, i8**, i32)
declare i32 @"ffi_prep_closure"(%"cstd::ffi_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*)
declare i8* @"asctime_r"(%"cstd::s_tm"*, i8*)
declare i64 @"strlen"(i8*)
declare i64 @"mbstowcs"(i32*, i8*, i64)
declare i8* @"setlocale"(i32, i8*)
declare double @"y0"(double)
declare double @"y1"(double)
declare float @"atanf"(float)
declare i32 @"toupper"(i32)
declare i8* @"gcvt"(double, i32, i8*)
declare double @"atanh"(double)
declare i32 @"fflush"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"atanl"(x86_fp80)
declare i8* @"__stpncpy"(i8*, i8*, i64)
declare i32 @"isgraph_l"(i32, %"cstd::s___locale_struct"*)
declare %"cstd::ldiv_t" @"ldiv"(i64, i64)
declare i32 @"_tolower"(i32)
declare i32 @"__iseqsigf"(float, float)
declare i8* @"memset"(i8*, i32, i64)
declare i32 @"__iseqsigl"(x86_fp80, x86_fp80)
declare i32 @"umask"(i32)
declare i32 @"getpid"()
declare i32 @"fgetpos"(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)
declare void @"funlockfile"(%"cstd::s__IO_FILE"*)
declare i8* @"memmove"(i8*, i8*, i64)
declare float @"fmaxf"(float, float)
declare i32 @"srandom_r"(i32, %"cstd::s_random_data"*)
declare x86_fp80 @"fmaxl"(x86_fp80, x86_fp80)
declare i32 @"fork"()
declare i8* @"sbrk"(i64)
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare i8* @"initstate"(i32, i8*, i64)
declare i32 @"chown"(i8*, i32, i32)
declare i32 @"__uflow"(%"cstd::s__IO_FILE"*)
declare double @"yn"(i32, double)
declare i32 @"vsprintf"(i8*, i8*, %"__va_list_tag"*)
declare double @"asin"(double)
declare i32 @"jrand48_r"(i16*, %"cstd::s_drand48_data"*, i64*)
declare i32 @"sigemptyset"(%"cstd::__sigset_t"*)
declare double @"fmod"(double, double)
declare void @"executable_file"(i8*)
declare i32 @"timer_delete"(i8*)
declare float @"tanf"(float)
declare void @"ffi_call_go"(%"cstd::ffi_cif"*, void ()*, i8*, i8**, i8*)
declare double @"tanh"(double)
declare i32 @"mknodat"(i32, i8*, i32, i64)
declare x86_fp80 @"tanl"(x86_fp80)
declare i8* @"mkdtemp"(i8*)
declare i64 @"strxfrm"(i8*, i8*, i64)
declare float @"scalblnf"(float, i64)
declare i32 @"feof_unlocked"(%"cstd::s__IO_FILE"*)
declare x86_fp80 @"scalblnl"(x86_fp80, i64)
declare i64 @"sysconf"(i32)
declare i32 @"getppid"()
declare i32 @"__tolower_l"(i32, %"cstd::s___locale_struct"*)
declare i8 @"starts_with"(i8*, i8*)
declare i32 @"chroot"(i8*)
declare i32 @"__finitef"(float)
declare i32 @"ttyslot"()
declare i32 @"__libc_current_sigrtmax"()
declare i32 @"sigsuspend"(%"cstd::__sigset_t"*)
declare i32 @"__finite"(double)
declare i32 @"__finitel"(x86_fp80)
declare i32 @"on_exit"(void (i32, i8*)*, i8*)
declare i32 @"vscanf"(i8*, %"__va_list_tag"*)
declare i32 @"isnanf"(float)
declare i32 @"rand_r"(i32*)
declare i32 @"isnanl"(x86_fp80)
declare double @"sqrt"(double)
declare i64 @"strftime"(i8*, i64, i8*, %"cstd::s_tm"*)
declare float @"exp2f"(float)
declare i32 @"sigismember"(%"cstd::__sigset_t"*, i32)
declare x86_fp80 @"exp2l"(x86_fp80)
declare i32 @"__isinff"(float)
declare i32 @"__isinfl"(x86_fp80)
declare i32 @"ualarm"(i32, i32)
declare i32 @"getchar"()
declare i8* @"crypt"(i8*, i8*)
declare i64 @"__ctype_get_mb_cur_max"()
declare i64 @"strtoull"(i8*, i8**, i32)
declare i64 @"pathconf"(i8*, i32)
declare i32 @"isprint"(i32)
declare double @"log"(double)
declare i64 @"getdelim"(i8**, i64*, i32, %"cstd::s__IO_FILE"*)
declare i32 @"strncmp"(i8*, i8*, i64)
declare void @"qsort"(i8*, i64, i64, i32 (i8*, i8*)*)
declare void @"lcong48"(i16*)
declare double @"log2"(double)
declare double @"remainder"(double, double)
declare float @"cbrtf"(float)
declare i32 @"getpagesize"()
declare i32 @"mkstemp"(i8*)
declare float @"nextafterf"(float, float)
declare x86_fp80 @"cbrtl"(x86_fp80)
declare double @"trunc"(double)
declare x86_fp80 @"nextafterl"(x86_fp80, x86_fp80)
declare i64 @"readlinkat"(i32, i8*, i8*, i64)
declare i64 @"strtoul"(i8*, i8**, i32)
declare i64 @"lroundf"(float)
declare i32 @"islower_l"(i32, %"cstd::s___locale_struct"*)
declare i8* @"ttyname"(i32)
declare i32 @"strncasecmp_l"(i8*, i8*, i64, %"cstd::s___locale_struct"*)
declare i32 @"printf"(i8*, ...)
declare i32 @"sigaction"(i32, %"cstd::s_sigaction"*, %"cstd::s_sigaction"*)
declare i64 @"strtouq"(i8*, i8**, i32)
declare i8* @"getcwd"(i8*, i64)
declare float @"rintf"(float)
declare i64 @"lroundl"(x86_fp80)
declare double @"logb"(double)
declare float @"ldexpf"(float, i32)
declare x86_fp80 @"rintl"(x86_fp80)
declare i32 @"__signbit"(double)
declare float @"logf"(float)
declare i32 @"unsetenv"(i8*)
declare i32 @"bcmp"(i8*, i8*, i64)
declare x86_fp80 @"ldexpl"(x86_fp80, i32)
declare i64 @"mrand48"()
declare x86_fp80 @"logl"(x86_fp80)
declare i32 @"islower"(i32)
declare i32 @"mkfifo"(i8*, i32)
declare i32 @"ferror_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"siginterrupt"(i32, i32)
declare float @"jnf"(i32, float)
declare void @"ffi_call"(%"cstd::ffi_cif"*, void ()*, i8*, i8**)
declare double @"drem"(double, double)
declare x86_fp80 @"jnl"(i32, x86_fp80)
declare i8* @"strncpy"(i8*, i8*, i64)
declare i32 @"ffs"(i32)
declare i32 @"pclose"(%"cstd::s__IO_FILE"*)
declare i32 @"pause"()
declare i32 @"close"(i32)
declare void @"__assert_perror_fail"(i32, i8*, i32, i8*)
declare void @"ffi_java_raw_call"(%"cstd::ffi_cif"*, void ()*, i8*, %"cstd::ffi_raw"*)
declare i32 @"lcong48_r"(i16*, %"cstd::s_drand48_data"*)
declare i64 @"llrintf"(float)
declare void @"bzero"(i8*, i64)
declare i32 @"isxdigit"(i32)
declare i64 @"llrintl"(x86_fp80)
declare i32 @"getc_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"ffi_prep_raw_closure"(%"cstd::ffi_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*)
declare void @"_Exit"(i32)
declare double @"tgamma"(double)
declare %"cstd::s___locale_struct"* @"uselocale"(%"cstd::s___locale_struct"*)
declare i32 @"snprintf"(i8*, i64, i8*, ...)
declare i32 @"__libc_current_sigrtmin"()
declare i8* @"getpass"(i8*)
declare float @"ynf"(i32, float)
declare i32 @"setdomainname"(i8*, i64)
declare i32 @"timer_settime"(i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)
declare x86_fp80 @"ynl"(i32, x86_fp80)
declare i32 @"setregid"(i32, i32)
declare i32 @"atexit"(void ()*)
declare i32 @"qecvt_r"(x86_fp80, i32, i32*, i32*, i8*, i64)
declare i32 @"fchmod"(i32, i32)
declare double @"nextafter"(double, double)
declare i32 @"isalnum"(i32)
declare i64 @"strnlen"(i8*, i64)
declare i32 @"strncasecmp"(i8*, i8*, i64)
declare i32 @"setjmp"(%"cstd::s___jmp_buf_tag"*)
declare i8* @"strtok_r"(i8*, i8*, i8**)
declare float @"j0f"(float)
declare x86_fp80 @"j0l"(x86_fp80)
declare i8* @"ctermid"(i8*)
declare i8* @"strrchr"(i8*, i32)
declare i32 @"__lxstat"(i32, i8*, %"cstd::s_stat"*)
declare float @"asinf"(float)
declare double @"asinh"(double)
declare i32 @"clock_nanosleep"(i32, i32, %"cstd::s_timespec"*, %"cstd::s_timespec"*)
declare x86_fp80 @"asinl"(x86_fp80)
declare %"cstd::s__IO_FILE"* @"fdopen"(i32, i8*)
declare i32 @"ttyname_r"(i32, i8*, i64)
declare double @"fabs"(double)
declare i32 @"dprintf"(i32, i8*, ...)
declare i32 @"faccessat"(i32, i8*, i32, i32)
declare float @"j1f"(float)
declare i32 @"stat"(i8*, %"cstd::s_stat"*)
declare x86_fp80 @"j1l"(x86_fp80)
declare float @"logbf"(float)
declare i32 @"isspace_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"putc_unlocked"(i32, %"cstd::s__IO_FILE"*)
declare x86_fp80 @"logbl"(x86_fp80)
declare float @"log1pf"(float)
declare i32 @"sigpending"(%"cstd::__sigset_t"*)
declare i32 @"__toupper_l"(i32, %"cstd::s___locale_struct"*)
declare x86_fp80 @"log1pl"(x86_fp80)
declare i32 @"vfscanf"(%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)
declare void @"free"(i8*)
declare i32 @"fileno"(%"cstd::s__IO_FILE"*)
declare i32 @"vsscanf"(i8*, i8*, %"__va_list_tag"*)
declare float @"y0f"(float)
declare i64 @"fpathconf"(i32, i32)
declare float @"expm1f"(float)
declare i32 @"symlinkat"(i8*, i32, i8*)
declare x86_fp80 @"y0l"(x86_fp80)
declare x86_fp80 @"expm1l"(x86_fp80)
declare %"cstd::s__IO_FILE"* @"popen"(i8*, i8*)
declare double @"fma"(double, double, double)
declare float @"sinf"(float)
declare i64 @"ffi_raw_size"(%"cstd::ffi_cif"*)
define {i64, i8*} @"_F9to_string__E13cstd::ffi_abi"(i32 %enum) {
start:
	switch i32 %enum, label %15 [
		i32 2, label %0
		i32 4, label %3
		i32 3, label %6
		i32 1, label %9
		i32 5, label %12
	]
0:
	%1 = getelementptr [11 x i8], [11 x i8]* @"str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [11 x i8], [11 x i8]* @"str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [10 x i8], [10 x i8]* @"str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [14 x i8], [14 x i8]* @"str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
12:
	%13 = getelementptr [13 x i8], [13 x i8]* @"str.4", i32 0, i32 0
	%14 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %13, 1
	ret {i64, i8*} %14
15:
	%16 = getelementptr [10 x i8], [10 x i8]* @"str.5", i32 0, i32 0
	%17 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %16, 1
	ret {i64, i8*} %17
}
declare double @"sinh"(double)
declare x86_fp80 @"sinl"(x86_fp80)
declare double @"scalbln"(double, i64)
declare i32 @"fchown"(i32, i32, i32)
declare i32 @"gethostname"(i8*, i64)
declare i32 @"_setjmp"(%"cstd::s___jmp_buf_tag"*)
declare float @"lgammaf"(float)
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
declare i32 @"sleep"(i32)
declare i32 @"qfcvt_r"(x86_fp80, i32, i32*, i32*, i8*, i64)
declare i8* @"valloc"(i64)
declare i8* @"stpncpy"(i8*, i8*, i64)
declare i32 @"seteuid"(i32)
declare i8* @"strsep"(i8**, i8*)
declare i64 @"fread"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare float @"scalbnf"(float, i32)
declare void @"_longjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i32 @"getloadavg"(double*, i32)
declare i32 @"feof"(%"cstd::s__IO_FILE"*)
declare i32 @"__signbitf"(float)
declare x86_fp80 @"scalbnl"(x86_fp80, i32)
declare float @"fmodf"(float, float)
declare i32 @"__signbitl"(x86_fp80)
declare i32 @"sigblock"(i32)
declare float @"atanhf"(float)
declare double @"cbrt"(double)
declare i64 @"lround"(double)
declare x86_fp80 @"fmodl"(x86_fp80, x86_fp80)
declare %"cstd::lldiv_t" @"lldiv"(i64, i64)
declare x86_fp80 @"atanhl"(x86_fp80)
declare double @"sin"(double)
declare i32 @"setuid"(i32)
declare i32 @"finite"(double)
declare void @"quick_exit"(i32)
declare %"cstd::s_tm"* @"gmtime"(i64*)
declare i16* @"seed48"(i16*)
declare i8* @"strerror"(i32)
declare i32 @"isupper_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"sethostid"(i64)
declare i32 @"tolower"(i32)
declare %"cstd::s__IO_FILE"* @"fmemopen"(i8*, i64, i8*)
declare void @"rewind"(%"cstd::s__IO_FILE"*)
declare i32 @"timer_gettime"(i8*, %"cstd::s_itimerspec"*)
declare i32 @"pselect"(i32, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::s_timespec"*, %"cstd::__sigset_t"*)
declare i32 @"fstatat"(i32, i8*, %"cstd::s_stat"*, i32)
declare i64 @"random"()
declare i32 @"pthread_kill"(i64, i32)
declare i32 @"pthread_sigmask"(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)
declare i32 @"isinff"(float)
declare void @"psiginfo"(%"cstd::siginfo_t"*, i8*)
declare i32 @"isinfl"(x86_fp80)
declare float @"sqrtf"(float)
declare i32** @"__ctype_toupper_loc"()
declare i32 @"getentropy"(i8*, i64)
declare i32 @"sigsetmask"(i32)
declare i32 @"sprintf"(i8*, i8*, ...)
declare x86_fp80 @"sqrtl"(x86_fp80)
declare i32 @"tolower_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"finitef"(float)
declare i32 @"finitel"(x86_fp80)
declare double @"copysign"(double, double)
declare i32 @"putc"(i32, %"cstd::s__IO_FILE"*)
declare i8* @"ctime_r"(i64*, i8*)
declare i32 @"__issignalingf"(float)
declare i32 @"select"(i32, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::s_timeval"*)
declare i32 @"vsnprintf"(i8*, i64, i8*, %"__va_list_tag"*)
declare i32 @"__issignalingl"(x86_fp80)
declare i32 @"puts"(i8*)
declare float @"acoshf"(float)
declare float @"copysignf"(float, float)
declare i32 @"putw"(i32, %"cstd::s__IO_FILE"*)
declare x86_fp80 @"acoshl"(x86_fp80)
declare x86_fp80 @"copysignl"(x86_fp80, x86_fp80)
declare %"cstd::s_lconv"* @"localeconv"()
declare i32 @"nice"(i32)
declare i32 @"sigaltstack"(%"cstd::stack_t"*, %"cstd::stack_t"*)
declare void @"__assert_fail"(i8*, i8*, i32, i8*)
declare i8* @"strsignal"(i32)
declare i32 @"setsid"()
declare float @"acosf"(float)
declare double @"acosh"(double)
declare double @"hypot"(double, double)
declare x86_fp80 @"acosl"(x86_fp80)
declare i32 @"__fxstatat"(i32, i32, i8*, %"cstd::s_stat"*, i32)
declare i32 @"getuid"()
declare float @"hypotf"(float, float)
declare i32 @"strcasecmp"(i8*, i8*)
declare x86_fp80 @"hypotl"(x86_fp80, x86_fp80)
declare i32 @"isalnum_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"fclose"(%"cstd::s__IO_FILE"*)
declare i32 @"getdtablesize"()
declare i32 @"ffi_prep_java_raw_closure"(%"cstd::ffi_java_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*)
declare i32 @"timespec_get"(%"cstd::s_timespec"*, i32)
declare double @"atan"(double)
define {i64, i8*} @"_F9to_string__E16cstd::ffi_status"(i32 %enum) {
start:
	switch i32 %enum, label %9 [
		i32 2, label %0
		i32 1, label %3
		i32 0, label %6
	]
0:
	%1 = getelementptr [12 x i8], [12 x i8]* @"str.6", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [16 x i8], [16 x i8]* @"str.7", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [7 x i8], [7 x i8]* @"str.8", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [10 x i8], [10 x i8]* @"str.9", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
}
declare i32 @"access"(i8*, i32)
declare i32 @"sethostname"(i8*, i64)
declare i32 @"fgetc_unlocked"(%"cstd::s__IO_FILE"*)
declare i64 @"pwrite"(i32, i8*, i64, i64)
declare i64 @"write"(i32, i8*, i64)
declare i32 @"geteuid"()
declare i32 @"raise"(i32)
declare float @"cosf"(float)
declare double @"cosh"(double)
declare x86_fp80 @"cosl"(x86_fp80)
declare i32 @"getlogin_r"(i8*, i64)
declare void @"endusershell"()
declare i32 @"utimensat"(i32, i8*, %"cstd::s_timespec"*, i32)
declare float @"ceilf"(float)
declare i32 @"fsync"(i32)
declare i32 @"rpmatch"(i8*)
declare x86_fp80 @"ceill"(x86_fp80)
declare i32 @"sigdelset"(%"cstd::__sigset_t"*, i32)
declare i32 @"tcsetpgrp"(i32, i32)
declare i32 @"clock_getres"(i32, %"cstd::s_timespec"*)
declare i32 @"timer_getoverrun"(i8*)
declare i32 @"mbtowc"(i32*, i8*, i64)
declare i32 @"linkat"(i32, i8*, i32, i8*, i32)
declare void @"tzset"()
declare i32 @"nanosleep"(%"cstd::s_timespec"*, %"cstd::s_timespec"*)
declare i32 @"getdomainname"(i8*, i64)
declare i32 @"getsid"(i32)
declare i32 @"link"(i8*, i8*)
declare i8* @"qfcvt"(x86_fp80, i32, i32*, i32*)
declare i32 @"clearenv"()
declare %"cstd::s_tm"* @"localtime"(i64*)
declare i32 @"execle"(i8*, i8*, ...)
declare i64 @"timelocal"(%"cstd::s_tm"*)
declare i32 @"dup"(i32)
declare i32 @"acct"(i8*)
declare i32 @"execlp"(i8*, i8*, ...)
declare i32 @"vhangup"()
declare float @"nearbyintf"(float)
declare x86_fp80 @"lgammal_r"(x86_fp80, i32*)
declare i64 @"strxfrm_l"(i8*, i8*, i64, %"cstd::s___locale_struct"*)
declare float @"floorf"(float)
declare x86_fp80 @"nearbyintl"(x86_fp80)
declare i64 @"strspn"(i8*, i8*)
declare x86_fp80 @"floorl"(x86_fp80)
declare i32 @"ungetc"(i32, %"cstd::s__IO_FILE"*)
declare i32 @"fputc_unlocked"(i32, %"cstd::s__IO_FILE"*)
declare i32 @"__isinf"(double)
declare i32 @"brk"(i8*)
define void @"_F10cstd::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = alloca {i64, i8*}
	%1 = getelementptr [23 x i8], [23 x i8]* @"str.10", i64 0, i64 0
	%2 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %1, 1
	store {i64, i8*} %2, {i64, i8*}* %0
	%3 = load {i64, i8*}, {i64, i8*}* %0
	%4 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 0
	store {i64, i8*} %3, {i64, i8*}* %4
	%5 = bitcast i64 ()* @"__ctype_get_mb_cur_max" to void ()*
	%6 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 0
	store void ()* %5, void ()** %6
	%7 = alloca {i64, i8*}
	%8 = getelementptr [5 x i8], [5 x i8]* @"str.11", i64 0, i64 0
	%9 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %8, 1
	store {i64, i8*} %9, {i64, i8*}* %7
	%10 = load {i64, i8*}, {i64, i8*}* %7
	%11 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 1
	store {i64, i8*} %10, {i64, i8*}* %11
	%12 = bitcast double (i8*)* @"atof" to void ()*
	%13 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 1
	store void ()* %12, void ()** %13
	%14 = alloca {i64, i8*}
	%15 = getelementptr [5 x i8], [5 x i8]* @"str.12", i64 0, i64 0
	%16 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %15, 1
	store {i64, i8*} %16, {i64, i8*}* %14
	%17 = load {i64, i8*}, {i64, i8*}* %14
	%18 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 2
	store {i64, i8*} %17, {i64, i8*}* %18
	%19 = bitcast i32 (i8*)* @"atoi" to void ()*
	%20 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 2
	store void ()* %19, void ()** %20
	%21 = alloca {i64, i8*}
	%22 = getelementptr [5 x i8], [5 x i8]* @"str.13", i64 0, i64 0
	%23 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %22, 1
	store {i64, i8*} %23, {i64, i8*}* %21
	%24 = load {i64, i8*}, {i64, i8*}* %21
	%25 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 3
	store {i64, i8*} %24, {i64, i8*}* %25
	%26 = bitcast i64 (i8*)* @"atol" to void ()*
	%27 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 3
	store void ()* %26, void ()** %27
	%28 = alloca {i64, i8*}
	%29 = getelementptr [6 x i8], [6 x i8]* @"str.14", i64 0, i64 0
	%30 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %29, 1
	store {i64, i8*} %30, {i64, i8*}* %28
	%31 = load {i64, i8*}, {i64, i8*}* %28
	%32 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 4
	store {i64, i8*} %31, {i64, i8*}* %32
	%33 = bitcast i64 (i8*)* @"atoll" to void ()*
	%34 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 4
	store void ()* %33, void ()** %34
	%35 = alloca {i64, i8*}
	%36 = getelementptr [7 x i8], [7 x i8]* @"str.15", i64 0, i64 0
	%37 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %36, 1
	store {i64, i8*} %37, {i64, i8*}* %35
	%38 = load {i64, i8*}, {i64, i8*}* %35
	%39 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 5
	store {i64, i8*} %38, {i64, i8*}* %39
	%40 = bitcast double (i8*, i8**)* @"strtod" to void ()*
	%41 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 5
	store void ()* %40, void ()** %41
	%42 = alloca {i64, i8*}
	%43 = getelementptr [7 x i8], [7 x i8]* @"str.16", i64 0, i64 0
	%44 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %43, 1
	store {i64, i8*} %44, {i64, i8*}* %42
	%45 = load {i64, i8*}, {i64, i8*}* %42
	%46 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 6
	store {i64, i8*} %45, {i64, i8*}* %46
	%47 = bitcast float (i8*, i8**)* @"strtof" to void ()*
	%48 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 6
	store void ()* %47, void ()** %48
	%49 = alloca {i64, i8*}
	%50 = getelementptr [8 x i8], [8 x i8]* @"str.17", i64 0, i64 0
	%51 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %50, 1
	store {i64, i8*} %51, {i64, i8*}* %49
	%52 = load {i64, i8*}, {i64, i8*}* %49
	%53 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 7
	store {i64, i8*} %52, {i64, i8*}* %53
	%54 = bitcast x86_fp80 (i8*, i8**)* @"strtold" to void ()*
	%55 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 7
	store void ()* %54, void ()** %55
	%56 = alloca {i64, i8*}
	%57 = getelementptr [7 x i8], [7 x i8]* @"str.18", i64 0, i64 0
	%58 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %57, 1
	store {i64, i8*} %58, {i64, i8*}* %56
	%59 = load {i64, i8*}, {i64, i8*}* %56
	%60 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 8
	store {i64, i8*} %59, {i64, i8*}* %60
	%61 = bitcast i64 (i8*, i8**, i32)* @"strtol" to void ()*
	%62 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 8
	store void ()* %61, void ()** %62
	%63 = alloca {i64, i8*}
	%64 = getelementptr [8 x i8], [8 x i8]* @"str.19", i64 0, i64 0
	%65 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %64, 1
	store {i64, i8*} %65, {i64, i8*}* %63
	%66 = load {i64, i8*}, {i64, i8*}* %63
	%67 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 9
	store {i64, i8*} %66, {i64, i8*}* %67
	%68 = bitcast i64 (i8*, i8**, i32)* @"strtoul" to void ()*
	%69 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 9
	store void ()* %68, void ()** %69
	%70 = alloca {i64, i8*}
	%71 = getelementptr [7 x i8], [7 x i8]* @"str.20", i64 0, i64 0
	%72 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %71, 1
	store {i64, i8*} %72, {i64, i8*}* %70
	%73 = load {i64, i8*}, {i64, i8*}* %70
	%74 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 10
	store {i64, i8*} %73, {i64, i8*}* %74
	%75 = bitcast i64 (i8*, i8**, i32)* @"strtoq" to void ()*
	%76 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 10
	store void ()* %75, void ()** %76
	%77 = alloca {i64, i8*}
	%78 = getelementptr [8 x i8], [8 x i8]* @"str.21", i64 0, i64 0
	%79 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %78, 1
	store {i64, i8*} %79, {i64, i8*}* %77
	%80 = load {i64, i8*}, {i64, i8*}* %77
	%81 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 11
	store {i64, i8*} %80, {i64, i8*}* %81
	%82 = bitcast i64 (i8*, i8**, i32)* @"strtouq" to void ()*
	%83 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 11
	store void ()* %82, void ()** %83
	%84 = alloca {i64, i8*}
	%85 = getelementptr [8 x i8], [8 x i8]* @"str.22", i64 0, i64 0
	%86 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %85, 1
	store {i64, i8*} %86, {i64, i8*}* %84
	%87 = load {i64, i8*}, {i64, i8*}* %84
	%88 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 12
	store {i64, i8*} %87, {i64, i8*}* %88
	%89 = bitcast i64 (i8*, i8**, i32)* @"strtoll" to void ()*
	%90 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 12
	store void ()* %89, void ()** %90
	%91 = alloca {i64, i8*}
	%92 = getelementptr [9 x i8], [9 x i8]* @"str.23", i64 0, i64 0
	%93 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %92, 1
	store {i64, i8*} %93, {i64, i8*}* %91
	%94 = load {i64, i8*}, {i64, i8*}* %91
	%95 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 13
	store {i64, i8*} %94, {i64, i8*}* %95
	%96 = bitcast i64 (i8*, i8**, i32)* @"strtoull" to void ()*
	%97 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 13
	store void ()* %96, void ()** %97
	%98 = alloca {i64, i8*}
	%99 = getelementptr [5 x i8], [5 x i8]* @"str.24", i64 0, i64 0
	%100 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %99, 1
	store {i64, i8*} %100, {i64, i8*}* %98
	%101 = load {i64, i8*}, {i64, i8*}* %98
	%102 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 14
	store {i64, i8*} %101, {i64, i8*}* %102
	%103 = bitcast i8* (i64)* @"l64a" to void ()*
	%104 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 14
	store void ()* %103, void ()** %104
	%105 = alloca {i64, i8*}
	%106 = getelementptr [5 x i8], [5 x i8]* @"str.25", i64 0, i64 0
	%107 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %106, 1
	store {i64, i8*} %107, {i64, i8*}* %105
	%108 = load {i64, i8*}, {i64, i8*}* %105
	%109 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 15
	store {i64, i8*} %108, {i64, i8*}* %109
	%110 = bitcast i64 (i8*)* @"a64l" to void ()*
	%111 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 15
	store void ()* %110, void ()** %111
	%112 = alloca {i64, i8*}
	%113 = getelementptr [7 x i8], [7 x i8]* @"str.26", i64 0, i64 0
	%114 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %113, 1
	store {i64, i8*} %114, {i64, i8*}* %112
	%115 = load {i64, i8*}, {i64, i8*}* %112
	%116 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 16
	store {i64, i8*} %115, {i64, i8*}* %116
	%117 = bitcast i32 (i32, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::s_timeval"*)* @"select" to void ()*
	%118 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 16
	store void ()* %117, void ()** %118
	%119 = alloca {i64, i8*}
	%120 = getelementptr [8 x i8], [8 x i8]* @"str.27", i64 0, i64 0
	%121 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %120, 1
	store {i64, i8*} %121, {i64, i8*}* %119
	%122 = load {i64, i8*}, {i64, i8*}* %119
	%123 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 17
	store {i64, i8*} %122, {i64, i8*}* %123
	%124 = bitcast i32 (i32, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::fd_set"*, %"cstd::s_timespec"*, %"cstd::__sigset_t"*)* @"pselect" to void ()*
	%125 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 17
	store void ()* %124, void ()** %125
	%126 = alloca {i64, i8*}
	%127 = getelementptr [7 x i8], [7 x i8]* @"str.28", i64 0, i64 0
	%128 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %127, 1
	store {i64, i8*} %128, {i64, i8*}* %126
	%129 = load {i64, i8*}, {i64, i8*}* %126
	%130 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 18
	store {i64, i8*} %129, {i64, i8*}* %130
	%131 = bitcast i64 ()* @"random" to void ()*
	%132 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 18
	store void ()* %131, void ()** %132
	%133 = alloca {i64, i8*}
	%134 = getelementptr [8 x i8], [8 x i8]* @"str.29", i64 0, i64 0
	%135 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %134, 1
	store {i64, i8*} %135, {i64, i8*}* %133
	%136 = load {i64, i8*}, {i64, i8*}* %133
	%137 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 19
	store {i64, i8*} %136, {i64, i8*}* %137
	%138 = bitcast void (i32)* @"srandom" to void ()*
	%139 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 19
	store void ()* %138, void ()** %139
	%140 = alloca {i64, i8*}
	%141 = getelementptr [10 x i8], [10 x i8]* @"str.30", i64 0, i64 0
	%142 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %141, 1
	store {i64, i8*} %142, {i64, i8*}* %140
	%143 = load {i64, i8*}, {i64, i8*}* %140
	%144 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 20
	store {i64, i8*} %143, {i64, i8*}* %144
	%145 = bitcast i8* (i32, i8*, i64)* @"initstate" to void ()*
	%146 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 20
	store void ()* %145, void ()** %146
	%147 = alloca {i64, i8*}
	%148 = getelementptr [9 x i8], [9 x i8]* @"str.31", i64 0, i64 0
	%149 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %148, 1
	store {i64, i8*} %149, {i64, i8*}* %147
	%150 = load {i64, i8*}, {i64, i8*}* %147
	%151 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 21
	store {i64, i8*} %150, {i64, i8*}* %151
	%152 = bitcast i8* (i8*)* @"setstate" to void ()*
	%153 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 21
	store void ()* %152, void ()** %153
	%154 = alloca {i64, i8*}
	%155 = getelementptr [9 x i8], [9 x i8]* @"str.32", i64 0, i64 0
	%156 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %155, 1
	store {i64, i8*} %156, {i64, i8*}* %154
	%157 = load {i64, i8*}, {i64, i8*}* %154
	%158 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 22
	store {i64, i8*} %157, {i64, i8*}* %158
	%159 = bitcast i32 (%"cstd::s_random_data"*, i32*)* @"random_r" to void ()*
	%160 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 22
	store void ()* %159, void ()** %160
	%161 = alloca {i64, i8*}
	%162 = getelementptr [10 x i8], [10 x i8]* @"str.33", i64 0, i64 0
	%163 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %162, 1
	store {i64, i8*} %163, {i64, i8*}* %161
	%164 = load {i64, i8*}, {i64, i8*}* %161
	%165 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 23
	store {i64, i8*} %164, {i64, i8*}* %165
	%166 = bitcast i32 (i32, %"cstd::s_random_data"*)* @"srandom_r" to void ()*
	%167 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 23
	store void ()* %166, void ()** %167
	%168 = alloca {i64, i8*}
	%169 = getelementptr [12 x i8], [12 x i8]* @"str.34", i64 0, i64 0
	%170 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %169, 1
	store {i64, i8*} %170, {i64, i8*}* %168
	%171 = load {i64, i8*}, {i64, i8*}* %168
	%172 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 24
	store {i64, i8*} %171, {i64, i8*}* %172
	%173 = bitcast i32 (i32, i8*, i64, %"cstd::s_random_data"*)* @"initstate_r" to void ()*
	%174 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 24
	store void ()* %173, void ()** %174
	%175 = alloca {i64, i8*}
	%176 = getelementptr [11 x i8], [11 x i8]* @"str.35", i64 0, i64 0
	%177 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %176, 1
	store {i64, i8*} %177, {i64, i8*}* %175
	%178 = load {i64, i8*}, {i64, i8*}* %175
	%179 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 25
	store {i64, i8*} %178, {i64, i8*}* %179
	%180 = bitcast i32 (i8*, %"cstd::s_random_data"*)* @"setstate_r" to void ()*
	%181 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 25
	store void ()* %180, void ()** %181
	%182 = alloca {i64, i8*}
	%183 = getelementptr [5 x i8], [5 x i8]* @"str.36", i64 0, i64 0
	%184 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %183, 1
	store {i64, i8*} %184, {i64, i8*}* %182
	%185 = load {i64, i8*}, {i64, i8*}* %182
	%186 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 26
	store {i64, i8*} %185, {i64, i8*}* %186
	%187 = bitcast i32 ()* @"rand" to void ()*
	%188 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 26
	store void ()* %187, void ()** %188
	%189 = alloca {i64, i8*}
	%190 = getelementptr [6 x i8], [6 x i8]* @"str.37", i64 0, i64 0
	%191 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %190, 1
	store {i64, i8*} %191, {i64, i8*}* %189
	%192 = load {i64, i8*}, {i64, i8*}* %189
	%193 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 27
	store {i64, i8*} %192, {i64, i8*}* %193
	%194 = bitcast void (i32)* @"srand" to void ()*
	%195 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 27
	store void ()* %194, void ()** %195
	%196 = alloca {i64, i8*}
	%197 = getelementptr [7 x i8], [7 x i8]* @"str.38", i64 0, i64 0
	%198 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %197, 1
	store {i64, i8*} %198, {i64, i8*}* %196
	%199 = load {i64, i8*}, {i64, i8*}* %196
	%200 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 28
	store {i64, i8*} %199, {i64, i8*}* %200
	%201 = bitcast i32 (i32*)* @"rand_r" to void ()*
	%202 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 28
	store void ()* %201, void ()** %202
	%203 = alloca {i64, i8*}
	%204 = getelementptr [8 x i8], [8 x i8]* @"str.39", i64 0, i64 0
	%205 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %204, 1
	store {i64, i8*} %205, {i64, i8*}* %203
	%206 = load {i64, i8*}, {i64, i8*}* %203
	%207 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 29
	store {i64, i8*} %206, {i64, i8*}* %207
	%208 = bitcast double ()* @"drand48" to void ()*
	%209 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 29
	store void ()* %208, void ()** %209
	%210 = alloca {i64, i8*}
	%211 = getelementptr [8 x i8], [8 x i8]* @"str.40", i64 0, i64 0
	%212 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %211, 1
	store {i64, i8*} %212, {i64, i8*}* %210
	%213 = load {i64, i8*}, {i64, i8*}* %210
	%214 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 30
	store {i64, i8*} %213, {i64, i8*}* %214
	%215 = bitcast double (i16*)* @"erand48" to void ()*
	%216 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 30
	store void ()* %215, void ()** %216
	%217 = alloca {i64, i8*}
	%218 = getelementptr [8 x i8], [8 x i8]* @"str.41", i64 0, i64 0
	%219 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %218, 1
	store {i64, i8*} %219, {i64, i8*}* %217
	%220 = load {i64, i8*}, {i64, i8*}* %217
	%221 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 31
	store {i64, i8*} %220, {i64, i8*}* %221
	%222 = bitcast i64 ()* @"lrand48" to void ()*
	%223 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 31
	store void ()* %222, void ()** %223
	%224 = alloca {i64, i8*}
	%225 = getelementptr [8 x i8], [8 x i8]* @"str.42", i64 0, i64 0
	%226 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %225, 1
	store {i64, i8*} %226, {i64, i8*}* %224
	%227 = load {i64, i8*}, {i64, i8*}* %224
	%228 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 32
	store {i64, i8*} %227, {i64, i8*}* %228
	%229 = bitcast i64 (i16*)* @"nrand48" to void ()*
	%230 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 32
	store void ()* %229, void ()** %230
	%231 = alloca {i64, i8*}
	%232 = getelementptr [8 x i8], [8 x i8]* @"str.43", i64 0, i64 0
	%233 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %232, 1
	store {i64, i8*} %233, {i64, i8*}* %231
	%234 = load {i64, i8*}, {i64, i8*}* %231
	%235 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 33
	store {i64, i8*} %234, {i64, i8*}* %235
	%236 = bitcast i64 ()* @"mrand48" to void ()*
	%237 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 33
	store void ()* %236, void ()** %237
	%238 = alloca {i64, i8*}
	%239 = getelementptr [8 x i8], [8 x i8]* @"str.44", i64 0, i64 0
	%240 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %239, 1
	store {i64, i8*} %240, {i64, i8*}* %238
	%241 = load {i64, i8*}, {i64, i8*}* %238
	%242 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 34
	store {i64, i8*} %241, {i64, i8*}* %242
	%243 = bitcast i64 (i16*)* @"jrand48" to void ()*
	%244 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 34
	store void ()* %243, void ()** %244
	%245 = alloca {i64, i8*}
	%246 = getelementptr [8 x i8], [8 x i8]* @"str.45", i64 0, i64 0
	%247 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %246, 1
	store {i64, i8*} %247, {i64, i8*}* %245
	%248 = load {i64, i8*}, {i64, i8*}* %245
	%249 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 35
	store {i64, i8*} %248, {i64, i8*}* %249
	%250 = bitcast void (i64)* @"srand48" to void ()*
	%251 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 35
	store void ()* %250, void ()** %251
	%252 = alloca {i64, i8*}
	%253 = getelementptr [7 x i8], [7 x i8]* @"str.46", i64 0, i64 0
	%254 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %253, 1
	store {i64, i8*} %254, {i64, i8*}* %252
	%255 = load {i64, i8*}, {i64, i8*}* %252
	%256 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 36
	store {i64, i8*} %255, {i64, i8*}* %256
	%257 = bitcast i16* (i16*)* @"seed48" to void ()*
	%258 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 36
	store void ()* %257, void ()** %258
	%259 = alloca {i64, i8*}
	%260 = getelementptr [8 x i8], [8 x i8]* @"str.47", i64 0, i64 0
	%261 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %260, 1
	store {i64, i8*} %261, {i64, i8*}* %259
	%262 = load {i64, i8*}, {i64, i8*}* %259
	%263 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 37
	store {i64, i8*} %262, {i64, i8*}* %263
	%264 = bitcast void (i16*)* @"lcong48" to void ()*
	%265 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 37
	store void ()* %264, void ()** %265
	%266 = alloca {i64, i8*}
	%267 = getelementptr [10 x i8], [10 x i8]* @"str.48", i64 0, i64 0
	%268 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %267, 1
	store {i64, i8*} %268, {i64, i8*}* %266
	%269 = load {i64, i8*}, {i64, i8*}* %266
	%270 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 38
	store {i64, i8*} %269, {i64, i8*}* %270
	%271 = bitcast i32 (%"cstd::s_drand48_data"*, double*)* @"drand48_r" to void ()*
	%272 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 38
	store void ()* %271, void ()** %272
	%273 = alloca {i64, i8*}
	%274 = getelementptr [10 x i8], [10 x i8]* @"str.49", i64 0, i64 0
	%275 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %274, 1
	store {i64, i8*} %275, {i64, i8*}* %273
	%276 = load {i64, i8*}, {i64, i8*}* %273
	%277 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 39
	store {i64, i8*} %276, {i64, i8*}* %277
	%278 = bitcast i32 (i16*, %"cstd::s_drand48_data"*, double*)* @"erand48_r" to void ()*
	%279 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 39
	store void ()* %278, void ()** %279
	%280 = alloca {i64, i8*}
	%281 = getelementptr [10 x i8], [10 x i8]* @"str.50", i64 0, i64 0
	%282 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %281, 1
	store {i64, i8*} %282, {i64, i8*}* %280
	%283 = load {i64, i8*}, {i64, i8*}* %280
	%284 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 40
	store {i64, i8*} %283, {i64, i8*}* %284
	%285 = bitcast i32 (%"cstd::s_drand48_data"*, i64*)* @"lrand48_r" to void ()*
	%286 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 40
	store void ()* %285, void ()** %286
	%287 = alloca {i64, i8*}
	%288 = getelementptr [10 x i8], [10 x i8]* @"str.51", i64 0, i64 0
	%289 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %288, 1
	store {i64, i8*} %289, {i64, i8*}* %287
	%290 = load {i64, i8*}, {i64, i8*}* %287
	%291 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 41
	store {i64, i8*} %290, {i64, i8*}* %291
	%292 = bitcast i32 (i16*, %"cstd::s_drand48_data"*, i64*)* @"nrand48_r" to void ()*
	%293 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 41
	store void ()* %292, void ()** %293
	%294 = alloca {i64, i8*}
	%295 = getelementptr [10 x i8], [10 x i8]* @"str.52", i64 0, i64 0
	%296 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %295, 1
	store {i64, i8*} %296, {i64, i8*}* %294
	%297 = load {i64, i8*}, {i64, i8*}* %294
	%298 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 42
	store {i64, i8*} %297, {i64, i8*}* %298
	%299 = bitcast i32 (%"cstd::s_drand48_data"*, i64*)* @"mrand48_r" to void ()*
	%300 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 42
	store void ()* %299, void ()** %300
	%301 = alloca {i64, i8*}
	%302 = getelementptr [10 x i8], [10 x i8]* @"str.53", i64 0, i64 0
	%303 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %302, 1
	store {i64, i8*} %303, {i64, i8*}* %301
	%304 = load {i64, i8*}, {i64, i8*}* %301
	%305 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 43
	store {i64, i8*} %304, {i64, i8*}* %305
	%306 = bitcast i32 (i16*, %"cstd::s_drand48_data"*, i64*)* @"jrand48_r" to void ()*
	%307 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 43
	store void ()* %306, void ()** %307
	%308 = alloca {i64, i8*}
	%309 = getelementptr [10 x i8], [10 x i8]* @"str.54", i64 0, i64 0
	%310 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %309, 1
	store {i64, i8*} %310, {i64, i8*}* %308
	%311 = load {i64, i8*}, {i64, i8*}* %308
	%312 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 44
	store {i64, i8*} %311, {i64, i8*}* %312
	%313 = bitcast i32 (i64, %"cstd::s_drand48_data"*)* @"srand48_r" to void ()*
	%314 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 44
	store void ()* %313, void ()** %314
	%315 = alloca {i64, i8*}
	%316 = getelementptr [9 x i8], [9 x i8]* @"str.55", i64 0, i64 0
	%317 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %316, 1
	store {i64, i8*} %317, {i64, i8*}* %315
	%318 = load {i64, i8*}, {i64, i8*}* %315
	%319 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 45
	store {i64, i8*} %318, {i64, i8*}* %319
	%320 = bitcast i32 (i16*, %"cstd::s_drand48_data"*)* @"seed48_r" to void ()*
	%321 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 45
	store void ()* %320, void ()** %321
	%322 = alloca {i64, i8*}
	%323 = getelementptr [10 x i8], [10 x i8]* @"str.56", i64 0, i64 0
	%324 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %323, 1
	store {i64, i8*} %324, {i64, i8*}* %322
	%325 = load {i64, i8*}, {i64, i8*}* %322
	%326 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 46
	store {i64, i8*} %325, {i64, i8*}* %326
	%327 = bitcast i32 (i16*, %"cstd::s_drand48_data"*)* @"lcong48_r" to void ()*
	%328 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 46
	store void ()* %327, void ()** %328
	%329 = alloca {i64, i8*}
	%330 = getelementptr [7 x i8], [7 x i8]* @"str.57", i64 0, i64 0
	%331 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %330, 1
	store {i64, i8*} %331, {i64, i8*}* %329
	%332 = load {i64, i8*}, {i64, i8*}* %329
	%333 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 47
	store {i64, i8*} %332, {i64, i8*}* %333
	%334 = bitcast i8* (i64)* @"malloc" to void ()*
	%335 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 47
	store void ()* %334, void ()** %335
	%336 = alloca {i64, i8*}
	%337 = getelementptr [7 x i8], [7 x i8]* @"str.58", i64 0, i64 0
	%338 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %337, 1
	store {i64, i8*} %338, {i64, i8*}* %336
	%339 = load {i64, i8*}, {i64, i8*}* %336
	%340 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 48
	store {i64, i8*} %339, {i64, i8*}* %340
	%341 = bitcast i8* (i64, i64)* @"calloc" to void ()*
	%342 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 48
	store void ()* %341, void ()** %342
	%343 = alloca {i64, i8*}
	%344 = getelementptr [8 x i8], [8 x i8]* @"str.59", i64 0, i64 0
	%345 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %344, 1
	store {i64, i8*} %345, {i64, i8*}* %343
	%346 = load {i64, i8*}, {i64, i8*}* %343
	%347 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 49
	store {i64, i8*} %346, {i64, i8*}* %347
	%348 = bitcast i8* (i8*, i64)* @"realloc" to void ()*
	%349 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 49
	store void ()* %348, void ()** %349
	%350 = alloca {i64, i8*}
	%351 = getelementptr [13 x i8], [13 x i8]* @"str.60", i64 0, i64 0
	%352 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %351, 1
	store {i64, i8*} %352, {i64, i8*}* %350
	%353 = load {i64, i8*}, {i64, i8*}* %350
	%354 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 50
	store {i64, i8*} %353, {i64, i8*}* %354
	%355 = bitcast i8* (i8*, i64, i64)* @"reallocarray" to void ()*
	%356 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 50
	store void ()* %355, void ()** %356
	%357 = alloca {i64, i8*}
	%358 = getelementptr [5 x i8], [5 x i8]* @"str.61", i64 0, i64 0
	%359 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %358, 1
	store {i64, i8*} %359, {i64, i8*}* %357
	%360 = load {i64, i8*}, {i64, i8*}* %357
	%361 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 51
	store {i64, i8*} %360, {i64, i8*}* %361
	%362 = bitcast void (i8*)* @"free" to void ()*
	%363 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 51
	store void ()* %362, void ()** %363
	%364 = alloca {i64, i8*}
	%365 = getelementptr [7 x i8], [7 x i8]* @"str.62", i64 0, i64 0
	%366 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %365, 1
	store {i64, i8*} %366, {i64, i8*}* %364
	%367 = load {i64, i8*}, {i64, i8*}* %364
	%368 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 52
	store {i64, i8*} %367, {i64, i8*}* %368
	%369 = bitcast i8* (i64)* @"valloc" to void ()*
	%370 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 52
	store void ()* %369, void ()** %370
	%371 = alloca {i64, i8*}
	%372 = getelementptr [15 x i8], [15 x i8]* @"str.63", i64 0, i64 0
	%373 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %372, 1
	store {i64, i8*} %373, {i64, i8*}* %371
	%374 = load {i64, i8*}, {i64, i8*}* %371
	%375 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 53
	store {i64, i8*} %374, {i64, i8*}* %375
	%376 = bitcast i32 (i8**, i64, i64)* @"posix_memalign" to void ()*
	%377 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 53
	store void ()* %376, void ()** %377
	%378 = alloca {i64, i8*}
	%379 = getelementptr [14 x i8], [14 x i8]* @"str.64", i64 0, i64 0
	%380 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %379, 1
	store {i64, i8*} %380, {i64, i8*}* %378
	%381 = load {i64, i8*}, {i64, i8*}* %378
	%382 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 54
	store {i64, i8*} %381, {i64, i8*}* %382
	%383 = bitcast i8* (i64, i64)* @"aligned_alloc" to void ()*
	%384 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 54
	store void ()* %383, void ()** %384
	%385 = alloca {i64, i8*}
	%386 = getelementptr [6 x i8], [6 x i8]* @"str.65", i64 0, i64 0
	%387 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %386, 1
	store {i64, i8*} %387, {i64, i8*}* %385
	%388 = load {i64, i8*}, {i64, i8*}* %385
	%389 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 55
	store {i64, i8*} %388, {i64, i8*}* %389
	%390 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 55
	store void ()* @"abort", void ()** %390
	%391 = alloca {i64, i8*}
	%392 = getelementptr [7 x i8], [7 x i8]* @"str.66", i64 0, i64 0
	%393 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %392, 1
	store {i64, i8*} %393, {i64, i8*}* %391
	%394 = load {i64, i8*}, {i64, i8*}* %391
	%395 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 56
	store {i64, i8*} %394, {i64, i8*}* %395
	%396 = bitcast i32 (void ()*)* @"atexit" to void ()*
	%397 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 56
	store void ()* %396, void ()** %397
	%398 = alloca {i64, i8*}
	%399 = getelementptr [14 x i8], [14 x i8]* @"str.67", i64 0, i64 0
	%400 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %399, 1
	store {i64, i8*} %400, {i64, i8*}* %398
	%401 = load {i64, i8*}, {i64, i8*}* %398
	%402 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 57
	store {i64, i8*} %401, {i64, i8*}* %402
	%403 = bitcast i32 (void ()*)* @"at_quick_exit" to void ()*
	%404 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 57
	store void ()* %403, void ()** %404
	%405 = alloca {i64, i8*}
	%406 = getelementptr [8 x i8], [8 x i8]* @"str.68", i64 0, i64 0
	%407 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %406, 1
	store {i64, i8*} %407, {i64, i8*}* %405
	%408 = load {i64, i8*}, {i64, i8*}* %405
	%409 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 58
	store {i64, i8*} %408, {i64, i8*}* %409
	%410 = bitcast i32 (void (i32, i8*)*, i8*)* @"on_exit" to void ()*
	%411 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 58
	store void ()* %410, void ()** %411
	%412 = alloca {i64, i8*}
	%413 = getelementptr [5 x i8], [5 x i8]* @"str.69", i64 0, i64 0
	%414 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %413, 1
	store {i64, i8*} %414, {i64, i8*}* %412
	%415 = load {i64, i8*}, {i64, i8*}* %412
	%416 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 59
	store {i64, i8*} %415, {i64, i8*}* %416
	%417 = bitcast void (i32)* @"exit" to void ()*
	%418 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 59
	store void ()* %417, void ()** %418
	%419 = alloca {i64, i8*}
	%420 = getelementptr [11 x i8], [11 x i8]* @"str.70", i64 0, i64 0
	%421 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %420, 1
	store {i64, i8*} %421, {i64, i8*}* %419
	%422 = load {i64, i8*}, {i64, i8*}* %419
	%423 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 60
	store {i64, i8*} %422, {i64, i8*}* %423
	%424 = bitcast void (i32)* @"quick_exit" to void ()*
	%425 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 60
	store void ()* %424, void ()** %425
	%426 = alloca {i64, i8*}
	%427 = getelementptr [6 x i8], [6 x i8]* @"str.71", i64 0, i64 0
	%428 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %427, 1
	store {i64, i8*} %428, {i64, i8*}* %426
	%429 = load {i64, i8*}, {i64, i8*}* %426
	%430 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 61
	store {i64, i8*} %429, {i64, i8*}* %430
	%431 = bitcast void (i32)* @"_Exit" to void ()*
	%432 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 61
	store void ()* %431, void ()** %432
	%433 = alloca {i64, i8*}
	%434 = getelementptr [7 x i8], [7 x i8]* @"str.72", i64 0, i64 0
	%435 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %434, 1
	store {i64, i8*} %435, {i64, i8*}* %433
	%436 = load {i64, i8*}, {i64, i8*}* %433
	%437 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 62
	store {i64, i8*} %436, {i64, i8*}* %437
	%438 = bitcast i8* (i8*)* @"getenv" to void ()*
	%439 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 62
	store void ()* %438, void ()** %439
	%440 = alloca {i64, i8*}
	%441 = getelementptr [7 x i8], [7 x i8]* @"str.73", i64 0, i64 0
	%442 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %441, 1
	store {i64, i8*} %442, {i64, i8*}* %440
	%443 = load {i64, i8*}, {i64, i8*}* %440
	%444 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 63
	store {i64, i8*} %443, {i64, i8*}* %444
	%445 = bitcast i32 (i8*)* @"putenv" to void ()*
	%446 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 63
	store void ()* %445, void ()** %446
	%447 = alloca {i64, i8*}
	%448 = getelementptr [7 x i8], [7 x i8]* @"str.74", i64 0, i64 0
	%449 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %448, 1
	store {i64, i8*} %449, {i64, i8*}* %447
	%450 = load {i64, i8*}, {i64, i8*}* %447
	%451 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 64
	store {i64, i8*} %450, {i64, i8*}* %451
	%452 = bitcast i32 (i8*, i8*, i32)* @"setenv" to void ()*
	%453 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 64
	store void ()* %452, void ()** %453
	%454 = alloca {i64, i8*}
	%455 = getelementptr [9 x i8], [9 x i8]* @"str.75", i64 0, i64 0
	%456 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %455, 1
	store {i64, i8*} %456, {i64, i8*}* %454
	%457 = load {i64, i8*}, {i64, i8*}* %454
	%458 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 65
	store {i64, i8*} %457, {i64, i8*}* %458
	%459 = bitcast i32 (i8*)* @"unsetenv" to void ()*
	%460 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 65
	store void ()* %459, void ()** %460
	%461 = alloca {i64, i8*}
	%462 = getelementptr [9 x i8], [9 x i8]* @"str.76", i64 0, i64 0
	%463 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %462, 1
	store {i64, i8*} %463, {i64, i8*}* %461
	%464 = load {i64, i8*}, {i64, i8*}* %461
	%465 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 66
	store {i64, i8*} %464, {i64, i8*}* %465
	%466 = bitcast i32 ()* @"clearenv" to void ()*
	%467 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 66
	store void ()* %466, void ()** %467
	%468 = alloca {i64, i8*}
	%469 = getelementptr [8 x i8], [8 x i8]* @"str.77", i64 0, i64 0
	%470 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %469, 1
	store {i64, i8*} %470, {i64, i8*}* %468
	%471 = load {i64, i8*}, {i64, i8*}* %468
	%472 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 67
	store {i64, i8*} %471, {i64, i8*}* %472
	%473 = bitcast i32 (i8*)* @"mkstemp" to void ()*
	%474 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 67
	store void ()* %473, void ()** %474
	%475 = alloca {i64, i8*}
	%476 = getelementptr [9 x i8], [9 x i8]* @"str.78", i64 0, i64 0
	%477 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %476, 1
	store {i64, i8*} %477, {i64, i8*}* %475
	%478 = load {i64, i8*}, {i64, i8*}* %475
	%479 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 68
	store {i64, i8*} %478, {i64, i8*}* %479
	%480 = bitcast i32 (i8*, i32)* @"mkstemps" to void ()*
	%481 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 68
	store void ()* %480, void ()** %481
	%482 = alloca {i64, i8*}
	%483 = getelementptr [8 x i8], [8 x i8]* @"str.79", i64 0, i64 0
	%484 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %483, 1
	store {i64, i8*} %484, {i64, i8*}* %482
	%485 = load {i64, i8*}, {i64, i8*}* %482
	%486 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 69
	store {i64, i8*} %485, {i64, i8*}* %486
	%487 = bitcast i8* (i8*)* @"mkdtemp" to void ()*
	%488 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 69
	store void ()* %487, void ()** %488
	%489 = alloca {i64, i8*}
	%490 = getelementptr [7 x i8], [7 x i8]* @"str.80", i64 0, i64 0
	%491 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %490, 1
	store {i64, i8*} %491, {i64, i8*}* %489
	%492 = load {i64, i8*}, {i64, i8*}* %489
	%493 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 70
	store {i64, i8*} %492, {i64, i8*}* %493
	%494 = bitcast i32 (i8*)* @"system" to void ()*
	%495 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 70
	store void ()* %494, void ()** %495
	%496 = alloca {i64, i8*}
	%497 = getelementptr [9 x i8], [9 x i8]* @"str.81", i64 0, i64 0
	%498 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %497, 1
	store {i64, i8*} %498, {i64, i8*}* %496
	%499 = load {i64, i8*}, {i64, i8*}* %496
	%500 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 71
	store {i64, i8*} %499, {i64, i8*}* %500
	%501 = bitcast i8* (i8*, i8*)* @"realpath" to void ()*
	%502 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 71
	store void ()* %501, void ()** %502
	%503 = alloca {i64, i8*}
	%504 = getelementptr [8 x i8], [8 x i8]* @"str.82", i64 0, i64 0
	%505 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %504, 1
	store {i64, i8*} %505, {i64, i8*}* %503
	%506 = load {i64, i8*}, {i64, i8*}* %503
	%507 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 72
	store {i64, i8*} %506, {i64, i8*}* %507
	%508 = bitcast i8* (i8*, i8*, i64, i64, i32 (i8*, i8*)*)* @"bsearch" to void ()*
	%509 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 72
	store void ()* %508, void ()** %509
	%510 = alloca {i64, i8*}
	%511 = getelementptr [6 x i8], [6 x i8]* @"str.83", i64 0, i64 0
	%512 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %511, 1
	store {i64, i8*} %512, {i64, i8*}* %510
	%513 = load {i64, i8*}, {i64, i8*}* %510
	%514 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 73
	store {i64, i8*} %513, {i64, i8*}* %514
	%515 = bitcast void (i8*, i64, i64, i32 (i8*, i8*)*)* @"qsort" to void ()*
	%516 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 73
	store void ()* %515, void ()** %516
	%517 = alloca {i64, i8*}
	%518 = getelementptr [4 x i8], [4 x i8]* @"str.84", i64 0, i64 0
	%519 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %518, 1
	store {i64, i8*} %519, {i64, i8*}* %517
	%520 = load {i64, i8*}, {i64, i8*}* %517
	%521 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 74
	store {i64, i8*} %520, {i64, i8*}* %521
	%522 = bitcast i32 (i32)* @"abs" to void ()*
	%523 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 74
	store void ()* %522, void ()** %523
	%524 = alloca {i64, i8*}
	%525 = getelementptr [5 x i8], [5 x i8]* @"str.85", i64 0, i64 0
	%526 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %525, 1
	store {i64, i8*} %526, {i64, i8*}* %524
	%527 = load {i64, i8*}, {i64, i8*}* %524
	%528 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 75
	store {i64, i8*} %527, {i64, i8*}* %528
	%529 = bitcast i64 (i64)* @"labs" to void ()*
	%530 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 75
	store void ()* %529, void ()** %530
	%531 = alloca {i64, i8*}
	%532 = getelementptr [6 x i8], [6 x i8]* @"str.86", i64 0, i64 0
	%533 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %532, 1
	store {i64, i8*} %533, {i64, i8*}* %531
	%534 = load {i64, i8*}, {i64, i8*}* %531
	%535 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 76
	store {i64, i8*} %534, {i64, i8*}* %535
	%536 = bitcast i64 (i64)* @"llabs" to void ()*
	%537 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 76
	store void ()* %536, void ()** %537
	%538 = alloca {i64, i8*}
	%539 = getelementptr [4 x i8], [4 x i8]* @"str.87", i64 0, i64 0
	%540 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %539, 1
	store {i64, i8*} %540, {i64, i8*}* %538
	%541 = load {i64, i8*}, {i64, i8*}* %538
	%542 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 77
	store {i64, i8*} %541, {i64, i8*}* %542
	%543 = bitcast %"cstd::div_t" (i32, i32)* @"div" to void ()*
	%544 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 77
	store void ()* %543, void ()** %544
	%545 = alloca {i64, i8*}
	%546 = getelementptr [5 x i8], [5 x i8]* @"str.88", i64 0, i64 0
	%547 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %546, 1
	store {i64, i8*} %547, {i64, i8*}* %545
	%548 = load {i64, i8*}, {i64, i8*}* %545
	%549 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 78
	store {i64, i8*} %548, {i64, i8*}* %549
	%550 = bitcast %"cstd::ldiv_t" (i64, i64)* @"ldiv" to void ()*
	%551 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 78
	store void ()* %550, void ()** %551
	%552 = alloca {i64, i8*}
	%553 = getelementptr [6 x i8], [6 x i8]* @"str.89", i64 0, i64 0
	%554 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %553, 1
	store {i64, i8*} %554, {i64, i8*}* %552
	%555 = load {i64, i8*}, {i64, i8*}* %552
	%556 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 79
	store {i64, i8*} %555, {i64, i8*}* %556
	%557 = bitcast %"cstd::lldiv_t" (i64, i64)* @"lldiv" to void ()*
	%558 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 79
	store void ()* %557, void ()** %558
	%559 = alloca {i64, i8*}
	%560 = getelementptr [5 x i8], [5 x i8]* @"str.90", i64 0, i64 0
	%561 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %560, 1
	store {i64, i8*} %561, {i64, i8*}* %559
	%562 = load {i64, i8*}, {i64, i8*}* %559
	%563 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 80
	store {i64, i8*} %562, {i64, i8*}* %563
	%564 = bitcast i8* (double, i32, i32*, i32*)* @"ecvt" to void ()*
	%565 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 80
	store void ()* %564, void ()** %565
	%566 = alloca {i64, i8*}
	%567 = getelementptr [5 x i8], [5 x i8]* @"str.91", i64 0, i64 0
	%568 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %567, 1
	store {i64, i8*} %568, {i64, i8*}* %566
	%569 = load {i64, i8*}, {i64, i8*}* %566
	%570 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 81
	store {i64, i8*} %569, {i64, i8*}* %570
	%571 = bitcast i8* (double, i32, i32*, i32*)* @"fcvt" to void ()*
	%572 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 81
	store void ()* %571, void ()** %572
	%573 = alloca {i64, i8*}
	%574 = getelementptr [5 x i8], [5 x i8]* @"str.92", i64 0, i64 0
	%575 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %574, 1
	store {i64, i8*} %575, {i64, i8*}* %573
	%576 = load {i64, i8*}, {i64, i8*}* %573
	%577 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 82
	store {i64, i8*} %576, {i64, i8*}* %577
	%578 = bitcast i8* (double, i32, i8*)* @"gcvt" to void ()*
	%579 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 82
	store void ()* %578, void ()** %579
	%580 = alloca {i64, i8*}
	%581 = getelementptr [6 x i8], [6 x i8]* @"str.93", i64 0, i64 0
	%582 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %581, 1
	store {i64, i8*} %582, {i64, i8*}* %580
	%583 = load {i64, i8*}, {i64, i8*}* %580
	%584 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 83
	store {i64, i8*} %583, {i64, i8*}* %584
	%585 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @"qecvt" to void ()*
	%586 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 83
	store void ()* %585, void ()** %586
	%587 = alloca {i64, i8*}
	%588 = getelementptr [6 x i8], [6 x i8]* @"str.94", i64 0, i64 0
	%589 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %588, 1
	store {i64, i8*} %589, {i64, i8*}* %587
	%590 = load {i64, i8*}, {i64, i8*}* %587
	%591 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 84
	store {i64, i8*} %590, {i64, i8*}* %591
	%592 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @"qfcvt" to void ()*
	%593 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 84
	store void ()* %592, void ()** %593
	%594 = alloca {i64, i8*}
	%595 = getelementptr [6 x i8], [6 x i8]* @"str.95", i64 0, i64 0
	%596 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %595, 1
	store {i64, i8*} %596, {i64, i8*}* %594
	%597 = load {i64, i8*}, {i64, i8*}* %594
	%598 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 85
	store {i64, i8*} %597, {i64, i8*}* %598
	%599 = bitcast i8* (x86_fp80, i32, i8*)* @"qgcvt" to void ()*
	%600 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 85
	store void ()* %599, void ()** %600
	%601 = alloca {i64, i8*}
	%602 = getelementptr [7 x i8], [7 x i8]* @"str.96", i64 0, i64 0
	%603 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %602, 1
	store {i64, i8*} %603, {i64, i8*}* %601
	%604 = load {i64, i8*}, {i64, i8*}* %601
	%605 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 86
	store {i64, i8*} %604, {i64, i8*}* %605
	%606 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @"ecvt_r" to void ()*
	%607 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 86
	store void ()* %606, void ()** %607
	%608 = alloca {i64, i8*}
	%609 = getelementptr [7 x i8], [7 x i8]* @"str.97", i64 0, i64 0
	%610 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %609, 1
	store {i64, i8*} %610, {i64, i8*}* %608
	%611 = load {i64, i8*}, {i64, i8*}* %608
	%612 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 87
	store {i64, i8*} %611, {i64, i8*}* %612
	%613 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @"fcvt_r" to void ()*
	%614 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 87
	store void ()* %613, void ()** %614
	%615 = alloca {i64, i8*}
	%616 = getelementptr [8 x i8], [8 x i8]* @"str.98", i64 0, i64 0
	%617 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %616, 1
	store {i64, i8*} %617, {i64, i8*}* %615
	%618 = load {i64, i8*}, {i64, i8*}* %615
	%619 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 88
	store {i64, i8*} %618, {i64, i8*}* %619
	%620 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @"qecvt_r" to void ()*
	%621 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 88
	store void ()* %620, void ()** %621
	%622 = alloca {i64, i8*}
	%623 = getelementptr [8 x i8], [8 x i8]* @"str.99", i64 0, i64 0
	%624 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %623, 1
	store {i64, i8*} %624, {i64, i8*}* %622
	%625 = load {i64, i8*}, {i64, i8*}* %622
	%626 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 89
	store {i64, i8*} %625, {i64, i8*}* %626
	%627 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @"qfcvt_r" to void ()*
	%628 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 89
	store void ()* %627, void ()** %628
	%629 = alloca {i64, i8*}
	%630 = getelementptr [6 x i8], [6 x i8]* @"str.100", i64 0, i64 0
	%631 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %630, 1
	store {i64, i8*} %631, {i64, i8*}* %629
	%632 = load {i64, i8*}, {i64, i8*}* %629
	%633 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 90
	store {i64, i8*} %632, {i64, i8*}* %633
	%634 = bitcast i32 (i8*, i64)* @"mblen" to void ()*
	%635 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 90
	store void ()* %634, void ()** %635
	%636 = alloca {i64, i8*}
	%637 = getelementptr [7 x i8], [7 x i8]* @"str.101", i64 0, i64 0
	%638 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %637, 1
	store {i64, i8*} %638, {i64, i8*}* %636
	%639 = load {i64, i8*}, {i64, i8*}* %636
	%640 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 91
	store {i64, i8*} %639, {i64, i8*}* %640
	%641 = bitcast i32 (i32*, i8*, i64)* @"mbtowc" to void ()*
	%642 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 91
	store void ()* %641, void ()** %642
	%643 = alloca {i64, i8*}
	%644 = getelementptr [7 x i8], [7 x i8]* @"str.102", i64 0, i64 0
	%645 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %644, 1
	store {i64, i8*} %645, {i64, i8*}* %643
	%646 = load {i64, i8*}, {i64, i8*}* %643
	%647 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 92
	store {i64, i8*} %646, {i64, i8*}* %647
	%648 = bitcast i32 (i8*, i32)* @"wctomb" to void ()*
	%649 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 92
	store void ()* %648, void ()** %649
	%650 = alloca {i64, i8*}
	%651 = getelementptr [9 x i8], [9 x i8]* @"str.103", i64 0, i64 0
	%652 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %651, 1
	store {i64, i8*} %652, {i64, i8*}* %650
	%653 = load {i64, i8*}, {i64, i8*}* %650
	%654 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 93
	store {i64, i8*} %653, {i64, i8*}* %654
	%655 = bitcast i64 (i32*, i8*, i64)* @"mbstowcs" to void ()*
	%656 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 93
	store void ()* %655, void ()** %656
	%657 = alloca {i64, i8*}
	%658 = getelementptr [9 x i8], [9 x i8]* @"str.104", i64 0, i64 0
	%659 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %658, 1
	store {i64, i8*} %659, {i64, i8*}* %657
	%660 = load {i64, i8*}, {i64, i8*}* %657
	%661 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 94
	store {i64, i8*} %660, {i64, i8*}* %661
	%662 = bitcast i64 (i8*, i32*, i64)* @"wcstombs" to void ()*
	%663 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 94
	store void ()* %662, void ()** %663
	%664 = alloca {i64, i8*}
	%665 = getelementptr [8 x i8], [8 x i8]* @"str.105", i64 0, i64 0
	%666 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %665, 1
	store {i64, i8*} %666, {i64, i8*}* %664
	%667 = load {i64, i8*}, {i64, i8*}* %664
	%668 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 95
	store {i64, i8*} %667, {i64, i8*}* %668
	%669 = bitcast i32 (i8*)* @"rpmatch" to void ()*
	%670 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 95
	store void ()* %669, void ()** %670
	%671 = alloca {i64, i8*}
	%672 = getelementptr [10 x i8], [10 x i8]* @"str.106", i64 0, i64 0
	%673 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %672, 1
	store {i64, i8*} %673, {i64, i8*}* %671
	%674 = load {i64, i8*}, {i64, i8*}* %671
	%675 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 96
	store {i64, i8*} %674, {i64, i8*}* %675
	%676 = bitcast i32 (i8**, i8**, i8**)* @"getsubopt" to void ()*
	%677 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 96
	store void ()* %676, void ()** %677
	%678 = alloca {i64, i8*}
	%679 = getelementptr [11 x i8], [11 x i8]* @"str.107", i64 0, i64 0
	%680 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %679, 1
	store {i64, i8*} %680, {i64, i8*}* %678
	%681 = load {i64, i8*}, {i64, i8*}* %678
	%682 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 97
	store {i64, i8*} %681, {i64, i8*}* %682
	%683 = bitcast i32 (double*, i32)* @"getloadavg" to void ()*
	%684 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 97
	store void ()* %683, void ()** %684
	%685 = alloca {i64, i8*}
	%686 = getelementptr [7 x i8], [7 x i8]* @"str.108", i64 0, i64 0
	%687 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %686, 1
	store {i64, i8*} %687, {i64, i8*}* %685
	%688 = load {i64, i8*}, {i64, i8*}* %685
	%689 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 98
	store {i64, i8*} %688, {i64, i8*}* %689
	%690 = bitcast i32 (i8*)* @"remove" to void ()*
	%691 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 98
	store void ()* %690, void ()** %691
	%692 = alloca {i64, i8*}
	%693 = getelementptr [7 x i8], [7 x i8]* @"str.109", i64 0, i64 0
	%694 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %693, 1
	store {i64, i8*} %694, {i64, i8*}* %692
	%695 = load {i64, i8*}, {i64, i8*}* %692
	%696 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 99
	store {i64, i8*} %695, {i64, i8*}* %696
	%697 = bitcast i32 (i8*, i8*)* @"rename" to void ()*
	%698 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 99
	store void ()* %697, void ()** %698
	%699 = alloca {i64, i8*}
	%700 = getelementptr [9 x i8], [9 x i8]* @"str.110", i64 0, i64 0
	%701 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %700, 1
	store {i64, i8*} %701, {i64, i8*}* %699
	%702 = load {i64, i8*}, {i64, i8*}* %699
	%703 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 100
	store {i64, i8*} %702, {i64, i8*}* %703
	%704 = bitcast i32 (i32, i8*, i32, i8*)* @"renameat" to void ()*
	%705 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 100
	store void ()* %704, void ()** %705
	%706 = alloca {i64, i8*}
	%707 = getelementptr [8 x i8], [8 x i8]* @"str.111", i64 0, i64 0
	%708 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %707, 1
	store {i64, i8*} %708, {i64, i8*}* %706
	%709 = load {i64, i8*}, {i64, i8*}* %706
	%710 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 101
	store {i64, i8*} %709, {i64, i8*}* %710
	%711 = bitcast %"cstd::s__IO_FILE"* ()* @"tmpfile" to void ()*
	%712 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 101
	store void ()* %711, void ()** %712
	%713 = alloca {i64, i8*}
	%714 = getelementptr [7 x i8], [7 x i8]* @"str.112", i64 0, i64 0
	%715 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %714, 1
	store {i64, i8*} %715, {i64, i8*}* %713
	%716 = load {i64, i8*}, {i64, i8*}* %713
	%717 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 102
	store {i64, i8*} %716, {i64, i8*}* %717
	%718 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fclose" to void ()*
	%719 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 102
	store void ()* %718, void ()** %719
	%720 = alloca {i64, i8*}
	%721 = getelementptr [7 x i8], [7 x i8]* @"str.113", i64 0, i64 0
	%722 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %721, 1
	store {i64, i8*} %722, {i64, i8*}* %720
	%723 = load {i64, i8*}, {i64, i8*}* %720
	%724 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 103
	store {i64, i8*} %723, {i64, i8*}* %724
	%725 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fflush" to void ()*
	%726 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 103
	store void ()* %725, void ()** %726
	%727 = alloca {i64, i8*}
	%728 = getelementptr [16 x i8], [16 x i8]* @"str.114", i64 0, i64 0
	%729 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %728, 1
	store {i64, i8*} %729, {i64, i8*}* %727
	%730 = load {i64, i8*}, {i64, i8*}* %727
	%731 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 104
	store {i64, i8*} %730, {i64, i8*}* %731
	%732 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fflush_unlocked" to void ()*
	%733 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 104
	store void ()* %732, void ()** %733
	%734 = alloca {i64, i8*}
	%735 = getelementptr [6 x i8], [6 x i8]* @"str.115", i64 0, i64 0
	%736 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %735, 1
	store {i64, i8*} %736, {i64, i8*}* %734
	%737 = load {i64, i8*}, {i64, i8*}* %734
	%738 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 105
	store {i64, i8*} %737, {i64, i8*}* %738
	%739 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @"fopen" to void ()*
	%740 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 105
	store void ()* %739, void ()** %740
	%741 = alloca {i64, i8*}
	%742 = getelementptr [8 x i8], [8 x i8]* @"str.116", i64 0, i64 0
	%743 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %742, 1
	store {i64, i8*} %743, {i64, i8*}* %741
	%744 = load {i64, i8*}, {i64, i8*}* %741
	%745 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 106
	store {i64, i8*} %744, {i64, i8*}* %745
	%746 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*, %"cstd::s__IO_FILE"*)* @"freopen" to void ()*
	%747 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 106
	store void ()* %746, void ()** %747
	%748 = alloca {i64, i8*}
	%749 = getelementptr [7 x i8], [7 x i8]* @"str.117", i64 0, i64 0
	%750 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %749, 1
	store {i64, i8*} %750, {i64, i8*}* %748
	%751 = load {i64, i8*}, {i64, i8*}* %748
	%752 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 107
	store {i64, i8*} %751, {i64, i8*}* %752
	%753 = bitcast %"cstd::s__IO_FILE"* (i32, i8*)* @"fdopen" to void ()*
	%754 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 107
	store void ()* %753, void ()** %754
	%755 = alloca {i64, i8*}
	%756 = getelementptr [9 x i8], [9 x i8]* @"str.118", i64 0, i64 0
	%757 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %756, 1
	store {i64, i8*} %757, {i64, i8*}* %755
	%758 = load {i64, i8*}, {i64, i8*}* %755
	%759 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 108
	store {i64, i8*} %758, {i64, i8*}* %759
	%760 = bitcast %"cstd::s__IO_FILE"* (i8*, i64, i8*)* @"fmemopen" to void ()*
	%761 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 108
	store void ()* %760, void ()** %761
	%762 = alloca {i64, i8*}
	%763 = getelementptr [15 x i8], [15 x i8]* @"str.119", i64 0, i64 0
	%764 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %763, 1
	store {i64, i8*} %764, {i64, i8*}* %762
	%765 = load {i64, i8*}, {i64, i8*}* %762
	%766 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 109
	store {i64, i8*} %765, {i64, i8*}* %766
	%767 = bitcast %"cstd::s__IO_FILE"* (i8**, i64*)* @"open_memstream" to void ()*
	%768 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 109
	store void ()* %767, void ()** %768
	%769 = alloca {i64, i8*}
	%770 = getelementptr [7 x i8], [7 x i8]* @"str.120", i64 0, i64 0
	%771 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %770, 1
	store {i64, i8*} %771, {i64, i8*}* %769
	%772 = load {i64, i8*}, {i64, i8*}* %769
	%773 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 110
	store {i64, i8*} %772, {i64, i8*}* %773
	%774 = bitcast void (%"cstd::s__IO_FILE"*, i8*)* @"setbuf" to void ()*
	%775 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 110
	store void ()* %774, void ()** %775
	%776 = alloca {i64, i8*}
	%777 = getelementptr [8 x i8], [8 x i8]* @"str.121", i64 0, i64 0
	%778 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %777, 1
	store {i64, i8*} %778, {i64, i8*}* %776
	%779 = load {i64, i8*}, {i64, i8*}* %776
	%780 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 111
	store {i64, i8*} %779, {i64, i8*}* %780
	%781 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, i32, i64)* @"setvbuf" to void ()*
	%782 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 111
	store void ()* %781, void ()** %782
	%783 = alloca {i64, i8*}
	%784 = getelementptr [10 x i8], [10 x i8]* @"str.122", i64 0, i64 0
	%785 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %784, 1
	store {i64, i8*} %785, {i64, i8*}* %783
	%786 = load {i64, i8*}, {i64, i8*}* %783
	%787 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 112
	store {i64, i8*} %786, {i64, i8*}* %787
	%788 = bitcast void (%"cstd::s__IO_FILE"*, i8*, i64)* @"setbuffer" to void ()*
	%789 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 112
	store void ()* %788, void ()** %789
	%790 = alloca {i64, i8*}
	%791 = getelementptr [11 x i8], [11 x i8]* @"str.123", i64 0, i64 0
	%792 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %791, 1
	store {i64, i8*} %792, {i64, i8*}* %790
	%793 = load {i64, i8*}, {i64, i8*}* %790
	%794 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 113
	store {i64, i8*} %793, {i64, i8*}* %794
	%795 = bitcast void (%"cstd::s__IO_FILE"*)* @"setlinebuf" to void ()*
	%796 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 113
	store void ()* %795, void ()** %796
	%797 = alloca {i64, i8*}
	%798 = getelementptr [8 x i8], [8 x i8]* @"str.124", i64 0, i64 0
	%799 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %798, 1
	store {i64, i8*} %799, {i64, i8*}* %797
	%800 = load {i64, i8*}, {i64, i8*}* %797
	%801 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 114
	store {i64, i8*} %800, {i64, i8*}* %801
	%802 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @"fprintf" to void ()*
	%803 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 114
	store void ()* %802, void ()** %803
	%804 = alloca {i64, i8*}
	%805 = getelementptr [7 x i8], [7 x i8]* @"str.125", i64 0, i64 0
	%806 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %805, 1
	store {i64, i8*} %806, {i64, i8*}* %804
	%807 = load {i64, i8*}, {i64, i8*}* %804
	%808 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 115
	store {i64, i8*} %807, {i64, i8*}* %808
	%809 = bitcast i32 (i8*, ...)* @"printf" to void ()*
	%810 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 115
	store void ()* %809, void ()** %810
	%811 = alloca {i64, i8*}
	%812 = getelementptr [8 x i8], [8 x i8]* @"str.126", i64 0, i64 0
	%813 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %812, 1
	store {i64, i8*} %813, {i64, i8*}* %811
	%814 = load {i64, i8*}, {i64, i8*}* %811
	%815 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 116
	store {i64, i8*} %814, {i64, i8*}* %815
	%816 = bitcast i32 (i8*, i8*, ...)* @"sprintf" to void ()*
	%817 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 116
	store void ()* %816, void ()** %817
	%818 = alloca {i64, i8*}
	%819 = getelementptr [9 x i8], [9 x i8]* @"str.127", i64 0, i64 0
	%820 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %819, 1
	store {i64, i8*} %820, {i64, i8*}* %818
	%821 = load {i64, i8*}, {i64, i8*}* %818
	%822 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 117
	store {i64, i8*} %821, {i64, i8*}* %822
	%823 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)* @"vfprintf" to void ()*
	%824 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 117
	store void ()* %823, void ()** %824
	%825 = alloca {i64, i8*}
	%826 = getelementptr [8 x i8], [8 x i8]* @"str.128", i64 0, i64 0
	%827 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %826, 1
	store {i64, i8*} %827, {i64, i8*}* %825
	%828 = load {i64, i8*}, {i64, i8*}* %825
	%829 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 118
	store {i64, i8*} %828, {i64, i8*}* %829
	%830 = bitcast i32 (i8*, %"__va_list_tag"*)* @"vprintf" to void ()*
	%831 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 118
	store void ()* %830, void ()** %831
	%832 = alloca {i64, i8*}
	%833 = getelementptr [9 x i8], [9 x i8]* @"str.129", i64 0, i64 0
	%834 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %833, 1
	store {i64, i8*} %834, {i64, i8*}* %832
	%835 = load {i64, i8*}, {i64, i8*}* %832
	%836 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 119
	store {i64, i8*} %835, {i64, i8*}* %836
	%837 = bitcast i32 (i8*, i8*, %"__va_list_tag"*)* @"vsprintf" to void ()*
	%838 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 119
	store void ()* %837, void ()** %838
	%839 = alloca {i64, i8*}
	%840 = getelementptr [9 x i8], [9 x i8]* @"str.130", i64 0, i64 0
	%841 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %840, 1
	store {i64, i8*} %841, {i64, i8*}* %839
	%842 = load {i64, i8*}, {i64, i8*}* %839
	%843 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 120
	store {i64, i8*} %842, {i64, i8*}* %843
	%844 = bitcast i32 (i8*, i64, i8*, ...)* @"snprintf" to void ()*
	%845 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 120
	store void ()* %844, void ()** %845
	%846 = alloca {i64, i8*}
	%847 = getelementptr [10 x i8], [10 x i8]* @"str.131", i64 0, i64 0
	%848 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %847, 1
	store {i64, i8*} %848, {i64, i8*}* %846
	%849 = load {i64, i8*}, {i64, i8*}* %846
	%850 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 121
	store {i64, i8*} %849, {i64, i8*}* %850
	%851 = bitcast i32 (i8*, i64, i8*, %"__va_list_tag"*)* @"vsnprintf" to void ()*
	%852 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 121
	store void ()* %851, void ()** %852
	%853 = alloca {i64, i8*}
	%854 = getelementptr [9 x i8], [9 x i8]* @"str.132", i64 0, i64 0
	%855 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %854, 1
	store {i64, i8*} %855, {i64, i8*}* %853
	%856 = load {i64, i8*}, {i64, i8*}* %853
	%857 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 122
	store {i64, i8*} %856, {i64, i8*}* %857
	%858 = bitcast i32 (i32, i8*, %"__va_list_tag"*)* @"vdprintf" to void ()*
	%859 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 122
	store void ()* %858, void ()** %859
	%860 = alloca {i64, i8*}
	%861 = getelementptr [8 x i8], [8 x i8]* @"str.133", i64 0, i64 0
	%862 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %861, 1
	store {i64, i8*} %862, {i64, i8*}* %860
	%863 = load {i64, i8*}, {i64, i8*}* %860
	%864 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 123
	store {i64, i8*} %863, {i64, i8*}* %864
	%865 = bitcast i32 (i32, i8*, ...)* @"dprintf" to void ()*
	%866 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 123
	store void ()* %865, void ()** %866
	%867 = alloca {i64, i8*}
	%868 = getelementptr [7 x i8], [7 x i8]* @"str.134", i64 0, i64 0
	%869 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %868, 1
	store {i64, i8*} %869, {i64, i8*}* %867
	%870 = load {i64, i8*}, {i64, i8*}* %867
	%871 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 124
	store {i64, i8*} %870, {i64, i8*}* %871
	%872 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @"fscanf" to void ()*
	%873 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 124
	store void ()* %872, void ()** %873
	%874 = alloca {i64, i8*}
	%875 = getelementptr [6 x i8], [6 x i8]* @"str.135", i64 0, i64 0
	%876 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %875, 1
	store {i64, i8*} %876, {i64, i8*}* %874
	%877 = load {i64, i8*}, {i64, i8*}* %874
	%878 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 125
	store {i64, i8*} %877, {i64, i8*}* %878
	%879 = bitcast i32 (i8*, ...)* @"scanf" to void ()*
	%880 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 125
	store void ()* %879, void ()** %880
	%881 = alloca {i64, i8*}
	%882 = getelementptr [7 x i8], [7 x i8]* @"str.136", i64 0, i64 0
	%883 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %882, 1
	store {i64, i8*} %883, {i64, i8*}* %881
	%884 = load {i64, i8*}, {i64, i8*}* %881
	%885 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 126
	store {i64, i8*} %884, {i64, i8*}* %885
	%886 = bitcast i32 (i8*, i8*, ...)* @"sscanf" to void ()*
	%887 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 126
	store void ()* %886, void ()** %887
	%888 = alloca {i64, i8*}
	%889 = getelementptr [8 x i8], [8 x i8]* @"str.137", i64 0, i64 0
	%890 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %889, 1
	store {i64, i8*} %890, {i64, i8*}* %888
	%891 = load {i64, i8*}, {i64, i8*}* %888
	%892 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 127
	store {i64, i8*} %891, {i64, i8*}* %892
	%893 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)* @"vfscanf" to void ()*
	%894 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 127
	store void ()* %893, void ()** %894
	%895 = alloca {i64, i8*}
	%896 = getelementptr [7 x i8], [7 x i8]* @"str.138", i64 0, i64 0
	%897 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %896, 1
	store {i64, i8*} %897, {i64, i8*}* %895
	%898 = load {i64, i8*}, {i64, i8*}* %895
	%899 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 128
	store {i64, i8*} %898, {i64, i8*}* %899
	%900 = bitcast i32 (i8*, %"__va_list_tag"*)* @"vscanf" to void ()*
	%901 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 128
	store void ()* %900, void ()** %901
	%902 = alloca {i64, i8*}
	%903 = getelementptr [8 x i8], [8 x i8]* @"str.139", i64 0, i64 0
	%904 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %903, 1
	store {i64, i8*} %904, {i64, i8*}* %902
	%905 = load {i64, i8*}, {i64, i8*}* %902
	%906 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 129
	store {i64, i8*} %905, {i64, i8*}* %906
	%907 = bitcast i32 (i8*, i8*, %"__va_list_tag"*)* @"vsscanf" to void ()*
	%908 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 129
	store void ()* %907, void ()** %908
	%909 = alloca {i64, i8*}
	%910 = getelementptr [6 x i8], [6 x i8]* @"str.140", i64 0, i64 0
	%911 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %910, 1
	store {i64, i8*} %911, {i64, i8*}* %909
	%912 = load {i64, i8*}, {i64, i8*}* %909
	%913 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 130
	store {i64, i8*} %912, {i64, i8*}* %913
	%914 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fgetc" to void ()*
	%915 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 130
	store void ()* %914, void ()** %915
	%916 = alloca {i64, i8*}
	%917 = getelementptr [5 x i8], [5 x i8]* @"str.141", i64 0, i64 0
	%918 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %917, 1
	store {i64, i8*} %918, {i64, i8*}* %916
	%919 = load {i64, i8*}, {i64, i8*}* %916
	%920 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 131
	store {i64, i8*} %919, {i64, i8*}* %920
	%921 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getc" to void ()*
	%922 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 131
	store void ()* %921, void ()** %922
	%923 = alloca {i64, i8*}
	%924 = getelementptr [8 x i8], [8 x i8]* @"str.142", i64 0, i64 0
	%925 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %924, 1
	store {i64, i8*} %925, {i64, i8*}* %923
	%926 = load {i64, i8*}, {i64, i8*}* %923
	%927 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 132
	store {i64, i8*} %926, {i64, i8*}* %927
	%928 = bitcast i32 ()* @"getchar" to void ()*
	%929 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 132
	store void ()* %928, void ()** %929
	%930 = alloca {i64, i8*}
	%931 = getelementptr [14 x i8], [14 x i8]* @"str.143", i64 0, i64 0
	%932 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %931, 1
	store {i64, i8*} %932, {i64, i8*}* %930
	%933 = load {i64, i8*}, {i64, i8*}* %930
	%934 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 133
	store {i64, i8*} %933, {i64, i8*}* %934
	%935 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getc_unlocked" to void ()*
	%936 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 133
	store void ()* %935, void ()** %936
	%937 = alloca {i64, i8*}
	%938 = getelementptr [17 x i8], [17 x i8]* @"str.144", i64 0, i64 0
	%939 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %938, 1
	store {i64, i8*} %939, {i64, i8*}* %937
	%940 = load {i64, i8*}, {i64, i8*}* %937
	%941 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 134
	store {i64, i8*} %940, {i64, i8*}* %941
	%942 = bitcast i32 ()* @"getchar_unlocked" to void ()*
	%943 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 134
	store void ()* %942, void ()** %943
	%944 = alloca {i64, i8*}
	%945 = getelementptr [15 x i8], [15 x i8]* @"str.145", i64 0, i64 0
	%946 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %945, 1
	store {i64, i8*} %946, {i64, i8*}* %944
	%947 = load {i64, i8*}, {i64, i8*}* %944
	%948 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 135
	store {i64, i8*} %947, {i64, i8*}* %948
	%949 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fgetc_unlocked" to void ()*
	%950 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 135
	store void ()* %949, void ()** %950
	%951 = alloca {i64, i8*}
	%952 = getelementptr [6 x i8], [6 x i8]* @"str.146", i64 0, i64 0
	%953 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %952, 1
	store {i64, i8*} %953, {i64, i8*}* %951
	%954 = load {i64, i8*}, {i64, i8*}* %951
	%955 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 136
	store {i64, i8*} %954, {i64, i8*}* %955
	%956 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"fputc" to void ()*
	%957 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 136
	store void ()* %956, void ()** %957
	%958 = alloca {i64, i8*}
	%959 = getelementptr [5 x i8], [5 x i8]* @"str.147", i64 0, i64 0
	%960 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %959, 1
	store {i64, i8*} %960, {i64, i8*}* %958
	%961 = load {i64, i8*}, {i64, i8*}* %958
	%962 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 137
	store {i64, i8*} %961, {i64, i8*}* %962
	%963 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putc" to void ()*
	%964 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 137
	store void ()* %963, void ()** %964
	%965 = alloca {i64, i8*}
	%966 = getelementptr [8 x i8], [8 x i8]* @"str.148", i64 0, i64 0
	%967 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %966, 1
	store {i64, i8*} %967, {i64, i8*}* %965
	%968 = load {i64, i8*}, {i64, i8*}* %965
	%969 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 138
	store {i64, i8*} %968, {i64, i8*}* %969
	%970 = bitcast i32 (i32)* @"putchar" to void ()*
	%971 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 138
	store void ()* %970, void ()** %971
	%972 = alloca {i64, i8*}
	%973 = getelementptr [15 x i8], [15 x i8]* @"str.149", i64 0, i64 0
	%974 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %973, 1
	store {i64, i8*} %974, {i64, i8*}* %972
	%975 = load {i64, i8*}, {i64, i8*}* %972
	%976 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 139
	store {i64, i8*} %975, {i64, i8*}* %976
	%977 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"fputc_unlocked" to void ()*
	%978 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 139
	store void ()* %977, void ()** %978
	%979 = alloca {i64, i8*}
	%980 = getelementptr [14 x i8], [14 x i8]* @"str.150", i64 0, i64 0
	%981 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %980, 1
	store {i64, i8*} %981, {i64, i8*}* %979
	%982 = load {i64, i8*}, {i64, i8*}* %979
	%983 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 140
	store {i64, i8*} %982, {i64, i8*}* %983
	%984 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putc_unlocked" to void ()*
	%985 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 140
	store void ()* %984, void ()** %985
	%986 = alloca {i64, i8*}
	%987 = getelementptr [17 x i8], [17 x i8]* @"str.151", i64 0, i64 0
	%988 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %987, 1
	store {i64, i8*} %988, {i64, i8*}* %986
	%989 = load {i64, i8*}, {i64, i8*}* %986
	%990 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 141
	store {i64, i8*} %989, {i64, i8*}* %990
	%991 = bitcast i32 (i32)* @"putchar_unlocked" to void ()*
	%992 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 141
	store void ()* %991, void ()** %992
	%993 = alloca {i64, i8*}
	%994 = getelementptr [5 x i8], [5 x i8]* @"str.152", i64 0, i64 0
	%995 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %994, 1
	store {i64, i8*} %995, {i64, i8*}* %993
	%996 = load {i64, i8*}, {i64, i8*}* %993
	%997 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 142
	store {i64, i8*} %996, {i64, i8*}* %997
	%998 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"getw" to void ()*
	%999 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 142
	store void ()* %998, void ()** %999
	%1000 = alloca {i64, i8*}
	%1001 = getelementptr [5 x i8], [5 x i8]* @"str.153", i64 0, i64 0
	%1002 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1001, 1
	store {i64, i8*} %1002, {i64, i8*}* %1000
	%1003 = load {i64, i8*}, {i64, i8*}* %1000
	%1004 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 143
	store {i64, i8*} %1003, {i64, i8*}* %1004
	%1005 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"putw" to void ()*
	%1006 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 143
	store void ()* %1005, void ()** %1006
	%1007 = alloca {i64, i8*}
	%1008 = getelementptr [6 x i8], [6 x i8]* @"str.154", i64 0, i64 0
	%1009 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1008, 1
	store {i64, i8*} %1009, {i64, i8*}* %1007
	%1010 = load {i64, i8*}, {i64, i8*}* %1007
	%1011 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 144
	store {i64, i8*} %1010, {i64, i8*}* %1011
	%1012 = bitcast i8* (i8*, i32, %"cstd::s__IO_FILE"*)* @"fgets" to void ()*
	%1013 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 144
	store void ()* %1012, void ()** %1013
	%1014 = alloca {i64, i8*}
	%1015 = getelementptr [11 x i8], [11 x i8]* @"str.155", i64 0, i64 0
	%1016 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1015, 1
	store {i64, i8*} %1016, {i64, i8*}* %1014
	%1017 = load {i64, i8*}, {i64, i8*}* %1014
	%1018 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 145
	store {i64, i8*} %1017, {i64, i8*}* %1018
	%1019 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @"__getdelim" to void ()*
	%1020 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 145
	store void ()* %1019, void ()** %1020
	%1021 = alloca {i64, i8*}
	%1022 = getelementptr [9 x i8], [9 x i8]* @"str.156", i64 0, i64 0
	%1023 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1022, 1
	store {i64, i8*} %1023, {i64, i8*}* %1021
	%1024 = load {i64, i8*}, {i64, i8*}* %1021
	%1025 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 146
	store {i64, i8*} %1024, {i64, i8*}* %1025
	%1026 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @"getdelim" to void ()*
	%1027 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 146
	store void ()* %1026, void ()** %1027
	%1028 = alloca {i64, i8*}
	%1029 = getelementptr [8 x i8], [8 x i8]* @"str.157", i64 0, i64 0
	%1030 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1029, 1
	store {i64, i8*} %1030, {i64, i8*}* %1028
	%1031 = load {i64, i8*}, {i64, i8*}* %1028
	%1032 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 147
	store {i64, i8*} %1031, {i64, i8*}* %1032
	%1033 = bitcast i64 (i8**, i64*, %"cstd::s__IO_FILE"*)* @"getline" to void ()*
	%1034 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 147
	store void ()* %1033, void ()** %1034
	%1035 = alloca {i64, i8*}
	%1036 = getelementptr [6 x i8], [6 x i8]* @"str.158", i64 0, i64 0
	%1037 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1036, 1
	store {i64, i8*} %1037, {i64, i8*}* %1035
	%1038 = load {i64, i8*}, {i64, i8*}* %1035
	%1039 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 148
	store {i64, i8*} %1038, {i64, i8*}* %1039
	%1040 = bitcast i32 (i8*, %"cstd::s__IO_FILE"*)* @"fputs" to void ()*
	%1041 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 148
	store void ()* %1040, void ()** %1041
	%1042 = alloca {i64, i8*}
	%1043 = getelementptr [5 x i8], [5 x i8]* @"str.159", i64 0, i64 0
	%1044 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1043, 1
	store {i64, i8*} %1044, {i64, i8*}* %1042
	%1045 = load {i64, i8*}, {i64, i8*}* %1042
	%1046 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 149
	store {i64, i8*} %1045, {i64, i8*}* %1046
	%1047 = bitcast i32 (i8*)* @"puts" to void ()*
	%1048 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 149
	store void ()* %1047, void ()** %1048
	%1049 = alloca {i64, i8*}
	%1050 = getelementptr [7 x i8], [7 x i8]* @"str.160", i64 0, i64 0
	%1051 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1050, 1
	store {i64, i8*} %1051, {i64, i8*}* %1049
	%1052 = load {i64, i8*}, {i64, i8*}* %1049
	%1053 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 150
	store {i64, i8*} %1052, {i64, i8*}* %1053
	%1054 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @"ungetc" to void ()*
	%1055 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 150
	store void ()* %1054, void ()** %1055
	%1056 = alloca {i64, i8*}
	%1057 = getelementptr [6 x i8], [6 x i8]* @"str.161", i64 0, i64 0
	%1058 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1057, 1
	store {i64, i8*} %1058, {i64, i8*}* %1056
	%1059 = load {i64, i8*}, {i64, i8*}* %1056
	%1060 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 151
	store {i64, i8*} %1059, {i64, i8*}* %1060
	%1061 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fread" to void ()*
	%1062 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 151
	store void ()* %1061, void ()** %1062
	%1063 = alloca {i64, i8*}
	%1064 = getelementptr [7 x i8], [7 x i8]* @"str.162", i64 0, i64 0
	%1065 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1064, 1
	store {i64, i8*} %1065, {i64, i8*}* %1063
	%1066 = load {i64, i8*}, {i64, i8*}* %1063
	%1067 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 152
	store {i64, i8*} %1066, {i64, i8*}* %1067
	%1068 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fwrite" to void ()*
	%1069 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 152
	store void ()* %1068, void ()** %1069
	%1070 = alloca {i64, i8*}
	%1071 = getelementptr [15 x i8], [15 x i8]* @"str.163", i64 0, i64 0
	%1072 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %1071, 1
	store {i64, i8*} %1072, {i64, i8*}* %1070
	%1073 = load {i64, i8*}, {i64, i8*}* %1070
	%1074 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 153
	store {i64, i8*} %1073, {i64, i8*}* %1074
	%1075 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fread_unlocked" to void ()*
	%1076 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 153
	store void ()* %1075, void ()** %1076
	%1077 = alloca {i64, i8*}
	%1078 = getelementptr [16 x i8], [16 x i8]* @"str.164", i64 0, i64 0
	%1079 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %1078, 1
	store {i64, i8*} %1079, {i64, i8*}* %1077
	%1080 = load {i64, i8*}, {i64, i8*}* %1077
	%1081 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 154
	store {i64, i8*} %1080, {i64, i8*}* %1081
	%1082 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @"fwrite_unlocked" to void ()*
	%1083 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 154
	store void ()* %1082, void ()** %1083
	%1084 = alloca {i64, i8*}
	%1085 = getelementptr [6 x i8], [6 x i8]* @"str.165", i64 0, i64 0
	%1086 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1085, 1
	store {i64, i8*} %1086, {i64, i8*}* %1084
	%1087 = load {i64, i8*}, {i64, i8*}* %1084
	%1088 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 155
	store {i64, i8*} %1087, {i64, i8*}* %1088
	%1089 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @"fseek" to void ()*
	%1090 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 155
	store void ()* %1089, void ()** %1090
	%1091 = alloca {i64, i8*}
	%1092 = getelementptr [6 x i8], [6 x i8]* @"str.166", i64 0, i64 0
	%1093 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1092, 1
	store {i64, i8*} %1093, {i64, i8*}* %1091
	%1094 = load {i64, i8*}, {i64, i8*}* %1091
	%1095 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 156
	store {i64, i8*} %1094, {i64, i8*}* %1095
	%1096 = bitcast i64 (%"cstd::s__IO_FILE"*)* @"ftell" to void ()*
	%1097 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 156
	store void ()* %1096, void ()** %1097
	%1098 = alloca {i64, i8*}
	%1099 = getelementptr [7 x i8], [7 x i8]* @"str.167", i64 0, i64 0
	%1100 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1099, 1
	store {i64, i8*} %1100, {i64, i8*}* %1098
	%1101 = load {i64, i8*}, {i64, i8*}* %1098
	%1102 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 157
	store {i64, i8*} %1101, {i64, i8*}* %1102
	%1103 = bitcast void (%"cstd::s__IO_FILE"*)* @"rewind" to void ()*
	%1104 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 157
	store void ()* %1103, void ()** %1104
	%1105 = alloca {i64, i8*}
	%1106 = getelementptr [7 x i8], [7 x i8]* @"str.168", i64 0, i64 0
	%1107 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1106, 1
	store {i64, i8*} %1107, {i64, i8*}* %1105
	%1108 = load {i64, i8*}, {i64, i8*}* %1105
	%1109 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 158
	store {i64, i8*} %1108, {i64, i8*}* %1109
	%1110 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @"fseeko" to void ()*
	%1111 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 158
	store void ()* %1110, void ()** %1111
	%1112 = alloca {i64, i8*}
	%1113 = getelementptr [7 x i8], [7 x i8]* @"str.169", i64 0, i64 0
	%1114 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1113, 1
	store {i64, i8*} %1114, {i64, i8*}* %1112
	%1115 = load {i64, i8*}, {i64, i8*}* %1112
	%1116 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 159
	store {i64, i8*} %1115, {i64, i8*}* %1116
	%1117 = bitcast i64 (%"cstd::s__IO_FILE"*)* @"ftello" to void ()*
	%1118 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 159
	store void ()* %1117, void ()** %1118
	%1119 = alloca {i64, i8*}
	%1120 = getelementptr [8 x i8], [8 x i8]* @"str.170", i64 0, i64 0
	%1121 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1120, 1
	store {i64, i8*} %1121, {i64, i8*}* %1119
	%1122 = load {i64, i8*}, {i64, i8*}* %1119
	%1123 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 160
	store {i64, i8*} %1122, {i64, i8*}* %1123
	%1124 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @"fgetpos" to void ()*
	%1125 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 160
	store void ()* %1124, void ()** %1125
	%1126 = alloca {i64, i8*}
	%1127 = getelementptr [8 x i8], [8 x i8]* @"str.171", i64 0, i64 0
	%1128 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1127, 1
	store {i64, i8*} %1128, {i64, i8*}* %1126
	%1129 = load {i64, i8*}, {i64, i8*}* %1126
	%1130 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 161
	store {i64, i8*} %1129, {i64, i8*}* %1130
	%1131 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @"fsetpos" to void ()*
	%1132 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 161
	store void ()* %1131, void ()** %1132
	%1133 = alloca {i64, i8*}
	%1134 = getelementptr [9 x i8], [9 x i8]* @"str.172", i64 0, i64 0
	%1135 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1134, 1
	store {i64, i8*} %1135, {i64, i8*}* %1133
	%1136 = load {i64, i8*}, {i64, i8*}* %1133
	%1137 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 162
	store {i64, i8*} %1136, {i64, i8*}* %1137
	%1138 = bitcast void (%"cstd::s__IO_FILE"*)* @"clearerr" to void ()*
	%1139 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 162
	store void ()* %1138, void ()** %1139
	%1140 = alloca {i64, i8*}
	%1141 = getelementptr [5 x i8], [5 x i8]* @"str.173", i64 0, i64 0
	%1142 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1141, 1
	store {i64, i8*} %1142, {i64, i8*}* %1140
	%1143 = load {i64, i8*}, {i64, i8*}* %1140
	%1144 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 163
	store {i64, i8*} %1143, {i64, i8*}* %1144
	%1145 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"feof" to void ()*
	%1146 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 163
	store void ()* %1145, void ()** %1146
	%1147 = alloca {i64, i8*}
	%1148 = getelementptr [7 x i8], [7 x i8]* @"str.174", i64 0, i64 0
	%1149 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1148, 1
	store {i64, i8*} %1149, {i64, i8*}* %1147
	%1150 = load {i64, i8*}, {i64, i8*}* %1147
	%1151 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 164
	store {i64, i8*} %1150, {i64, i8*}* %1151
	%1152 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ferror" to void ()*
	%1153 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 164
	store void ()* %1152, void ()** %1153
	%1154 = alloca {i64, i8*}
	%1155 = getelementptr [18 x i8], [18 x i8]* @"str.175", i64 0, i64 0
	%1156 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %1155, 1
	store {i64, i8*} %1156, {i64, i8*}* %1154
	%1157 = load {i64, i8*}, {i64, i8*}* %1154
	%1158 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 165
	store {i64, i8*} %1157, {i64, i8*}* %1158
	%1159 = bitcast void (%"cstd::s__IO_FILE"*)* @"clearerr_unlocked" to void ()*
	%1160 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 165
	store void ()* %1159, void ()** %1160
	%1161 = alloca {i64, i8*}
	%1162 = getelementptr [14 x i8], [14 x i8]* @"str.176", i64 0, i64 0
	%1163 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1162, 1
	store {i64, i8*} %1163, {i64, i8*}* %1161
	%1164 = load {i64, i8*}, {i64, i8*}* %1161
	%1165 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 166
	store {i64, i8*} %1164, {i64, i8*}* %1165
	%1166 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"feof_unlocked" to void ()*
	%1167 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 166
	store void ()* %1166, void ()** %1167
	%1168 = alloca {i64, i8*}
	%1169 = getelementptr [16 x i8], [16 x i8]* @"str.177", i64 0, i64 0
	%1170 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %1169, 1
	store {i64, i8*} %1170, {i64, i8*}* %1168
	%1171 = load {i64, i8*}, {i64, i8*}* %1168
	%1172 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 167
	store {i64, i8*} %1171, {i64, i8*}* %1172
	%1173 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ferror_unlocked" to void ()*
	%1174 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 167
	store void ()* %1173, void ()** %1174
	%1175 = alloca {i64, i8*}
	%1176 = getelementptr [7 x i8], [7 x i8]* @"str.178", i64 0, i64 0
	%1177 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1176, 1
	store {i64, i8*} %1177, {i64, i8*}* %1175
	%1178 = load {i64, i8*}, {i64, i8*}* %1175
	%1179 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 168
	store {i64, i8*} %1178, {i64, i8*}* %1179
	%1180 = bitcast void (i8*)* @"perror" to void ()*
	%1181 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 168
	store void ()* %1180, void ()** %1181
	%1182 = alloca {i64, i8*}
	%1183 = getelementptr [7 x i8], [7 x i8]* @"str.179", i64 0, i64 0
	%1184 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1183, 1
	store {i64, i8*} %1184, {i64, i8*}* %1182
	%1185 = load {i64, i8*}, {i64, i8*}* %1182
	%1186 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 169
	store {i64, i8*} %1185, {i64, i8*}* %1186
	%1187 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fileno" to void ()*
	%1188 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 169
	store void ()* %1187, void ()** %1188
	%1189 = alloca {i64, i8*}
	%1190 = getelementptr [16 x i8], [16 x i8]* @"str.180", i64 0, i64 0
	%1191 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %1190, 1
	store {i64, i8*} %1191, {i64, i8*}* %1189
	%1192 = load {i64, i8*}, {i64, i8*}* %1189
	%1193 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 170
	store {i64, i8*} %1192, {i64, i8*}* %1193
	%1194 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"fileno_unlocked" to void ()*
	%1195 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 170
	store void ()* %1194, void ()** %1195
	%1196 = alloca {i64, i8*}
	%1197 = getelementptr [6 x i8], [6 x i8]* @"str.181", i64 0, i64 0
	%1198 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1197, 1
	store {i64, i8*} %1198, {i64, i8*}* %1196
	%1199 = load {i64, i8*}, {i64, i8*}* %1196
	%1200 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 171
	store {i64, i8*} %1199, {i64, i8*}* %1200
	%1201 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @"popen" to void ()*
	%1202 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 171
	store void ()* %1201, void ()** %1202
	%1203 = alloca {i64, i8*}
	%1204 = getelementptr [7 x i8], [7 x i8]* @"str.182", i64 0, i64 0
	%1205 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1204, 1
	store {i64, i8*} %1205, {i64, i8*}* %1203
	%1206 = load {i64, i8*}, {i64, i8*}* %1203
	%1207 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 172
	store {i64, i8*} %1206, {i64, i8*}* %1207
	%1208 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"pclose" to void ()*
	%1209 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 172
	store void ()* %1208, void ()** %1209
	%1210 = alloca {i64, i8*}
	%1211 = getelementptr [8 x i8], [8 x i8]* @"str.183", i64 0, i64 0
	%1212 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1211, 1
	store {i64, i8*} %1212, {i64, i8*}* %1210
	%1213 = load {i64, i8*}, {i64, i8*}* %1210
	%1214 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 173
	store {i64, i8*} %1213, {i64, i8*}* %1214
	%1215 = bitcast i8* (i8*)* @"ctermid" to void ()*
	%1216 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 173
	store void ()* %1215, void ()** %1216
	%1217 = alloca {i64, i8*}
	%1218 = getelementptr [10 x i8], [10 x i8]* @"str.184", i64 0, i64 0
	%1219 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1218, 1
	store {i64, i8*} %1219, {i64, i8*}* %1217
	%1220 = load {i64, i8*}, {i64, i8*}* %1217
	%1221 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 174
	store {i64, i8*} %1220, {i64, i8*}* %1221
	%1222 = bitcast void (%"cstd::s__IO_FILE"*)* @"flockfile" to void ()*
	%1223 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 174
	store void ()* %1222, void ()** %1223
	%1224 = alloca {i64, i8*}
	%1225 = getelementptr [13 x i8], [13 x i8]* @"str.185", i64 0, i64 0
	%1226 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1225, 1
	store {i64, i8*} %1226, {i64, i8*}* %1224
	%1227 = load {i64, i8*}, {i64, i8*}* %1224
	%1228 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 175
	store {i64, i8*} %1227, {i64, i8*}* %1228
	%1229 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"ftrylockfile" to void ()*
	%1230 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 175
	store void ()* %1229, void ()** %1230
	%1231 = alloca {i64, i8*}
	%1232 = getelementptr [12 x i8], [12 x i8]* @"str.186", i64 0, i64 0
	%1233 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1232, 1
	store {i64, i8*} %1233, {i64, i8*}* %1231
	%1234 = load {i64, i8*}, {i64, i8*}* %1231
	%1235 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 176
	store {i64, i8*} %1234, {i64, i8*}* %1235
	%1236 = bitcast void (%"cstd::s__IO_FILE"*)* @"funlockfile" to void ()*
	%1237 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 176
	store void ()* %1236, void ()** %1237
	%1238 = alloca {i64, i8*}
	%1239 = getelementptr [8 x i8], [8 x i8]* @"str.187", i64 0, i64 0
	%1240 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1239, 1
	store {i64, i8*} %1240, {i64, i8*}* %1238
	%1241 = load {i64, i8*}, {i64, i8*}* %1238
	%1242 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 177
	store {i64, i8*} %1241, {i64, i8*}* %1242
	%1243 = bitcast i32 (%"cstd::s__IO_FILE"*)* @"__uflow" to void ()*
	%1244 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 177
	store void ()* %1243, void ()** %1244
	%1245 = alloca {i64, i8*}
	%1246 = getelementptr [11 x i8], [11 x i8]* @"str.188", i64 0, i64 0
	%1247 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1246, 1
	store {i64, i8*} %1247, {i64, i8*}* %1245
	%1248 = load {i64, i8*}, {i64, i8*}* %1245
	%1249 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 178
	store {i64, i8*} %1248, {i64, i8*}* %1249
	%1250 = bitcast i32 (%"cstd::s__IO_FILE"*, i32)* @"__overflow" to void ()*
	%1251 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 178
	store void ()* %1250, void ()** %1251
	%1252 = alloca {i64, i8*}
	%1253 = getelementptr [7 x i8], [7 x i8]* @"str.189", i64 0, i64 0
	%1254 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1253, 1
	store {i64, i8*} %1254, {i64, i8*}* %1252
	%1255 = load {i64, i8*}, {i64, i8*}* %1252
	%1256 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 179
	store {i64, i8*} %1255, {i64, i8*}* %1256
	%1257 = bitcast i8* (i8*, i8*, i64)* @"memcpy" to void ()*
	%1258 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 179
	store void ()* %1257, void ()** %1258
	%1259 = alloca {i64, i8*}
	%1260 = getelementptr [8 x i8], [8 x i8]* @"str.190", i64 0, i64 0
	%1261 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1260, 1
	store {i64, i8*} %1261, {i64, i8*}* %1259
	%1262 = load {i64, i8*}, {i64, i8*}* %1259
	%1263 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 180
	store {i64, i8*} %1262, {i64, i8*}* %1263
	%1264 = bitcast i8* (i8*, i8*, i64)* @"memmove" to void ()*
	%1265 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 180
	store void ()* %1264, void ()** %1265
	%1266 = alloca {i64, i8*}
	%1267 = getelementptr [8 x i8], [8 x i8]* @"str.191", i64 0, i64 0
	%1268 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1267, 1
	store {i64, i8*} %1268, {i64, i8*}* %1266
	%1269 = load {i64, i8*}, {i64, i8*}* %1266
	%1270 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 181
	store {i64, i8*} %1269, {i64, i8*}* %1270
	%1271 = bitcast i8* (i8*, i8*, i32, i64)* @"memccpy" to void ()*
	%1272 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 181
	store void ()* %1271, void ()** %1272
	%1273 = alloca {i64, i8*}
	%1274 = getelementptr [7 x i8], [7 x i8]* @"str.192", i64 0, i64 0
	%1275 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1274, 1
	store {i64, i8*} %1275, {i64, i8*}* %1273
	%1276 = load {i64, i8*}, {i64, i8*}* %1273
	%1277 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 182
	store {i64, i8*} %1276, {i64, i8*}* %1277
	%1278 = bitcast i8* (i8*, i32, i64)* @"memset" to void ()*
	%1279 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 182
	store void ()* %1278, void ()** %1279
	%1280 = alloca {i64, i8*}
	%1281 = getelementptr [7 x i8], [7 x i8]* @"str.193", i64 0, i64 0
	%1282 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1281, 1
	store {i64, i8*} %1282, {i64, i8*}* %1280
	%1283 = load {i64, i8*}, {i64, i8*}* %1280
	%1284 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 183
	store {i64, i8*} %1283, {i64, i8*}* %1284
	%1285 = bitcast i32 (i8*, i8*, i64)* @"memcmp" to void ()*
	%1286 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 183
	store void ()* %1285, void ()** %1286
	%1287 = alloca {i64, i8*}
	%1288 = getelementptr [7 x i8], [7 x i8]* @"str.194", i64 0, i64 0
	%1289 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1288, 1
	store {i64, i8*} %1289, {i64, i8*}* %1287
	%1290 = load {i64, i8*}, {i64, i8*}* %1287
	%1291 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 184
	store {i64, i8*} %1290, {i64, i8*}* %1291
	%1292 = bitcast i8* (i8*, i32, i64)* @"memchr" to void ()*
	%1293 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 184
	store void ()* %1292, void ()** %1293
	%1294 = alloca {i64, i8*}
	%1295 = getelementptr [7 x i8], [7 x i8]* @"str.195", i64 0, i64 0
	%1296 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1295, 1
	store {i64, i8*} %1296, {i64, i8*}* %1294
	%1297 = load {i64, i8*}, {i64, i8*}* %1294
	%1298 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 185
	store {i64, i8*} %1297, {i64, i8*}* %1298
	%1299 = bitcast i8* (i8*, i8*)* @"strcpy" to void ()*
	%1300 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 185
	store void ()* %1299, void ()** %1300
	%1301 = alloca {i64, i8*}
	%1302 = getelementptr [8 x i8], [8 x i8]* @"str.196", i64 0, i64 0
	%1303 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1302, 1
	store {i64, i8*} %1303, {i64, i8*}* %1301
	%1304 = load {i64, i8*}, {i64, i8*}* %1301
	%1305 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 186
	store {i64, i8*} %1304, {i64, i8*}* %1305
	%1306 = bitcast i8* (i8*, i8*, i64)* @"strncpy" to void ()*
	%1307 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 186
	store void ()* %1306, void ()** %1307
	%1308 = alloca {i64, i8*}
	%1309 = getelementptr [7 x i8], [7 x i8]* @"str.197", i64 0, i64 0
	%1310 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1309, 1
	store {i64, i8*} %1310, {i64, i8*}* %1308
	%1311 = load {i64, i8*}, {i64, i8*}* %1308
	%1312 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 187
	store {i64, i8*} %1311, {i64, i8*}* %1312
	%1313 = bitcast i8* (i8*, i8*)* @"strcat" to void ()*
	%1314 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 187
	store void ()* %1313, void ()** %1314
	%1315 = alloca {i64, i8*}
	%1316 = getelementptr [8 x i8], [8 x i8]* @"str.198", i64 0, i64 0
	%1317 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1316, 1
	store {i64, i8*} %1317, {i64, i8*}* %1315
	%1318 = load {i64, i8*}, {i64, i8*}* %1315
	%1319 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 188
	store {i64, i8*} %1318, {i64, i8*}* %1319
	%1320 = bitcast i8* (i8*, i8*, i64)* @"strncat" to void ()*
	%1321 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 188
	store void ()* %1320, void ()** %1321
	%1322 = alloca {i64, i8*}
	%1323 = getelementptr [7 x i8], [7 x i8]* @"str.199", i64 0, i64 0
	%1324 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1323, 1
	store {i64, i8*} %1324, {i64, i8*}* %1322
	%1325 = load {i64, i8*}, {i64, i8*}* %1322
	%1326 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 189
	store {i64, i8*} %1325, {i64, i8*}* %1326
	%1327 = bitcast i32 (i8*, i8*)* @"strcmp" to void ()*
	%1328 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 189
	store void ()* %1327, void ()** %1328
	%1329 = alloca {i64, i8*}
	%1330 = getelementptr [8 x i8], [8 x i8]* @"str.200", i64 0, i64 0
	%1331 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1330, 1
	store {i64, i8*} %1331, {i64, i8*}* %1329
	%1332 = load {i64, i8*}, {i64, i8*}* %1329
	%1333 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 190
	store {i64, i8*} %1332, {i64, i8*}* %1333
	%1334 = bitcast i32 (i8*, i8*, i64)* @"strncmp" to void ()*
	%1335 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 190
	store void ()* %1334, void ()** %1335
	%1336 = alloca {i64, i8*}
	%1337 = getelementptr [8 x i8], [8 x i8]* @"str.201", i64 0, i64 0
	%1338 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1337, 1
	store {i64, i8*} %1338, {i64, i8*}* %1336
	%1339 = load {i64, i8*}, {i64, i8*}* %1336
	%1340 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 191
	store {i64, i8*} %1339, {i64, i8*}* %1340
	%1341 = bitcast i32 (i8*, i8*)* @"strcoll" to void ()*
	%1342 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 191
	store void ()* %1341, void ()** %1342
	%1343 = alloca {i64, i8*}
	%1344 = getelementptr [8 x i8], [8 x i8]* @"str.202", i64 0, i64 0
	%1345 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1344, 1
	store {i64, i8*} %1345, {i64, i8*}* %1343
	%1346 = load {i64, i8*}, {i64, i8*}* %1343
	%1347 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 192
	store {i64, i8*} %1346, {i64, i8*}* %1347
	%1348 = bitcast i64 (i8*, i8*, i64)* @"strxfrm" to void ()*
	%1349 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 192
	store void ()* %1348, void ()** %1349
	%1350 = alloca {i64, i8*}
	%1351 = getelementptr [10 x i8], [10 x i8]* @"str.203", i64 0, i64 0
	%1352 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1351, 1
	store {i64, i8*} %1352, {i64, i8*}* %1350
	%1353 = load {i64, i8*}, {i64, i8*}* %1350
	%1354 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 193
	store {i64, i8*} %1353, {i64, i8*}* %1354
	%1355 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @"strcoll_l" to void ()*
	%1356 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 193
	store void ()* %1355, void ()** %1356
	%1357 = alloca {i64, i8*}
	%1358 = getelementptr [10 x i8], [10 x i8]* @"str.204", i64 0, i64 0
	%1359 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1358, 1
	store {i64, i8*} %1359, {i64, i8*}* %1357
	%1360 = load {i64, i8*}, {i64, i8*}* %1357
	%1361 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 194
	store {i64, i8*} %1360, {i64, i8*}* %1361
	%1362 = bitcast i64 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @"strxfrm_l" to void ()*
	%1363 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 194
	store void ()* %1362, void ()** %1363
	%1364 = alloca {i64, i8*}
	%1365 = getelementptr [7 x i8], [7 x i8]* @"str.205", i64 0, i64 0
	%1366 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1365, 1
	store {i64, i8*} %1366, {i64, i8*}* %1364
	%1367 = load {i64, i8*}, {i64, i8*}* %1364
	%1368 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 195
	store {i64, i8*} %1367, {i64, i8*}* %1368
	%1369 = bitcast i8* (i8*)* @"strdup" to void ()*
	%1370 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 195
	store void ()* %1369, void ()** %1370
	%1371 = alloca {i64, i8*}
	%1372 = getelementptr [8 x i8], [8 x i8]* @"str.206", i64 0, i64 0
	%1373 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1372, 1
	store {i64, i8*} %1373, {i64, i8*}* %1371
	%1374 = load {i64, i8*}, {i64, i8*}* %1371
	%1375 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 196
	store {i64, i8*} %1374, {i64, i8*}* %1375
	%1376 = bitcast i8* (i8*, i64)* @"strndup" to void ()*
	%1377 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 196
	store void ()* %1376, void ()** %1377
	%1378 = alloca {i64, i8*}
	%1379 = getelementptr [7 x i8], [7 x i8]* @"str.207", i64 0, i64 0
	%1380 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1379, 1
	store {i64, i8*} %1380, {i64, i8*}* %1378
	%1381 = load {i64, i8*}, {i64, i8*}* %1378
	%1382 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 197
	store {i64, i8*} %1381, {i64, i8*}* %1382
	%1383 = bitcast i8* (i8*, i32)* @"strchr" to void ()*
	%1384 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 197
	store void ()* %1383, void ()** %1384
	%1385 = alloca {i64, i8*}
	%1386 = getelementptr [8 x i8], [8 x i8]* @"str.208", i64 0, i64 0
	%1387 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1386, 1
	store {i64, i8*} %1387, {i64, i8*}* %1385
	%1388 = load {i64, i8*}, {i64, i8*}* %1385
	%1389 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 198
	store {i64, i8*} %1388, {i64, i8*}* %1389
	%1390 = bitcast i8* (i8*, i32)* @"strrchr" to void ()*
	%1391 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 198
	store void ()* %1390, void ()** %1391
	%1392 = alloca {i64, i8*}
	%1393 = getelementptr [8 x i8], [8 x i8]* @"str.209", i64 0, i64 0
	%1394 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1393, 1
	store {i64, i8*} %1394, {i64, i8*}* %1392
	%1395 = load {i64, i8*}, {i64, i8*}* %1392
	%1396 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 199
	store {i64, i8*} %1395, {i64, i8*}* %1396
	%1397 = bitcast i64 (i8*, i8*)* @"strcspn" to void ()*
	%1398 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 199
	store void ()* %1397, void ()** %1398
	%1399 = alloca {i64, i8*}
	%1400 = getelementptr [7 x i8], [7 x i8]* @"str.210", i64 0, i64 0
	%1401 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1400, 1
	store {i64, i8*} %1401, {i64, i8*}* %1399
	%1402 = load {i64, i8*}, {i64, i8*}* %1399
	%1403 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 200
	store {i64, i8*} %1402, {i64, i8*}* %1403
	%1404 = bitcast i64 (i8*, i8*)* @"strspn" to void ()*
	%1405 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 200
	store void ()* %1404, void ()** %1405
	%1406 = alloca {i64, i8*}
	%1407 = getelementptr [8 x i8], [8 x i8]* @"str.211", i64 0, i64 0
	%1408 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1407, 1
	store {i64, i8*} %1408, {i64, i8*}* %1406
	%1409 = load {i64, i8*}, {i64, i8*}* %1406
	%1410 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 201
	store {i64, i8*} %1409, {i64, i8*}* %1410
	%1411 = bitcast i8* (i8*, i8*)* @"strpbrk" to void ()*
	%1412 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 201
	store void ()* %1411, void ()** %1412
	%1413 = alloca {i64, i8*}
	%1414 = getelementptr [7 x i8], [7 x i8]* @"str.212", i64 0, i64 0
	%1415 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1414, 1
	store {i64, i8*} %1415, {i64, i8*}* %1413
	%1416 = load {i64, i8*}, {i64, i8*}* %1413
	%1417 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 202
	store {i64, i8*} %1416, {i64, i8*}* %1417
	%1418 = bitcast i8* (i8*, i8*)* @"strstr" to void ()*
	%1419 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 202
	store void ()* %1418, void ()** %1419
	%1420 = alloca {i64, i8*}
	%1421 = getelementptr [7 x i8], [7 x i8]* @"str.213", i64 0, i64 0
	%1422 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1421, 1
	store {i64, i8*} %1422, {i64, i8*}* %1420
	%1423 = load {i64, i8*}, {i64, i8*}* %1420
	%1424 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 203
	store {i64, i8*} %1423, {i64, i8*}* %1424
	%1425 = bitcast i8* (i8*, i8*)* @"strtok" to void ()*
	%1426 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 203
	store void ()* %1425, void ()** %1426
	%1427 = alloca {i64, i8*}
	%1428 = getelementptr [11 x i8], [11 x i8]* @"str.214", i64 0, i64 0
	%1429 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1428, 1
	store {i64, i8*} %1429, {i64, i8*}* %1427
	%1430 = load {i64, i8*}, {i64, i8*}* %1427
	%1431 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 204
	store {i64, i8*} %1430, {i64, i8*}* %1431
	%1432 = bitcast i8* (i8*, i8*, i8**)* @"__strtok_r" to void ()*
	%1433 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 204
	store void ()* %1432, void ()** %1433
	%1434 = alloca {i64, i8*}
	%1435 = getelementptr [9 x i8], [9 x i8]* @"str.215", i64 0, i64 0
	%1436 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1435, 1
	store {i64, i8*} %1436, {i64, i8*}* %1434
	%1437 = load {i64, i8*}, {i64, i8*}* %1434
	%1438 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 205
	store {i64, i8*} %1437, {i64, i8*}* %1438
	%1439 = bitcast i8* (i8*, i8*, i8**)* @"strtok_r" to void ()*
	%1440 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 205
	store void ()* %1439, void ()** %1440
	%1441 = alloca {i64, i8*}
	%1442 = getelementptr [7 x i8], [7 x i8]* @"str.216", i64 0, i64 0
	%1443 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1442, 1
	store {i64, i8*} %1443, {i64, i8*}* %1441
	%1444 = load {i64, i8*}, {i64, i8*}* %1441
	%1445 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 206
	store {i64, i8*} %1444, {i64, i8*}* %1445
	%1446 = bitcast i64 (i8*)* @"strlen" to void ()*
	%1447 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 206
	store void ()* %1446, void ()** %1447
	%1448 = alloca {i64, i8*}
	%1449 = getelementptr [8 x i8], [8 x i8]* @"str.217", i64 0, i64 0
	%1450 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1449, 1
	store {i64, i8*} %1450, {i64, i8*}* %1448
	%1451 = load {i64, i8*}, {i64, i8*}* %1448
	%1452 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 207
	store {i64, i8*} %1451, {i64, i8*}* %1452
	%1453 = bitcast i64 (i8*, i64)* @"strnlen" to void ()*
	%1454 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 207
	store void ()* %1453, void ()** %1454
	%1455 = alloca {i64, i8*}
	%1456 = getelementptr [9 x i8], [9 x i8]* @"str.218", i64 0, i64 0
	%1457 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1456, 1
	store {i64, i8*} %1457, {i64, i8*}* %1455
	%1458 = load {i64, i8*}, {i64, i8*}* %1455
	%1459 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 208
	store {i64, i8*} %1458, {i64, i8*}* %1459
	%1460 = bitcast i8* (i32)* @"strerror" to void ()*
	%1461 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 208
	store void ()* %1460, void ()** %1461
	%1462 = alloca {i64, i8*}
	%1463 = getelementptr [11 x i8], [11 x i8]* @"str.219", i64 0, i64 0
	%1464 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1463, 1
	store {i64, i8*} %1464, {i64, i8*}* %1462
	%1465 = load {i64, i8*}, {i64, i8*}* %1462
	%1466 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 209
	store {i64, i8*} %1465, {i64, i8*}* %1466
	%1467 = bitcast i32 (i32, i8*, i64)* @"strerror_r" to void ()*
	%1468 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 209
	store void ()* %1467, void ()** %1468
	%1469 = alloca {i64, i8*}
	%1470 = getelementptr [11 x i8], [11 x i8]* @"str.220", i64 0, i64 0
	%1471 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1470, 1
	store {i64, i8*} %1471, {i64, i8*}* %1469
	%1472 = load {i64, i8*}, {i64, i8*}* %1469
	%1473 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 210
	store {i64, i8*} %1472, {i64, i8*}* %1473
	%1474 = bitcast i8* (i32, %"cstd::s___locale_struct"*)* @"strerror_l" to void ()*
	%1475 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 210
	store void ()* %1474, void ()** %1475
	%1476 = alloca {i64, i8*}
	%1477 = getelementptr [5 x i8], [5 x i8]* @"str.221", i64 0, i64 0
	%1478 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1477, 1
	store {i64, i8*} %1478, {i64, i8*}* %1476
	%1479 = load {i64, i8*}, {i64, i8*}* %1476
	%1480 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 211
	store {i64, i8*} %1479, {i64, i8*}* %1480
	%1481 = bitcast i32 (i8*, i8*, i64)* @"bcmp" to void ()*
	%1482 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 211
	store void ()* %1481, void ()** %1482
	%1483 = alloca {i64, i8*}
	%1484 = getelementptr [6 x i8], [6 x i8]* @"str.222", i64 0, i64 0
	%1485 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1484, 1
	store {i64, i8*} %1485, {i64, i8*}* %1483
	%1486 = load {i64, i8*}, {i64, i8*}* %1483
	%1487 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 212
	store {i64, i8*} %1486, {i64, i8*}* %1487
	%1488 = bitcast void (i8*, i8*, i64)* @"bcopy" to void ()*
	%1489 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 212
	store void ()* %1488, void ()** %1489
	%1490 = alloca {i64, i8*}
	%1491 = getelementptr [6 x i8], [6 x i8]* @"str.223", i64 0, i64 0
	%1492 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1491, 1
	store {i64, i8*} %1492, {i64, i8*}* %1490
	%1493 = load {i64, i8*}, {i64, i8*}* %1490
	%1494 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 213
	store {i64, i8*} %1493, {i64, i8*}* %1494
	%1495 = bitcast void (i8*, i64)* @"bzero" to void ()*
	%1496 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 213
	store void ()* %1495, void ()** %1496
	%1497 = alloca {i64, i8*}
	%1498 = getelementptr [6 x i8], [6 x i8]* @"str.224", i64 0, i64 0
	%1499 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1498, 1
	store {i64, i8*} %1499, {i64, i8*}* %1497
	%1500 = load {i64, i8*}, {i64, i8*}* %1497
	%1501 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 214
	store {i64, i8*} %1500, {i64, i8*}* %1501
	%1502 = bitcast i8* (i8*, i32)* @"index" to void ()*
	%1503 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 214
	store void ()* %1502, void ()** %1503
	%1504 = alloca {i64, i8*}
	%1505 = getelementptr [7 x i8], [7 x i8]* @"str.225", i64 0, i64 0
	%1506 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1505, 1
	store {i64, i8*} %1506, {i64, i8*}* %1504
	%1507 = load {i64, i8*}, {i64, i8*}* %1504
	%1508 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 215
	store {i64, i8*} %1507, {i64, i8*}* %1508
	%1509 = bitcast i8* (i8*, i32)* @"rindex" to void ()*
	%1510 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 215
	store void ()* %1509, void ()** %1510
	%1511 = alloca {i64, i8*}
	%1512 = getelementptr [4 x i8], [4 x i8]* @"str.226", i64 0, i64 0
	%1513 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1512, 1
	store {i64, i8*} %1513, {i64, i8*}* %1511
	%1514 = load {i64, i8*}, {i64, i8*}* %1511
	%1515 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 216
	store {i64, i8*} %1514, {i64, i8*}* %1515
	%1516 = bitcast i32 (i32)* @"ffs" to void ()*
	%1517 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 216
	store void ()* %1516, void ()** %1517
	%1518 = alloca {i64, i8*}
	%1519 = getelementptr [5 x i8], [5 x i8]* @"str.227", i64 0, i64 0
	%1520 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1519, 1
	store {i64, i8*} %1520, {i64, i8*}* %1518
	%1521 = load {i64, i8*}, {i64, i8*}* %1518
	%1522 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 217
	store {i64, i8*} %1521, {i64, i8*}* %1522
	%1523 = bitcast i32 (i64)* @"ffsl" to void ()*
	%1524 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 217
	store void ()* %1523, void ()** %1524
	%1525 = alloca {i64, i8*}
	%1526 = getelementptr [6 x i8], [6 x i8]* @"str.228", i64 0, i64 0
	%1527 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1526, 1
	store {i64, i8*} %1527, {i64, i8*}* %1525
	%1528 = load {i64, i8*}, {i64, i8*}* %1525
	%1529 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 218
	store {i64, i8*} %1528, {i64, i8*}* %1529
	%1530 = bitcast i32 (i64)* @"ffsll" to void ()*
	%1531 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 218
	store void ()* %1530, void ()** %1531
	%1532 = alloca {i64, i8*}
	%1533 = getelementptr [11 x i8], [11 x i8]* @"str.229", i64 0, i64 0
	%1534 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1533, 1
	store {i64, i8*} %1534, {i64, i8*}* %1532
	%1535 = load {i64, i8*}, {i64, i8*}* %1532
	%1536 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 219
	store {i64, i8*} %1535, {i64, i8*}* %1536
	%1537 = bitcast i32 (i8*, i8*)* @"strcasecmp" to void ()*
	%1538 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 219
	store void ()* %1537, void ()** %1538
	%1539 = alloca {i64, i8*}
	%1540 = getelementptr [12 x i8], [12 x i8]* @"str.230", i64 0, i64 0
	%1541 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1540, 1
	store {i64, i8*} %1541, {i64, i8*}* %1539
	%1542 = load {i64, i8*}, {i64, i8*}* %1539
	%1543 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 220
	store {i64, i8*} %1542, {i64, i8*}* %1543
	%1544 = bitcast i32 (i8*, i8*, i64)* @"strncasecmp" to void ()*
	%1545 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 220
	store void ()* %1544, void ()** %1545
	%1546 = alloca {i64, i8*}
	%1547 = getelementptr [13 x i8], [13 x i8]* @"str.231", i64 0, i64 0
	%1548 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1547, 1
	store {i64, i8*} %1548, {i64, i8*}* %1546
	%1549 = load {i64, i8*}, {i64, i8*}* %1546
	%1550 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 221
	store {i64, i8*} %1549, {i64, i8*}* %1550
	%1551 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @"strcasecmp_l" to void ()*
	%1552 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 221
	store void ()* %1551, void ()** %1552
	%1553 = alloca {i64, i8*}
	%1554 = getelementptr [14 x i8], [14 x i8]* @"str.232", i64 0, i64 0
	%1555 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1554, 1
	store {i64, i8*} %1555, {i64, i8*}* %1553
	%1556 = load {i64, i8*}, {i64, i8*}* %1553
	%1557 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 222
	store {i64, i8*} %1556, {i64, i8*}* %1557
	%1558 = bitcast i32 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @"strncasecmp_l" to void ()*
	%1559 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 222
	store void ()* %1558, void ()** %1559
	%1560 = alloca {i64, i8*}
	%1561 = getelementptr [15 x i8], [15 x i8]* @"str.233", i64 0, i64 0
	%1562 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %1561, 1
	store {i64, i8*} %1562, {i64, i8*}* %1560
	%1563 = load {i64, i8*}, {i64, i8*}* %1560
	%1564 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 223
	store {i64, i8*} %1563, {i64, i8*}* %1564
	%1565 = bitcast void (i8*, i64)* @"explicit_bzero" to void ()*
	%1566 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 223
	store void ()* %1565, void ()** %1566
	%1567 = alloca {i64, i8*}
	%1568 = getelementptr [7 x i8], [7 x i8]* @"str.234", i64 0, i64 0
	%1569 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1568, 1
	store {i64, i8*} %1569, {i64, i8*}* %1567
	%1570 = load {i64, i8*}, {i64, i8*}* %1567
	%1571 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 224
	store {i64, i8*} %1570, {i64, i8*}* %1571
	%1572 = bitcast i8* (i8**, i8*)* @"strsep" to void ()*
	%1573 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 224
	store void ()* %1572, void ()** %1573
	%1574 = alloca {i64, i8*}
	%1575 = getelementptr [10 x i8], [10 x i8]* @"str.235", i64 0, i64 0
	%1576 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1575, 1
	store {i64, i8*} %1576, {i64, i8*}* %1574
	%1577 = load {i64, i8*}, {i64, i8*}* %1574
	%1578 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 225
	store {i64, i8*} %1577, {i64, i8*}* %1578
	%1579 = bitcast i8* (i32)* @"strsignal" to void ()*
	%1580 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 225
	store void ()* %1579, void ()** %1580
	%1581 = alloca {i64, i8*}
	%1582 = getelementptr [9 x i8], [9 x i8]* @"str.236", i64 0, i64 0
	%1583 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1582, 1
	store {i64, i8*} %1583, {i64, i8*}* %1581
	%1584 = load {i64, i8*}, {i64, i8*}* %1581
	%1585 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 226
	store {i64, i8*} %1584, {i64, i8*}* %1585
	%1586 = bitcast i8* (i8*, i8*)* @"__stpcpy" to void ()*
	%1587 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 226
	store void ()* %1586, void ()** %1587
	%1588 = alloca {i64, i8*}
	%1589 = getelementptr [7 x i8], [7 x i8]* @"str.237", i64 0, i64 0
	%1590 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1589, 1
	store {i64, i8*} %1590, {i64, i8*}* %1588
	%1591 = load {i64, i8*}, {i64, i8*}* %1588
	%1592 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 227
	store {i64, i8*} %1591, {i64, i8*}* %1592
	%1593 = bitcast i8* (i8*, i8*)* @"stpcpy" to void ()*
	%1594 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 227
	store void ()* %1593, void ()** %1594
	%1595 = alloca {i64, i8*}
	%1596 = getelementptr [10 x i8], [10 x i8]* @"str.238", i64 0, i64 0
	%1597 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1596, 1
	store {i64, i8*} %1597, {i64, i8*}* %1595
	%1598 = load {i64, i8*}, {i64, i8*}* %1595
	%1599 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 228
	store {i64, i8*} %1598, {i64, i8*}* %1599
	%1600 = bitcast i8* (i8*, i8*, i64)* @"__stpncpy" to void ()*
	%1601 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 228
	store void ()* %1600, void ()** %1601
	%1602 = alloca {i64, i8*}
	%1603 = getelementptr [8 x i8], [8 x i8]* @"str.239", i64 0, i64 0
	%1604 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1603, 1
	store {i64, i8*} %1604, {i64, i8*}* %1602
	%1605 = load {i64, i8*}, {i64, i8*}* %1602
	%1606 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 229
	store {i64, i8*} %1605, {i64, i8*}* %1606
	%1607 = bitcast i8* (i8*, i8*, i64)* @"stpncpy" to void ()*
	%1608 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 229
	store void ()* %1607, void ()** %1608
	%1609 = alloca {i64, i8*}
	%1610 = getelementptr [6 x i8], [6 x i8]* @"str.240", i64 0, i64 0
	%1611 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1610, 1
	store {i64, i8*} %1611, {i64, i8*}* %1609
	%1612 = load {i64, i8*}, {i64, i8*}* %1609
	%1613 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 230
	store {i64, i8*} %1612, {i64, i8*}* %1613
	%1614 = bitcast i64 ()* @"clock" to void ()*
	%1615 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 230
	store void ()* %1614, void ()** %1615
	%1616 = alloca {i64, i8*}
	%1617 = getelementptr [5 x i8], [5 x i8]* @"str.241", i64 0, i64 0
	%1618 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1617, 1
	store {i64, i8*} %1618, {i64, i8*}* %1616
	%1619 = load {i64, i8*}, {i64, i8*}* %1616
	%1620 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 231
	store {i64, i8*} %1619, {i64, i8*}* %1620
	%1621 = bitcast i64 (i64*)* @"time" to void ()*
	%1622 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 231
	store void ()* %1621, void ()** %1622
	%1623 = alloca {i64, i8*}
	%1624 = getelementptr [9 x i8], [9 x i8]* @"str.242", i64 0, i64 0
	%1625 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1624, 1
	store {i64, i8*} %1625, {i64, i8*}* %1623
	%1626 = load {i64, i8*}, {i64, i8*}* %1623
	%1627 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 232
	store {i64, i8*} %1626, {i64, i8*}* %1627
	%1628 = bitcast double (i64, i64)* @"difftime" to void ()*
	%1629 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 232
	store void ()* %1628, void ()** %1629
	%1630 = alloca {i64, i8*}
	%1631 = getelementptr [7 x i8], [7 x i8]* @"str.243", i64 0, i64 0
	%1632 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1631, 1
	store {i64, i8*} %1632, {i64, i8*}* %1630
	%1633 = load {i64, i8*}, {i64, i8*}* %1630
	%1634 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 233
	store {i64, i8*} %1633, {i64, i8*}* %1634
	%1635 = bitcast i64 (%"cstd::s_tm"*)* @"mktime" to void ()*
	%1636 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 233
	store void ()* %1635, void ()** %1636
	%1637 = alloca {i64, i8*}
	%1638 = getelementptr [9 x i8], [9 x i8]* @"str.244", i64 0, i64 0
	%1639 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1638, 1
	store {i64, i8*} %1639, {i64, i8*}* %1637
	%1640 = load {i64, i8*}, {i64, i8*}* %1637
	%1641 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 234
	store {i64, i8*} %1640, {i64, i8*}* %1641
	%1642 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*)* @"strftime" to void ()*
	%1643 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 234
	store void ()* %1642, void ()** %1643
	%1644 = alloca {i64, i8*}
	%1645 = getelementptr [11 x i8], [11 x i8]* @"str.245", i64 0, i64 0
	%1646 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1645, 1
	store {i64, i8*} %1646, {i64, i8*}* %1644
	%1647 = load {i64, i8*}, {i64, i8*}* %1644
	%1648 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 235
	store {i64, i8*} %1647, {i64, i8*}* %1648
	%1649 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)* @"strftime_l" to void ()*
	%1650 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 235
	store void ()* %1649, void ()** %1650
	%1651 = alloca {i64, i8*}
	%1652 = getelementptr [7 x i8], [7 x i8]* @"str.246", i64 0, i64 0
	%1653 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1652, 1
	store {i64, i8*} %1653, {i64, i8*}* %1651
	%1654 = load {i64, i8*}, {i64, i8*}* %1651
	%1655 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 236
	store {i64, i8*} %1654, {i64, i8*}* %1655
	%1656 = bitcast %"cstd::s_tm"* (i64*)* @"gmtime" to void ()*
	%1657 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 236
	store void ()* %1656, void ()** %1657
	%1658 = alloca {i64, i8*}
	%1659 = getelementptr [10 x i8], [10 x i8]* @"str.247", i64 0, i64 0
	%1660 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1659, 1
	store {i64, i8*} %1660, {i64, i8*}* %1658
	%1661 = load {i64, i8*}, {i64, i8*}* %1658
	%1662 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 237
	store {i64, i8*} %1661, {i64, i8*}* %1662
	%1663 = bitcast %"cstd::s_tm"* (i64*)* @"localtime" to void ()*
	%1664 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 237
	store void ()* %1663, void ()** %1664
	%1665 = alloca {i64, i8*}
	%1666 = getelementptr [9 x i8], [9 x i8]* @"str.248", i64 0, i64 0
	%1667 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1666, 1
	store {i64, i8*} %1667, {i64, i8*}* %1665
	%1668 = load {i64, i8*}, {i64, i8*}* %1665
	%1669 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 238
	store {i64, i8*} %1668, {i64, i8*}* %1669
	%1670 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @"gmtime_r" to void ()*
	%1671 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 238
	store void ()* %1670, void ()** %1671
	%1672 = alloca {i64, i8*}
	%1673 = getelementptr [12 x i8], [12 x i8]* @"str.249", i64 0, i64 0
	%1674 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1673, 1
	store {i64, i8*} %1674, {i64, i8*}* %1672
	%1675 = load {i64, i8*}, {i64, i8*}* %1672
	%1676 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 239
	store {i64, i8*} %1675, {i64, i8*}* %1676
	%1677 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @"localtime_r" to void ()*
	%1678 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 239
	store void ()* %1677, void ()** %1678
	%1679 = alloca {i64, i8*}
	%1680 = getelementptr [8 x i8], [8 x i8]* @"str.250", i64 0, i64 0
	%1681 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1680, 1
	store {i64, i8*} %1681, {i64, i8*}* %1679
	%1682 = load {i64, i8*}, {i64, i8*}* %1679
	%1683 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 240
	store {i64, i8*} %1682, {i64, i8*}* %1683
	%1684 = bitcast i8* (%"cstd::s_tm"*)* @"asctime" to void ()*
	%1685 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 240
	store void ()* %1684, void ()** %1685
	%1686 = alloca {i64, i8*}
	%1687 = getelementptr [6 x i8], [6 x i8]* @"str.251", i64 0, i64 0
	%1688 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1687, 1
	store {i64, i8*} %1688, {i64, i8*}* %1686
	%1689 = load {i64, i8*}, {i64, i8*}* %1686
	%1690 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 241
	store {i64, i8*} %1689, {i64, i8*}* %1690
	%1691 = bitcast i8* (i64*)* @"ctime" to void ()*
	%1692 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 241
	store void ()* %1691, void ()** %1692
	%1693 = alloca {i64, i8*}
	%1694 = getelementptr [10 x i8], [10 x i8]* @"str.252", i64 0, i64 0
	%1695 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1694, 1
	store {i64, i8*} %1695, {i64, i8*}* %1693
	%1696 = load {i64, i8*}, {i64, i8*}* %1693
	%1697 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 242
	store {i64, i8*} %1696, {i64, i8*}* %1697
	%1698 = bitcast i8* (%"cstd::s_tm"*, i8*)* @"asctime_r" to void ()*
	%1699 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 242
	store void ()* %1698, void ()** %1699
	%1700 = alloca {i64, i8*}
	%1701 = getelementptr [8 x i8], [8 x i8]* @"str.253", i64 0, i64 0
	%1702 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1701, 1
	store {i64, i8*} %1702, {i64, i8*}* %1700
	%1703 = load {i64, i8*}, {i64, i8*}* %1700
	%1704 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 243
	store {i64, i8*} %1703, {i64, i8*}* %1704
	%1705 = bitcast i8* (i64*, i8*)* @"ctime_r" to void ()*
	%1706 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 243
	store void ()* %1705, void ()** %1706
	%1707 = alloca {i64, i8*}
	%1708 = getelementptr [6 x i8], [6 x i8]* @"str.254", i64 0, i64 0
	%1709 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1708, 1
	store {i64, i8*} %1709, {i64, i8*}* %1707
	%1710 = load {i64, i8*}, {i64, i8*}* %1707
	%1711 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 244
	store {i64, i8*} %1710, {i64, i8*}* %1711
	%1712 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 244
	store void ()* @"tzset", void ()** %1712
	%1713 = alloca {i64, i8*}
	%1714 = getelementptr [7 x i8], [7 x i8]* @"str.255", i64 0, i64 0
	%1715 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1714, 1
	store {i64, i8*} %1715, {i64, i8*}* %1713
	%1716 = load {i64, i8*}, {i64, i8*}* %1713
	%1717 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 245
	store {i64, i8*} %1716, {i64, i8*}* %1717
	%1718 = bitcast i64 (%"cstd::s_tm"*)* @"timegm" to void ()*
	%1719 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 245
	store void ()* %1718, void ()** %1719
	%1720 = alloca {i64, i8*}
	%1721 = getelementptr [10 x i8], [10 x i8]* @"str.256", i64 0, i64 0
	%1722 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1721, 1
	store {i64, i8*} %1722, {i64, i8*}* %1720
	%1723 = load {i64, i8*}, {i64, i8*}* %1720
	%1724 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 246
	store {i64, i8*} %1723, {i64, i8*}* %1724
	%1725 = bitcast i64 (%"cstd::s_tm"*)* @"timelocal" to void ()*
	%1726 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 246
	store void ()* %1725, void ()** %1726
	%1727 = alloca {i64, i8*}
	%1728 = getelementptr [7 x i8], [7 x i8]* @"str.257", i64 0, i64 0
	%1729 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1728, 1
	store {i64, i8*} %1729, {i64, i8*}* %1727
	%1730 = load {i64, i8*}, {i64, i8*}* %1727
	%1731 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 247
	store {i64, i8*} %1730, {i64, i8*}* %1731
	%1732 = bitcast i32 (i32)* @"dysize" to void ()*
	%1733 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 247
	store void ()* %1732, void ()** %1733
	%1734 = alloca {i64, i8*}
	%1735 = getelementptr [10 x i8], [10 x i8]* @"str.258", i64 0, i64 0
	%1736 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1735, 1
	store {i64, i8*} %1736, {i64, i8*}* %1734
	%1737 = load {i64, i8*}, {i64, i8*}* %1734
	%1738 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 248
	store {i64, i8*} %1737, {i64, i8*}* %1738
	%1739 = bitcast i32 (%"cstd::s_timespec"*, %"cstd::s_timespec"*)* @"nanosleep" to void ()*
	%1740 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 248
	store void ()* %1739, void ()** %1740
	%1741 = alloca {i64, i8*}
	%1742 = getelementptr [13 x i8], [13 x i8]* @"str.259", i64 0, i64 0
	%1743 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1742, 1
	store {i64, i8*} %1743, {i64, i8*}* %1741
	%1744 = load {i64, i8*}, {i64, i8*}* %1741
	%1745 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 249
	store {i64, i8*} %1744, {i64, i8*}* %1745
	%1746 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_getres" to void ()*
	%1747 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 249
	store void ()* %1746, void ()** %1747
	%1748 = alloca {i64, i8*}
	%1749 = getelementptr [14 x i8], [14 x i8]* @"str.260", i64 0, i64 0
	%1750 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1749, 1
	store {i64, i8*} %1750, {i64, i8*}* %1748
	%1751 = load {i64, i8*}, {i64, i8*}* %1748
	%1752 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 250
	store {i64, i8*} %1751, {i64, i8*}* %1752
	%1753 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_gettime" to void ()*
	%1754 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 250
	store void ()* %1753, void ()** %1754
	%1755 = alloca {i64, i8*}
	%1756 = getelementptr [14 x i8], [14 x i8]* @"str.261", i64 0, i64 0
	%1757 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1756, 1
	store {i64, i8*} %1757, {i64, i8*}* %1755
	%1758 = load {i64, i8*}, {i64, i8*}* %1755
	%1759 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 251
	store {i64, i8*} %1758, {i64, i8*}* %1759
	%1760 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"clock_settime" to void ()*
	%1761 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 251
	store void ()* %1760, void ()** %1761
	%1762 = alloca {i64, i8*}
	%1763 = getelementptr [16 x i8], [16 x i8]* @"str.262", i64 0, i64 0
	%1764 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %1763, 1
	store {i64, i8*} %1764, {i64, i8*}* %1762
	%1765 = load {i64, i8*}, {i64, i8*}* %1762
	%1766 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 252
	store {i64, i8*} %1765, {i64, i8*}* %1766
	%1767 = bitcast i32 (i32, i32, %"cstd::s_timespec"*, %"cstd::s_timespec"*)* @"clock_nanosleep" to void ()*
	%1768 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 252
	store void ()* %1767, void ()** %1768
	%1769 = alloca {i64, i8*}
	%1770 = getelementptr [20 x i8], [20 x i8]* @"str.263", i64 0, i64 0
	%1771 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %1770, 1
	store {i64, i8*} %1771, {i64, i8*}* %1769
	%1772 = load {i64, i8*}, {i64, i8*}* %1769
	%1773 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 253
	store {i64, i8*} %1772, {i64, i8*}* %1773
	%1774 = bitcast i32 (i32, i32*)* @"clock_getcpuclockid" to void ()*
	%1775 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 253
	store void ()* %1774, void ()** %1775
	%1776 = alloca {i64, i8*}
	%1777 = getelementptr [13 x i8], [13 x i8]* @"str.264", i64 0, i64 0
	%1778 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1777, 1
	store {i64, i8*} %1778, {i64, i8*}* %1776
	%1779 = load {i64, i8*}, {i64, i8*}* %1776
	%1780 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 254
	store {i64, i8*} %1779, {i64, i8*}* %1780
	%1781 = bitcast i32 (i32, %"cstd::sigevent_t"*, i8**)* @"timer_create" to void ()*
	%1782 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 254
	store void ()* %1781, void ()** %1782
	%1783 = alloca {i64, i8*}
	%1784 = getelementptr [13 x i8], [13 x i8]* @"str.265", i64 0, i64 0
	%1785 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1784, 1
	store {i64, i8*} %1785, {i64, i8*}* %1783
	%1786 = load {i64, i8*}, {i64, i8*}* %1783
	%1787 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 255
	store {i64, i8*} %1786, {i64, i8*}* %1787
	%1788 = bitcast i32 (i8*)* @"timer_delete" to void ()*
	%1789 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 255
	store void ()* %1788, void ()** %1789
	%1790 = alloca {i64, i8*}
	%1791 = getelementptr [14 x i8], [14 x i8]* @"str.266", i64 0, i64 0
	%1792 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1791, 1
	store {i64, i8*} %1792, {i64, i8*}* %1790
	%1793 = load {i64, i8*}, {i64, i8*}* %1790
	%1794 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 256
	store {i64, i8*} %1793, {i64, i8*}* %1794
	%1795 = bitcast i32 (i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)* @"timer_settime" to void ()*
	%1796 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 256
	store void ()* %1795, void ()** %1796
	%1797 = alloca {i64, i8*}
	%1798 = getelementptr [14 x i8], [14 x i8]* @"str.267", i64 0, i64 0
	%1799 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1798, 1
	store {i64, i8*} %1799, {i64, i8*}* %1797
	%1800 = load {i64, i8*}, {i64, i8*}* %1797
	%1801 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 257
	store {i64, i8*} %1800, {i64, i8*}* %1801
	%1802 = bitcast i32 (i8*, %"cstd::s_itimerspec"*)* @"timer_gettime" to void ()*
	%1803 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 257
	store void ()* %1802, void ()** %1803
	%1804 = alloca {i64, i8*}
	%1805 = getelementptr [17 x i8], [17 x i8]* @"str.268", i64 0, i64 0
	%1806 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %1805, 1
	store {i64, i8*} %1806, {i64, i8*}* %1804
	%1807 = load {i64, i8*}, {i64, i8*}* %1804
	%1808 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 258
	store {i64, i8*} %1807, {i64, i8*}* %1808
	%1809 = bitcast i32 (i8*)* @"timer_getoverrun" to void ()*
	%1810 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 258
	store void ()* %1809, void ()** %1810
	%1811 = alloca {i64, i8*}
	%1812 = getelementptr [13 x i8], [13 x i8]* @"str.269", i64 0, i64 0
	%1813 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1812, 1
	store {i64, i8*} %1813, {i64, i8*}* %1811
	%1814 = load {i64, i8*}, {i64, i8*}* %1811
	%1815 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 259
	store {i64, i8*} %1814, {i64, i8*}* %1815
	%1816 = bitcast i32 (%"cstd::s_timespec"*, i32)* @"timespec_get" to void ()*
	%1817 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 259
	store void ()* %1816, void ()** %1817
	%1818 = alloca {i64, i8*}
	%1819 = getelementptr [13 x i8], [13 x i8]* @"str.270", i64 0, i64 0
	%1820 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1819, 1
	store {i64, i8*} %1820, {i64, i8*}* %1818
	%1821 = load {i64, i8*}, {i64, i8*}* %1818
	%1822 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 260
	store {i64, i8*} %1821, {i64, i8*}* %1822
	%1823 = bitcast i32 (double)* @"__fpclassify" to void ()*
	%1824 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 260
	store void ()* %1823, void ()** %1824
	%1825 = alloca {i64, i8*}
	%1826 = getelementptr [10 x i8], [10 x i8]* @"str.271", i64 0, i64 0
	%1827 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1826, 1
	store {i64, i8*} %1827, {i64, i8*}* %1825
	%1828 = load {i64, i8*}, {i64, i8*}* %1825
	%1829 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 261
	store {i64, i8*} %1828, {i64, i8*}* %1829
	%1830 = bitcast i32 (double)* @"__signbit" to void ()*
	%1831 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 261
	store void ()* %1830, void ()** %1831
	%1832 = alloca {i64, i8*}
	%1833 = getelementptr [8 x i8], [8 x i8]* @"str.272", i64 0, i64 0
	%1834 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1833, 1
	store {i64, i8*} %1834, {i64, i8*}* %1832
	%1835 = load {i64, i8*}, {i64, i8*}* %1832
	%1836 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 262
	store {i64, i8*} %1835, {i64, i8*}* %1836
	%1837 = bitcast i32 (double)* @"__isinf" to void ()*
	%1838 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 262
	store void ()* %1837, void ()** %1838
	%1839 = alloca {i64, i8*}
	%1840 = getelementptr [9 x i8], [9 x i8]* @"str.273", i64 0, i64 0
	%1841 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1840, 1
	store {i64, i8*} %1841, {i64, i8*}* %1839
	%1842 = load {i64, i8*}, {i64, i8*}* %1839
	%1843 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 263
	store {i64, i8*} %1842, {i64, i8*}* %1843
	%1844 = bitcast i32 (double)* @"__finite" to void ()*
	%1845 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 263
	store void ()* %1844, void ()** %1845
	%1846 = alloca {i64, i8*}
	%1847 = getelementptr [8 x i8], [8 x i8]* @"str.274", i64 0, i64 0
	%1848 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1847, 1
	store {i64, i8*} %1848, {i64, i8*}* %1846
	%1849 = load {i64, i8*}, {i64, i8*}* %1846
	%1850 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 264
	store {i64, i8*} %1849, {i64, i8*}* %1850
	%1851 = bitcast i32 (double)* @"__isnan" to void ()*
	%1852 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 264
	store void ()* %1851, void ()** %1852
	%1853 = alloca {i64, i8*}
	%1854 = getelementptr [10 x i8], [10 x i8]* @"str.275", i64 0, i64 0
	%1855 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1854, 1
	store {i64, i8*} %1855, {i64, i8*}* %1853
	%1856 = load {i64, i8*}, {i64, i8*}* %1853
	%1857 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 265
	store {i64, i8*} %1856, {i64, i8*}* %1857
	%1858 = bitcast i32 (double, double)* @"__iseqsig" to void ()*
	%1859 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 265
	store void ()* %1858, void ()** %1859
	%1860 = alloca {i64, i8*}
	%1861 = getelementptr [14 x i8], [14 x i8]* @"str.276", i64 0, i64 0
	%1862 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1861, 1
	store {i64, i8*} %1862, {i64, i8*}* %1860
	%1863 = load {i64, i8*}, {i64, i8*}* %1860
	%1864 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 266
	store {i64, i8*} %1863, {i64, i8*}* %1864
	%1865 = bitcast i32 (double)* @"__issignaling" to void ()*
	%1866 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 266
	store void ()* %1865, void ()** %1866
	%1867 = alloca {i64, i8*}
	%1868 = getelementptr [5 x i8], [5 x i8]* @"str.277", i64 0, i64 0
	%1869 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1868, 1
	store {i64, i8*} %1869, {i64, i8*}* %1867
	%1870 = load {i64, i8*}, {i64, i8*}* %1867
	%1871 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 267
	store {i64, i8*} %1870, {i64, i8*}* %1871
	%1872 = bitcast double (double)* @"acos" to void ()*
	%1873 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 267
	store void ()* %1872, void ()** %1873
	%1874 = alloca {i64, i8*}
	%1875 = getelementptr [5 x i8], [5 x i8]* @"str.278", i64 0, i64 0
	%1876 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1875, 1
	store {i64, i8*} %1876, {i64, i8*}* %1874
	%1877 = load {i64, i8*}, {i64, i8*}* %1874
	%1878 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 268
	store {i64, i8*} %1877, {i64, i8*}* %1878
	%1879 = bitcast double (double)* @"asin" to void ()*
	%1880 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 268
	store void ()* %1879, void ()** %1880
	%1881 = alloca {i64, i8*}
	%1882 = getelementptr [5 x i8], [5 x i8]* @"str.279", i64 0, i64 0
	%1883 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1882, 1
	store {i64, i8*} %1883, {i64, i8*}* %1881
	%1884 = load {i64, i8*}, {i64, i8*}* %1881
	%1885 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 269
	store {i64, i8*} %1884, {i64, i8*}* %1885
	%1886 = bitcast double (double)* @"atan" to void ()*
	%1887 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 269
	store void ()* %1886, void ()** %1887
	%1888 = alloca {i64, i8*}
	%1889 = getelementptr [6 x i8], [6 x i8]* @"str.280", i64 0, i64 0
	%1890 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1889, 1
	store {i64, i8*} %1890, {i64, i8*}* %1888
	%1891 = load {i64, i8*}, {i64, i8*}* %1888
	%1892 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 270
	store {i64, i8*} %1891, {i64, i8*}* %1892
	%1893 = bitcast double (double, double)* @"atan2" to void ()*
	%1894 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 270
	store void ()* %1893, void ()** %1894
	%1895 = alloca {i64, i8*}
	%1896 = getelementptr [4 x i8], [4 x i8]* @"str.281", i64 0, i64 0
	%1897 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1896, 1
	store {i64, i8*} %1897, {i64, i8*}* %1895
	%1898 = load {i64, i8*}, {i64, i8*}* %1895
	%1899 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 271
	store {i64, i8*} %1898, {i64, i8*}* %1899
	%1900 = bitcast double (double)* @"cos" to void ()*
	%1901 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 271
	store void ()* %1900, void ()** %1901
	%1902 = alloca {i64, i8*}
	%1903 = getelementptr [4 x i8], [4 x i8]* @"str.282", i64 0, i64 0
	%1904 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1903, 1
	store {i64, i8*} %1904, {i64, i8*}* %1902
	%1905 = load {i64, i8*}, {i64, i8*}* %1902
	%1906 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 272
	store {i64, i8*} %1905, {i64, i8*}* %1906
	%1907 = bitcast double (double)* @"sin" to void ()*
	%1908 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 272
	store void ()* %1907, void ()** %1908
	%1909 = alloca {i64, i8*}
	%1910 = getelementptr [4 x i8], [4 x i8]* @"str.283", i64 0, i64 0
	%1911 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1910, 1
	store {i64, i8*} %1911, {i64, i8*}* %1909
	%1912 = load {i64, i8*}, {i64, i8*}* %1909
	%1913 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 273
	store {i64, i8*} %1912, {i64, i8*}* %1913
	%1914 = bitcast double (double)* @"tan" to void ()*
	%1915 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 273
	store void ()* %1914, void ()** %1915
	%1916 = alloca {i64, i8*}
	%1917 = getelementptr [5 x i8], [5 x i8]* @"str.284", i64 0, i64 0
	%1918 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1917, 1
	store {i64, i8*} %1918, {i64, i8*}* %1916
	%1919 = load {i64, i8*}, {i64, i8*}* %1916
	%1920 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 274
	store {i64, i8*} %1919, {i64, i8*}* %1920
	%1921 = bitcast double (double)* @"cosh" to void ()*
	%1922 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 274
	store void ()* %1921, void ()** %1922
	%1923 = alloca {i64, i8*}
	%1924 = getelementptr [5 x i8], [5 x i8]* @"str.285", i64 0, i64 0
	%1925 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1924, 1
	store {i64, i8*} %1925, {i64, i8*}* %1923
	%1926 = load {i64, i8*}, {i64, i8*}* %1923
	%1927 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 275
	store {i64, i8*} %1926, {i64, i8*}* %1927
	%1928 = bitcast double (double)* @"sinh" to void ()*
	%1929 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 275
	store void ()* %1928, void ()** %1929
	%1930 = alloca {i64, i8*}
	%1931 = getelementptr [5 x i8], [5 x i8]* @"str.286", i64 0, i64 0
	%1932 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1931, 1
	store {i64, i8*} %1932, {i64, i8*}* %1930
	%1933 = load {i64, i8*}, {i64, i8*}* %1930
	%1934 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 276
	store {i64, i8*} %1933, {i64, i8*}* %1934
	%1935 = bitcast double (double)* @"tanh" to void ()*
	%1936 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 276
	store void ()* %1935, void ()** %1936
	%1937 = alloca {i64, i8*}
	%1938 = getelementptr [6 x i8], [6 x i8]* @"str.287", i64 0, i64 0
	%1939 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1938, 1
	store {i64, i8*} %1939, {i64, i8*}* %1937
	%1940 = load {i64, i8*}, {i64, i8*}* %1937
	%1941 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 277
	store {i64, i8*} %1940, {i64, i8*}* %1941
	%1942 = bitcast double (double)* @"acosh" to void ()*
	%1943 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 277
	store void ()* %1942, void ()** %1943
	%1944 = alloca {i64, i8*}
	%1945 = getelementptr [6 x i8], [6 x i8]* @"str.288", i64 0, i64 0
	%1946 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1945, 1
	store {i64, i8*} %1946, {i64, i8*}* %1944
	%1947 = load {i64, i8*}, {i64, i8*}* %1944
	%1948 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 278
	store {i64, i8*} %1947, {i64, i8*}* %1948
	%1949 = bitcast double (double)* @"asinh" to void ()*
	%1950 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 278
	store void ()* %1949, void ()** %1950
	%1951 = alloca {i64, i8*}
	%1952 = getelementptr [6 x i8], [6 x i8]* @"str.289", i64 0, i64 0
	%1953 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1952, 1
	store {i64, i8*} %1953, {i64, i8*}* %1951
	%1954 = load {i64, i8*}, {i64, i8*}* %1951
	%1955 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 279
	store {i64, i8*} %1954, {i64, i8*}* %1955
	%1956 = bitcast double (double)* @"atanh" to void ()*
	%1957 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 279
	store void ()* %1956, void ()** %1957
	%1958 = alloca {i64, i8*}
	%1959 = getelementptr [4 x i8], [4 x i8]* @"str.290", i64 0, i64 0
	%1960 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1959, 1
	store {i64, i8*} %1960, {i64, i8*}* %1958
	%1961 = load {i64, i8*}, {i64, i8*}* %1958
	%1962 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 280
	store {i64, i8*} %1961, {i64, i8*}* %1962
	%1963 = bitcast double (double)* @"exp" to void ()*
	%1964 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 280
	store void ()* %1963, void ()** %1964
	%1965 = alloca {i64, i8*}
	%1966 = getelementptr [6 x i8], [6 x i8]* @"str.291", i64 0, i64 0
	%1967 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1966, 1
	store {i64, i8*} %1967, {i64, i8*}* %1965
	%1968 = load {i64, i8*}, {i64, i8*}* %1965
	%1969 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 281
	store {i64, i8*} %1968, {i64, i8*}* %1969
	%1970 = bitcast double (double, i32*)* @"frexp" to void ()*
	%1971 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 281
	store void ()* %1970, void ()** %1971
	%1972 = alloca {i64, i8*}
	%1973 = getelementptr [6 x i8], [6 x i8]* @"str.292", i64 0, i64 0
	%1974 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1973, 1
	store {i64, i8*} %1974, {i64, i8*}* %1972
	%1975 = load {i64, i8*}, {i64, i8*}* %1972
	%1976 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 282
	store {i64, i8*} %1975, {i64, i8*}* %1976
	%1977 = bitcast double (double, i32)* @"ldexp" to void ()*
	%1978 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 282
	store void ()* %1977, void ()** %1978
	%1979 = alloca {i64, i8*}
	%1980 = getelementptr [4 x i8], [4 x i8]* @"str.293", i64 0, i64 0
	%1981 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1980, 1
	store {i64, i8*} %1981, {i64, i8*}* %1979
	%1982 = load {i64, i8*}, {i64, i8*}* %1979
	%1983 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 283
	store {i64, i8*} %1982, {i64, i8*}* %1983
	%1984 = bitcast double (double)* @"log" to void ()*
	%1985 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 283
	store void ()* %1984, void ()** %1985
	%1986 = alloca {i64, i8*}
	%1987 = getelementptr [6 x i8], [6 x i8]* @"str.294", i64 0, i64 0
	%1988 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1987, 1
	store {i64, i8*} %1988, {i64, i8*}* %1986
	%1989 = load {i64, i8*}, {i64, i8*}* %1986
	%1990 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 284
	store {i64, i8*} %1989, {i64, i8*}* %1990
	%1991 = bitcast double (double)* @"log10" to void ()*
	%1992 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 284
	store void ()* %1991, void ()** %1992
	%1993 = alloca {i64, i8*}
	%1994 = getelementptr [5 x i8], [5 x i8]* @"str.295", i64 0, i64 0
	%1995 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1994, 1
	store {i64, i8*} %1995, {i64, i8*}* %1993
	%1996 = load {i64, i8*}, {i64, i8*}* %1993
	%1997 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 285
	store {i64, i8*} %1996, {i64, i8*}* %1997
	%1998 = bitcast double (double, double*)* @"modf" to void ()*
	%1999 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 285
	store void ()* %1998, void ()** %1999
	%2000 = alloca {i64, i8*}
	%2001 = getelementptr [6 x i8], [6 x i8]* @"str.296", i64 0, i64 0
	%2002 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2001, 1
	store {i64, i8*} %2002, {i64, i8*}* %2000
	%2003 = load {i64, i8*}, {i64, i8*}* %2000
	%2004 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 286
	store {i64, i8*} %2003, {i64, i8*}* %2004
	%2005 = bitcast double (double)* @"expm1" to void ()*
	%2006 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 286
	store void ()* %2005, void ()** %2006
	%2007 = alloca {i64, i8*}
	%2008 = getelementptr [6 x i8], [6 x i8]* @"str.297", i64 0, i64 0
	%2009 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2008, 1
	store {i64, i8*} %2009, {i64, i8*}* %2007
	%2010 = load {i64, i8*}, {i64, i8*}* %2007
	%2011 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 287
	store {i64, i8*} %2010, {i64, i8*}* %2011
	%2012 = bitcast double (double)* @"log1p" to void ()*
	%2013 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 287
	store void ()* %2012, void ()** %2013
	%2014 = alloca {i64, i8*}
	%2015 = getelementptr [5 x i8], [5 x i8]* @"str.298", i64 0, i64 0
	%2016 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2015, 1
	store {i64, i8*} %2016, {i64, i8*}* %2014
	%2017 = load {i64, i8*}, {i64, i8*}* %2014
	%2018 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 288
	store {i64, i8*} %2017, {i64, i8*}* %2018
	%2019 = bitcast double (double)* @"logb" to void ()*
	%2020 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 288
	store void ()* %2019, void ()** %2020
	%2021 = alloca {i64, i8*}
	%2022 = getelementptr [5 x i8], [5 x i8]* @"str.299", i64 0, i64 0
	%2023 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2022, 1
	store {i64, i8*} %2023, {i64, i8*}* %2021
	%2024 = load {i64, i8*}, {i64, i8*}* %2021
	%2025 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 289
	store {i64, i8*} %2024, {i64, i8*}* %2025
	%2026 = bitcast double (double)* @"exp2" to void ()*
	%2027 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 289
	store void ()* %2026, void ()** %2027
	%2028 = alloca {i64, i8*}
	%2029 = getelementptr [5 x i8], [5 x i8]* @"str.300", i64 0, i64 0
	%2030 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2029, 1
	store {i64, i8*} %2030, {i64, i8*}* %2028
	%2031 = load {i64, i8*}, {i64, i8*}* %2028
	%2032 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 290
	store {i64, i8*} %2031, {i64, i8*}* %2032
	%2033 = bitcast double (double)* @"log2" to void ()*
	%2034 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 290
	store void ()* %2033, void ()** %2034
	%2035 = alloca {i64, i8*}
	%2036 = getelementptr [4 x i8], [4 x i8]* @"str.301", i64 0, i64 0
	%2037 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2036, 1
	store {i64, i8*} %2037, {i64, i8*}* %2035
	%2038 = load {i64, i8*}, {i64, i8*}* %2035
	%2039 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 291
	store {i64, i8*} %2038, {i64, i8*}* %2039
	%2040 = bitcast double (double, double)* @"pow" to void ()*
	%2041 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 291
	store void ()* %2040, void ()** %2041
	%2042 = alloca {i64, i8*}
	%2043 = getelementptr [5 x i8], [5 x i8]* @"str.302", i64 0, i64 0
	%2044 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2043, 1
	store {i64, i8*} %2044, {i64, i8*}* %2042
	%2045 = load {i64, i8*}, {i64, i8*}* %2042
	%2046 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 292
	store {i64, i8*} %2045, {i64, i8*}* %2046
	%2047 = bitcast double (double)* @"sqrt" to void ()*
	%2048 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 292
	store void ()* %2047, void ()** %2048
	%2049 = alloca {i64, i8*}
	%2050 = getelementptr [6 x i8], [6 x i8]* @"str.303", i64 0, i64 0
	%2051 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2050, 1
	store {i64, i8*} %2051, {i64, i8*}* %2049
	%2052 = load {i64, i8*}, {i64, i8*}* %2049
	%2053 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 293
	store {i64, i8*} %2052, {i64, i8*}* %2053
	%2054 = bitcast double (double, double)* @"hypot" to void ()*
	%2055 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 293
	store void ()* %2054, void ()** %2055
	%2056 = alloca {i64, i8*}
	%2057 = getelementptr [5 x i8], [5 x i8]* @"str.304", i64 0, i64 0
	%2058 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2057, 1
	store {i64, i8*} %2058, {i64, i8*}* %2056
	%2059 = load {i64, i8*}, {i64, i8*}* %2056
	%2060 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 294
	store {i64, i8*} %2059, {i64, i8*}* %2060
	%2061 = bitcast double (double)* @"cbrt" to void ()*
	%2062 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 294
	store void ()* %2061, void ()** %2062
	%2063 = alloca {i64, i8*}
	%2064 = getelementptr [5 x i8], [5 x i8]* @"str.305", i64 0, i64 0
	%2065 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2064, 1
	store {i64, i8*} %2065, {i64, i8*}* %2063
	%2066 = load {i64, i8*}, {i64, i8*}* %2063
	%2067 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 295
	store {i64, i8*} %2066, {i64, i8*}* %2067
	%2068 = bitcast double (double)* @"ceil" to void ()*
	%2069 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 295
	store void ()* %2068, void ()** %2069
	%2070 = alloca {i64, i8*}
	%2071 = getelementptr [5 x i8], [5 x i8]* @"str.306", i64 0, i64 0
	%2072 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2071, 1
	store {i64, i8*} %2072, {i64, i8*}* %2070
	%2073 = load {i64, i8*}, {i64, i8*}* %2070
	%2074 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 296
	store {i64, i8*} %2073, {i64, i8*}* %2074
	%2075 = bitcast double (double)* @"fabs" to void ()*
	%2076 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 296
	store void ()* %2075, void ()** %2076
	%2077 = alloca {i64, i8*}
	%2078 = getelementptr [6 x i8], [6 x i8]* @"str.307", i64 0, i64 0
	%2079 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2078, 1
	store {i64, i8*} %2079, {i64, i8*}* %2077
	%2080 = load {i64, i8*}, {i64, i8*}* %2077
	%2081 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 297
	store {i64, i8*} %2080, {i64, i8*}* %2081
	%2082 = bitcast double (double)* @"floor" to void ()*
	%2083 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 297
	store void ()* %2082, void ()** %2083
	%2084 = alloca {i64, i8*}
	%2085 = getelementptr [5 x i8], [5 x i8]* @"str.308", i64 0, i64 0
	%2086 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2085, 1
	store {i64, i8*} %2086, {i64, i8*}* %2084
	%2087 = load {i64, i8*}, {i64, i8*}* %2084
	%2088 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 298
	store {i64, i8*} %2087, {i64, i8*}* %2088
	%2089 = bitcast double (double, double)* @"fmod" to void ()*
	%2090 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 298
	store void ()* %2089, void ()** %2090
	%2091 = alloca {i64, i8*}
	%2092 = getelementptr [6 x i8], [6 x i8]* @"str.309", i64 0, i64 0
	%2093 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2092, 1
	store {i64, i8*} %2093, {i64, i8*}* %2091
	%2094 = load {i64, i8*}, {i64, i8*}* %2091
	%2095 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 299
	store {i64, i8*} %2094, {i64, i8*}* %2095
	%2096 = bitcast i32 (double)* @"isinf" to void ()*
	%2097 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 299
	store void ()* %2096, void ()** %2097
	%2098 = alloca {i64, i8*}
	%2099 = getelementptr [7 x i8], [7 x i8]* @"str.310", i64 0, i64 0
	%2100 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2099, 1
	store {i64, i8*} %2100, {i64, i8*}* %2098
	%2101 = load {i64, i8*}, {i64, i8*}* %2098
	%2102 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 300
	store {i64, i8*} %2101, {i64, i8*}* %2102
	%2103 = bitcast i32 (double)* @"finite" to void ()*
	%2104 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 300
	store void ()* %2103, void ()** %2104
	%2105 = alloca {i64, i8*}
	%2106 = getelementptr [5 x i8], [5 x i8]* @"str.311", i64 0, i64 0
	%2107 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2106, 1
	store {i64, i8*} %2107, {i64, i8*}* %2105
	%2108 = load {i64, i8*}, {i64, i8*}* %2105
	%2109 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 301
	store {i64, i8*} %2108, {i64, i8*}* %2109
	%2110 = bitcast double (double, double)* @"drem" to void ()*
	%2111 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 301
	store void ()* %2110, void ()** %2111
	%2112 = alloca {i64, i8*}
	%2113 = getelementptr [12 x i8], [12 x i8]* @"str.312", i64 0, i64 0
	%2114 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2113, 1
	store {i64, i8*} %2114, {i64, i8*}* %2112
	%2115 = load {i64, i8*}, {i64, i8*}* %2112
	%2116 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 302
	store {i64, i8*} %2115, {i64, i8*}* %2116
	%2117 = bitcast double (double)* @"significand" to void ()*
	%2118 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 302
	store void ()* %2117, void ()** %2118
	%2119 = alloca {i64, i8*}
	%2120 = getelementptr [9 x i8], [9 x i8]* @"str.313", i64 0, i64 0
	%2121 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2120, 1
	store {i64, i8*} %2121, {i64, i8*}* %2119
	%2122 = load {i64, i8*}, {i64, i8*}* %2119
	%2123 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 303
	store {i64, i8*} %2122, {i64, i8*}* %2123
	%2124 = bitcast double (double, double)* @"copysign" to void ()*
	%2125 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 303
	store void ()* %2124, void ()** %2125
	%2126 = alloca {i64, i8*}
	%2127 = getelementptr [4 x i8], [4 x i8]* @"str.314", i64 0, i64 0
	%2128 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2127, 1
	store {i64, i8*} %2128, {i64, i8*}* %2126
	%2129 = load {i64, i8*}, {i64, i8*}* %2126
	%2130 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 304
	store {i64, i8*} %2129, {i64, i8*}* %2130
	%2131 = bitcast double (i8*)* @"nan" to void ()*
	%2132 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 304
	store void ()* %2131, void ()** %2132
	%2133 = alloca {i64, i8*}
	%2134 = getelementptr [6 x i8], [6 x i8]* @"str.315", i64 0, i64 0
	%2135 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2134, 1
	store {i64, i8*} %2135, {i64, i8*}* %2133
	%2136 = load {i64, i8*}, {i64, i8*}* %2133
	%2137 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 305
	store {i64, i8*} %2136, {i64, i8*}* %2137
	%2138 = bitcast i32 (double)* @"isnan" to void ()*
	%2139 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 305
	store void ()* %2138, void ()** %2139
	%2140 = alloca {i64, i8*}
	%2141 = getelementptr [3 x i8], [3 x i8]* @"str.316", i64 0, i64 0
	%2142 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2141, 1
	store {i64, i8*} %2142, {i64, i8*}* %2140
	%2143 = load {i64, i8*}, {i64, i8*}* %2140
	%2144 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 306
	store {i64, i8*} %2143, {i64, i8*}* %2144
	%2145 = bitcast double (double)* @"j0" to void ()*
	%2146 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 306
	store void ()* %2145, void ()** %2146
	%2147 = alloca {i64, i8*}
	%2148 = getelementptr [3 x i8], [3 x i8]* @"str.317", i64 0, i64 0
	%2149 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2148, 1
	store {i64, i8*} %2149, {i64, i8*}* %2147
	%2150 = load {i64, i8*}, {i64, i8*}* %2147
	%2151 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 307
	store {i64, i8*} %2150, {i64, i8*}* %2151
	%2152 = bitcast double (double)* @"j1" to void ()*
	%2153 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 307
	store void ()* %2152, void ()** %2153
	%2154 = alloca {i64, i8*}
	%2155 = getelementptr [3 x i8], [3 x i8]* @"str.318", i64 0, i64 0
	%2156 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2155, 1
	store {i64, i8*} %2156, {i64, i8*}* %2154
	%2157 = load {i64, i8*}, {i64, i8*}* %2154
	%2158 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 308
	store {i64, i8*} %2157, {i64, i8*}* %2158
	%2159 = bitcast double (i32, double)* @"jn" to void ()*
	%2160 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 308
	store void ()* %2159, void ()** %2160
	%2161 = alloca {i64, i8*}
	%2162 = getelementptr [3 x i8], [3 x i8]* @"str.319", i64 0, i64 0
	%2163 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2162, 1
	store {i64, i8*} %2163, {i64, i8*}* %2161
	%2164 = load {i64, i8*}, {i64, i8*}* %2161
	%2165 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 309
	store {i64, i8*} %2164, {i64, i8*}* %2165
	%2166 = bitcast double (double)* @"y0" to void ()*
	%2167 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 309
	store void ()* %2166, void ()** %2167
	%2168 = alloca {i64, i8*}
	%2169 = getelementptr [3 x i8], [3 x i8]* @"str.320", i64 0, i64 0
	%2170 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2169, 1
	store {i64, i8*} %2170, {i64, i8*}* %2168
	%2171 = load {i64, i8*}, {i64, i8*}* %2168
	%2172 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 310
	store {i64, i8*} %2171, {i64, i8*}* %2172
	%2173 = bitcast double (double)* @"y1" to void ()*
	%2174 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 310
	store void ()* %2173, void ()** %2174
	%2175 = alloca {i64, i8*}
	%2176 = getelementptr [3 x i8], [3 x i8]* @"str.321", i64 0, i64 0
	%2177 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %2176, 1
	store {i64, i8*} %2177, {i64, i8*}* %2175
	%2178 = load {i64, i8*}, {i64, i8*}* %2175
	%2179 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 311
	store {i64, i8*} %2178, {i64, i8*}* %2179
	%2180 = bitcast double (i32, double)* @"yn" to void ()*
	%2181 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 311
	store void ()* %2180, void ()** %2181
	%2182 = alloca {i64, i8*}
	%2183 = getelementptr [4 x i8], [4 x i8]* @"str.322", i64 0, i64 0
	%2184 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2183, 1
	store {i64, i8*} %2184, {i64, i8*}* %2182
	%2185 = load {i64, i8*}, {i64, i8*}* %2182
	%2186 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 312
	store {i64, i8*} %2185, {i64, i8*}* %2186
	%2187 = bitcast double (double)* @"erf" to void ()*
	%2188 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 312
	store void ()* %2187, void ()** %2188
	%2189 = alloca {i64, i8*}
	%2190 = getelementptr [5 x i8], [5 x i8]* @"str.323", i64 0, i64 0
	%2191 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2190, 1
	store {i64, i8*} %2191, {i64, i8*}* %2189
	%2192 = load {i64, i8*}, {i64, i8*}* %2189
	%2193 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 313
	store {i64, i8*} %2192, {i64, i8*}* %2193
	%2194 = bitcast double (double)* @"erfc" to void ()*
	%2195 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 313
	store void ()* %2194, void ()** %2195
	%2196 = alloca {i64, i8*}
	%2197 = getelementptr [7 x i8], [7 x i8]* @"str.324", i64 0, i64 0
	%2198 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2197, 1
	store {i64, i8*} %2198, {i64, i8*}* %2196
	%2199 = load {i64, i8*}, {i64, i8*}* %2196
	%2200 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 314
	store {i64, i8*} %2199, {i64, i8*}* %2200
	%2201 = bitcast double (double)* @"lgamma" to void ()*
	%2202 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 314
	store void ()* %2201, void ()** %2202
	%2203 = alloca {i64, i8*}
	%2204 = getelementptr [7 x i8], [7 x i8]* @"str.325", i64 0, i64 0
	%2205 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2204, 1
	store {i64, i8*} %2205, {i64, i8*}* %2203
	%2206 = load {i64, i8*}, {i64, i8*}* %2203
	%2207 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 315
	store {i64, i8*} %2206, {i64, i8*}* %2207
	%2208 = bitcast double (double)* @"tgamma" to void ()*
	%2209 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 315
	store void ()* %2208, void ()** %2209
	%2210 = alloca {i64, i8*}
	%2211 = getelementptr [6 x i8], [6 x i8]* @"str.326", i64 0, i64 0
	%2212 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2211, 1
	store {i64, i8*} %2212, {i64, i8*}* %2210
	%2213 = load {i64, i8*}, {i64, i8*}* %2210
	%2214 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 316
	store {i64, i8*} %2213, {i64, i8*}* %2214
	%2215 = bitcast double (double)* @"gamma" to void ()*
	%2216 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 316
	store void ()* %2215, void ()** %2216
	%2217 = alloca {i64, i8*}
	%2218 = getelementptr [9 x i8], [9 x i8]* @"str.327", i64 0, i64 0
	%2219 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2218, 1
	store {i64, i8*} %2219, {i64, i8*}* %2217
	%2220 = load {i64, i8*}, {i64, i8*}* %2217
	%2221 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 317
	store {i64, i8*} %2220, {i64, i8*}* %2221
	%2222 = bitcast double (double, i32*)* @"lgamma_r" to void ()*
	%2223 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 317
	store void ()* %2222, void ()** %2223
	%2224 = alloca {i64, i8*}
	%2225 = getelementptr [5 x i8], [5 x i8]* @"str.328", i64 0, i64 0
	%2226 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2225, 1
	store {i64, i8*} %2226, {i64, i8*}* %2224
	%2227 = load {i64, i8*}, {i64, i8*}* %2224
	%2228 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 318
	store {i64, i8*} %2227, {i64, i8*}* %2228
	%2229 = bitcast double (double)* @"rint" to void ()*
	%2230 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 318
	store void ()* %2229, void ()** %2230
	%2231 = alloca {i64, i8*}
	%2232 = getelementptr [10 x i8], [10 x i8]* @"str.329", i64 0, i64 0
	%2233 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2232, 1
	store {i64, i8*} %2233, {i64, i8*}* %2231
	%2234 = load {i64, i8*}, {i64, i8*}* %2231
	%2235 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 319
	store {i64, i8*} %2234, {i64, i8*}* %2235
	%2236 = bitcast double (double, double)* @"nextafter" to void ()*
	%2237 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 319
	store void ()* %2236, void ()** %2237
	%2238 = alloca {i64, i8*}
	%2239 = getelementptr [11 x i8], [11 x i8]* @"str.330", i64 0, i64 0
	%2240 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2239, 1
	store {i64, i8*} %2240, {i64, i8*}* %2238
	%2241 = load {i64, i8*}, {i64, i8*}* %2238
	%2242 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 320
	store {i64, i8*} %2241, {i64, i8*}* %2242
	%2243 = bitcast double (double, x86_fp80)* @"nexttoward" to void ()*
	%2244 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 320
	store void ()* %2243, void ()** %2244
	%2245 = alloca {i64, i8*}
	%2246 = getelementptr [10 x i8], [10 x i8]* @"str.331", i64 0, i64 0
	%2247 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2246, 1
	store {i64, i8*} %2247, {i64, i8*}* %2245
	%2248 = load {i64, i8*}, {i64, i8*}* %2245
	%2249 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 321
	store {i64, i8*} %2248, {i64, i8*}* %2249
	%2250 = bitcast double (double, double)* @"remainder" to void ()*
	%2251 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 321
	store void ()* %2250, void ()** %2251
	%2252 = alloca {i64, i8*}
	%2253 = getelementptr [7 x i8], [7 x i8]* @"str.332", i64 0, i64 0
	%2254 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2253, 1
	store {i64, i8*} %2254, {i64, i8*}* %2252
	%2255 = load {i64, i8*}, {i64, i8*}* %2252
	%2256 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 322
	store {i64, i8*} %2255, {i64, i8*}* %2256
	%2257 = bitcast double (double, i32)* @"scalbn" to void ()*
	%2258 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 322
	store void ()* %2257, void ()** %2258
	%2259 = alloca {i64, i8*}
	%2260 = getelementptr [6 x i8], [6 x i8]* @"str.333", i64 0, i64 0
	%2261 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2260, 1
	store {i64, i8*} %2261, {i64, i8*}* %2259
	%2262 = load {i64, i8*}, {i64, i8*}* %2259
	%2263 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 323
	store {i64, i8*} %2262, {i64, i8*}* %2263
	%2264 = bitcast i32 (double)* @"ilogb" to void ()*
	%2265 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 323
	store void ()* %2264, void ()** %2265
	%2266 = alloca {i64, i8*}
	%2267 = getelementptr [8 x i8], [8 x i8]* @"str.334", i64 0, i64 0
	%2268 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2267, 1
	store {i64, i8*} %2268, {i64, i8*}* %2266
	%2269 = load {i64, i8*}, {i64, i8*}* %2266
	%2270 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 324
	store {i64, i8*} %2269, {i64, i8*}* %2270
	%2271 = bitcast double (double, i64)* @"scalbln" to void ()*
	%2272 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 324
	store void ()* %2271, void ()** %2272
	%2273 = alloca {i64, i8*}
	%2274 = getelementptr [10 x i8], [10 x i8]* @"str.335", i64 0, i64 0
	%2275 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2274, 1
	store {i64, i8*} %2275, {i64, i8*}* %2273
	%2276 = load {i64, i8*}, {i64, i8*}* %2273
	%2277 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 325
	store {i64, i8*} %2276, {i64, i8*}* %2277
	%2278 = bitcast double (double)* @"nearbyint" to void ()*
	%2279 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 325
	store void ()* %2278, void ()** %2279
	%2280 = alloca {i64, i8*}
	%2281 = getelementptr [6 x i8], [6 x i8]* @"str.336", i64 0, i64 0
	%2282 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2281, 1
	store {i64, i8*} %2282, {i64, i8*}* %2280
	%2283 = load {i64, i8*}, {i64, i8*}* %2280
	%2284 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 326
	store {i64, i8*} %2283, {i64, i8*}* %2284
	%2285 = bitcast double (double)* @"round" to void ()*
	%2286 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 326
	store void ()* %2285, void ()** %2286
	%2287 = alloca {i64, i8*}
	%2288 = getelementptr [6 x i8], [6 x i8]* @"str.337", i64 0, i64 0
	%2289 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2288, 1
	store {i64, i8*} %2289, {i64, i8*}* %2287
	%2290 = load {i64, i8*}, {i64, i8*}* %2287
	%2291 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 327
	store {i64, i8*} %2290, {i64, i8*}* %2291
	%2292 = bitcast double (double)* @"trunc" to void ()*
	%2293 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 327
	store void ()* %2292, void ()** %2293
	%2294 = alloca {i64, i8*}
	%2295 = getelementptr [7 x i8], [7 x i8]* @"str.338", i64 0, i64 0
	%2296 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2295, 1
	store {i64, i8*} %2296, {i64, i8*}* %2294
	%2297 = load {i64, i8*}, {i64, i8*}* %2294
	%2298 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 328
	store {i64, i8*} %2297, {i64, i8*}* %2298
	%2299 = bitcast double (double, double, i32*)* @"remquo" to void ()*
	%2300 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 328
	store void ()* %2299, void ()** %2300
	%2301 = alloca {i64, i8*}
	%2302 = getelementptr [6 x i8], [6 x i8]* @"str.339", i64 0, i64 0
	%2303 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2302, 1
	store {i64, i8*} %2303, {i64, i8*}* %2301
	%2304 = load {i64, i8*}, {i64, i8*}* %2301
	%2305 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 329
	store {i64, i8*} %2304, {i64, i8*}* %2305
	%2306 = bitcast i64 (double)* @"lrint" to void ()*
	%2307 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 329
	store void ()* %2306, void ()** %2307
	%2308 = alloca {i64, i8*}
	%2309 = getelementptr [7 x i8], [7 x i8]* @"str.340", i64 0, i64 0
	%2310 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2309, 1
	store {i64, i8*} %2310, {i64, i8*}* %2308
	%2311 = load {i64, i8*}, {i64, i8*}* %2308
	%2312 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 330
	store {i64, i8*} %2311, {i64, i8*}* %2312
	%2313 = bitcast i64 (double)* @"llrint" to void ()*
	%2314 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 330
	store void ()* %2313, void ()** %2314
	%2315 = alloca {i64, i8*}
	%2316 = getelementptr [7 x i8], [7 x i8]* @"str.341", i64 0, i64 0
	%2317 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2316, 1
	store {i64, i8*} %2317, {i64, i8*}* %2315
	%2318 = load {i64, i8*}, {i64, i8*}* %2315
	%2319 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 331
	store {i64, i8*} %2318, {i64, i8*}* %2319
	%2320 = bitcast i64 (double)* @"lround" to void ()*
	%2321 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 331
	store void ()* %2320, void ()** %2321
	%2322 = alloca {i64, i8*}
	%2323 = getelementptr [8 x i8], [8 x i8]* @"str.342", i64 0, i64 0
	%2324 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2323, 1
	store {i64, i8*} %2324, {i64, i8*}* %2322
	%2325 = load {i64, i8*}, {i64, i8*}* %2322
	%2326 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 332
	store {i64, i8*} %2325, {i64, i8*}* %2326
	%2327 = bitcast i64 (double)* @"llround" to void ()*
	%2328 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 332
	store void ()* %2327, void ()** %2328
	%2329 = alloca {i64, i8*}
	%2330 = getelementptr [5 x i8], [5 x i8]* @"str.343", i64 0, i64 0
	%2331 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2330, 1
	store {i64, i8*} %2331, {i64, i8*}* %2329
	%2332 = load {i64, i8*}, {i64, i8*}* %2329
	%2333 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 333
	store {i64, i8*} %2332, {i64, i8*}* %2333
	%2334 = bitcast double (double, double)* @"fdim" to void ()*
	%2335 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 333
	store void ()* %2334, void ()** %2335
	%2336 = alloca {i64, i8*}
	%2337 = getelementptr [5 x i8], [5 x i8]* @"str.344", i64 0, i64 0
	%2338 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2337, 1
	store {i64, i8*} %2338, {i64, i8*}* %2336
	%2339 = load {i64, i8*}, {i64, i8*}* %2336
	%2340 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 334
	store {i64, i8*} %2339, {i64, i8*}* %2340
	%2341 = bitcast double (double, double)* @"fmax" to void ()*
	%2342 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 334
	store void ()* %2341, void ()** %2342
	%2343 = alloca {i64, i8*}
	%2344 = getelementptr [5 x i8], [5 x i8]* @"str.345", i64 0, i64 0
	%2345 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2344, 1
	store {i64, i8*} %2345, {i64, i8*}* %2343
	%2346 = load {i64, i8*}, {i64, i8*}* %2343
	%2347 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 335
	store {i64, i8*} %2346, {i64, i8*}* %2347
	%2348 = bitcast double (double, double)* @"fmin" to void ()*
	%2349 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 335
	store void ()* %2348, void ()** %2349
	%2350 = alloca {i64, i8*}
	%2351 = getelementptr [4 x i8], [4 x i8]* @"str.346", i64 0, i64 0
	%2352 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2351, 1
	store {i64, i8*} %2352, {i64, i8*}* %2350
	%2353 = load {i64, i8*}, {i64, i8*}* %2350
	%2354 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 336
	store {i64, i8*} %2353, {i64, i8*}* %2354
	%2355 = bitcast double (double, double, double)* @"fma" to void ()*
	%2356 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 336
	store void ()* %2355, void ()** %2356
	%2357 = alloca {i64, i8*}
	%2358 = getelementptr [6 x i8], [6 x i8]* @"str.347", i64 0, i64 0
	%2359 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2358, 1
	store {i64, i8*} %2359, {i64, i8*}* %2357
	%2360 = load {i64, i8*}, {i64, i8*}* %2357
	%2361 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 337
	store {i64, i8*} %2360, {i64, i8*}* %2361
	%2362 = bitcast double (double, double)* @"scalb" to void ()*
	%2363 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 337
	store void ()* %2362, void ()** %2363
	%2364 = alloca {i64, i8*}
	%2365 = getelementptr [14 x i8], [14 x i8]* @"str.348", i64 0, i64 0
	%2366 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %2365, 1
	store {i64, i8*} %2366, {i64, i8*}* %2364
	%2367 = load {i64, i8*}, {i64, i8*}* %2364
	%2368 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 338
	store {i64, i8*} %2367, {i64, i8*}* %2368
	%2369 = bitcast i32 (float)* @"__fpclassifyf" to void ()*
	%2370 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 338
	store void ()* %2369, void ()** %2370
	%2371 = alloca {i64, i8*}
	%2372 = getelementptr [11 x i8], [11 x i8]* @"str.349", i64 0, i64 0
	%2373 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2372, 1
	store {i64, i8*} %2373, {i64, i8*}* %2371
	%2374 = load {i64, i8*}, {i64, i8*}* %2371
	%2375 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 339
	store {i64, i8*} %2374, {i64, i8*}* %2375
	%2376 = bitcast i32 (float)* @"__signbitf" to void ()*
	%2377 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 339
	store void ()* %2376, void ()** %2377
	%2378 = alloca {i64, i8*}
	%2379 = getelementptr [9 x i8], [9 x i8]* @"str.350", i64 0, i64 0
	%2380 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2379, 1
	store {i64, i8*} %2380, {i64, i8*}* %2378
	%2381 = load {i64, i8*}, {i64, i8*}* %2378
	%2382 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 340
	store {i64, i8*} %2381, {i64, i8*}* %2382
	%2383 = bitcast i32 (float)* @"__isinff" to void ()*
	%2384 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 340
	store void ()* %2383, void ()** %2384
	%2385 = alloca {i64, i8*}
	%2386 = getelementptr [10 x i8], [10 x i8]* @"str.351", i64 0, i64 0
	%2387 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2386, 1
	store {i64, i8*} %2387, {i64, i8*}* %2385
	%2388 = load {i64, i8*}, {i64, i8*}* %2385
	%2389 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 341
	store {i64, i8*} %2388, {i64, i8*}* %2389
	%2390 = bitcast i32 (float)* @"__finitef" to void ()*
	%2391 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 341
	store void ()* %2390, void ()** %2391
	%2392 = alloca {i64, i8*}
	%2393 = getelementptr [9 x i8], [9 x i8]* @"str.352", i64 0, i64 0
	%2394 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2393, 1
	store {i64, i8*} %2394, {i64, i8*}* %2392
	%2395 = load {i64, i8*}, {i64, i8*}* %2392
	%2396 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 342
	store {i64, i8*} %2395, {i64, i8*}* %2396
	%2397 = bitcast i32 (float)* @"__isnanf" to void ()*
	%2398 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 342
	store void ()* %2397, void ()** %2398
	%2399 = alloca {i64, i8*}
	%2400 = getelementptr [11 x i8], [11 x i8]* @"str.353", i64 0, i64 0
	%2401 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2400, 1
	store {i64, i8*} %2401, {i64, i8*}* %2399
	%2402 = load {i64, i8*}, {i64, i8*}* %2399
	%2403 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 343
	store {i64, i8*} %2402, {i64, i8*}* %2403
	%2404 = bitcast i32 (float, float)* @"__iseqsigf" to void ()*
	%2405 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 343
	store void ()* %2404, void ()** %2405
	%2406 = alloca {i64, i8*}
	%2407 = getelementptr [15 x i8], [15 x i8]* @"str.354", i64 0, i64 0
	%2408 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %2407, 1
	store {i64, i8*} %2408, {i64, i8*}* %2406
	%2409 = load {i64, i8*}, {i64, i8*}* %2406
	%2410 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 344
	store {i64, i8*} %2409, {i64, i8*}* %2410
	%2411 = bitcast i32 (float)* @"__issignalingf" to void ()*
	%2412 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 344
	store void ()* %2411, void ()** %2412
	%2413 = alloca {i64, i8*}
	%2414 = getelementptr [6 x i8], [6 x i8]* @"str.355", i64 0, i64 0
	%2415 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2414, 1
	store {i64, i8*} %2415, {i64, i8*}* %2413
	%2416 = load {i64, i8*}, {i64, i8*}* %2413
	%2417 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 345
	store {i64, i8*} %2416, {i64, i8*}* %2417
	%2418 = bitcast float (float)* @"acosf" to void ()*
	%2419 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 345
	store void ()* %2418, void ()** %2419
	%2420 = alloca {i64, i8*}
	%2421 = getelementptr [6 x i8], [6 x i8]* @"str.356", i64 0, i64 0
	%2422 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2421, 1
	store {i64, i8*} %2422, {i64, i8*}* %2420
	%2423 = load {i64, i8*}, {i64, i8*}* %2420
	%2424 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 346
	store {i64, i8*} %2423, {i64, i8*}* %2424
	%2425 = bitcast float (float)* @"asinf" to void ()*
	%2426 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 346
	store void ()* %2425, void ()** %2426
	%2427 = alloca {i64, i8*}
	%2428 = getelementptr [6 x i8], [6 x i8]* @"str.357", i64 0, i64 0
	%2429 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2428, 1
	store {i64, i8*} %2429, {i64, i8*}* %2427
	%2430 = load {i64, i8*}, {i64, i8*}* %2427
	%2431 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 347
	store {i64, i8*} %2430, {i64, i8*}* %2431
	%2432 = bitcast float (float)* @"atanf" to void ()*
	%2433 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 347
	store void ()* %2432, void ()** %2433
	%2434 = alloca {i64, i8*}
	%2435 = getelementptr [7 x i8], [7 x i8]* @"str.358", i64 0, i64 0
	%2436 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2435, 1
	store {i64, i8*} %2436, {i64, i8*}* %2434
	%2437 = load {i64, i8*}, {i64, i8*}* %2434
	%2438 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 348
	store {i64, i8*} %2437, {i64, i8*}* %2438
	%2439 = bitcast float (float, float)* @"atan2f" to void ()*
	%2440 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 348
	store void ()* %2439, void ()** %2440
	%2441 = alloca {i64, i8*}
	%2442 = getelementptr [5 x i8], [5 x i8]* @"str.359", i64 0, i64 0
	%2443 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2442, 1
	store {i64, i8*} %2443, {i64, i8*}* %2441
	%2444 = load {i64, i8*}, {i64, i8*}* %2441
	%2445 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 349
	store {i64, i8*} %2444, {i64, i8*}* %2445
	%2446 = bitcast float (float)* @"cosf" to void ()*
	%2447 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 349
	store void ()* %2446, void ()** %2447
	%2448 = alloca {i64, i8*}
	%2449 = getelementptr [5 x i8], [5 x i8]* @"str.360", i64 0, i64 0
	%2450 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2449, 1
	store {i64, i8*} %2450, {i64, i8*}* %2448
	%2451 = load {i64, i8*}, {i64, i8*}* %2448
	%2452 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 350
	store {i64, i8*} %2451, {i64, i8*}* %2452
	%2453 = bitcast float (float)* @"sinf" to void ()*
	%2454 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 350
	store void ()* %2453, void ()** %2454
	%2455 = alloca {i64, i8*}
	%2456 = getelementptr [5 x i8], [5 x i8]* @"str.361", i64 0, i64 0
	%2457 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2456, 1
	store {i64, i8*} %2457, {i64, i8*}* %2455
	%2458 = load {i64, i8*}, {i64, i8*}* %2455
	%2459 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 351
	store {i64, i8*} %2458, {i64, i8*}* %2459
	%2460 = bitcast float (float)* @"tanf" to void ()*
	%2461 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 351
	store void ()* %2460, void ()** %2461
	%2462 = alloca {i64, i8*}
	%2463 = getelementptr [6 x i8], [6 x i8]* @"str.362", i64 0, i64 0
	%2464 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2463, 1
	store {i64, i8*} %2464, {i64, i8*}* %2462
	%2465 = load {i64, i8*}, {i64, i8*}* %2462
	%2466 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 352
	store {i64, i8*} %2465, {i64, i8*}* %2466
	%2467 = bitcast float (float)* @"coshf" to void ()*
	%2468 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 352
	store void ()* %2467, void ()** %2468
	%2469 = alloca {i64, i8*}
	%2470 = getelementptr [6 x i8], [6 x i8]* @"str.363", i64 0, i64 0
	%2471 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2470, 1
	store {i64, i8*} %2471, {i64, i8*}* %2469
	%2472 = load {i64, i8*}, {i64, i8*}* %2469
	%2473 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 353
	store {i64, i8*} %2472, {i64, i8*}* %2473
	%2474 = bitcast float (float)* @"sinhf" to void ()*
	%2475 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 353
	store void ()* %2474, void ()** %2475
	%2476 = alloca {i64, i8*}
	%2477 = getelementptr [6 x i8], [6 x i8]* @"str.364", i64 0, i64 0
	%2478 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2477, 1
	store {i64, i8*} %2478, {i64, i8*}* %2476
	%2479 = load {i64, i8*}, {i64, i8*}* %2476
	%2480 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 354
	store {i64, i8*} %2479, {i64, i8*}* %2480
	%2481 = bitcast float (float)* @"tanhf" to void ()*
	%2482 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 354
	store void ()* %2481, void ()** %2482
	%2483 = alloca {i64, i8*}
	%2484 = getelementptr [7 x i8], [7 x i8]* @"str.365", i64 0, i64 0
	%2485 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2484, 1
	store {i64, i8*} %2485, {i64, i8*}* %2483
	%2486 = load {i64, i8*}, {i64, i8*}* %2483
	%2487 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 355
	store {i64, i8*} %2486, {i64, i8*}* %2487
	%2488 = bitcast float (float)* @"acoshf" to void ()*
	%2489 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 355
	store void ()* %2488, void ()** %2489
	%2490 = alloca {i64, i8*}
	%2491 = getelementptr [7 x i8], [7 x i8]* @"str.366", i64 0, i64 0
	%2492 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2491, 1
	store {i64, i8*} %2492, {i64, i8*}* %2490
	%2493 = load {i64, i8*}, {i64, i8*}* %2490
	%2494 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 356
	store {i64, i8*} %2493, {i64, i8*}* %2494
	%2495 = bitcast float (float)* @"asinhf" to void ()*
	%2496 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 356
	store void ()* %2495, void ()** %2496
	%2497 = alloca {i64, i8*}
	%2498 = getelementptr [7 x i8], [7 x i8]* @"str.367", i64 0, i64 0
	%2499 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2498, 1
	store {i64, i8*} %2499, {i64, i8*}* %2497
	%2500 = load {i64, i8*}, {i64, i8*}* %2497
	%2501 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 357
	store {i64, i8*} %2500, {i64, i8*}* %2501
	%2502 = bitcast float (float)* @"atanhf" to void ()*
	%2503 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 357
	store void ()* %2502, void ()** %2503
	%2504 = alloca {i64, i8*}
	%2505 = getelementptr [5 x i8], [5 x i8]* @"str.368", i64 0, i64 0
	%2506 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2505, 1
	store {i64, i8*} %2506, {i64, i8*}* %2504
	%2507 = load {i64, i8*}, {i64, i8*}* %2504
	%2508 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 358
	store {i64, i8*} %2507, {i64, i8*}* %2508
	%2509 = bitcast float (float)* @"expf" to void ()*
	%2510 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 358
	store void ()* %2509, void ()** %2510
	%2511 = alloca {i64, i8*}
	%2512 = getelementptr [7 x i8], [7 x i8]* @"str.369", i64 0, i64 0
	%2513 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2512, 1
	store {i64, i8*} %2513, {i64, i8*}* %2511
	%2514 = load {i64, i8*}, {i64, i8*}* %2511
	%2515 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 359
	store {i64, i8*} %2514, {i64, i8*}* %2515
	%2516 = bitcast float (float, i32*)* @"frexpf" to void ()*
	%2517 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 359
	store void ()* %2516, void ()** %2517
	%2518 = alloca {i64, i8*}
	%2519 = getelementptr [7 x i8], [7 x i8]* @"str.370", i64 0, i64 0
	%2520 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2519, 1
	store {i64, i8*} %2520, {i64, i8*}* %2518
	%2521 = load {i64, i8*}, {i64, i8*}* %2518
	%2522 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 360
	store {i64, i8*} %2521, {i64, i8*}* %2522
	%2523 = bitcast float (float, i32)* @"ldexpf" to void ()*
	%2524 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 360
	store void ()* %2523, void ()** %2524
	%2525 = alloca {i64, i8*}
	%2526 = getelementptr [5 x i8], [5 x i8]* @"str.371", i64 0, i64 0
	%2527 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2526, 1
	store {i64, i8*} %2527, {i64, i8*}* %2525
	%2528 = load {i64, i8*}, {i64, i8*}* %2525
	%2529 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 361
	store {i64, i8*} %2528, {i64, i8*}* %2529
	%2530 = bitcast float (float)* @"logf" to void ()*
	%2531 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 361
	store void ()* %2530, void ()** %2531
	%2532 = alloca {i64, i8*}
	%2533 = getelementptr [7 x i8], [7 x i8]* @"str.372", i64 0, i64 0
	%2534 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2533, 1
	store {i64, i8*} %2534, {i64, i8*}* %2532
	%2535 = load {i64, i8*}, {i64, i8*}* %2532
	%2536 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 362
	store {i64, i8*} %2535, {i64, i8*}* %2536
	%2537 = bitcast float (float)* @"log10f" to void ()*
	%2538 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 362
	store void ()* %2537, void ()** %2538
	%2539 = alloca {i64, i8*}
	%2540 = getelementptr [6 x i8], [6 x i8]* @"str.373", i64 0, i64 0
	%2541 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2540, 1
	store {i64, i8*} %2541, {i64, i8*}* %2539
	%2542 = load {i64, i8*}, {i64, i8*}* %2539
	%2543 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 363
	store {i64, i8*} %2542, {i64, i8*}* %2543
	%2544 = bitcast float (float, float*)* @"modff" to void ()*
	%2545 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 363
	store void ()* %2544, void ()** %2545
	%2546 = alloca {i64, i8*}
	%2547 = getelementptr [7 x i8], [7 x i8]* @"str.374", i64 0, i64 0
	%2548 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2547, 1
	store {i64, i8*} %2548, {i64, i8*}* %2546
	%2549 = load {i64, i8*}, {i64, i8*}* %2546
	%2550 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 364
	store {i64, i8*} %2549, {i64, i8*}* %2550
	%2551 = bitcast float (float)* @"expm1f" to void ()*
	%2552 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 364
	store void ()* %2551, void ()** %2552
	%2553 = alloca {i64, i8*}
	%2554 = getelementptr [7 x i8], [7 x i8]* @"str.375", i64 0, i64 0
	%2555 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2554, 1
	store {i64, i8*} %2555, {i64, i8*}* %2553
	%2556 = load {i64, i8*}, {i64, i8*}* %2553
	%2557 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 365
	store {i64, i8*} %2556, {i64, i8*}* %2557
	%2558 = bitcast float (float)* @"log1pf" to void ()*
	%2559 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 365
	store void ()* %2558, void ()** %2559
	%2560 = alloca {i64, i8*}
	%2561 = getelementptr [6 x i8], [6 x i8]* @"str.376", i64 0, i64 0
	%2562 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2561, 1
	store {i64, i8*} %2562, {i64, i8*}* %2560
	%2563 = load {i64, i8*}, {i64, i8*}* %2560
	%2564 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 366
	store {i64, i8*} %2563, {i64, i8*}* %2564
	%2565 = bitcast float (float)* @"logbf" to void ()*
	%2566 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 366
	store void ()* %2565, void ()** %2566
	%2567 = alloca {i64, i8*}
	%2568 = getelementptr [6 x i8], [6 x i8]* @"str.377", i64 0, i64 0
	%2569 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2568, 1
	store {i64, i8*} %2569, {i64, i8*}* %2567
	%2570 = load {i64, i8*}, {i64, i8*}* %2567
	%2571 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 367
	store {i64, i8*} %2570, {i64, i8*}* %2571
	%2572 = bitcast float (float)* @"exp2f" to void ()*
	%2573 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 367
	store void ()* %2572, void ()** %2573
	%2574 = alloca {i64, i8*}
	%2575 = getelementptr [6 x i8], [6 x i8]* @"str.378", i64 0, i64 0
	%2576 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2575, 1
	store {i64, i8*} %2576, {i64, i8*}* %2574
	%2577 = load {i64, i8*}, {i64, i8*}* %2574
	%2578 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 368
	store {i64, i8*} %2577, {i64, i8*}* %2578
	%2579 = bitcast float (float)* @"log2f" to void ()*
	%2580 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 368
	store void ()* %2579, void ()** %2580
	%2581 = alloca {i64, i8*}
	%2582 = getelementptr [5 x i8], [5 x i8]* @"str.379", i64 0, i64 0
	%2583 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2582, 1
	store {i64, i8*} %2583, {i64, i8*}* %2581
	%2584 = load {i64, i8*}, {i64, i8*}* %2581
	%2585 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 369
	store {i64, i8*} %2584, {i64, i8*}* %2585
	%2586 = bitcast float (float, float)* @"powf" to void ()*
	%2587 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 369
	store void ()* %2586, void ()** %2587
	%2588 = alloca {i64, i8*}
	%2589 = getelementptr [6 x i8], [6 x i8]* @"str.380", i64 0, i64 0
	%2590 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2589, 1
	store {i64, i8*} %2590, {i64, i8*}* %2588
	%2591 = load {i64, i8*}, {i64, i8*}* %2588
	%2592 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 370
	store {i64, i8*} %2591, {i64, i8*}* %2592
	%2593 = bitcast float (float)* @"sqrtf" to void ()*
	%2594 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 370
	store void ()* %2593, void ()** %2594
	%2595 = alloca {i64, i8*}
	%2596 = getelementptr [7 x i8], [7 x i8]* @"str.381", i64 0, i64 0
	%2597 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2596, 1
	store {i64, i8*} %2597, {i64, i8*}* %2595
	%2598 = load {i64, i8*}, {i64, i8*}* %2595
	%2599 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 371
	store {i64, i8*} %2598, {i64, i8*}* %2599
	%2600 = bitcast float (float, float)* @"hypotf" to void ()*
	%2601 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 371
	store void ()* %2600, void ()** %2601
	%2602 = alloca {i64, i8*}
	%2603 = getelementptr [6 x i8], [6 x i8]* @"str.382", i64 0, i64 0
	%2604 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2603, 1
	store {i64, i8*} %2604, {i64, i8*}* %2602
	%2605 = load {i64, i8*}, {i64, i8*}* %2602
	%2606 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 372
	store {i64, i8*} %2605, {i64, i8*}* %2606
	%2607 = bitcast float (float)* @"cbrtf" to void ()*
	%2608 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 372
	store void ()* %2607, void ()** %2608
	%2609 = alloca {i64, i8*}
	%2610 = getelementptr [6 x i8], [6 x i8]* @"str.383", i64 0, i64 0
	%2611 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2610, 1
	store {i64, i8*} %2611, {i64, i8*}* %2609
	%2612 = load {i64, i8*}, {i64, i8*}* %2609
	%2613 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 373
	store {i64, i8*} %2612, {i64, i8*}* %2613
	%2614 = bitcast float (float)* @"ceilf" to void ()*
	%2615 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 373
	store void ()* %2614, void ()** %2615
	%2616 = alloca {i64, i8*}
	%2617 = getelementptr [6 x i8], [6 x i8]* @"str.384", i64 0, i64 0
	%2618 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2617, 1
	store {i64, i8*} %2618, {i64, i8*}* %2616
	%2619 = load {i64, i8*}, {i64, i8*}* %2616
	%2620 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 374
	store {i64, i8*} %2619, {i64, i8*}* %2620
	%2621 = bitcast float (float)* @"fabsf" to void ()*
	%2622 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 374
	store void ()* %2621, void ()** %2622
	%2623 = alloca {i64, i8*}
	%2624 = getelementptr [7 x i8], [7 x i8]* @"str.385", i64 0, i64 0
	%2625 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2624, 1
	store {i64, i8*} %2625, {i64, i8*}* %2623
	%2626 = load {i64, i8*}, {i64, i8*}* %2623
	%2627 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 375
	store {i64, i8*} %2626, {i64, i8*}* %2627
	%2628 = bitcast float (float)* @"floorf" to void ()*
	%2629 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 375
	store void ()* %2628, void ()** %2629
	%2630 = alloca {i64, i8*}
	%2631 = getelementptr [6 x i8], [6 x i8]* @"str.386", i64 0, i64 0
	%2632 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2631, 1
	store {i64, i8*} %2632, {i64, i8*}* %2630
	%2633 = load {i64, i8*}, {i64, i8*}* %2630
	%2634 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 376
	store {i64, i8*} %2633, {i64, i8*}* %2634
	%2635 = bitcast float (float, float)* @"fmodf" to void ()*
	%2636 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 376
	store void ()* %2635, void ()** %2636
	%2637 = alloca {i64, i8*}
	%2638 = getelementptr [7 x i8], [7 x i8]* @"str.387", i64 0, i64 0
	%2639 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2638, 1
	store {i64, i8*} %2639, {i64, i8*}* %2637
	%2640 = load {i64, i8*}, {i64, i8*}* %2637
	%2641 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 377
	store {i64, i8*} %2640, {i64, i8*}* %2641
	%2642 = bitcast i32 (float)* @"isinff" to void ()*
	%2643 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 377
	store void ()* %2642, void ()** %2643
	%2644 = alloca {i64, i8*}
	%2645 = getelementptr [8 x i8], [8 x i8]* @"str.388", i64 0, i64 0
	%2646 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2645, 1
	store {i64, i8*} %2646, {i64, i8*}* %2644
	%2647 = load {i64, i8*}, {i64, i8*}* %2644
	%2648 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 378
	store {i64, i8*} %2647, {i64, i8*}* %2648
	%2649 = bitcast i32 (float)* @"finitef" to void ()*
	%2650 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 378
	store void ()* %2649, void ()** %2650
	%2651 = alloca {i64, i8*}
	%2652 = getelementptr [6 x i8], [6 x i8]* @"str.389", i64 0, i64 0
	%2653 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2652, 1
	store {i64, i8*} %2653, {i64, i8*}* %2651
	%2654 = load {i64, i8*}, {i64, i8*}* %2651
	%2655 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 379
	store {i64, i8*} %2654, {i64, i8*}* %2655
	%2656 = bitcast float (float, float)* @"dremf" to void ()*
	%2657 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 379
	store void ()* %2656, void ()** %2657
	%2658 = alloca {i64, i8*}
	%2659 = getelementptr [13 x i8], [13 x i8]* @"str.390", i64 0, i64 0
	%2660 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %2659, 1
	store {i64, i8*} %2660, {i64, i8*}* %2658
	%2661 = load {i64, i8*}, {i64, i8*}* %2658
	%2662 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 380
	store {i64, i8*} %2661, {i64, i8*}* %2662
	%2663 = bitcast float (float)* @"significandf" to void ()*
	%2664 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 380
	store void ()* %2663, void ()** %2664
	%2665 = alloca {i64, i8*}
	%2666 = getelementptr [10 x i8], [10 x i8]* @"str.391", i64 0, i64 0
	%2667 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2666, 1
	store {i64, i8*} %2667, {i64, i8*}* %2665
	%2668 = load {i64, i8*}, {i64, i8*}* %2665
	%2669 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 381
	store {i64, i8*} %2668, {i64, i8*}* %2669
	%2670 = bitcast float (float, float)* @"copysignf" to void ()*
	%2671 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 381
	store void ()* %2670, void ()** %2671
	%2672 = alloca {i64, i8*}
	%2673 = getelementptr [5 x i8], [5 x i8]* @"str.392", i64 0, i64 0
	%2674 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2673, 1
	store {i64, i8*} %2674, {i64, i8*}* %2672
	%2675 = load {i64, i8*}, {i64, i8*}* %2672
	%2676 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 382
	store {i64, i8*} %2675, {i64, i8*}* %2676
	%2677 = bitcast float (i8*)* @"nanf" to void ()*
	%2678 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 382
	store void ()* %2677, void ()** %2678
	%2679 = alloca {i64, i8*}
	%2680 = getelementptr [7 x i8], [7 x i8]* @"str.393", i64 0, i64 0
	%2681 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2680, 1
	store {i64, i8*} %2681, {i64, i8*}* %2679
	%2682 = load {i64, i8*}, {i64, i8*}* %2679
	%2683 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 383
	store {i64, i8*} %2682, {i64, i8*}* %2683
	%2684 = bitcast i32 (float)* @"isnanf" to void ()*
	%2685 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 383
	store void ()* %2684, void ()** %2685
	%2686 = alloca {i64, i8*}
	%2687 = getelementptr [4 x i8], [4 x i8]* @"str.394", i64 0, i64 0
	%2688 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2687, 1
	store {i64, i8*} %2688, {i64, i8*}* %2686
	%2689 = load {i64, i8*}, {i64, i8*}* %2686
	%2690 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 384
	store {i64, i8*} %2689, {i64, i8*}* %2690
	%2691 = bitcast float (float)* @"j0f" to void ()*
	%2692 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 384
	store void ()* %2691, void ()** %2692
	%2693 = alloca {i64, i8*}
	%2694 = getelementptr [4 x i8], [4 x i8]* @"str.395", i64 0, i64 0
	%2695 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2694, 1
	store {i64, i8*} %2695, {i64, i8*}* %2693
	%2696 = load {i64, i8*}, {i64, i8*}* %2693
	%2697 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 385
	store {i64, i8*} %2696, {i64, i8*}* %2697
	%2698 = bitcast float (float)* @"j1f" to void ()*
	%2699 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 385
	store void ()* %2698, void ()** %2699
	%2700 = alloca {i64, i8*}
	%2701 = getelementptr [4 x i8], [4 x i8]* @"str.396", i64 0, i64 0
	%2702 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2701, 1
	store {i64, i8*} %2702, {i64, i8*}* %2700
	%2703 = load {i64, i8*}, {i64, i8*}* %2700
	%2704 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 386
	store {i64, i8*} %2703, {i64, i8*}* %2704
	%2705 = bitcast float (i32, float)* @"jnf" to void ()*
	%2706 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 386
	store void ()* %2705, void ()** %2706
	%2707 = alloca {i64, i8*}
	%2708 = getelementptr [4 x i8], [4 x i8]* @"str.397", i64 0, i64 0
	%2709 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2708, 1
	store {i64, i8*} %2709, {i64, i8*}* %2707
	%2710 = load {i64, i8*}, {i64, i8*}* %2707
	%2711 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 387
	store {i64, i8*} %2710, {i64, i8*}* %2711
	%2712 = bitcast float (float)* @"y0f" to void ()*
	%2713 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 387
	store void ()* %2712, void ()** %2713
	%2714 = alloca {i64, i8*}
	%2715 = getelementptr [4 x i8], [4 x i8]* @"str.398", i64 0, i64 0
	%2716 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2715, 1
	store {i64, i8*} %2716, {i64, i8*}* %2714
	%2717 = load {i64, i8*}, {i64, i8*}* %2714
	%2718 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 388
	store {i64, i8*} %2717, {i64, i8*}* %2718
	%2719 = bitcast float (float)* @"y1f" to void ()*
	%2720 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 388
	store void ()* %2719, void ()** %2720
	%2721 = alloca {i64, i8*}
	%2722 = getelementptr [4 x i8], [4 x i8]* @"str.399", i64 0, i64 0
	%2723 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %2722, 1
	store {i64, i8*} %2723, {i64, i8*}* %2721
	%2724 = load {i64, i8*}, {i64, i8*}* %2721
	%2725 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 389
	store {i64, i8*} %2724, {i64, i8*}* %2725
	%2726 = bitcast float (i32, float)* @"ynf" to void ()*
	%2727 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 389
	store void ()* %2726, void ()** %2727
	%2728 = alloca {i64, i8*}
	%2729 = getelementptr [5 x i8], [5 x i8]* @"str.400", i64 0, i64 0
	%2730 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2729, 1
	store {i64, i8*} %2730, {i64, i8*}* %2728
	%2731 = load {i64, i8*}, {i64, i8*}* %2728
	%2732 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 390
	store {i64, i8*} %2731, {i64, i8*}* %2732
	%2733 = bitcast float (float)* @"erff" to void ()*
	%2734 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 390
	store void ()* %2733, void ()** %2734
	%2735 = alloca {i64, i8*}
	%2736 = getelementptr [6 x i8], [6 x i8]* @"str.401", i64 0, i64 0
	%2737 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2736, 1
	store {i64, i8*} %2737, {i64, i8*}* %2735
	%2738 = load {i64, i8*}, {i64, i8*}* %2735
	%2739 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 391
	store {i64, i8*} %2738, {i64, i8*}* %2739
	%2740 = bitcast float (float)* @"erfcf" to void ()*
	%2741 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 391
	store void ()* %2740, void ()** %2741
	%2742 = alloca {i64, i8*}
	%2743 = getelementptr [8 x i8], [8 x i8]* @"str.402", i64 0, i64 0
	%2744 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2743, 1
	store {i64, i8*} %2744, {i64, i8*}* %2742
	%2745 = load {i64, i8*}, {i64, i8*}* %2742
	%2746 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 392
	store {i64, i8*} %2745, {i64, i8*}* %2746
	%2747 = bitcast float (float)* @"lgammaf" to void ()*
	%2748 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 392
	store void ()* %2747, void ()** %2748
	%2749 = alloca {i64, i8*}
	%2750 = getelementptr [8 x i8], [8 x i8]* @"str.403", i64 0, i64 0
	%2751 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2750, 1
	store {i64, i8*} %2751, {i64, i8*}* %2749
	%2752 = load {i64, i8*}, {i64, i8*}* %2749
	%2753 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 393
	store {i64, i8*} %2752, {i64, i8*}* %2753
	%2754 = bitcast float (float)* @"tgammaf" to void ()*
	%2755 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 393
	store void ()* %2754, void ()** %2755
	%2756 = alloca {i64, i8*}
	%2757 = getelementptr [7 x i8], [7 x i8]* @"str.404", i64 0, i64 0
	%2758 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2757, 1
	store {i64, i8*} %2758, {i64, i8*}* %2756
	%2759 = load {i64, i8*}, {i64, i8*}* %2756
	%2760 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 394
	store {i64, i8*} %2759, {i64, i8*}* %2760
	%2761 = bitcast float (float)* @"gammaf" to void ()*
	%2762 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 394
	store void ()* %2761, void ()** %2762
	%2763 = alloca {i64, i8*}
	%2764 = getelementptr [10 x i8], [10 x i8]* @"str.405", i64 0, i64 0
	%2765 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2764, 1
	store {i64, i8*} %2765, {i64, i8*}* %2763
	%2766 = load {i64, i8*}, {i64, i8*}* %2763
	%2767 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 395
	store {i64, i8*} %2766, {i64, i8*}* %2767
	%2768 = bitcast float (float, i32*)* @"lgammaf_r" to void ()*
	%2769 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 395
	store void ()* %2768, void ()** %2769
	%2770 = alloca {i64, i8*}
	%2771 = getelementptr [6 x i8], [6 x i8]* @"str.406", i64 0, i64 0
	%2772 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2771, 1
	store {i64, i8*} %2772, {i64, i8*}* %2770
	%2773 = load {i64, i8*}, {i64, i8*}* %2770
	%2774 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 396
	store {i64, i8*} %2773, {i64, i8*}* %2774
	%2775 = bitcast float (float)* @"rintf" to void ()*
	%2776 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 396
	store void ()* %2775, void ()** %2776
	%2777 = alloca {i64, i8*}
	%2778 = getelementptr [11 x i8], [11 x i8]* @"str.407", i64 0, i64 0
	%2779 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2778, 1
	store {i64, i8*} %2779, {i64, i8*}* %2777
	%2780 = load {i64, i8*}, {i64, i8*}* %2777
	%2781 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 397
	store {i64, i8*} %2780, {i64, i8*}* %2781
	%2782 = bitcast float (float, float)* @"nextafterf" to void ()*
	%2783 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 397
	store void ()* %2782, void ()** %2783
	%2784 = alloca {i64, i8*}
	%2785 = getelementptr [12 x i8], [12 x i8]* @"str.408", i64 0, i64 0
	%2786 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %2785, 1
	store {i64, i8*} %2786, {i64, i8*}* %2784
	%2787 = load {i64, i8*}, {i64, i8*}* %2784
	%2788 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 398
	store {i64, i8*} %2787, {i64, i8*}* %2788
	%2789 = bitcast float (float, x86_fp80)* @"nexttowardf" to void ()*
	%2790 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 398
	store void ()* %2789, void ()** %2790
	%2791 = alloca {i64, i8*}
	%2792 = getelementptr [11 x i8], [11 x i8]* @"str.409", i64 0, i64 0
	%2793 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2792, 1
	store {i64, i8*} %2793, {i64, i8*}* %2791
	%2794 = load {i64, i8*}, {i64, i8*}* %2791
	%2795 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 399
	store {i64, i8*} %2794, {i64, i8*}* %2795
	%2796 = bitcast float (float, float)* @"remainderf" to void ()*
	%2797 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 399
	store void ()* %2796, void ()** %2797
	%2798 = alloca {i64, i8*}
	%2799 = getelementptr [8 x i8], [8 x i8]* @"str.410", i64 0, i64 0
	%2800 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2799, 1
	store {i64, i8*} %2800, {i64, i8*}* %2798
	%2801 = load {i64, i8*}, {i64, i8*}* %2798
	%2802 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 400
	store {i64, i8*} %2801, {i64, i8*}* %2802
	%2803 = bitcast float (float, i32)* @"scalbnf" to void ()*
	%2804 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 400
	store void ()* %2803, void ()** %2804
	%2805 = alloca {i64, i8*}
	%2806 = getelementptr [7 x i8], [7 x i8]* @"str.411", i64 0, i64 0
	%2807 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2806, 1
	store {i64, i8*} %2807, {i64, i8*}* %2805
	%2808 = load {i64, i8*}, {i64, i8*}* %2805
	%2809 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 401
	store {i64, i8*} %2808, {i64, i8*}* %2809
	%2810 = bitcast i32 (float)* @"ilogbf" to void ()*
	%2811 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 401
	store void ()* %2810, void ()** %2811
	%2812 = alloca {i64, i8*}
	%2813 = getelementptr [9 x i8], [9 x i8]* @"str.412", i64 0, i64 0
	%2814 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2813, 1
	store {i64, i8*} %2814, {i64, i8*}* %2812
	%2815 = load {i64, i8*}, {i64, i8*}* %2812
	%2816 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 402
	store {i64, i8*} %2815, {i64, i8*}* %2816
	%2817 = bitcast float (float, i64)* @"scalblnf" to void ()*
	%2818 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 402
	store void ()* %2817, void ()** %2818
	%2819 = alloca {i64, i8*}
	%2820 = getelementptr [11 x i8], [11 x i8]* @"str.413", i64 0, i64 0
	%2821 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2820, 1
	store {i64, i8*} %2821, {i64, i8*}* %2819
	%2822 = load {i64, i8*}, {i64, i8*}* %2819
	%2823 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 403
	store {i64, i8*} %2822, {i64, i8*}* %2823
	%2824 = bitcast float (float)* @"nearbyintf" to void ()*
	%2825 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 403
	store void ()* %2824, void ()** %2825
	%2826 = alloca {i64, i8*}
	%2827 = getelementptr [7 x i8], [7 x i8]* @"str.414", i64 0, i64 0
	%2828 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2827, 1
	store {i64, i8*} %2828, {i64, i8*}* %2826
	%2829 = load {i64, i8*}, {i64, i8*}* %2826
	%2830 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 404
	store {i64, i8*} %2829, {i64, i8*}* %2830
	%2831 = bitcast float (float)* @"roundf" to void ()*
	%2832 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 404
	store void ()* %2831, void ()** %2832
	%2833 = alloca {i64, i8*}
	%2834 = getelementptr [7 x i8], [7 x i8]* @"str.415", i64 0, i64 0
	%2835 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2834, 1
	store {i64, i8*} %2835, {i64, i8*}* %2833
	%2836 = load {i64, i8*}, {i64, i8*}* %2833
	%2837 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 405
	store {i64, i8*} %2836, {i64, i8*}* %2837
	%2838 = bitcast float (float)* @"truncf" to void ()*
	%2839 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 405
	store void ()* %2838, void ()** %2839
	%2840 = alloca {i64, i8*}
	%2841 = getelementptr [8 x i8], [8 x i8]* @"str.416", i64 0, i64 0
	%2842 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2841, 1
	store {i64, i8*} %2842, {i64, i8*}* %2840
	%2843 = load {i64, i8*}, {i64, i8*}* %2840
	%2844 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 406
	store {i64, i8*} %2843, {i64, i8*}* %2844
	%2845 = bitcast float (float, float, i32*)* @"remquof" to void ()*
	%2846 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 406
	store void ()* %2845, void ()** %2846
	%2847 = alloca {i64, i8*}
	%2848 = getelementptr [7 x i8], [7 x i8]* @"str.417", i64 0, i64 0
	%2849 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2848, 1
	store {i64, i8*} %2849, {i64, i8*}* %2847
	%2850 = load {i64, i8*}, {i64, i8*}* %2847
	%2851 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 407
	store {i64, i8*} %2850, {i64, i8*}* %2851
	%2852 = bitcast i64 (float)* @"lrintf" to void ()*
	%2853 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 407
	store void ()* %2852, void ()** %2853
	%2854 = alloca {i64, i8*}
	%2855 = getelementptr [8 x i8], [8 x i8]* @"str.418", i64 0, i64 0
	%2856 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2855, 1
	store {i64, i8*} %2856, {i64, i8*}* %2854
	%2857 = load {i64, i8*}, {i64, i8*}* %2854
	%2858 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 408
	store {i64, i8*} %2857, {i64, i8*}* %2858
	%2859 = bitcast i64 (float)* @"llrintf" to void ()*
	%2860 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 408
	store void ()* %2859, void ()** %2860
	%2861 = alloca {i64, i8*}
	%2862 = getelementptr [8 x i8], [8 x i8]* @"str.419", i64 0, i64 0
	%2863 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %2862, 1
	store {i64, i8*} %2863, {i64, i8*}* %2861
	%2864 = load {i64, i8*}, {i64, i8*}* %2861
	%2865 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 409
	store {i64, i8*} %2864, {i64, i8*}* %2865
	%2866 = bitcast i64 (float)* @"lroundf" to void ()*
	%2867 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 409
	store void ()* %2866, void ()** %2867
	%2868 = alloca {i64, i8*}
	%2869 = getelementptr [9 x i8], [9 x i8]* @"str.420", i64 0, i64 0
	%2870 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2869, 1
	store {i64, i8*} %2870, {i64, i8*}* %2868
	%2871 = load {i64, i8*}, {i64, i8*}* %2868
	%2872 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 410
	store {i64, i8*} %2871, {i64, i8*}* %2872
	%2873 = bitcast i64 (float)* @"llroundf" to void ()*
	%2874 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 410
	store void ()* %2873, void ()** %2874
	%2875 = alloca {i64, i8*}
	%2876 = getelementptr [6 x i8], [6 x i8]* @"str.421", i64 0, i64 0
	%2877 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2876, 1
	store {i64, i8*} %2877, {i64, i8*}* %2875
	%2878 = load {i64, i8*}, {i64, i8*}* %2875
	%2879 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 411
	store {i64, i8*} %2878, {i64, i8*}* %2879
	%2880 = bitcast float (float, float)* @"fdimf" to void ()*
	%2881 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 411
	store void ()* %2880, void ()** %2881
	%2882 = alloca {i64, i8*}
	%2883 = getelementptr [6 x i8], [6 x i8]* @"str.422", i64 0, i64 0
	%2884 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2883, 1
	store {i64, i8*} %2884, {i64, i8*}* %2882
	%2885 = load {i64, i8*}, {i64, i8*}* %2882
	%2886 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 412
	store {i64, i8*} %2885, {i64, i8*}* %2886
	%2887 = bitcast float (float, float)* @"fmaxf" to void ()*
	%2888 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 412
	store void ()* %2887, void ()** %2888
	%2889 = alloca {i64, i8*}
	%2890 = getelementptr [6 x i8], [6 x i8]* @"str.423", i64 0, i64 0
	%2891 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2890, 1
	store {i64, i8*} %2891, {i64, i8*}* %2889
	%2892 = load {i64, i8*}, {i64, i8*}* %2889
	%2893 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 413
	store {i64, i8*} %2892, {i64, i8*}* %2893
	%2894 = bitcast float (float, float)* @"fminf" to void ()*
	%2895 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 413
	store void ()* %2894, void ()** %2895
	%2896 = alloca {i64, i8*}
	%2897 = getelementptr [5 x i8], [5 x i8]* @"str.424", i64 0, i64 0
	%2898 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2897, 1
	store {i64, i8*} %2898, {i64, i8*}* %2896
	%2899 = load {i64, i8*}, {i64, i8*}* %2896
	%2900 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 414
	store {i64, i8*} %2899, {i64, i8*}* %2900
	%2901 = bitcast float (float, float, float)* @"fmaf" to void ()*
	%2902 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 414
	store void ()* %2901, void ()** %2902
	%2903 = alloca {i64, i8*}
	%2904 = getelementptr [7 x i8], [7 x i8]* @"str.425", i64 0, i64 0
	%2905 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2904, 1
	store {i64, i8*} %2905, {i64, i8*}* %2903
	%2906 = load {i64, i8*}, {i64, i8*}* %2903
	%2907 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 415
	store {i64, i8*} %2906, {i64, i8*}* %2907
	%2908 = bitcast float (float, float)* @"scalbf" to void ()*
	%2909 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 415
	store void ()* %2908, void ()** %2909
	%2910 = alloca {i64, i8*}
	%2911 = getelementptr [14 x i8], [14 x i8]* @"str.426", i64 0, i64 0
	%2912 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %2911, 1
	store {i64, i8*} %2912, {i64, i8*}* %2910
	%2913 = load {i64, i8*}, {i64, i8*}* %2910
	%2914 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 416
	store {i64, i8*} %2913, {i64, i8*}* %2914
	%2915 = bitcast i32 (x86_fp80)* @"__fpclassifyl" to void ()*
	%2916 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 416
	store void ()* %2915, void ()** %2916
	%2917 = alloca {i64, i8*}
	%2918 = getelementptr [11 x i8], [11 x i8]* @"str.427", i64 0, i64 0
	%2919 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2918, 1
	store {i64, i8*} %2919, {i64, i8*}* %2917
	%2920 = load {i64, i8*}, {i64, i8*}* %2917
	%2921 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 417
	store {i64, i8*} %2920, {i64, i8*}* %2921
	%2922 = bitcast i32 (x86_fp80)* @"__signbitl" to void ()*
	%2923 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 417
	store void ()* %2922, void ()** %2923
	%2924 = alloca {i64, i8*}
	%2925 = getelementptr [9 x i8], [9 x i8]* @"str.428", i64 0, i64 0
	%2926 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2925, 1
	store {i64, i8*} %2926, {i64, i8*}* %2924
	%2927 = load {i64, i8*}, {i64, i8*}* %2924
	%2928 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 418
	store {i64, i8*} %2927, {i64, i8*}* %2928
	%2929 = bitcast i32 (x86_fp80)* @"__isinfl" to void ()*
	%2930 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 418
	store void ()* %2929, void ()** %2930
	%2931 = alloca {i64, i8*}
	%2932 = getelementptr [10 x i8], [10 x i8]* @"str.429", i64 0, i64 0
	%2933 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %2932, 1
	store {i64, i8*} %2933, {i64, i8*}* %2931
	%2934 = load {i64, i8*}, {i64, i8*}* %2931
	%2935 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 419
	store {i64, i8*} %2934, {i64, i8*}* %2935
	%2936 = bitcast i32 (x86_fp80)* @"__finitel" to void ()*
	%2937 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 419
	store void ()* %2936, void ()** %2937
	%2938 = alloca {i64, i8*}
	%2939 = getelementptr [9 x i8], [9 x i8]* @"str.430", i64 0, i64 0
	%2940 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %2939, 1
	store {i64, i8*} %2940, {i64, i8*}* %2938
	%2941 = load {i64, i8*}, {i64, i8*}* %2938
	%2942 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 420
	store {i64, i8*} %2941, {i64, i8*}* %2942
	%2943 = bitcast i32 (x86_fp80)* @"__isnanl" to void ()*
	%2944 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 420
	store void ()* %2943, void ()** %2944
	%2945 = alloca {i64, i8*}
	%2946 = getelementptr [11 x i8], [11 x i8]* @"str.431", i64 0, i64 0
	%2947 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %2946, 1
	store {i64, i8*} %2947, {i64, i8*}* %2945
	%2948 = load {i64, i8*}, {i64, i8*}* %2945
	%2949 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 421
	store {i64, i8*} %2948, {i64, i8*}* %2949
	%2950 = bitcast i32 (x86_fp80, x86_fp80)* @"__iseqsigl" to void ()*
	%2951 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 421
	store void ()* %2950, void ()** %2951
	%2952 = alloca {i64, i8*}
	%2953 = getelementptr [15 x i8], [15 x i8]* @"str.432", i64 0, i64 0
	%2954 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %2953, 1
	store {i64, i8*} %2954, {i64, i8*}* %2952
	%2955 = load {i64, i8*}, {i64, i8*}* %2952
	%2956 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 422
	store {i64, i8*} %2955, {i64, i8*}* %2956
	%2957 = bitcast i32 (x86_fp80)* @"__issignalingl" to void ()*
	%2958 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 422
	store void ()* %2957, void ()** %2958
	%2959 = alloca {i64, i8*}
	%2960 = getelementptr [6 x i8], [6 x i8]* @"str.433", i64 0, i64 0
	%2961 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2960, 1
	store {i64, i8*} %2961, {i64, i8*}* %2959
	%2962 = load {i64, i8*}, {i64, i8*}* %2959
	%2963 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 423
	store {i64, i8*} %2962, {i64, i8*}* %2963
	%2964 = bitcast x86_fp80 (x86_fp80)* @"acosl" to void ()*
	%2965 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 423
	store void ()* %2964, void ()** %2965
	%2966 = alloca {i64, i8*}
	%2967 = getelementptr [6 x i8], [6 x i8]* @"str.434", i64 0, i64 0
	%2968 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2967, 1
	store {i64, i8*} %2968, {i64, i8*}* %2966
	%2969 = load {i64, i8*}, {i64, i8*}* %2966
	%2970 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 424
	store {i64, i8*} %2969, {i64, i8*}* %2970
	%2971 = bitcast x86_fp80 (x86_fp80)* @"asinl" to void ()*
	%2972 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 424
	store void ()* %2971, void ()** %2972
	%2973 = alloca {i64, i8*}
	%2974 = getelementptr [6 x i8], [6 x i8]* @"str.435", i64 0, i64 0
	%2975 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %2974, 1
	store {i64, i8*} %2975, {i64, i8*}* %2973
	%2976 = load {i64, i8*}, {i64, i8*}* %2973
	%2977 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 425
	store {i64, i8*} %2976, {i64, i8*}* %2977
	%2978 = bitcast x86_fp80 (x86_fp80)* @"atanl" to void ()*
	%2979 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 425
	store void ()* %2978, void ()** %2979
	%2980 = alloca {i64, i8*}
	%2981 = getelementptr [7 x i8], [7 x i8]* @"str.436", i64 0, i64 0
	%2982 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %2981, 1
	store {i64, i8*} %2982, {i64, i8*}* %2980
	%2983 = load {i64, i8*}, {i64, i8*}* %2980
	%2984 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 426
	store {i64, i8*} %2983, {i64, i8*}* %2984
	%2985 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"atan2l" to void ()*
	%2986 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 426
	store void ()* %2985, void ()** %2986
	%2987 = alloca {i64, i8*}
	%2988 = getelementptr [5 x i8], [5 x i8]* @"str.437", i64 0, i64 0
	%2989 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2988, 1
	store {i64, i8*} %2989, {i64, i8*}* %2987
	%2990 = load {i64, i8*}, {i64, i8*}* %2987
	%2991 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 427
	store {i64, i8*} %2990, {i64, i8*}* %2991
	%2992 = bitcast x86_fp80 (x86_fp80)* @"cosl" to void ()*
	%2993 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 427
	store void ()* %2992, void ()** %2993
	%2994 = alloca {i64, i8*}
	%2995 = getelementptr [5 x i8], [5 x i8]* @"str.438", i64 0, i64 0
	%2996 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %2995, 1
	store {i64, i8*} %2996, {i64, i8*}* %2994
	%2997 = load {i64, i8*}, {i64, i8*}* %2994
	%2998 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 428
	store {i64, i8*} %2997, {i64, i8*}* %2998
	%2999 = bitcast x86_fp80 (x86_fp80)* @"sinl" to void ()*
	%3000 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 428
	store void ()* %2999, void ()** %3000
	%3001 = alloca {i64, i8*}
	%3002 = getelementptr [5 x i8], [5 x i8]* @"str.439", i64 0, i64 0
	%3003 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3002, 1
	store {i64, i8*} %3003, {i64, i8*}* %3001
	%3004 = load {i64, i8*}, {i64, i8*}* %3001
	%3005 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 429
	store {i64, i8*} %3004, {i64, i8*}* %3005
	%3006 = bitcast x86_fp80 (x86_fp80)* @"tanl" to void ()*
	%3007 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 429
	store void ()* %3006, void ()** %3007
	%3008 = alloca {i64, i8*}
	%3009 = getelementptr [6 x i8], [6 x i8]* @"str.440", i64 0, i64 0
	%3010 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3009, 1
	store {i64, i8*} %3010, {i64, i8*}* %3008
	%3011 = load {i64, i8*}, {i64, i8*}* %3008
	%3012 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 430
	store {i64, i8*} %3011, {i64, i8*}* %3012
	%3013 = bitcast x86_fp80 (x86_fp80)* @"coshl" to void ()*
	%3014 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 430
	store void ()* %3013, void ()** %3014
	%3015 = alloca {i64, i8*}
	%3016 = getelementptr [6 x i8], [6 x i8]* @"str.441", i64 0, i64 0
	%3017 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3016, 1
	store {i64, i8*} %3017, {i64, i8*}* %3015
	%3018 = load {i64, i8*}, {i64, i8*}* %3015
	%3019 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 431
	store {i64, i8*} %3018, {i64, i8*}* %3019
	%3020 = bitcast x86_fp80 (x86_fp80)* @"sinhl" to void ()*
	%3021 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 431
	store void ()* %3020, void ()** %3021
	%3022 = alloca {i64, i8*}
	%3023 = getelementptr [6 x i8], [6 x i8]* @"str.442", i64 0, i64 0
	%3024 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3023, 1
	store {i64, i8*} %3024, {i64, i8*}* %3022
	%3025 = load {i64, i8*}, {i64, i8*}* %3022
	%3026 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 432
	store {i64, i8*} %3025, {i64, i8*}* %3026
	%3027 = bitcast x86_fp80 (x86_fp80)* @"tanhl" to void ()*
	%3028 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 432
	store void ()* %3027, void ()** %3028
	%3029 = alloca {i64, i8*}
	%3030 = getelementptr [7 x i8], [7 x i8]* @"str.443", i64 0, i64 0
	%3031 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3030, 1
	store {i64, i8*} %3031, {i64, i8*}* %3029
	%3032 = load {i64, i8*}, {i64, i8*}* %3029
	%3033 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 433
	store {i64, i8*} %3032, {i64, i8*}* %3033
	%3034 = bitcast x86_fp80 (x86_fp80)* @"acoshl" to void ()*
	%3035 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 433
	store void ()* %3034, void ()** %3035
	%3036 = alloca {i64, i8*}
	%3037 = getelementptr [7 x i8], [7 x i8]* @"str.444", i64 0, i64 0
	%3038 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3037, 1
	store {i64, i8*} %3038, {i64, i8*}* %3036
	%3039 = load {i64, i8*}, {i64, i8*}* %3036
	%3040 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 434
	store {i64, i8*} %3039, {i64, i8*}* %3040
	%3041 = bitcast x86_fp80 (x86_fp80)* @"asinhl" to void ()*
	%3042 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 434
	store void ()* %3041, void ()** %3042
	%3043 = alloca {i64, i8*}
	%3044 = getelementptr [7 x i8], [7 x i8]* @"str.445", i64 0, i64 0
	%3045 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3044, 1
	store {i64, i8*} %3045, {i64, i8*}* %3043
	%3046 = load {i64, i8*}, {i64, i8*}* %3043
	%3047 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 435
	store {i64, i8*} %3046, {i64, i8*}* %3047
	%3048 = bitcast x86_fp80 (x86_fp80)* @"atanhl" to void ()*
	%3049 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 435
	store void ()* %3048, void ()** %3049
	%3050 = alloca {i64, i8*}
	%3051 = getelementptr [5 x i8], [5 x i8]* @"str.446", i64 0, i64 0
	%3052 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3051, 1
	store {i64, i8*} %3052, {i64, i8*}* %3050
	%3053 = load {i64, i8*}, {i64, i8*}* %3050
	%3054 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 436
	store {i64, i8*} %3053, {i64, i8*}* %3054
	%3055 = bitcast x86_fp80 (x86_fp80)* @"expl" to void ()*
	%3056 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 436
	store void ()* %3055, void ()** %3056
	%3057 = alloca {i64, i8*}
	%3058 = getelementptr [7 x i8], [7 x i8]* @"str.447", i64 0, i64 0
	%3059 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3058, 1
	store {i64, i8*} %3059, {i64, i8*}* %3057
	%3060 = load {i64, i8*}, {i64, i8*}* %3057
	%3061 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 437
	store {i64, i8*} %3060, {i64, i8*}* %3061
	%3062 = bitcast x86_fp80 (x86_fp80, i32*)* @"frexpl" to void ()*
	%3063 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 437
	store void ()* %3062, void ()** %3063
	%3064 = alloca {i64, i8*}
	%3065 = getelementptr [7 x i8], [7 x i8]* @"str.448", i64 0, i64 0
	%3066 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3065, 1
	store {i64, i8*} %3066, {i64, i8*}* %3064
	%3067 = load {i64, i8*}, {i64, i8*}* %3064
	%3068 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 438
	store {i64, i8*} %3067, {i64, i8*}* %3068
	%3069 = bitcast x86_fp80 (x86_fp80, i32)* @"ldexpl" to void ()*
	%3070 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 438
	store void ()* %3069, void ()** %3070
	%3071 = alloca {i64, i8*}
	%3072 = getelementptr [5 x i8], [5 x i8]* @"str.449", i64 0, i64 0
	%3073 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3072, 1
	store {i64, i8*} %3073, {i64, i8*}* %3071
	%3074 = load {i64, i8*}, {i64, i8*}* %3071
	%3075 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 439
	store {i64, i8*} %3074, {i64, i8*}* %3075
	%3076 = bitcast x86_fp80 (x86_fp80)* @"logl" to void ()*
	%3077 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 439
	store void ()* %3076, void ()** %3077
	%3078 = alloca {i64, i8*}
	%3079 = getelementptr [7 x i8], [7 x i8]* @"str.450", i64 0, i64 0
	%3080 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3079, 1
	store {i64, i8*} %3080, {i64, i8*}* %3078
	%3081 = load {i64, i8*}, {i64, i8*}* %3078
	%3082 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 440
	store {i64, i8*} %3081, {i64, i8*}* %3082
	%3083 = bitcast x86_fp80 (x86_fp80)* @"log10l" to void ()*
	%3084 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 440
	store void ()* %3083, void ()** %3084
	%3085 = alloca {i64, i8*}
	%3086 = getelementptr [6 x i8], [6 x i8]* @"str.451", i64 0, i64 0
	%3087 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3086, 1
	store {i64, i8*} %3087, {i64, i8*}* %3085
	%3088 = load {i64, i8*}, {i64, i8*}* %3085
	%3089 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 441
	store {i64, i8*} %3088, {i64, i8*}* %3089
	%3090 = bitcast x86_fp80 (x86_fp80, x86_fp80*)* @"modfl" to void ()*
	%3091 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 441
	store void ()* %3090, void ()** %3091
	%3092 = alloca {i64, i8*}
	%3093 = getelementptr [7 x i8], [7 x i8]* @"str.452", i64 0, i64 0
	%3094 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3093, 1
	store {i64, i8*} %3094, {i64, i8*}* %3092
	%3095 = load {i64, i8*}, {i64, i8*}* %3092
	%3096 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 442
	store {i64, i8*} %3095, {i64, i8*}* %3096
	%3097 = bitcast x86_fp80 (x86_fp80)* @"expm1l" to void ()*
	%3098 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 442
	store void ()* %3097, void ()** %3098
	%3099 = alloca {i64, i8*}
	%3100 = getelementptr [7 x i8], [7 x i8]* @"str.453", i64 0, i64 0
	%3101 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3100, 1
	store {i64, i8*} %3101, {i64, i8*}* %3099
	%3102 = load {i64, i8*}, {i64, i8*}* %3099
	%3103 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 443
	store {i64, i8*} %3102, {i64, i8*}* %3103
	%3104 = bitcast x86_fp80 (x86_fp80)* @"log1pl" to void ()*
	%3105 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 443
	store void ()* %3104, void ()** %3105
	%3106 = alloca {i64, i8*}
	%3107 = getelementptr [6 x i8], [6 x i8]* @"str.454", i64 0, i64 0
	%3108 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3107, 1
	store {i64, i8*} %3108, {i64, i8*}* %3106
	%3109 = load {i64, i8*}, {i64, i8*}* %3106
	%3110 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 444
	store {i64, i8*} %3109, {i64, i8*}* %3110
	%3111 = bitcast x86_fp80 (x86_fp80)* @"logbl" to void ()*
	%3112 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 444
	store void ()* %3111, void ()** %3112
	%3113 = alloca {i64, i8*}
	%3114 = getelementptr [6 x i8], [6 x i8]* @"str.455", i64 0, i64 0
	%3115 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3114, 1
	store {i64, i8*} %3115, {i64, i8*}* %3113
	%3116 = load {i64, i8*}, {i64, i8*}* %3113
	%3117 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 445
	store {i64, i8*} %3116, {i64, i8*}* %3117
	%3118 = bitcast x86_fp80 (x86_fp80)* @"exp2l" to void ()*
	%3119 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 445
	store void ()* %3118, void ()** %3119
	%3120 = alloca {i64, i8*}
	%3121 = getelementptr [6 x i8], [6 x i8]* @"str.456", i64 0, i64 0
	%3122 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3121, 1
	store {i64, i8*} %3122, {i64, i8*}* %3120
	%3123 = load {i64, i8*}, {i64, i8*}* %3120
	%3124 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 446
	store {i64, i8*} %3123, {i64, i8*}* %3124
	%3125 = bitcast x86_fp80 (x86_fp80)* @"log2l" to void ()*
	%3126 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 446
	store void ()* %3125, void ()** %3126
	%3127 = alloca {i64, i8*}
	%3128 = getelementptr [5 x i8], [5 x i8]* @"str.457", i64 0, i64 0
	%3129 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3128, 1
	store {i64, i8*} %3129, {i64, i8*}* %3127
	%3130 = load {i64, i8*}, {i64, i8*}* %3127
	%3131 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 447
	store {i64, i8*} %3130, {i64, i8*}* %3131
	%3132 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"powl" to void ()*
	%3133 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 447
	store void ()* %3132, void ()** %3133
	%3134 = alloca {i64, i8*}
	%3135 = getelementptr [6 x i8], [6 x i8]* @"str.458", i64 0, i64 0
	%3136 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3135, 1
	store {i64, i8*} %3136, {i64, i8*}* %3134
	%3137 = load {i64, i8*}, {i64, i8*}* %3134
	%3138 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 448
	store {i64, i8*} %3137, {i64, i8*}* %3138
	%3139 = bitcast x86_fp80 (x86_fp80)* @"sqrtl" to void ()*
	%3140 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 448
	store void ()* %3139, void ()** %3140
	%3141 = alloca {i64, i8*}
	%3142 = getelementptr [7 x i8], [7 x i8]* @"str.459", i64 0, i64 0
	%3143 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3142, 1
	store {i64, i8*} %3143, {i64, i8*}* %3141
	%3144 = load {i64, i8*}, {i64, i8*}* %3141
	%3145 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 449
	store {i64, i8*} %3144, {i64, i8*}* %3145
	%3146 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"hypotl" to void ()*
	%3147 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 449
	store void ()* %3146, void ()** %3147
	%3148 = alloca {i64, i8*}
	%3149 = getelementptr [6 x i8], [6 x i8]* @"str.460", i64 0, i64 0
	%3150 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3149, 1
	store {i64, i8*} %3150, {i64, i8*}* %3148
	%3151 = load {i64, i8*}, {i64, i8*}* %3148
	%3152 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 450
	store {i64, i8*} %3151, {i64, i8*}* %3152
	%3153 = bitcast x86_fp80 (x86_fp80)* @"cbrtl" to void ()*
	%3154 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 450
	store void ()* %3153, void ()** %3154
	%3155 = alloca {i64, i8*}
	%3156 = getelementptr [6 x i8], [6 x i8]* @"str.461", i64 0, i64 0
	%3157 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3156, 1
	store {i64, i8*} %3157, {i64, i8*}* %3155
	%3158 = load {i64, i8*}, {i64, i8*}* %3155
	%3159 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 451
	store {i64, i8*} %3158, {i64, i8*}* %3159
	%3160 = bitcast x86_fp80 (x86_fp80)* @"ceill" to void ()*
	%3161 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 451
	store void ()* %3160, void ()** %3161
	%3162 = alloca {i64, i8*}
	%3163 = getelementptr [6 x i8], [6 x i8]* @"str.462", i64 0, i64 0
	%3164 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3163, 1
	store {i64, i8*} %3164, {i64, i8*}* %3162
	%3165 = load {i64, i8*}, {i64, i8*}* %3162
	%3166 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 452
	store {i64, i8*} %3165, {i64, i8*}* %3166
	%3167 = bitcast x86_fp80 (x86_fp80)* @"fabsl" to void ()*
	%3168 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 452
	store void ()* %3167, void ()** %3168
	%3169 = alloca {i64, i8*}
	%3170 = getelementptr [7 x i8], [7 x i8]* @"str.463", i64 0, i64 0
	%3171 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3170, 1
	store {i64, i8*} %3171, {i64, i8*}* %3169
	%3172 = load {i64, i8*}, {i64, i8*}* %3169
	%3173 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 453
	store {i64, i8*} %3172, {i64, i8*}* %3173
	%3174 = bitcast x86_fp80 (x86_fp80)* @"floorl" to void ()*
	%3175 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 453
	store void ()* %3174, void ()** %3175
	%3176 = alloca {i64, i8*}
	%3177 = getelementptr [6 x i8], [6 x i8]* @"str.464", i64 0, i64 0
	%3178 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3177, 1
	store {i64, i8*} %3178, {i64, i8*}* %3176
	%3179 = load {i64, i8*}, {i64, i8*}* %3176
	%3180 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 454
	store {i64, i8*} %3179, {i64, i8*}* %3180
	%3181 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fmodl" to void ()*
	%3182 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 454
	store void ()* %3181, void ()** %3182
	%3183 = alloca {i64, i8*}
	%3184 = getelementptr [7 x i8], [7 x i8]* @"str.465", i64 0, i64 0
	%3185 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3184, 1
	store {i64, i8*} %3185, {i64, i8*}* %3183
	%3186 = load {i64, i8*}, {i64, i8*}* %3183
	%3187 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 455
	store {i64, i8*} %3186, {i64, i8*}* %3187
	%3188 = bitcast i32 (x86_fp80)* @"isinfl" to void ()*
	%3189 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 455
	store void ()* %3188, void ()** %3189
	%3190 = alloca {i64, i8*}
	%3191 = getelementptr [8 x i8], [8 x i8]* @"str.466", i64 0, i64 0
	%3192 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3191, 1
	store {i64, i8*} %3192, {i64, i8*}* %3190
	%3193 = load {i64, i8*}, {i64, i8*}* %3190
	%3194 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 456
	store {i64, i8*} %3193, {i64, i8*}* %3194
	%3195 = bitcast i32 (x86_fp80)* @"finitel" to void ()*
	%3196 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 456
	store void ()* %3195, void ()** %3196
	%3197 = alloca {i64, i8*}
	%3198 = getelementptr [6 x i8], [6 x i8]* @"str.467", i64 0, i64 0
	%3199 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3198, 1
	store {i64, i8*} %3199, {i64, i8*}* %3197
	%3200 = load {i64, i8*}, {i64, i8*}* %3197
	%3201 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 457
	store {i64, i8*} %3200, {i64, i8*}* %3201
	%3202 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"dreml" to void ()*
	%3203 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 457
	store void ()* %3202, void ()** %3203
	%3204 = alloca {i64, i8*}
	%3205 = getelementptr [13 x i8], [13 x i8]* @"str.468", i64 0, i64 0
	%3206 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %3205, 1
	store {i64, i8*} %3206, {i64, i8*}* %3204
	%3207 = load {i64, i8*}, {i64, i8*}* %3204
	%3208 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 458
	store {i64, i8*} %3207, {i64, i8*}* %3208
	%3209 = bitcast x86_fp80 (x86_fp80)* @"significandl" to void ()*
	%3210 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 458
	store void ()* %3209, void ()** %3210
	%3211 = alloca {i64, i8*}
	%3212 = getelementptr [10 x i8], [10 x i8]* @"str.469", i64 0, i64 0
	%3213 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3212, 1
	store {i64, i8*} %3213, {i64, i8*}* %3211
	%3214 = load {i64, i8*}, {i64, i8*}* %3211
	%3215 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 459
	store {i64, i8*} %3214, {i64, i8*}* %3215
	%3216 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"copysignl" to void ()*
	%3217 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 459
	store void ()* %3216, void ()** %3217
	%3218 = alloca {i64, i8*}
	%3219 = getelementptr [5 x i8], [5 x i8]* @"str.470", i64 0, i64 0
	%3220 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3219, 1
	store {i64, i8*} %3220, {i64, i8*}* %3218
	%3221 = load {i64, i8*}, {i64, i8*}* %3218
	%3222 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 460
	store {i64, i8*} %3221, {i64, i8*}* %3222
	%3223 = bitcast x86_fp80 (i8*)* @"nanl" to void ()*
	%3224 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 460
	store void ()* %3223, void ()** %3224
	%3225 = alloca {i64, i8*}
	%3226 = getelementptr [7 x i8], [7 x i8]* @"str.471", i64 0, i64 0
	%3227 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3226, 1
	store {i64, i8*} %3227, {i64, i8*}* %3225
	%3228 = load {i64, i8*}, {i64, i8*}* %3225
	%3229 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 461
	store {i64, i8*} %3228, {i64, i8*}* %3229
	%3230 = bitcast i32 (x86_fp80)* @"isnanl" to void ()*
	%3231 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 461
	store void ()* %3230, void ()** %3231
	%3232 = alloca {i64, i8*}
	%3233 = getelementptr [4 x i8], [4 x i8]* @"str.472", i64 0, i64 0
	%3234 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3233, 1
	store {i64, i8*} %3234, {i64, i8*}* %3232
	%3235 = load {i64, i8*}, {i64, i8*}* %3232
	%3236 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 462
	store {i64, i8*} %3235, {i64, i8*}* %3236
	%3237 = bitcast x86_fp80 (x86_fp80)* @"j0l" to void ()*
	%3238 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 462
	store void ()* %3237, void ()** %3238
	%3239 = alloca {i64, i8*}
	%3240 = getelementptr [4 x i8], [4 x i8]* @"str.473", i64 0, i64 0
	%3241 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3240, 1
	store {i64, i8*} %3241, {i64, i8*}* %3239
	%3242 = load {i64, i8*}, {i64, i8*}* %3239
	%3243 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 463
	store {i64, i8*} %3242, {i64, i8*}* %3243
	%3244 = bitcast x86_fp80 (x86_fp80)* @"j1l" to void ()*
	%3245 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 463
	store void ()* %3244, void ()** %3245
	%3246 = alloca {i64, i8*}
	%3247 = getelementptr [4 x i8], [4 x i8]* @"str.474", i64 0, i64 0
	%3248 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3247, 1
	store {i64, i8*} %3248, {i64, i8*}* %3246
	%3249 = load {i64, i8*}, {i64, i8*}* %3246
	%3250 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 464
	store {i64, i8*} %3249, {i64, i8*}* %3250
	%3251 = bitcast x86_fp80 (i32, x86_fp80)* @"jnl" to void ()*
	%3252 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 464
	store void ()* %3251, void ()** %3252
	%3253 = alloca {i64, i8*}
	%3254 = getelementptr [4 x i8], [4 x i8]* @"str.475", i64 0, i64 0
	%3255 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3254, 1
	store {i64, i8*} %3255, {i64, i8*}* %3253
	%3256 = load {i64, i8*}, {i64, i8*}* %3253
	%3257 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 465
	store {i64, i8*} %3256, {i64, i8*}* %3257
	%3258 = bitcast x86_fp80 (x86_fp80)* @"y0l" to void ()*
	%3259 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 465
	store void ()* %3258, void ()** %3259
	%3260 = alloca {i64, i8*}
	%3261 = getelementptr [4 x i8], [4 x i8]* @"str.476", i64 0, i64 0
	%3262 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3261, 1
	store {i64, i8*} %3262, {i64, i8*}* %3260
	%3263 = load {i64, i8*}, {i64, i8*}* %3260
	%3264 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 466
	store {i64, i8*} %3263, {i64, i8*}* %3264
	%3265 = bitcast x86_fp80 (x86_fp80)* @"y1l" to void ()*
	%3266 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 466
	store void ()* %3265, void ()** %3266
	%3267 = alloca {i64, i8*}
	%3268 = getelementptr [4 x i8], [4 x i8]* @"str.477", i64 0, i64 0
	%3269 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %3268, 1
	store {i64, i8*} %3269, {i64, i8*}* %3267
	%3270 = load {i64, i8*}, {i64, i8*}* %3267
	%3271 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 467
	store {i64, i8*} %3270, {i64, i8*}* %3271
	%3272 = bitcast x86_fp80 (i32, x86_fp80)* @"ynl" to void ()*
	%3273 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 467
	store void ()* %3272, void ()** %3273
	%3274 = alloca {i64, i8*}
	%3275 = getelementptr [5 x i8], [5 x i8]* @"str.478", i64 0, i64 0
	%3276 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3275, 1
	store {i64, i8*} %3276, {i64, i8*}* %3274
	%3277 = load {i64, i8*}, {i64, i8*}* %3274
	%3278 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 468
	store {i64, i8*} %3277, {i64, i8*}* %3278
	%3279 = bitcast x86_fp80 (x86_fp80)* @"erfl" to void ()*
	%3280 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 468
	store void ()* %3279, void ()** %3280
	%3281 = alloca {i64, i8*}
	%3282 = getelementptr [6 x i8], [6 x i8]* @"str.479", i64 0, i64 0
	%3283 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3282, 1
	store {i64, i8*} %3283, {i64, i8*}* %3281
	%3284 = load {i64, i8*}, {i64, i8*}* %3281
	%3285 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 469
	store {i64, i8*} %3284, {i64, i8*}* %3285
	%3286 = bitcast x86_fp80 (x86_fp80)* @"erfcl" to void ()*
	%3287 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 469
	store void ()* %3286, void ()** %3287
	%3288 = alloca {i64, i8*}
	%3289 = getelementptr [8 x i8], [8 x i8]* @"str.480", i64 0, i64 0
	%3290 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3289, 1
	store {i64, i8*} %3290, {i64, i8*}* %3288
	%3291 = load {i64, i8*}, {i64, i8*}* %3288
	%3292 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 470
	store {i64, i8*} %3291, {i64, i8*}* %3292
	%3293 = bitcast x86_fp80 (x86_fp80)* @"lgammal" to void ()*
	%3294 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 470
	store void ()* %3293, void ()** %3294
	%3295 = alloca {i64, i8*}
	%3296 = getelementptr [8 x i8], [8 x i8]* @"str.481", i64 0, i64 0
	%3297 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3296, 1
	store {i64, i8*} %3297, {i64, i8*}* %3295
	%3298 = load {i64, i8*}, {i64, i8*}* %3295
	%3299 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 471
	store {i64, i8*} %3298, {i64, i8*}* %3299
	%3300 = bitcast x86_fp80 (x86_fp80)* @"tgammal" to void ()*
	%3301 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 471
	store void ()* %3300, void ()** %3301
	%3302 = alloca {i64, i8*}
	%3303 = getelementptr [7 x i8], [7 x i8]* @"str.482", i64 0, i64 0
	%3304 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3303, 1
	store {i64, i8*} %3304, {i64, i8*}* %3302
	%3305 = load {i64, i8*}, {i64, i8*}* %3302
	%3306 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 472
	store {i64, i8*} %3305, {i64, i8*}* %3306
	%3307 = bitcast x86_fp80 (x86_fp80)* @"gammal" to void ()*
	%3308 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 472
	store void ()* %3307, void ()** %3308
	%3309 = alloca {i64, i8*}
	%3310 = getelementptr [10 x i8], [10 x i8]* @"str.483", i64 0, i64 0
	%3311 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3310, 1
	store {i64, i8*} %3311, {i64, i8*}* %3309
	%3312 = load {i64, i8*}, {i64, i8*}* %3309
	%3313 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 473
	store {i64, i8*} %3312, {i64, i8*}* %3313
	%3314 = bitcast x86_fp80 (x86_fp80, i32*)* @"lgammal_r" to void ()*
	%3315 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 473
	store void ()* %3314, void ()** %3315
	%3316 = alloca {i64, i8*}
	%3317 = getelementptr [6 x i8], [6 x i8]* @"str.484", i64 0, i64 0
	%3318 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3317, 1
	store {i64, i8*} %3318, {i64, i8*}* %3316
	%3319 = load {i64, i8*}, {i64, i8*}* %3316
	%3320 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 474
	store {i64, i8*} %3319, {i64, i8*}* %3320
	%3321 = bitcast x86_fp80 (x86_fp80)* @"rintl" to void ()*
	%3322 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 474
	store void ()* %3321, void ()** %3322
	%3323 = alloca {i64, i8*}
	%3324 = getelementptr [11 x i8], [11 x i8]* @"str.485", i64 0, i64 0
	%3325 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3324, 1
	store {i64, i8*} %3325, {i64, i8*}* %3323
	%3326 = load {i64, i8*}, {i64, i8*}* %3323
	%3327 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 475
	store {i64, i8*} %3326, {i64, i8*}* %3327
	%3328 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"nextafterl" to void ()*
	%3329 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 475
	store void ()* %3328, void ()** %3329
	%3330 = alloca {i64, i8*}
	%3331 = getelementptr [12 x i8], [12 x i8]* @"str.486", i64 0, i64 0
	%3332 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3331, 1
	store {i64, i8*} %3332, {i64, i8*}* %3330
	%3333 = load {i64, i8*}, {i64, i8*}* %3330
	%3334 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 476
	store {i64, i8*} %3333, {i64, i8*}* %3334
	%3335 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"nexttowardl" to void ()*
	%3336 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 476
	store void ()* %3335, void ()** %3336
	%3337 = alloca {i64, i8*}
	%3338 = getelementptr [11 x i8], [11 x i8]* @"str.487", i64 0, i64 0
	%3339 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3338, 1
	store {i64, i8*} %3339, {i64, i8*}* %3337
	%3340 = load {i64, i8*}, {i64, i8*}* %3337
	%3341 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 477
	store {i64, i8*} %3340, {i64, i8*}* %3341
	%3342 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"remainderl" to void ()*
	%3343 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 477
	store void ()* %3342, void ()** %3343
	%3344 = alloca {i64, i8*}
	%3345 = getelementptr [8 x i8], [8 x i8]* @"str.488", i64 0, i64 0
	%3346 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3345, 1
	store {i64, i8*} %3346, {i64, i8*}* %3344
	%3347 = load {i64, i8*}, {i64, i8*}* %3344
	%3348 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 478
	store {i64, i8*} %3347, {i64, i8*}* %3348
	%3349 = bitcast x86_fp80 (x86_fp80, i32)* @"scalbnl" to void ()*
	%3350 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 478
	store void ()* %3349, void ()** %3350
	%3351 = alloca {i64, i8*}
	%3352 = getelementptr [7 x i8], [7 x i8]* @"str.489", i64 0, i64 0
	%3353 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3352, 1
	store {i64, i8*} %3353, {i64, i8*}* %3351
	%3354 = load {i64, i8*}, {i64, i8*}* %3351
	%3355 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 479
	store {i64, i8*} %3354, {i64, i8*}* %3355
	%3356 = bitcast i32 (x86_fp80)* @"ilogbl" to void ()*
	%3357 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 479
	store void ()* %3356, void ()** %3357
	%3358 = alloca {i64, i8*}
	%3359 = getelementptr [9 x i8], [9 x i8]* @"str.490", i64 0, i64 0
	%3360 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3359, 1
	store {i64, i8*} %3360, {i64, i8*}* %3358
	%3361 = load {i64, i8*}, {i64, i8*}* %3358
	%3362 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 480
	store {i64, i8*} %3361, {i64, i8*}* %3362
	%3363 = bitcast x86_fp80 (x86_fp80, i64)* @"scalblnl" to void ()*
	%3364 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 480
	store void ()* %3363, void ()** %3364
	%3365 = alloca {i64, i8*}
	%3366 = getelementptr [11 x i8], [11 x i8]* @"str.491", i64 0, i64 0
	%3367 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3366, 1
	store {i64, i8*} %3367, {i64, i8*}* %3365
	%3368 = load {i64, i8*}, {i64, i8*}* %3365
	%3369 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 481
	store {i64, i8*} %3368, {i64, i8*}* %3369
	%3370 = bitcast x86_fp80 (x86_fp80)* @"nearbyintl" to void ()*
	%3371 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 481
	store void ()* %3370, void ()** %3371
	%3372 = alloca {i64, i8*}
	%3373 = getelementptr [7 x i8], [7 x i8]* @"str.492", i64 0, i64 0
	%3374 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3373, 1
	store {i64, i8*} %3374, {i64, i8*}* %3372
	%3375 = load {i64, i8*}, {i64, i8*}* %3372
	%3376 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 482
	store {i64, i8*} %3375, {i64, i8*}* %3376
	%3377 = bitcast x86_fp80 (x86_fp80)* @"roundl" to void ()*
	%3378 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 482
	store void ()* %3377, void ()** %3378
	%3379 = alloca {i64, i8*}
	%3380 = getelementptr [7 x i8], [7 x i8]* @"str.493", i64 0, i64 0
	%3381 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3380, 1
	store {i64, i8*} %3381, {i64, i8*}* %3379
	%3382 = load {i64, i8*}, {i64, i8*}* %3379
	%3383 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 483
	store {i64, i8*} %3382, {i64, i8*}* %3383
	%3384 = bitcast x86_fp80 (x86_fp80)* @"truncl" to void ()*
	%3385 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 483
	store void ()* %3384, void ()** %3385
	%3386 = alloca {i64, i8*}
	%3387 = getelementptr [8 x i8], [8 x i8]* @"str.494", i64 0, i64 0
	%3388 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3387, 1
	store {i64, i8*} %3388, {i64, i8*}* %3386
	%3389 = load {i64, i8*}, {i64, i8*}* %3386
	%3390 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 484
	store {i64, i8*} %3389, {i64, i8*}* %3390
	%3391 = bitcast x86_fp80 (x86_fp80, x86_fp80, i32*)* @"remquol" to void ()*
	%3392 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 484
	store void ()* %3391, void ()** %3392
	%3393 = alloca {i64, i8*}
	%3394 = getelementptr [7 x i8], [7 x i8]* @"str.495", i64 0, i64 0
	%3395 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3394, 1
	store {i64, i8*} %3395, {i64, i8*}* %3393
	%3396 = load {i64, i8*}, {i64, i8*}* %3393
	%3397 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 485
	store {i64, i8*} %3396, {i64, i8*}* %3397
	%3398 = bitcast i64 (x86_fp80)* @"lrintl" to void ()*
	%3399 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 485
	store void ()* %3398, void ()** %3399
	%3400 = alloca {i64, i8*}
	%3401 = getelementptr [8 x i8], [8 x i8]* @"str.496", i64 0, i64 0
	%3402 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3401, 1
	store {i64, i8*} %3402, {i64, i8*}* %3400
	%3403 = load {i64, i8*}, {i64, i8*}* %3400
	%3404 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 486
	store {i64, i8*} %3403, {i64, i8*}* %3404
	%3405 = bitcast i64 (x86_fp80)* @"llrintl" to void ()*
	%3406 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 486
	store void ()* %3405, void ()** %3406
	%3407 = alloca {i64, i8*}
	%3408 = getelementptr [8 x i8], [8 x i8]* @"str.497", i64 0, i64 0
	%3409 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3408, 1
	store {i64, i8*} %3409, {i64, i8*}* %3407
	%3410 = load {i64, i8*}, {i64, i8*}* %3407
	%3411 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 487
	store {i64, i8*} %3410, {i64, i8*}* %3411
	%3412 = bitcast i64 (x86_fp80)* @"lroundl" to void ()*
	%3413 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 487
	store void ()* %3412, void ()** %3413
	%3414 = alloca {i64, i8*}
	%3415 = getelementptr [9 x i8], [9 x i8]* @"str.498", i64 0, i64 0
	%3416 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3415, 1
	store {i64, i8*} %3416, {i64, i8*}* %3414
	%3417 = load {i64, i8*}, {i64, i8*}* %3414
	%3418 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 488
	store {i64, i8*} %3417, {i64, i8*}* %3418
	%3419 = bitcast i64 (x86_fp80)* @"llroundl" to void ()*
	%3420 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 488
	store void ()* %3419, void ()** %3420
	%3421 = alloca {i64, i8*}
	%3422 = getelementptr [6 x i8], [6 x i8]* @"str.499", i64 0, i64 0
	%3423 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3422, 1
	store {i64, i8*} %3423, {i64, i8*}* %3421
	%3424 = load {i64, i8*}, {i64, i8*}* %3421
	%3425 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 489
	store {i64, i8*} %3424, {i64, i8*}* %3425
	%3426 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fdiml" to void ()*
	%3427 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 489
	store void ()* %3426, void ()** %3427
	%3428 = alloca {i64, i8*}
	%3429 = getelementptr [6 x i8], [6 x i8]* @"str.500", i64 0, i64 0
	%3430 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3429, 1
	store {i64, i8*} %3430, {i64, i8*}* %3428
	%3431 = load {i64, i8*}, {i64, i8*}* %3428
	%3432 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 490
	store {i64, i8*} %3431, {i64, i8*}* %3432
	%3433 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fmaxl" to void ()*
	%3434 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 490
	store void ()* %3433, void ()** %3434
	%3435 = alloca {i64, i8*}
	%3436 = getelementptr [6 x i8], [6 x i8]* @"str.501", i64 0, i64 0
	%3437 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3436, 1
	store {i64, i8*} %3437, {i64, i8*}* %3435
	%3438 = load {i64, i8*}, {i64, i8*}* %3435
	%3439 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 491
	store {i64, i8*} %3438, {i64, i8*}* %3439
	%3440 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"fminl" to void ()*
	%3441 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 491
	store void ()* %3440, void ()** %3441
	%3442 = alloca {i64, i8*}
	%3443 = getelementptr [5 x i8], [5 x i8]* @"str.502", i64 0, i64 0
	%3444 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3443, 1
	store {i64, i8*} %3444, {i64, i8*}* %3442
	%3445 = load {i64, i8*}, {i64, i8*}* %3442
	%3446 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 492
	store {i64, i8*} %3445, {i64, i8*}* %3446
	%3447 = bitcast x86_fp80 (x86_fp80, x86_fp80, x86_fp80)* @"fmal" to void ()*
	%3448 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 492
	store void ()* %3447, void ()** %3448
	%3449 = alloca {i64, i8*}
	%3450 = getelementptr [7 x i8], [7 x i8]* @"str.503", i64 0, i64 0
	%3451 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3450, 1
	store {i64, i8*} %3451, {i64, i8*}* %3449
	%3452 = load {i64, i8*}, {i64, i8*}* %3449
	%3453 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 493
	store {i64, i8*} %3452, {i64, i8*}* %3453
	%3454 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @"scalbl" to void ()*
	%3455 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 493
	store void ()* %3454, void ()** %3455
	%3456 = alloca {i64, i8*}
	%3457 = getelementptr [14 x i8], [14 x i8]* @"str.504", i64 0, i64 0
	%3458 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %3457, 1
	store {i64, i8*} %3458, {i64, i8*}* %3456
	%3459 = load {i64, i8*}, {i64, i8*}* %3456
	%3460 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 494
	store {i64, i8*} %3459, {i64, i8*}* %3460
	%3461 = bitcast void (i8*, i8*, i32, i8*)* @"__assert_fail" to void ()*
	%3462 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 494
	store void ()* %3461, void ()** %3462
	%3463 = alloca {i64, i8*}
	%3464 = getelementptr [21 x i8], [21 x i8]* @"str.505", i64 0, i64 0
	%3465 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %3464, 1
	store {i64, i8*} %3465, {i64, i8*}* %3463
	%3466 = load {i64, i8*}, {i64, i8*}* %3463
	%3467 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 495
	store {i64, i8*} %3466, {i64, i8*}* %3467
	%3468 = bitcast void (i32, i8*, i32, i8*)* @"__assert_perror_fail" to void ()*
	%3469 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 495
	store void ()* %3468, void ()** %3469
	%3470 = alloca {i64, i8*}
	%3471 = getelementptr [9 x i8], [9 x i8]* @"str.506", i64 0, i64 0
	%3472 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3471, 1
	store {i64, i8*} %3472, {i64, i8*}* %3470
	%3473 = load {i64, i8*}, {i64, i8*}* %3470
	%3474 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 496
	store {i64, i8*} %3473, {i64, i8*}* %3474
	%3475 = bitcast void (i8*, i8*, i32)* @"__assert" to void ()*
	%3476 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 496
	store void ()* %3475, void ()** %3476
	%3477 = alloca {i64, i8*}
	%3478 = getelementptr [14 x i8], [14 x i8]* @"str.507", i64 0, i64 0
	%3479 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %3478, 1
	store {i64, i8*} %3479, {i64, i8*}* %3477
	%3480 = load {i64, i8*}, {i64, i8*}* %3477
	%3481 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 497
	store {i64, i8*} %3480, {i64, i8*}* %3481
	%3482 = bitcast void (i32)* (i32, void (i32)*)* @"__sysv_signal" to void ()*
	%3483 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 497
	store void ()* %3482, void ()** %3483
	%3484 = alloca {i64, i8*}
	%3485 = getelementptr [7 x i8], [7 x i8]* @"str.508", i64 0, i64 0
	%3486 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3485, 1
	store {i64, i8*} %3486, {i64, i8*}* %3484
	%3487 = load {i64, i8*}, {i64, i8*}* %3484
	%3488 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 498
	store {i64, i8*} %3487, {i64, i8*}* %3488
	%3489 = bitcast void (i32)* (i32, void (i32)*)* @"signal" to void ()*
	%3490 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 498
	store void ()* %3489, void ()** %3490
	%3491 = alloca {i64, i8*}
	%3492 = getelementptr [5 x i8], [5 x i8]* @"str.509", i64 0, i64 0
	%3493 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %3492, 1
	store {i64, i8*} %3493, {i64, i8*}* %3491
	%3494 = load {i64, i8*}, {i64, i8*}* %3491
	%3495 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 499
	store {i64, i8*} %3494, {i64, i8*}* %3495
	%3496 = bitcast i32 (i32, i32)* @"kill" to void ()*
	%3497 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 499
	store void ()* %3496, void ()** %3497
	%3498 = alloca {i64, i8*}
	%3499 = getelementptr [7 x i8], [7 x i8]* @"str.510", i64 0, i64 0
	%3500 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3499, 1
	store {i64, i8*} %3500, {i64, i8*}* %3498
	%3501 = load {i64, i8*}, {i64, i8*}* %3498
	%3502 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 500
	store {i64, i8*} %3501, {i64, i8*}* %3502
	%3503 = bitcast i32 (i32, i32)* @"killpg" to void ()*
	%3504 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 500
	store void ()* %3503, void ()** %3504
	%3505 = alloca {i64, i8*}
	%3506 = getelementptr [6 x i8], [6 x i8]* @"str.511", i64 0, i64 0
	%3507 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %3506, 1
	store {i64, i8*} %3507, {i64, i8*}* %3505
	%3508 = load {i64, i8*}, {i64, i8*}* %3505
	%3509 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 501
	store {i64, i8*} %3508, {i64, i8*}* %3509
	%3510 = bitcast i32 (i32)* @"raise" to void ()*
	%3511 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 501
	store void ()* %3510, void ()** %3511
	%3512 = alloca {i64, i8*}
	%3513 = getelementptr [8 x i8], [8 x i8]* @"str.512", i64 0, i64 0
	%3514 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3513, 1
	store {i64, i8*} %3514, {i64, i8*}* %3512
	%3515 = load {i64, i8*}, {i64, i8*}* %3512
	%3516 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 502
	store {i64, i8*} %3515, {i64, i8*}* %3516
	%3517 = bitcast void (i32)* (i32, void (i32)*)* @"ssignal" to void ()*
	%3518 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 502
	store void ()* %3517, void ()** %3518
	%3519 = alloca {i64, i8*}
	%3520 = getelementptr [8 x i8], [8 x i8]* @"str.513", i64 0, i64 0
	%3521 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3520, 1
	store {i64, i8*} %3521, {i64, i8*}* %3519
	%3522 = load {i64, i8*}, {i64, i8*}* %3519
	%3523 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 503
	store {i64, i8*} %3522, {i64, i8*}* %3523
	%3524 = bitcast i32 (i32)* @"gsignal" to void ()*
	%3525 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 503
	store void ()* %3524, void ()** %3525
	%3526 = alloca {i64, i8*}
	%3527 = getelementptr [8 x i8], [8 x i8]* @"str.514", i64 0, i64 0
	%3528 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3527, 1
	store {i64, i8*} %3528, {i64, i8*}* %3526
	%3529 = load {i64, i8*}, {i64, i8*}* %3526
	%3530 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 504
	store {i64, i8*} %3529, {i64, i8*}* %3530
	%3531 = bitcast void (i32, i8*)* @"psignal" to void ()*
	%3532 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 504
	store void ()* %3531, void ()** %3532
	%3533 = alloca {i64, i8*}
	%3534 = getelementptr [9 x i8], [9 x i8]* @"str.515", i64 0, i64 0
	%3535 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3534, 1
	store {i64, i8*} %3535, {i64, i8*}* %3533
	%3536 = load {i64, i8*}, {i64, i8*}* %3533
	%3537 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 505
	store {i64, i8*} %3536, {i64, i8*}* %3537
	%3538 = bitcast void (%"cstd::siginfo_t"*, i8*)* @"psiginfo" to void ()*
	%3539 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 505
	store void ()* %3538, void ()** %3539
	%3540 = alloca {i64, i8*}
	%3541 = getelementptr [9 x i8], [9 x i8]* @"str.516", i64 0, i64 0
	%3542 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3541, 1
	store {i64, i8*} %3542, {i64, i8*}* %3540
	%3543 = load {i64, i8*}, {i64, i8*}* %3540
	%3544 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 506
	store {i64, i8*} %3543, {i64, i8*}* %3544
	%3545 = bitcast i32 (i32)* @"sigblock" to void ()*
	%3546 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 506
	store void ()* %3545, void ()** %3546
	%3547 = alloca {i64, i8*}
	%3548 = getelementptr [11 x i8], [11 x i8]* @"str.517", i64 0, i64 0
	%3549 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3548, 1
	store {i64, i8*} %3549, {i64, i8*}* %3547
	%3550 = load {i64, i8*}, {i64, i8*}* %3547
	%3551 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 507
	store {i64, i8*} %3550, {i64, i8*}* %3551
	%3552 = bitcast i32 (i32)* @"sigsetmask" to void ()*
	%3553 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 507
	store void ()* %3552, void ()** %3553
	%3554 = alloca {i64, i8*}
	%3555 = getelementptr [12 x i8], [12 x i8]* @"str.518", i64 0, i64 0
	%3556 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3555, 1
	store {i64, i8*} %3556, {i64, i8*}* %3554
	%3557 = load {i64, i8*}, {i64, i8*}* %3554
	%3558 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 508
	store {i64, i8*} %3557, {i64, i8*}* %3558
	%3559 = bitcast i32 (%"cstd::__sigset_t"*)* @"sigemptyset" to void ()*
	%3560 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 508
	store void ()* %3559, void ()** %3560
	%3561 = alloca {i64, i8*}
	%3562 = getelementptr [11 x i8], [11 x i8]* @"str.519", i64 0, i64 0
	%3563 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3562, 1
	store {i64, i8*} %3563, {i64, i8*}* %3561
	%3564 = load {i64, i8*}, {i64, i8*}* %3561
	%3565 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 509
	store {i64, i8*} %3564, {i64, i8*}* %3565
	%3566 = bitcast i32 (%"cstd::__sigset_t"*)* @"sigfillset" to void ()*
	%3567 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 509
	store void ()* %3566, void ()** %3567
	%3568 = alloca {i64, i8*}
	%3569 = getelementptr [10 x i8], [10 x i8]* @"str.520", i64 0, i64 0
	%3570 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3569, 1
	store {i64, i8*} %3570, {i64, i8*}* %3568
	%3571 = load {i64, i8*}, {i64, i8*}* %3568
	%3572 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 510
	store {i64, i8*} %3571, {i64, i8*}* %3572
	%3573 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @"sigaddset" to void ()*
	%3574 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 510
	store void ()* %3573, void ()** %3574
	%3575 = alloca {i64, i8*}
	%3576 = getelementptr [10 x i8], [10 x i8]* @"str.521", i64 0, i64 0
	%3577 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3576, 1
	store {i64, i8*} %3577, {i64, i8*}* %3575
	%3578 = load {i64, i8*}, {i64, i8*}* %3575
	%3579 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 511
	store {i64, i8*} %3578, {i64, i8*}* %3579
	%3580 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @"sigdelset" to void ()*
	%3581 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 511
	store void ()* %3580, void ()** %3581
	%3582 = alloca {i64, i8*}
	%3583 = getelementptr [12 x i8], [12 x i8]* @"str.522", i64 0, i64 0
	%3584 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3583, 1
	store {i64, i8*} %3584, {i64, i8*}* %3582
	%3585 = load {i64, i8*}, {i64, i8*}* %3582
	%3586 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 512
	store {i64, i8*} %3585, {i64, i8*}* %3586
	%3587 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @"sigismember" to void ()*
	%3588 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 512
	store void ()* %3587, void ()** %3588
	%3589 = alloca {i64, i8*}
	%3590 = getelementptr [12 x i8], [12 x i8]* @"str.523", i64 0, i64 0
	%3591 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3590, 1
	store {i64, i8*} %3591, {i64, i8*}* %3589
	%3592 = load {i64, i8*}, {i64, i8*}* %3589
	%3593 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 513
	store {i64, i8*} %3592, {i64, i8*}* %3593
	%3594 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)* @"sigprocmask" to void ()*
	%3595 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 513
	store void ()* %3594, void ()** %3595
	%3596 = alloca {i64, i8*}
	%3597 = getelementptr [11 x i8], [11 x i8]* @"str.524", i64 0, i64 0
	%3598 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3597, 1
	store {i64, i8*} %3598, {i64, i8*}* %3596
	%3599 = load {i64, i8*}, {i64, i8*}* %3596
	%3600 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 514
	store {i64, i8*} %3599, {i64, i8*}* %3600
	%3601 = bitcast i32 (%"cstd::__sigset_t"*)* @"sigsuspend" to void ()*
	%3602 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 514
	store void ()* %3601, void ()** %3602
	%3603 = alloca {i64, i8*}
	%3604 = getelementptr [10 x i8], [10 x i8]* @"str.525", i64 0, i64 0
	%3605 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3604, 1
	store {i64, i8*} %3605, {i64, i8*}* %3603
	%3606 = load {i64, i8*}, {i64, i8*}* %3603
	%3607 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 515
	store {i64, i8*} %3606, {i64, i8*}* %3607
	%3608 = bitcast i32 (i32, %"cstd::s_sigaction"*, %"cstd::s_sigaction"*)* @"sigaction" to void ()*
	%3609 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 515
	store void ()* %3608, void ()** %3609
	%3610 = alloca {i64, i8*}
	%3611 = getelementptr [11 x i8], [11 x i8]* @"str.526", i64 0, i64 0
	%3612 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3611, 1
	store {i64, i8*} %3612, {i64, i8*}* %3610
	%3613 = load {i64, i8*}, {i64, i8*}* %3610
	%3614 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 516
	store {i64, i8*} %3613, {i64, i8*}* %3614
	%3615 = bitcast i32 (%"cstd::__sigset_t"*)* @"sigpending" to void ()*
	%3616 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 516
	store void ()* %3615, void ()** %3616
	%3617 = alloca {i64, i8*}
	%3618 = getelementptr [8 x i8], [8 x i8]* @"str.527", i64 0, i64 0
	%3619 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3618, 1
	store {i64, i8*} %3619, {i64, i8*}* %3617
	%3620 = load {i64, i8*}, {i64, i8*}* %3617
	%3621 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 517
	store {i64, i8*} %3620, {i64, i8*}* %3621
	%3622 = bitcast i32 (%"cstd::__sigset_t"*, i32*)* @"sigwait" to void ()*
	%3623 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 517
	store void ()* %3622, void ()** %3623
	%3624 = alloca {i64, i8*}
	%3625 = getelementptr [12 x i8], [12 x i8]* @"str.528", i64 0, i64 0
	%3626 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3625, 1
	store {i64, i8*} %3626, {i64, i8*}* %3624
	%3627 = load {i64, i8*}, {i64, i8*}* %3624
	%3628 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 518
	store {i64, i8*} %3627, {i64, i8*}* %3628
	%3629 = bitcast i32 (%"cstd::__sigset_t"*, %"cstd::siginfo_t"*)* @"sigwaitinfo" to void ()*
	%3630 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 518
	store void ()* %3629, void ()** %3630
	%3631 = alloca {i64, i8*}
	%3632 = getelementptr [13 x i8], [13 x i8]* @"str.529", i64 0, i64 0
	%3633 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %3632, 1
	store {i64, i8*} %3633, {i64, i8*}* %3631
	%3634 = load {i64, i8*}, {i64, i8*}* %3631
	%3635 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 519
	store {i64, i8*} %3634, {i64, i8*}* %3635
	%3636 = bitcast i32 (%"cstd::__sigset_t"*, %"cstd::siginfo_t"*, %"cstd::s_timespec"*)* @"sigtimedwait" to void ()*
	%3637 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 519
	store void ()* %3636, void ()** %3637
	%3638 = alloca {i64, i8*}
	%3639 = getelementptr [9 x i8], [9 x i8]* @"str.530", i64 0, i64 0
	%3640 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3639, 1
	store {i64, i8*} %3640, {i64, i8*}* %3638
	%3641 = load {i64, i8*}, {i64, i8*}* %3638
	%3642 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 520
	store {i64, i8*} %3641, {i64, i8*}* %3642
	%3643 = bitcast i32 (i32, i32, %"cstd::u_sigval")* @"sigqueue" to void ()*
	%3644 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 520
	store void ()* %3643, void ()** %3644
	%3645 = alloca {i64, i8*}
	%3646 = getelementptr [13 x i8], [13 x i8]* @"str.531", i64 0, i64 0
	%3647 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %3646, 1
	store {i64, i8*} %3647, {i64, i8*}* %3645
	%3648 = load {i64, i8*}, {i64, i8*}* %3645
	%3649 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 521
	store {i64, i8*} %3648, {i64, i8*}* %3649
	%3650 = bitcast i32 (i32, i32)* @"siginterrupt" to void ()*
	%3651 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 521
	store void ()* %3650, void ()** %3651
	%3652 = alloca {i64, i8*}
	%3653 = getelementptr [12 x i8], [12 x i8]* @"str.532", i64 0, i64 0
	%3654 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3653, 1
	store {i64, i8*} %3654, {i64, i8*}* %3652
	%3655 = load {i64, i8*}, {i64, i8*}* %3652
	%3656 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 522
	store {i64, i8*} %3655, {i64, i8*}* %3656
	%3657 = bitcast i32 (%"cstd::stack_t"*, %"cstd::stack_t"*)* @"sigaltstack" to void ()*
	%3658 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 522
	store void ()* %3657, void ()** %3658
	%3659 = alloca {i64, i8*}
	%3660 = getelementptr [16 x i8], [16 x i8]* @"str.533", i64 0, i64 0
	%3661 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %3660, 1
	store {i64, i8*} %3661, {i64, i8*}* %3659
	%3662 = load {i64, i8*}, {i64, i8*}* %3659
	%3663 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 523
	store {i64, i8*} %3662, {i64, i8*}* %3663
	%3664 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)* @"pthread_sigmask" to void ()*
	%3665 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 523
	store void ()* %3664, void ()** %3665
	%3666 = alloca {i64, i8*}
	%3667 = getelementptr [13 x i8], [13 x i8]* @"str.534", i64 0, i64 0
	%3668 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %3667, 1
	store {i64, i8*} %3668, {i64, i8*}* %3666
	%3669 = load {i64, i8*}, {i64, i8*}* %3666
	%3670 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 524
	store {i64, i8*} %3669, {i64, i8*}* %3670
	%3671 = bitcast i32 (i64, i32)* @"pthread_kill" to void ()*
	%3672 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 524
	store void ()* %3671, void ()** %3672
	%3673 = alloca {i64, i8*}
	%3674 = getelementptr [24 x i8], [24 x i8]* @"str.535", i64 0, i64 0
	%3675 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %3674, 1
	store {i64, i8*} %3675, {i64, i8*}* %3673
	%3676 = load {i64, i8*}, {i64, i8*}* %3673
	%3677 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 525
	store {i64, i8*} %3676, {i64, i8*}* %3677
	%3678 = bitcast i32 ()* @"__libc_current_sigrtmin" to void ()*
	%3679 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 525
	store void ()* %3678, void ()** %3679
	%3680 = alloca {i64, i8*}
	%3681 = getelementptr [24 x i8], [24 x i8]* @"str.536", i64 0, i64 0
	%3682 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %3681, 1
	store {i64, i8*} %3682, {i64, i8*}* %3680
	%3683 = load {i64, i8*}, {i64, i8*}* %3680
	%3684 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 526
	store {i64, i8*} %3683, {i64, i8*}* %3684
	%3685 = bitcast i32 ()* @"__libc_current_sigrtmax" to void ()*
	%3686 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 526
	store void ()* %3685, void ()** %3686
	%3687 = alloca {i64, i8*}
	%3688 = getelementptr [14 x i8], [14 x i8]* @"str.537", i64 0, i64 0
	%3689 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %3688, 1
	store {i64, i8*} %3689, {i64, i8*}* %3687
	%3690 = load {i64, i8*}, {i64, i8*}* %3687
	%3691 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 527
	store {i64, i8*} %3690, {i64, i8*}* %3691
	%3692 = bitcast i16** ()* @"__ctype_b_loc" to void ()*
	%3693 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 527
	store void ()* %3692, void ()** %3693
	%3694 = alloca {i64, i8*}
	%3695 = getelementptr [20 x i8], [20 x i8]* @"str.538", i64 0, i64 0
	%3696 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %3695, 1
	store {i64, i8*} %3696, {i64, i8*}* %3694
	%3697 = load {i64, i8*}, {i64, i8*}* %3694
	%3698 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 528
	store {i64, i8*} %3697, {i64, i8*}* %3698
	%3699 = bitcast i32** ()* @"__ctype_tolower_loc" to void ()*
	%3700 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 528
	store void ()* %3699, void ()** %3700
	%3701 = alloca {i64, i8*}
	%3702 = getelementptr [20 x i8], [20 x i8]* @"str.539", i64 0, i64 0
	%3703 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %3702, 1
	store {i64, i8*} %3703, {i64, i8*}* %3701
	%3704 = load {i64, i8*}, {i64, i8*}* %3701
	%3705 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 529
	store {i64, i8*} %3704, {i64, i8*}* %3705
	%3706 = bitcast i32** ()* @"__ctype_toupper_loc" to void ()*
	%3707 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 529
	store void ()* %3706, void ()** %3707
	%3708 = alloca {i64, i8*}
	%3709 = getelementptr [8 x i8], [8 x i8]* @"str.540", i64 0, i64 0
	%3710 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3709, 1
	store {i64, i8*} %3710, {i64, i8*}* %3708
	%3711 = load {i64, i8*}, {i64, i8*}* %3708
	%3712 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 530
	store {i64, i8*} %3711, {i64, i8*}* %3712
	%3713 = bitcast i32 (i32)* @"isalnum" to void ()*
	%3714 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 530
	store void ()* %3713, void ()** %3714
	%3715 = alloca {i64, i8*}
	%3716 = getelementptr [8 x i8], [8 x i8]* @"str.541", i64 0, i64 0
	%3717 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3716, 1
	store {i64, i8*} %3717, {i64, i8*}* %3715
	%3718 = load {i64, i8*}, {i64, i8*}* %3715
	%3719 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 531
	store {i64, i8*} %3718, {i64, i8*}* %3719
	%3720 = bitcast i32 (i32)* @"isalpha" to void ()*
	%3721 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 531
	store void ()* %3720, void ()** %3721
	%3722 = alloca {i64, i8*}
	%3723 = getelementptr [8 x i8], [8 x i8]* @"str.542", i64 0, i64 0
	%3724 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3723, 1
	store {i64, i8*} %3724, {i64, i8*}* %3722
	%3725 = load {i64, i8*}, {i64, i8*}* %3722
	%3726 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 532
	store {i64, i8*} %3725, {i64, i8*}* %3726
	%3727 = bitcast i32 (i32)* @"iscntrl" to void ()*
	%3728 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 532
	store void ()* %3727, void ()** %3728
	%3729 = alloca {i64, i8*}
	%3730 = getelementptr [8 x i8], [8 x i8]* @"str.543", i64 0, i64 0
	%3731 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3730, 1
	store {i64, i8*} %3731, {i64, i8*}* %3729
	%3732 = load {i64, i8*}, {i64, i8*}* %3729
	%3733 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 533
	store {i64, i8*} %3732, {i64, i8*}* %3733
	%3734 = bitcast i32 (i32)* @"isdigit" to void ()*
	%3735 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 533
	store void ()* %3734, void ()** %3735
	%3736 = alloca {i64, i8*}
	%3737 = getelementptr [8 x i8], [8 x i8]* @"str.544", i64 0, i64 0
	%3738 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3737, 1
	store {i64, i8*} %3738, {i64, i8*}* %3736
	%3739 = load {i64, i8*}, {i64, i8*}* %3736
	%3740 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 534
	store {i64, i8*} %3739, {i64, i8*}* %3740
	%3741 = bitcast i32 (i32)* @"islower" to void ()*
	%3742 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 534
	store void ()* %3741, void ()** %3742
	%3743 = alloca {i64, i8*}
	%3744 = getelementptr [8 x i8], [8 x i8]* @"str.545", i64 0, i64 0
	%3745 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3744, 1
	store {i64, i8*} %3745, {i64, i8*}* %3743
	%3746 = load {i64, i8*}, {i64, i8*}* %3743
	%3747 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 535
	store {i64, i8*} %3746, {i64, i8*}* %3747
	%3748 = bitcast i32 (i32)* @"isgraph" to void ()*
	%3749 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 535
	store void ()* %3748, void ()** %3749
	%3750 = alloca {i64, i8*}
	%3751 = getelementptr [8 x i8], [8 x i8]* @"str.546", i64 0, i64 0
	%3752 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3751, 1
	store {i64, i8*} %3752, {i64, i8*}* %3750
	%3753 = load {i64, i8*}, {i64, i8*}* %3750
	%3754 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 536
	store {i64, i8*} %3753, {i64, i8*}* %3754
	%3755 = bitcast i32 (i32)* @"isprint" to void ()*
	%3756 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 536
	store void ()* %3755, void ()** %3756
	%3757 = alloca {i64, i8*}
	%3758 = getelementptr [8 x i8], [8 x i8]* @"str.547", i64 0, i64 0
	%3759 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3758, 1
	store {i64, i8*} %3759, {i64, i8*}* %3757
	%3760 = load {i64, i8*}, {i64, i8*}* %3757
	%3761 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 537
	store {i64, i8*} %3760, {i64, i8*}* %3761
	%3762 = bitcast i32 (i32)* @"ispunct" to void ()*
	%3763 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 537
	store void ()* %3762, void ()** %3763
	%3764 = alloca {i64, i8*}
	%3765 = getelementptr [8 x i8], [8 x i8]* @"str.548", i64 0, i64 0
	%3766 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3765, 1
	store {i64, i8*} %3766, {i64, i8*}* %3764
	%3767 = load {i64, i8*}, {i64, i8*}* %3764
	%3768 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 538
	store {i64, i8*} %3767, {i64, i8*}* %3768
	%3769 = bitcast i32 (i32)* @"isspace" to void ()*
	%3770 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 538
	store void ()* %3769, void ()** %3770
	%3771 = alloca {i64, i8*}
	%3772 = getelementptr [8 x i8], [8 x i8]* @"str.549", i64 0, i64 0
	%3773 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3772, 1
	store {i64, i8*} %3773, {i64, i8*}* %3771
	%3774 = load {i64, i8*}, {i64, i8*}* %3771
	%3775 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 539
	store {i64, i8*} %3774, {i64, i8*}* %3775
	%3776 = bitcast i32 (i32)* @"isupper" to void ()*
	%3777 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 539
	store void ()* %3776, void ()** %3777
	%3778 = alloca {i64, i8*}
	%3779 = getelementptr [9 x i8], [9 x i8]* @"str.550", i64 0, i64 0
	%3780 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3779, 1
	store {i64, i8*} %3780, {i64, i8*}* %3778
	%3781 = load {i64, i8*}, {i64, i8*}* %3778
	%3782 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 540
	store {i64, i8*} %3781, {i64, i8*}* %3782
	%3783 = bitcast i32 (i32)* @"isxdigit" to void ()*
	%3784 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 540
	store void ()* %3783, void ()** %3784
	%3785 = alloca {i64, i8*}
	%3786 = getelementptr [8 x i8], [8 x i8]* @"str.551", i64 0, i64 0
	%3787 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3786, 1
	store {i64, i8*} %3787, {i64, i8*}* %3785
	%3788 = load {i64, i8*}, {i64, i8*}* %3785
	%3789 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 541
	store {i64, i8*} %3788, {i64, i8*}* %3789
	%3790 = bitcast i32 (i32)* @"tolower" to void ()*
	%3791 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 541
	store void ()* %3790, void ()** %3791
	%3792 = alloca {i64, i8*}
	%3793 = getelementptr [8 x i8], [8 x i8]* @"str.552", i64 0, i64 0
	%3794 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3793, 1
	store {i64, i8*} %3794, {i64, i8*}* %3792
	%3795 = load {i64, i8*}, {i64, i8*}* %3792
	%3796 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 542
	store {i64, i8*} %3795, {i64, i8*}* %3796
	%3797 = bitcast i32 (i32)* @"toupper" to void ()*
	%3798 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 542
	store void ()* %3797, void ()** %3798
	%3799 = alloca {i64, i8*}
	%3800 = getelementptr [8 x i8], [8 x i8]* @"str.553", i64 0, i64 0
	%3801 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3800, 1
	store {i64, i8*} %3801, {i64, i8*}* %3799
	%3802 = load {i64, i8*}, {i64, i8*}* %3799
	%3803 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 543
	store {i64, i8*} %3802, {i64, i8*}* %3803
	%3804 = bitcast i32 (i32)* @"isblank" to void ()*
	%3805 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 543
	store void ()* %3804, void ()** %3805
	%3806 = alloca {i64, i8*}
	%3807 = getelementptr [8 x i8], [8 x i8]* @"str.554", i64 0, i64 0
	%3808 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3807, 1
	store {i64, i8*} %3808, {i64, i8*}* %3806
	%3809 = load {i64, i8*}, {i64, i8*}* %3806
	%3810 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 544
	store {i64, i8*} %3809, {i64, i8*}* %3810
	%3811 = bitcast i32 (i32)* @"isascii" to void ()*
	%3812 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 544
	store void ()* %3811, void ()** %3812
	%3813 = alloca {i64, i8*}
	%3814 = getelementptr [8 x i8], [8 x i8]* @"str.555", i64 0, i64 0
	%3815 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %3814, 1
	store {i64, i8*} %3815, {i64, i8*}* %3813
	%3816 = load {i64, i8*}, {i64, i8*}* %3813
	%3817 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 545
	store {i64, i8*} %3816, {i64, i8*}* %3817
	%3818 = bitcast i32 (i32)* @"toascii" to void ()*
	%3819 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 545
	store void ()* %3818, void ()** %3819
	%3820 = alloca {i64, i8*}
	%3821 = getelementptr [9 x i8], [9 x i8]* @"str.556", i64 0, i64 0
	%3822 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3821, 1
	store {i64, i8*} %3822, {i64, i8*}* %3820
	%3823 = load {i64, i8*}, {i64, i8*}* %3820
	%3824 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 546
	store {i64, i8*} %3823, {i64, i8*}* %3824
	%3825 = bitcast i32 (i32)* @"_toupper" to void ()*
	%3826 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 546
	store void ()* %3825, void ()** %3826
	%3827 = alloca {i64, i8*}
	%3828 = getelementptr [9 x i8], [9 x i8]* @"str.557", i64 0, i64 0
	%3829 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %3828, 1
	store {i64, i8*} %3829, {i64, i8*}* %3827
	%3830 = load {i64, i8*}, {i64, i8*}* %3827
	%3831 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 547
	store {i64, i8*} %3830, {i64, i8*}* %3831
	%3832 = bitcast i32 (i32)* @"_tolower" to void ()*
	%3833 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 547
	store void ()* %3832, void ()** %3833
	%3834 = alloca {i64, i8*}
	%3835 = getelementptr [10 x i8], [10 x i8]* @"str.558", i64 0, i64 0
	%3836 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3835, 1
	store {i64, i8*} %3836, {i64, i8*}* %3834
	%3837 = load {i64, i8*}, {i64, i8*}* %3834
	%3838 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 548
	store {i64, i8*} %3837, {i64, i8*}* %3838
	%3839 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isalnum_l" to void ()*
	%3840 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 548
	store void ()* %3839, void ()** %3840
	%3841 = alloca {i64, i8*}
	%3842 = getelementptr [10 x i8], [10 x i8]* @"str.559", i64 0, i64 0
	%3843 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3842, 1
	store {i64, i8*} %3843, {i64, i8*}* %3841
	%3844 = load {i64, i8*}, {i64, i8*}* %3841
	%3845 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 549
	store {i64, i8*} %3844, {i64, i8*}* %3845
	%3846 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isalpha_l" to void ()*
	%3847 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 549
	store void ()* %3846, void ()** %3847
	%3848 = alloca {i64, i8*}
	%3849 = getelementptr [10 x i8], [10 x i8]* @"str.560", i64 0, i64 0
	%3850 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3849, 1
	store {i64, i8*} %3850, {i64, i8*}* %3848
	%3851 = load {i64, i8*}, {i64, i8*}* %3848
	%3852 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 550
	store {i64, i8*} %3851, {i64, i8*}* %3852
	%3853 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"iscntrl_l" to void ()*
	%3854 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 550
	store void ()* %3853, void ()** %3854
	%3855 = alloca {i64, i8*}
	%3856 = getelementptr [10 x i8], [10 x i8]* @"str.561", i64 0, i64 0
	%3857 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3856, 1
	store {i64, i8*} %3857, {i64, i8*}* %3855
	%3858 = load {i64, i8*}, {i64, i8*}* %3855
	%3859 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 551
	store {i64, i8*} %3858, {i64, i8*}* %3859
	%3860 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isdigit_l" to void ()*
	%3861 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 551
	store void ()* %3860, void ()** %3861
	%3862 = alloca {i64, i8*}
	%3863 = getelementptr [10 x i8], [10 x i8]* @"str.562", i64 0, i64 0
	%3864 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3863, 1
	store {i64, i8*} %3864, {i64, i8*}* %3862
	%3865 = load {i64, i8*}, {i64, i8*}* %3862
	%3866 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 552
	store {i64, i8*} %3865, {i64, i8*}* %3866
	%3867 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"islower_l" to void ()*
	%3868 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 552
	store void ()* %3867, void ()** %3868
	%3869 = alloca {i64, i8*}
	%3870 = getelementptr [10 x i8], [10 x i8]* @"str.563", i64 0, i64 0
	%3871 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3870, 1
	store {i64, i8*} %3871, {i64, i8*}* %3869
	%3872 = load {i64, i8*}, {i64, i8*}* %3869
	%3873 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 553
	store {i64, i8*} %3872, {i64, i8*}* %3873
	%3874 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isgraph_l" to void ()*
	%3875 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 553
	store void ()* %3874, void ()** %3875
	%3876 = alloca {i64, i8*}
	%3877 = getelementptr [10 x i8], [10 x i8]* @"str.564", i64 0, i64 0
	%3878 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3877, 1
	store {i64, i8*} %3878, {i64, i8*}* %3876
	%3879 = load {i64, i8*}, {i64, i8*}* %3876
	%3880 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 554
	store {i64, i8*} %3879, {i64, i8*}* %3880
	%3881 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isprint_l" to void ()*
	%3882 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 554
	store void ()* %3881, void ()** %3882
	%3883 = alloca {i64, i8*}
	%3884 = getelementptr [10 x i8], [10 x i8]* @"str.565", i64 0, i64 0
	%3885 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3884, 1
	store {i64, i8*} %3885, {i64, i8*}* %3883
	%3886 = load {i64, i8*}, {i64, i8*}* %3883
	%3887 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 555
	store {i64, i8*} %3886, {i64, i8*}* %3887
	%3888 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"ispunct_l" to void ()*
	%3889 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 555
	store void ()* %3888, void ()** %3889
	%3890 = alloca {i64, i8*}
	%3891 = getelementptr [10 x i8], [10 x i8]* @"str.566", i64 0, i64 0
	%3892 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3891, 1
	store {i64, i8*} %3892, {i64, i8*}* %3890
	%3893 = load {i64, i8*}, {i64, i8*}* %3890
	%3894 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 556
	store {i64, i8*} %3893, {i64, i8*}* %3894
	%3895 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isspace_l" to void ()*
	%3896 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 556
	store void ()* %3895, void ()** %3896
	%3897 = alloca {i64, i8*}
	%3898 = getelementptr [10 x i8], [10 x i8]* @"str.567", i64 0, i64 0
	%3899 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3898, 1
	store {i64, i8*} %3899, {i64, i8*}* %3897
	%3900 = load {i64, i8*}, {i64, i8*}* %3897
	%3901 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 557
	store {i64, i8*} %3900, {i64, i8*}* %3901
	%3902 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isupper_l" to void ()*
	%3903 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 557
	store void ()* %3902, void ()** %3903
	%3904 = alloca {i64, i8*}
	%3905 = getelementptr [11 x i8], [11 x i8]* @"str.568", i64 0, i64 0
	%3906 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3905, 1
	store {i64, i8*} %3906, {i64, i8*}* %3904
	%3907 = load {i64, i8*}, {i64, i8*}* %3904
	%3908 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 558
	store {i64, i8*} %3907, {i64, i8*}* %3908
	%3909 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isxdigit_l" to void ()*
	%3910 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 558
	store void ()* %3909, void ()** %3910
	%3911 = alloca {i64, i8*}
	%3912 = getelementptr [10 x i8], [10 x i8]* @"str.569", i64 0, i64 0
	%3913 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3912, 1
	store {i64, i8*} %3913, {i64, i8*}* %3911
	%3914 = load {i64, i8*}, {i64, i8*}* %3911
	%3915 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 559
	store {i64, i8*} %3914, {i64, i8*}* %3915
	%3916 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"isblank_l" to void ()*
	%3917 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 559
	store void ()* %3916, void ()** %3917
	%3918 = alloca {i64, i8*}
	%3919 = getelementptr [12 x i8], [12 x i8]* @"str.570", i64 0, i64 0
	%3920 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3919, 1
	store {i64, i8*} %3920, {i64, i8*}* %3918
	%3921 = load {i64, i8*}, {i64, i8*}* %3918
	%3922 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 560
	store {i64, i8*} %3921, {i64, i8*}* %3922
	%3923 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"__tolower_l" to void ()*
	%3924 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 560
	store void ()* %3923, void ()** %3924
	%3925 = alloca {i64, i8*}
	%3926 = getelementptr [10 x i8], [10 x i8]* @"str.571", i64 0, i64 0
	%3927 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3926, 1
	store {i64, i8*} %3927, {i64, i8*}* %3925
	%3928 = load {i64, i8*}, {i64, i8*}* %3925
	%3929 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 561
	store {i64, i8*} %3928, {i64, i8*}* %3929
	%3930 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"tolower_l" to void ()*
	%3931 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 561
	store void ()* %3930, void ()** %3931
	%3932 = alloca {i64, i8*}
	%3933 = getelementptr [12 x i8], [12 x i8]* @"str.572", i64 0, i64 0
	%3934 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3933, 1
	store {i64, i8*} %3934, {i64, i8*}* %3932
	%3935 = load {i64, i8*}, {i64, i8*}* %3932
	%3936 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 562
	store {i64, i8*} %3935, {i64, i8*}* %3936
	%3937 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"__toupper_l" to void ()*
	%3938 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 562
	store void ()* %3937, void ()** %3938
	%3939 = alloca {i64, i8*}
	%3940 = getelementptr [10 x i8], [10 x i8]* @"str.573", i64 0, i64 0
	%3941 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3940, 1
	store {i64, i8*} %3941, {i64, i8*}* %3939
	%3942 = load {i64, i8*}, {i64, i8*}* %3939
	%3943 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 563
	store {i64, i8*} %3942, {i64, i8*}* %3943
	%3944 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @"toupper_l" to void ()*
	%3945 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 563
	store void ()* %3944, void ()** %3945
	%3946 = alloca {i64, i8*}
	%3947 = getelementptr [10 x i8], [10 x i8]* @"str.574", i64 0, i64 0
	%3948 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3947, 1
	store {i64, i8*} %3948, {i64, i8*}* %3946
	%3949 = load {i64, i8*}, {i64, i8*}* %3946
	%3950 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 564
	store {i64, i8*} %3949, {i64, i8*}* %3950
	%3951 = bitcast i8* (i32, i8*)* @"setlocale" to void ()*
	%3952 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 564
	store void ()* %3951, void ()** %3952
	%3953 = alloca {i64, i8*}
	%3954 = getelementptr [11 x i8], [11 x i8]* @"str.575", i64 0, i64 0
	%3955 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3954, 1
	store {i64, i8*} %3955, {i64, i8*}* %3953
	%3956 = load {i64, i8*}, {i64, i8*}* %3953
	%3957 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 565
	store {i64, i8*} %3956, {i64, i8*}* %3957
	%3958 = bitcast %"cstd::s_lconv"* ()* @"localeconv" to void ()*
	%3959 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 565
	store void ()* %3958, void ()** %3959
	%3960 = alloca {i64, i8*}
	%3961 = getelementptr [10 x i8], [10 x i8]* @"str.576", i64 0, i64 0
	%3962 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3961, 1
	store {i64, i8*} %3962, {i64, i8*}* %3960
	%3963 = load {i64, i8*}, {i64, i8*}* %3960
	%3964 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 566
	store {i64, i8*} %3963, {i64, i8*}* %3964
	%3965 = bitcast %"cstd::s___locale_struct"* (i32, i8*, %"cstd::s___locale_struct"*)* @"newlocale" to void ()*
	%3966 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 566
	store void ()* %3965, void ()** %3966
	%3967 = alloca {i64, i8*}
	%3968 = getelementptr [10 x i8], [10 x i8]* @"str.577", i64 0, i64 0
	%3969 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3968, 1
	store {i64, i8*} %3969, {i64, i8*}* %3967
	%3970 = load {i64, i8*}, {i64, i8*}* %3967
	%3971 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 567
	store {i64, i8*} %3970, {i64, i8*}* %3971
	%3972 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @"duplocale" to void ()*
	%3973 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 567
	store void ()* %3972, void ()** %3973
	%3974 = alloca {i64, i8*}
	%3975 = getelementptr [11 x i8], [11 x i8]* @"str.578", i64 0, i64 0
	%3976 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %3975, 1
	store {i64, i8*} %3976, {i64, i8*}* %3974
	%3977 = load {i64, i8*}, {i64, i8*}* %3974
	%3978 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 568
	store {i64, i8*} %3977, {i64, i8*}* %3978
	%3979 = bitcast void (%"cstd::s___locale_struct"*)* @"freelocale" to void ()*
	%3980 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 568
	store void ()* %3979, void ()** %3980
	%3981 = alloca {i64, i8*}
	%3982 = getelementptr [10 x i8], [10 x i8]* @"str.579", i64 0, i64 0
	%3983 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %3982, 1
	store {i64, i8*} %3983, {i64, i8*}* %3981
	%3984 = load {i64, i8*}, {i64, i8*}* %3981
	%3985 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 569
	store {i64, i8*} %3984, {i64, i8*}* %3985
	%3986 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @"uselocale" to void ()*
	%3987 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 569
	store void ()* %3986, void ()** %3987
	%3988 = alloca {i64, i8*}
	%3989 = getelementptr [7 x i8], [7 x i8]* @"str.580", i64 0, i64 0
	%3990 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %3989, 1
	store {i64, i8*} %3990, {i64, i8*}* %3988
	%3991 = load {i64, i8*}, {i64, i8*}* %3988
	%3992 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 570
	store {i64, i8*} %3991, {i64, i8*}* %3992
	%3993 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @"setjmp" to void ()*
	%3994 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 570
	store void ()* %3993, void ()** %3994
	%3995 = alloca {i64, i8*}
	%3996 = getelementptr [12 x i8], [12 x i8]* @"str.581", i64 0, i64 0
	%3997 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %3996, 1
	store {i64, i8*} %3997, {i64, i8*}* %3995
	%3998 = load {i64, i8*}, {i64, i8*}* %3995
	%3999 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 571
	store {i64, i8*} %3998, {i64, i8*}* %3999
	%4000 = bitcast i32 (%"cstd::s___jmp_buf_tag"*, i32)* @"__sigsetjmp" to void ()*
	%4001 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 571
	store void ()* %4000, void ()** %4001
	%4002 = alloca {i64, i8*}
	%4003 = getelementptr [8 x i8], [8 x i8]* @"str.582", i64 0, i64 0
	%4004 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4003, 1
	store {i64, i8*} %4004, {i64, i8*}* %4002
	%4005 = load {i64, i8*}, {i64, i8*}* %4002
	%4006 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 572
	store {i64, i8*} %4005, {i64, i8*}* %4006
	%4007 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @"_setjmp" to void ()*
	%4008 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 572
	store void ()* %4007, void ()** %4008
	%4009 = alloca {i64, i8*}
	%4010 = getelementptr [8 x i8], [8 x i8]* @"str.583", i64 0, i64 0
	%4011 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4010, 1
	store {i64, i8*} %4011, {i64, i8*}* %4009
	%4012 = load {i64, i8*}, {i64, i8*}* %4009
	%4013 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 573
	store {i64, i8*} %4012, {i64, i8*}* %4013
	%4014 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"longjmp" to void ()*
	%4015 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 573
	store void ()* %4014, void ()** %4015
	%4016 = alloca {i64, i8*}
	%4017 = getelementptr [9 x i8], [9 x i8]* @"str.584", i64 0, i64 0
	%4018 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4017, 1
	store {i64, i8*} %4018, {i64, i8*}* %4016
	%4019 = load {i64, i8*}, {i64, i8*}* %4016
	%4020 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 574
	store {i64, i8*} %4019, {i64, i8*}* %4020
	%4021 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"_longjmp" to void ()*
	%4022 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 574
	store void ()* %4021, void ()** %4022
	%4023 = alloca {i64, i8*}
	%4024 = getelementptr [11 x i8], [11 x i8]* @"str.585", i64 0, i64 0
	%4025 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4024, 1
	store {i64, i8*} %4025, {i64, i8*}* %4023
	%4026 = load {i64, i8*}, {i64, i8*}* %4023
	%4027 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 575
	store {i64, i8*} %4026, {i64, i8*}* %4027
	%4028 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @"siglongjmp" to void ()*
	%4029 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 575
	store void ()* %4028, void ()** %4029
	%4030 = alloca {i64, i8*}
	%4031 = getelementptr [17 x i8], [17 x i8]* @"str.586", i64 0, i64 0
	%4032 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %4031, 1
	store {i64, i8*} %4032, {i64, i8*}* %4030
	%4033 = load {i64, i8*}, {i64, i8*}* %4030
	%4034 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 576
	store {i64, i8*} %4033, {i64, i8*}* %4034
	%4035 = bitcast i32* ()* @"__errno_location" to void ()*
	%4036 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 576
	store void ()* %4035, void ()** %4036
	%4037 = alloca {i64, i8*}
	%4038 = getelementptr [13 x i8], [13 x i8]* @"str.587", i64 0, i64 0
	%4039 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4038, 1
	store {i64, i8*} %4039, {i64, i8*}* %4037
	%4040 = load {i64, i8*}, {i64, i8*}* %4037
	%4041 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 577
	store {i64, i8*} %4040, {i64, i8*}* %4041
	%4042 = bitcast void (%"cstd::ffi_cif"*, void ()*, i8*, %"cstd::ffi_raw"*)* @"ffi_raw_call" to void ()*
	%4043 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 577
	store void ()* %4042, void ()** %4043
	%4044 = alloca {i64, i8*}
	%4045 = getelementptr [20 x i8], [20 x i8]* @"str.588", i64 0, i64 0
	%4046 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %4045, 1
	store {i64, i8*} %4046, {i64, i8*}* %4044
	%4047 = load {i64, i8*}, {i64, i8*}* %4044
	%4048 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 578
	store {i64, i8*} %4047, {i64, i8*}* %4048
	%4049 = bitcast void (%"cstd::ffi_cif"*, i8**, %"cstd::ffi_raw"*)* @"ffi_ptrarray_to_raw" to void ()*
	%4050 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 578
	store void ()* %4049, void ()** %4050
	%4051 = alloca {i64, i8*}
	%4052 = getelementptr [20 x i8], [20 x i8]* @"str.589", i64 0, i64 0
	%4053 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %4052, 1
	store {i64, i8*} %4053, {i64, i8*}* %4051
	%4054 = load {i64, i8*}, {i64, i8*}* %4051
	%4055 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 579
	store {i64, i8*} %4054, {i64, i8*}* %4055
	%4056 = bitcast void (%"cstd::ffi_cif"*, %"cstd::ffi_raw"*, i8**)* @"ffi_raw_to_ptrarray" to void ()*
	%4057 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 579
	store void ()* %4056, void ()** %4057
	%4058 = alloca {i64, i8*}
	%4059 = getelementptr [13 x i8], [13 x i8]* @"str.590", i64 0, i64 0
	%4060 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4059, 1
	store {i64, i8*} %4060, {i64, i8*}* %4058
	%4061 = load {i64, i8*}, {i64, i8*}* %4058
	%4062 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 580
	store {i64, i8*} %4061, {i64, i8*}* %4062
	%4063 = bitcast i64 (%"cstd::ffi_cif"*)* @"ffi_raw_size" to void ()*
	%4064 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 580
	store void ()* %4063, void ()** %4064
	%4065 = alloca {i64, i8*}
	%4066 = getelementptr [18 x i8], [18 x i8]* @"str.591", i64 0, i64 0
	%4067 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %4066, 1
	store {i64, i8*} %4067, {i64, i8*}* %4065
	%4068 = load {i64, i8*}, {i64, i8*}* %4065
	%4069 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 581
	store {i64, i8*} %4068, {i64, i8*}* %4069
	%4070 = bitcast void (%"cstd::ffi_cif"*, void ()*, i8*, %"cstd::ffi_raw"*)* @"ffi_java_raw_call" to void ()*
	%4071 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 581
	store void ()* %4070, void ()** %4071
	%4072 = alloca {i64, i8*}
	%4073 = getelementptr [25 x i8], [25 x i8]* @"str.592", i64 0, i64 0
	%4074 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %4073, 1
	store {i64, i8*} %4074, {i64, i8*}* %4072
	%4075 = load {i64, i8*}, {i64, i8*}* %4072
	%4076 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 582
	store {i64, i8*} %4075, {i64, i8*}* %4076
	%4077 = bitcast void (%"cstd::ffi_cif"*, i8**, %"cstd::ffi_raw"*)* @"ffi_java_ptrarray_to_raw" to void ()*
	%4078 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 582
	store void ()* %4077, void ()** %4078
	%4079 = alloca {i64, i8*}
	%4080 = getelementptr [25 x i8], [25 x i8]* @"str.593", i64 0, i64 0
	%4081 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %4080, 1
	store {i64, i8*} %4081, {i64, i8*}* %4079
	%4082 = load {i64, i8*}, {i64, i8*}* %4079
	%4083 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 583
	store {i64, i8*} %4082, {i64, i8*}* %4083
	%4084 = bitcast void (%"cstd::ffi_cif"*, %"cstd::ffi_raw"*, i8**)* @"ffi_java_raw_to_ptrarray" to void ()*
	%4085 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 583
	store void ()* %4084, void ()** %4085
	%4086 = alloca {i64, i8*}
	%4087 = getelementptr [18 x i8], [18 x i8]* @"str.594", i64 0, i64 0
	%4088 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %4087, 1
	store {i64, i8*} %4088, {i64, i8*}* %4086
	%4089 = load {i64, i8*}, {i64, i8*}* %4086
	%4090 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 584
	store {i64, i8*} %4089, {i64, i8*}* %4090
	%4091 = bitcast i64 (%"cstd::ffi_cif"*)* @"ffi_java_raw_size" to void ()*
	%4092 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 584
	store void ()* %4091, void ()** %4092
	%4093 = alloca {i64, i8*}
	%4094 = getelementptr [18 x i8], [18 x i8]* @"str.595", i64 0, i64 0
	%4095 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %4094, 1
	store {i64, i8*} %4095, {i64, i8*}* %4093
	%4096 = load {i64, i8*}, {i64, i8*}* %4093
	%4097 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 585
	store {i64, i8*} %4096, {i64, i8*}* %4097
	%4098 = bitcast i8* (i64, i8**)* @"ffi_closure_alloc" to void ()*
	%4099 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 585
	store void ()* %4098, void ()** %4099
	%4100 = alloca {i64, i8*}
	%4101 = getelementptr [17 x i8], [17 x i8]* @"str.596", i64 0, i64 0
	%4102 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %4101, 1
	store {i64, i8*} %4102, {i64, i8*}* %4100
	%4103 = load {i64, i8*}, {i64, i8*}* %4100
	%4104 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 586
	store {i64, i8*} %4103, {i64, i8*}* %4104
	%4105 = bitcast void (i8*)* @"ffi_closure_free" to void ()*
	%4106 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 586
	store void ()* %4105, void ()** %4106
	%4107 = alloca {i64, i8*}
	%4108 = getelementptr [17 x i8], [17 x i8]* @"str.597", i64 0, i64 0
	%4109 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %4108, 1
	store {i64, i8*} %4109, {i64, i8*}* %4107
	%4110 = load {i64, i8*}, {i64, i8*}* %4107
	%4111 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 587
	store {i64, i8*} %4110, {i64, i8*}* %4111
	%4112 = bitcast i32 (%"cstd::ffi_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*)* @"ffi_prep_closure" to void ()*
	%4113 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 587
	store void ()* %4112, void ()** %4113
	%4114 = alloca {i64, i8*}
	%4115 = getelementptr [21 x i8], [21 x i8]* @"str.598", i64 0, i64 0
	%4116 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %4115, 1
	store {i64, i8*} %4116, {i64, i8*}* %4114
	%4117 = load {i64, i8*}, {i64, i8*}* %4114
	%4118 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 588
	store {i64, i8*} %4117, {i64, i8*}* %4118
	%4119 = bitcast i32 (%"cstd::ffi_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)* @"ffi_prep_closure_loc" to void ()*
	%4120 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 588
	store void ()* %4119, void ()** %4120
	%4121 = alloca {i64, i8*}
	%4122 = getelementptr [21 x i8], [21 x i8]* @"str.599", i64 0, i64 0
	%4123 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %4122, 1
	store {i64, i8*} %4123, {i64, i8*}* %4121
	%4124 = load {i64, i8*}, {i64, i8*}* %4121
	%4125 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 589
	store {i64, i8*} %4124, {i64, i8*}* %4125
	%4126 = bitcast i32 (%"cstd::ffi_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*)* @"ffi_prep_raw_closure" to void ()*
	%4127 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 589
	store void ()* %4126, void ()** %4127
	%4128 = alloca {i64, i8*}
	%4129 = getelementptr [25 x i8], [25 x i8]* @"str.600", i64 0, i64 0
	%4130 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %4129, 1
	store {i64, i8*} %4130, {i64, i8*}* %4128
	%4131 = load {i64, i8*}, {i64, i8*}* %4128
	%4132 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 590
	store {i64, i8*} %4131, {i64, i8*}* %4132
	%4133 = bitcast i32 (%"cstd::ffi_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*, i8*)* @"ffi_prep_raw_closure_loc" to void ()*
	%4134 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 590
	store void ()* %4133, void ()** %4134
	%4135 = alloca {i64, i8*}
	%4136 = getelementptr [26 x i8], [26 x i8]* @"str.601", i64 0, i64 0
	%4137 = insertvalue {i64, i8*} {i64 26, i8* undef}, i8* %4136, 1
	store {i64, i8*} %4137, {i64, i8*}* %4135
	%4138 = load {i64, i8*}, {i64, i8*}* %4135
	%4139 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 591
	store {i64, i8*} %4138, {i64, i8*}* %4139
	%4140 = bitcast i32 (%"cstd::ffi_java_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*)* @"ffi_prep_java_raw_closure" to void ()*
	%4141 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 591
	store void ()* %4140, void ()** %4141
	%4142 = alloca {i64, i8*}
	%4143 = getelementptr [30 x i8], [30 x i8]* @"str.602", i64 0, i64 0
	%4144 = insertvalue {i64, i8*} {i64 30, i8* undef}, i8* %4143, 1
	store {i64, i8*} %4144, {i64, i8*}* %4142
	%4145 = load {i64, i8*}, {i64, i8*}* %4142
	%4146 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 592
	store {i64, i8*} %4145, {i64, i8*}* %4146
	%4147 = bitcast i32 (%"cstd::ffi_java_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*, i8*)* @"ffi_prep_java_raw_closure_loc" to void ()*
	%4148 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 592
	store void ()* %4147, void ()** %4148
	%4149 = alloca {i64, i8*}
	%4150 = getelementptr [20 x i8], [20 x i8]* @"str.603", i64 0, i64 0
	%4151 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %4150, 1
	store {i64, i8*} %4151, {i64, i8*}* %4149
	%4152 = load {i64, i8*}, {i64, i8*}* %4149
	%4153 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 593
	store {i64, i8*} %4152, {i64, i8*}* %4153
	%4154 = bitcast i32 (%"cstd::ffi_go_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*)* @"ffi_prep_go_closure" to void ()*
	%4155 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 593
	store void ()* %4154, void ()** %4155
	%4156 = alloca {i64, i8*}
	%4157 = getelementptr [12 x i8], [12 x i8]* @"str.604", i64 0, i64 0
	%4158 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %4157, 1
	store {i64, i8*} %4158, {i64, i8*}* %4156
	%4159 = load {i64, i8*}, {i64, i8*}* %4156
	%4160 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 594
	store {i64, i8*} %4159, {i64, i8*}* %4160
	%4161 = bitcast void (%"cstd::ffi_cif"*, void ()*, i8*, i8**, i8*)* @"ffi_call_go" to void ()*
	%4162 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 594
	store void ()* %4161, void ()** %4162
	%4163 = alloca {i64, i8*}
	%4164 = getelementptr [13 x i8], [13 x i8]* @"str.605", i64 0, i64 0
	%4165 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4164, 1
	store {i64, i8*} %4165, {i64, i8*}* %4163
	%4166 = load {i64, i8*}, {i64, i8*}* %4163
	%4167 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 595
	store {i64, i8*} %4166, {i64, i8*}* %4167
	%4168 = bitcast i32 (%"cstd::ffi_cif"*, i32, i32, %"cstd::ffi_type"*, %"cstd::ffi_type"**)* @"ffi_prep_cif" to void ()*
	%4169 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 595
	store void ()* %4168, void ()** %4169
	%4170 = alloca {i64, i8*}
	%4171 = getelementptr [17 x i8], [17 x i8]* @"str.606", i64 0, i64 0
	%4172 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %4171, 1
	store {i64, i8*} %4172, {i64, i8*}* %4170
	%4173 = load {i64, i8*}, {i64, i8*}* %4170
	%4174 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 596
	store {i64, i8*} %4173, {i64, i8*}* %4174
	%4175 = bitcast i32 (%"cstd::ffi_cif"*, i32, i32, i32, %"cstd::ffi_type"*, %"cstd::ffi_type"**)* @"ffi_prep_cif_var" to void ()*
	%4176 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 596
	store void ()* %4175, void ()** %4176
	%4177 = alloca {i64, i8*}
	%4178 = getelementptr [9 x i8], [9 x i8]* @"str.607", i64 0, i64 0
	%4179 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4178, 1
	store {i64, i8*} %4179, {i64, i8*}* %4177
	%4180 = load {i64, i8*}, {i64, i8*}* %4177
	%4181 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 597
	store {i64, i8*} %4180, {i64, i8*}* %4181
	%4182 = bitcast void (%"cstd::ffi_cif"*, void ()*, i8*, i8**)* @"ffi_call" to void ()*
	%4183 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 597
	store void ()* %4182, void ()** %4183
	%4184 = alloca {i64, i8*}
	%4185 = getelementptr [23 x i8], [23 x i8]* @"str.608", i64 0, i64 0
	%4186 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %4185, 1
	store {i64, i8*} %4186, {i64, i8*}* %4184
	%4187 = load {i64, i8*}, {i64, i8*}* %4184
	%4188 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 598
	store {i64, i8*} %4187, {i64, i8*}* %4188
	%4189 = bitcast i32 (i32, %"cstd::ffi_type"*, i64*)* @"ffi_get_struct_offsets" to void ()*
	%4190 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 598
	store void ()* %4189, void ()** %4190
	%4191 = alloca {i64, i8*}
	%4192 = getelementptr [5 x i8], [5 x i8]* @"str.609", i64 0, i64 0
	%4193 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4192, 1
	store {i64, i8*} %4193, {i64, i8*}* %4191
	%4194 = load {i64, i8*}, {i64, i8*}* %4191
	%4195 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 599
	store {i64, i8*} %4194, {i64, i8*}* %4195
	%4196 = bitcast i32 (i8*, %"cstd::s_stat"*)* @"stat" to void ()*
	%4197 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 599
	store void ()* %4196, void ()** %4197
	%4198 = alloca {i64, i8*}
	%4199 = getelementptr [6 x i8], [6 x i8]* @"str.610", i64 0, i64 0
	%4200 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4199, 1
	store {i64, i8*} %4200, {i64, i8*}* %4198
	%4201 = load {i64, i8*}, {i64, i8*}* %4198
	%4202 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 600
	store {i64, i8*} %4201, {i64, i8*}* %4202
	%4203 = bitcast i32 (i32, %"cstd::s_stat"*)* @"fstat" to void ()*
	%4204 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 600
	store void ()* %4203, void ()** %4204
	%4205 = alloca {i64, i8*}
	%4206 = getelementptr [8 x i8], [8 x i8]* @"str.611", i64 0, i64 0
	%4207 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4206, 1
	store {i64, i8*} %4207, {i64, i8*}* %4205
	%4208 = load {i64, i8*}, {i64, i8*}* %4205
	%4209 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 601
	store {i64, i8*} %4208, {i64, i8*}* %4209
	%4210 = bitcast i32 (i32, i8*, %"cstd::s_stat"*, i32)* @"fstatat" to void ()*
	%4211 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 601
	store void ()* %4210, void ()** %4211
	%4212 = alloca {i64, i8*}
	%4213 = getelementptr [6 x i8], [6 x i8]* @"str.612", i64 0, i64 0
	%4214 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4213, 1
	store {i64, i8*} %4214, {i64, i8*}* %4212
	%4215 = load {i64, i8*}, {i64, i8*}* %4212
	%4216 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 602
	store {i64, i8*} %4215, {i64, i8*}* %4216
	%4217 = bitcast i32 (i8*, %"cstd::s_stat"*)* @"lstat" to void ()*
	%4218 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 602
	store void ()* %4217, void ()** %4218
	%4219 = alloca {i64, i8*}
	%4220 = getelementptr [6 x i8], [6 x i8]* @"str.613", i64 0, i64 0
	%4221 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4220, 1
	store {i64, i8*} %4221, {i64, i8*}* %4219
	%4222 = load {i64, i8*}, {i64, i8*}* %4219
	%4223 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 603
	store {i64, i8*} %4222, {i64, i8*}* %4223
	%4224 = bitcast i32 (i8*, i32)* @"chmod" to void ()*
	%4225 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 603
	store void ()* %4224, void ()** %4225
	%4226 = alloca {i64, i8*}
	%4227 = getelementptr [7 x i8], [7 x i8]* @"str.614", i64 0, i64 0
	%4228 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4227, 1
	store {i64, i8*} %4228, {i64, i8*}* %4226
	%4229 = load {i64, i8*}, {i64, i8*}* %4226
	%4230 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 604
	store {i64, i8*} %4229, {i64, i8*}* %4230
	%4231 = bitcast i32 (i32, i32)* @"fchmod" to void ()*
	%4232 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 604
	store void ()* %4231, void ()** %4232
	%4233 = alloca {i64, i8*}
	%4234 = getelementptr [9 x i8], [9 x i8]* @"str.615", i64 0, i64 0
	%4235 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4234, 1
	store {i64, i8*} %4235, {i64, i8*}* %4233
	%4236 = load {i64, i8*}, {i64, i8*}* %4233
	%4237 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 605
	store {i64, i8*} %4236, {i64, i8*}* %4237
	%4238 = bitcast i32 (i32, i8*, i32, i32)* @"fchmodat" to void ()*
	%4239 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 605
	store void ()* %4238, void ()** %4239
	%4240 = alloca {i64, i8*}
	%4241 = getelementptr [6 x i8], [6 x i8]* @"str.616", i64 0, i64 0
	%4242 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4241, 1
	store {i64, i8*} %4242, {i64, i8*}* %4240
	%4243 = load {i64, i8*}, {i64, i8*}* %4240
	%4244 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 606
	store {i64, i8*} %4243, {i64, i8*}* %4244
	%4245 = bitcast i32 (i32)* @"umask" to void ()*
	%4246 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 606
	store void ()* %4245, void ()** %4246
	%4247 = alloca {i64, i8*}
	%4248 = getelementptr [6 x i8], [6 x i8]* @"str.617", i64 0, i64 0
	%4249 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4248, 1
	store {i64, i8*} %4249, {i64, i8*}* %4247
	%4250 = load {i64, i8*}, {i64, i8*}* %4247
	%4251 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 607
	store {i64, i8*} %4250, {i64, i8*}* %4251
	%4252 = bitcast i32 (i8*, i32)* @"mkdir" to void ()*
	%4253 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 607
	store void ()* %4252, void ()** %4253
	%4254 = alloca {i64, i8*}
	%4255 = getelementptr [8 x i8], [8 x i8]* @"str.618", i64 0, i64 0
	%4256 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4255, 1
	store {i64, i8*} %4256, {i64, i8*}* %4254
	%4257 = load {i64, i8*}, {i64, i8*}* %4254
	%4258 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 608
	store {i64, i8*} %4257, {i64, i8*}* %4258
	%4259 = bitcast i32 (i32, i8*, i32)* @"mkdirat" to void ()*
	%4260 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 608
	store void ()* %4259, void ()** %4260
	%4261 = alloca {i64, i8*}
	%4262 = getelementptr [6 x i8], [6 x i8]* @"str.619", i64 0, i64 0
	%4263 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4262, 1
	store {i64, i8*} %4263, {i64, i8*}* %4261
	%4264 = load {i64, i8*}, {i64, i8*}* %4261
	%4265 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 609
	store {i64, i8*} %4264, {i64, i8*}* %4265
	%4266 = bitcast i32 (i8*, i32, i64)* @"mknod" to void ()*
	%4267 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 609
	store void ()* %4266, void ()** %4267
	%4268 = alloca {i64, i8*}
	%4269 = getelementptr [8 x i8], [8 x i8]* @"str.620", i64 0, i64 0
	%4270 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4269, 1
	store {i64, i8*} %4270, {i64, i8*}* %4268
	%4271 = load {i64, i8*}, {i64, i8*}* %4268
	%4272 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 610
	store {i64, i8*} %4271, {i64, i8*}* %4272
	%4273 = bitcast i32 (i32, i8*, i32, i64)* @"mknodat" to void ()*
	%4274 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 610
	store void ()* %4273, void ()** %4274
	%4275 = alloca {i64, i8*}
	%4276 = getelementptr [7 x i8], [7 x i8]* @"str.621", i64 0, i64 0
	%4277 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4276, 1
	store {i64, i8*} %4277, {i64, i8*}* %4275
	%4278 = load {i64, i8*}, {i64, i8*}* %4275
	%4279 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 611
	store {i64, i8*} %4278, {i64, i8*}* %4279
	%4280 = bitcast i32 (i8*, i32)* @"mkfifo" to void ()*
	%4281 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 611
	store void ()* %4280, void ()** %4281
	%4282 = alloca {i64, i8*}
	%4283 = getelementptr [9 x i8], [9 x i8]* @"str.622", i64 0, i64 0
	%4284 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4283, 1
	store {i64, i8*} %4284, {i64, i8*}* %4282
	%4285 = load {i64, i8*}, {i64, i8*}* %4282
	%4286 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 612
	store {i64, i8*} %4285, {i64, i8*}* %4286
	%4287 = bitcast i32 (i32, i8*, i32)* @"mkfifoat" to void ()*
	%4288 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 612
	store void ()* %4287, void ()** %4288
	%4289 = alloca {i64, i8*}
	%4290 = getelementptr [10 x i8], [10 x i8]* @"str.623", i64 0, i64 0
	%4291 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4290, 1
	store {i64, i8*} %4291, {i64, i8*}* %4289
	%4292 = load {i64, i8*}, {i64, i8*}* %4289
	%4293 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 613
	store {i64, i8*} %4292, {i64, i8*}* %4293
	%4294 = bitcast i32 (i32, i8*, %"cstd::s_timespec"*, i32)* @"utimensat" to void ()*
	%4295 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 613
	store void ()* %4294, void ()** %4295
	%4296 = alloca {i64, i8*}
	%4297 = getelementptr [9 x i8], [9 x i8]* @"str.624", i64 0, i64 0
	%4298 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4297, 1
	store {i64, i8*} %4298, {i64, i8*}* %4296
	%4299 = load {i64, i8*}, {i64, i8*}* %4296
	%4300 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 614
	store {i64, i8*} %4299, {i64, i8*}* %4300
	%4301 = bitcast i32 (i32, %"cstd::s_timespec"*)* @"futimens" to void ()*
	%4302 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 614
	store void ()* %4301, void ()** %4302
	%4303 = alloca {i64, i8*}
	%4304 = getelementptr [9 x i8], [9 x i8]* @"str.625", i64 0, i64 0
	%4305 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4304, 1
	store {i64, i8*} %4305, {i64, i8*}* %4303
	%4306 = load {i64, i8*}, {i64, i8*}* %4303
	%4307 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 615
	store {i64, i8*} %4306, {i64, i8*}* %4307
	%4308 = bitcast i32 (i32, i32, %"cstd::s_stat"*)* @"__fxstat" to void ()*
	%4309 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 615
	store void ()* %4308, void ()** %4309
	%4310 = alloca {i64, i8*}
	%4311 = getelementptr [8 x i8], [8 x i8]* @"str.626", i64 0, i64 0
	%4312 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4311, 1
	store {i64, i8*} %4312, {i64, i8*}* %4310
	%4313 = load {i64, i8*}, {i64, i8*}* %4310
	%4314 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 616
	store {i64, i8*} %4313, {i64, i8*}* %4314
	%4315 = bitcast i32 (i32, i8*, %"cstd::s_stat"*)* @"__xstat" to void ()*
	%4316 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 616
	store void ()* %4315, void ()** %4316
	%4317 = alloca {i64, i8*}
	%4318 = getelementptr [9 x i8], [9 x i8]* @"str.627", i64 0, i64 0
	%4319 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4318, 1
	store {i64, i8*} %4319, {i64, i8*}* %4317
	%4320 = load {i64, i8*}, {i64, i8*}* %4317
	%4321 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 617
	store {i64, i8*} %4320, {i64, i8*}* %4321
	%4322 = bitcast i32 (i32, i8*, %"cstd::s_stat"*)* @"__lxstat" to void ()*
	%4323 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 617
	store void ()* %4322, void ()** %4323
	%4324 = alloca {i64, i8*}
	%4325 = getelementptr [11 x i8], [11 x i8]* @"str.628", i64 0, i64 0
	%4326 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4325, 1
	store {i64, i8*} %4326, {i64, i8*}* %4324
	%4327 = load {i64, i8*}, {i64, i8*}* %4324
	%4328 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 618
	store {i64, i8*} %4327, {i64, i8*}* %4328
	%4329 = bitcast i32 (i32, i32, i8*, %"cstd::s_stat"*, i32)* @"__fxstatat" to void ()*
	%4330 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 618
	store void ()* %4329, void ()** %4330
	%4331 = alloca {i64, i8*}
	%4332 = getelementptr [9 x i8], [9 x i8]* @"str.629", i64 0, i64 0
	%4333 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4332, 1
	store {i64, i8*} %4333, {i64, i8*}* %4331
	%4334 = load {i64, i8*}, {i64, i8*}* %4331
	%4335 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 619
	store {i64, i8*} %4334, {i64, i8*}* %4335
	%4336 = bitcast i32 (i32, i8*, i32, i64*)* @"__xmknod" to void ()*
	%4337 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 619
	store void ()* %4336, void ()** %4337
	%4338 = alloca {i64, i8*}
	%4339 = getelementptr [11 x i8], [11 x i8]* @"str.630", i64 0, i64 0
	%4340 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4339, 1
	store {i64, i8*} %4340, {i64, i8*}* %4338
	%4341 = load {i64, i8*}, {i64, i8*}* %4338
	%4342 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 620
	store {i64, i8*} %4341, {i64, i8*}* %4342
	%4343 = bitcast i32 (i32, i32, i8*, i32, i64*)* @"__xmknodat" to void ()*
	%4344 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 620
	store void ()* %4343, void ()** %4344
	%4345 = alloca {i64, i8*}
	%4346 = getelementptr [6 x i8], [6 x i8]* @"str.631", i64 0, i64 0
	%4347 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4346, 1
	store {i64, i8*} %4347, {i64, i8*}* %4345
	%4348 = load {i64, i8*}, {i64, i8*}* %4345
	%4349 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 621
	store {i64, i8*} %4348, {i64, i8*}* %4349
	%4350 = bitcast i32 (i32, i64, ...)* @"ioctl" to void ()*
	%4351 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 621
	store void ()* %4350, void ()** %4351
	%4352 = alloca {i64, i8*}
	%4353 = getelementptr [7 x i8], [7 x i8]* @"str.632", i64 0, i64 0
	%4354 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4353, 1
	store {i64, i8*} %4354, {i64, i8*}* %4352
	%4355 = load {i64, i8*}, {i64, i8*}* %4352
	%4356 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 622
	store {i64, i8*} %4355, {i64, i8*}* %4356
	%4357 = bitcast i32 (i8*, i32)* @"access" to void ()*
	%4358 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 622
	store void ()* %4357, void ()** %4358
	%4359 = alloca {i64, i8*}
	%4360 = getelementptr [10 x i8], [10 x i8]* @"str.633", i64 0, i64 0
	%4361 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4360, 1
	store {i64, i8*} %4361, {i64, i8*}* %4359
	%4362 = load {i64, i8*}, {i64, i8*}* %4359
	%4363 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 623
	store {i64, i8*} %4362, {i64, i8*}* %4363
	%4364 = bitcast i32 (i32, i8*, i32, i32)* @"faccessat" to void ()*
	%4365 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 623
	store void ()* %4364, void ()** %4365
	%4366 = alloca {i64, i8*}
	%4367 = getelementptr [6 x i8], [6 x i8]* @"str.634", i64 0, i64 0
	%4368 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4367, 1
	store {i64, i8*} %4368, {i64, i8*}* %4366
	%4369 = load {i64, i8*}, {i64, i8*}* %4366
	%4370 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 624
	store {i64, i8*} %4369, {i64, i8*}* %4370
	%4371 = bitcast i64 (i32, i64, i32)* @"lseek" to void ()*
	%4372 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 624
	store void ()* %4371, void ()** %4372
	%4373 = alloca {i64, i8*}
	%4374 = getelementptr [6 x i8], [6 x i8]* @"str.635", i64 0, i64 0
	%4375 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4374, 1
	store {i64, i8*} %4375, {i64, i8*}* %4373
	%4376 = load {i64, i8*}, {i64, i8*}* %4373
	%4377 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 625
	store {i64, i8*} %4376, {i64, i8*}* %4377
	%4378 = bitcast i32 (i32)* @"close" to void ()*
	%4379 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 625
	store void ()* %4378, void ()** %4379
	%4380 = alloca {i64, i8*}
	%4381 = getelementptr [5 x i8], [5 x i8]* @"str.636", i64 0, i64 0
	%4382 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4381, 1
	store {i64, i8*} %4382, {i64, i8*}* %4380
	%4383 = load {i64, i8*}, {i64, i8*}* %4380
	%4384 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 626
	store {i64, i8*} %4383, {i64, i8*}* %4384
	%4385 = bitcast i64 (i32, i8*, i64)* @"read" to void ()*
	%4386 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 626
	store void ()* %4385, void ()** %4386
	%4387 = alloca {i64, i8*}
	%4388 = getelementptr [6 x i8], [6 x i8]* @"str.637", i64 0, i64 0
	%4389 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4388, 1
	store {i64, i8*} %4389, {i64, i8*}* %4387
	%4390 = load {i64, i8*}, {i64, i8*}* %4387
	%4391 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 627
	store {i64, i8*} %4390, {i64, i8*}* %4391
	%4392 = bitcast i64 (i32, i8*, i64)* @"write" to void ()*
	%4393 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 627
	store void ()* %4392, void ()** %4393
	%4394 = alloca {i64, i8*}
	%4395 = getelementptr [6 x i8], [6 x i8]* @"str.638", i64 0, i64 0
	%4396 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4395, 1
	store {i64, i8*} %4396, {i64, i8*}* %4394
	%4397 = load {i64, i8*}, {i64, i8*}* %4394
	%4398 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 628
	store {i64, i8*} %4397, {i64, i8*}* %4398
	%4399 = bitcast i64 (i32, i8*, i64, i64)* @"pread" to void ()*
	%4400 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 628
	store void ()* %4399, void ()** %4400
	%4401 = alloca {i64, i8*}
	%4402 = getelementptr [7 x i8], [7 x i8]* @"str.639", i64 0, i64 0
	%4403 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4402, 1
	store {i64, i8*} %4403, {i64, i8*}* %4401
	%4404 = load {i64, i8*}, {i64, i8*}* %4401
	%4405 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 629
	store {i64, i8*} %4404, {i64, i8*}* %4405
	%4406 = bitcast i64 (i32, i8*, i64, i64)* @"pwrite" to void ()*
	%4407 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 629
	store void ()* %4406, void ()** %4407
	%4408 = alloca {i64, i8*}
	%4409 = getelementptr [5 x i8], [5 x i8]* @"str.640", i64 0, i64 0
	%4410 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4409, 1
	store {i64, i8*} %4410, {i64, i8*}* %4408
	%4411 = load {i64, i8*}, {i64, i8*}* %4408
	%4412 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 630
	store {i64, i8*} %4411, {i64, i8*}* %4412
	%4413 = bitcast i32 (i32*)* @"pipe" to void ()*
	%4414 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 630
	store void ()* %4413, void ()** %4414
	%4415 = alloca {i64, i8*}
	%4416 = getelementptr [6 x i8], [6 x i8]* @"str.641", i64 0, i64 0
	%4417 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4416, 1
	store {i64, i8*} %4417, {i64, i8*}* %4415
	%4418 = load {i64, i8*}, {i64, i8*}* %4415
	%4419 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 631
	store {i64, i8*} %4418, {i64, i8*}* %4419
	%4420 = bitcast i32 (i32)* @"alarm" to void ()*
	%4421 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 631
	store void ()* %4420, void ()** %4421
	%4422 = alloca {i64, i8*}
	%4423 = getelementptr [6 x i8], [6 x i8]* @"str.642", i64 0, i64 0
	%4424 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4423, 1
	store {i64, i8*} %4424, {i64, i8*}* %4422
	%4425 = load {i64, i8*}, {i64, i8*}* %4422
	%4426 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 632
	store {i64, i8*} %4425, {i64, i8*}* %4426
	%4427 = bitcast i32 (i32)* @"sleep" to void ()*
	%4428 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 632
	store void ()* %4427, void ()** %4428
	%4429 = alloca {i64, i8*}
	%4430 = getelementptr [7 x i8], [7 x i8]* @"str.643", i64 0, i64 0
	%4431 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4430, 1
	store {i64, i8*} %4431, {i64, i8*}* %4429
	%4432 = load {i64, i8*}, {i64, i8*}* %4429
	%4433 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 633
	store {i64, i8*} %4432, {i64, i8*}* %4433
	%4434 = bitcast i32 (i32, i32)* @"ualarm" to void ()*
	%4435 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 633
	store void ()* %4434, void ()** %4435
	%4436 = alloca {i64, i8*}
	%4437 = getelementptr [7 x i8], [7 x i8]* @"str.644", i64 0, i64 0
	%4438 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4437, 1
	store {i64, i8*} %4438, {i64, i8*}* %4436
	%4439 = load {i64, i8*}, {i64, i8*}* %4436
	%4440 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 634
	store {i64, i8*} %4439, {i64, i8*}* %4440
	%4441 = bitcast i32 (i32)* @"usleep" to void ()*
	%4442 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 634
	store void ()* %4441, void ()** %4442
	%4443 = alloca {i64, i8*}
	%4444 = getelementptr [6 x i8], [6 x i8]* @"str.645", i64 0, i64 0
	%4445 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4444, 1
	store {i64, i8*} %4445, {i64, i8*}* %4443
	%4446 = load {i64, i8*}, {i64, i8*}* %4443
	%4447 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 635
	store {i64, i8*} %4446, {i64, i8*}* %4447
	%4448 = bitcast i32 ()* @"pause" to void ()*
	%4449 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 635
	store void ()* %4448, void ()** %4449
	%4450 = alloca {i64, i8*}
	%4451 = getelementptr [6 x i8], [6 x i8]* @"str.646", i64 0, i64 0
	%4452 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4451, 1
	store {i64, i8*} %4452, {i64, i8*}* %4450
	%4453 = load {i64, i8*}, {i64, i8*}* %4450
	%4454 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 636
	store {i64, i8*} %4453, {i64, i8*}* %4454
	%4455 = bitcast i32 (i8*, i32, i32)* @"chown" to void ()*
	%4456 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 636
	store void ()* %4455, void ()** %4456
	%4457 = alloca {i64, i8*}
	%4458 = getelementptr [7 x i8], [7 x i8]* @"str.647", i64 0, i64 0
	%4459 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4458, 1
	store {i64, i8*} %4459, {i64, i8*}* %4457
	%4460 = load {i64, i8*}, {i64, i8*}* %4457
	%4461 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 637
	store {i64, i8*} %4460, {i64, i8*}* %4461
	%4462 = bitcast i32 (i32, i32, i32)* @"fchown" to void ()*
	%4463 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 637
	store void ()* %4462, void ()** %4463
	%4464 = alloca {i64, i8*}
	%4465 = getelementptr [7 x i8], [7 x i8]* @"str.648", i64 0, i64 0
	%4466 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4465, 1
	store {i64, i8*} %4466, {i64, i8*}* %4464
	%4467 = load {i64, i8*}, {i64, i8*}* %4464
	%4468 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 638
	store {i64, i8*} %4467, {i64, i8*}* %4468
	%4469 = bitcast i32 (i8*, i32, i32)* @"lchown" to void ()*
	%4470 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 638
	store void ()* %4469, void ()** %4470
	%4471 = alloca {i64, i8*}
	%4472 = getelementptr [9 x i8], [9 x i8]* @"str.649", i64 0, i64 0
	%4473 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4472, 1
	store {i64, i8*} %4473, {i64, i8*}* %4471
	%4474 = load {i64, i8*}, {i64, i8*}* %4471
	%4475 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 639
	store {i64, i8*} %4474, {i64, i8*}* %4475
	%4476 = bitcast i32 (i32, i8*, i32, i32, i32)* @"fchownat" to void ()*
	%4477 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 639
	store void ()* %4476, void ()** %4477
	%4478 = alloca {i64, i8*}
	%4479 = getelementptr [6 x i8], [6 x i8]* @"str.650", i64 0, i64 0
	%4480 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4479, 1
	store {i64, i8*} %4480, {i64, i8*}* %4478
	%4481 = load {i64, i8*}, {i64, i8*}* %4478
	%4482 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 640
	store {i64, i8*} %4481, {i64, i8*}* %4482
	%4483 = bitcast i32 (i8*)* @"chdir" to void ()*
	%4484 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 640
	store void ()* %4483, void ()** %4484
	%4485 = alloca {i64, i8*}
	%4486 = getelementptr [7 x i8], [7 x i8]* @"str.651", i64 0, i64 0
	%4487 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4486, 1
	store {i64, i8*} %4487, {i64, i8*}* %4485
	%4488 = load {i64, i8*}, {i64, i8*}* %4485
	%4489 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 641
	store {i64, i8*} %4488, {i64, i8*}* %4489
	%4490 = bitcast i32 (i32)* @"fchdir" to void ()*
	%4491 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 641
	store void ()* %4490, void ()** %4491
	%4492 = alloca {i64, i8*}
	%4493 = getelementptr [7 x i8], [7 x i8]* @"str.652", i64 0, i64 0
	%4494 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4493, 1
	store {i64, i8*} %4494, {i64, i8*}* %4492
	%4495 = load {i64, i8*}, {i64, i8*}* %4492
	%4496 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 642
	store {i64, i8*} %4495, {i64, i8*}* %4496
	%4497 = bitcast i8* (i8*, i64)* @"getcwd" to void ()*
	%4498 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 642
	store void ()* %4497, void ()** %4498
	%4499 = alloca {i64, i8*}
	%4500 = getelementptr [4 x i8], [4 x i8]* @"str.653", i64 0, i64 0
	%4501 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %4500, 1
	store {i64, i8*} %4501, {i64, i8*}* %4499
	%4502 = load {i64, i8*}, {i64, i8*}* %4499
	%4503 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 643
	store {i64, i8*} %4502, {i64, i8*}* %4503
	%4504 = bitcast i32 (i32)* @"dup" to void ()*
	%4505 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 643
	store void ()* %4504, void ()** %4505
	%4506 = alloca {i64, i8*}
	%4507 = getelementptr [5 x i8], [5 x i8]* @"str.654", i64 0, i64 0
	%4508 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4507, 1
	store {i64, i8*} %4508, {i64, i8*}* %4506
	%4509 = load {i64, i8*}, {i64, i8*}* %4506
	%4510 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 644
	store {i64, i8*} %4509, {i64, i8*}* %4510
	%4511 = bitcast i32 (i32, i32)* @"dup2" to void ()*
	%4512 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 644
	store void ()* %4511, void ()** %4512
	%4513 = alloca {i64, i8*}
	%4514 = getelementptr [7 x i8], [7 x i8]* @"str.655", i64 0, i64 0
	%4515 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4514, 1
	store {i64, i8*} %4515, {i64, i8*}* %4513
	%4516 = load {i64, i8*}, {i64, i8*}* %4513
	%4517 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 645
	store {i64, i8*} %4516, {i64, i8*}* %4517
	%4518 = bitcast i32 (i8*, i8**, i8**)* @"execve" to void ()*
	%4519 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 645
	store void ()* %4518, void ()** %4519
	%4520 = alloca {i64, i8*}
	%4521 = getelementptr [8 x i8], [8 x i8]* @"str.656", i64 0, i64 0
	%4522 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4521, 1
	store {i64, i8*} %4522, {i64, i8*}* %4520
	%4523 = load {i64, i8*}, {i64, i8*}* %4520
	%4524 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 646
	store {i64, i8*} %4523, {i64, i8*}* %4524
	%4525 = bitcast i32 (i32, i8**, i8**)* @"fexecve" to void ()*
	%4526 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 646
	store void ()* %4525, void ()** %4526
	%4527 = alloca {i64, i8*}
	%4528 = getelementptr [6 x i8], [6 x i8]* @"str.657", i64 0, i64 0
	%4529 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4528, 1
	store {i64, i8*} %4529, {i64, i8*}* %4527
	%4530 = load {i64, i8*}, {i64, i8*}* %4527
	%4531 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 647
	store {i64, i8*} %4530, {i64, i8*}* %4531
	%4532 = bitcast i32 (i8*, i8**)* @"execv" to void ()*
	%4533 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 647
	store void ()* %4532, void ()** %4533
	%4534 = alloca {i64, i8*}
	%4535 = getelementptr [7 x i8], [7 x i8]* @"str.658", i64 0, i64 0
	%4536 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4535, 1
	store {i64, i8*} %4536, {i64, i8*}* %4534
	%4537 = load {i64, i8*}, {i64, i8*}* %4534
	%4538 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 648
	store {i64, i8*} %4537, {i64, i8*}* %4538
	%4539 = bitcast i32 (i8*, i8*, ...)* @"execle" to void ()*
	%4540 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 648
	store void ()* %4539, void ()** %4540
	%4541 = alloca {i64, i8*}
	%4542 = getelementptr [6 x i8], [6 x i8]* @"str.659", i64 0, i64 0
	%4543 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4542, 1
	store {i64, i8*} %4543, {i64, i8*}* %4541
	%4544 = load {i64, i8*}, {i64, i8*}* %4541
	%4545 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 649
	store {i64, i8*} %4544, {i64, i8*}* %4545
	%4546 = bitcast i32 (i8*, i8*, ...)* @"execl" to void ()*
	%4547 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 649
	store void ()* %4546, void ()** %4547
	%4548 = alloca {i64, i8*}
	%4549 = getelementptr [7 x i8], [7 x i8]* @"str.660", i64 0, i64 0
	%4550 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4549, 1
	store {i64, i8*} %4550, {i64, i8*}* %4548
	%4551 = load {i64, i8*}, {i64, i8*}* %4548
	%4552 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 650
	store {i64, i8*} %4551, {i64, i8*}* %4552
	%4553 = bitcast i32 (i8*, i8**)* @"execvp" to void ()*
	%4554 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 650
	store void ()* %4553, void ()** %4554
	%4555 = alloca {i64, i8*}
	%4556 = getelementptr [7 x i8], [7 x i8]* @"str.661", i64 0, i64 0
	%4557 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4556, 1
	store {i64, i8*} %4557, {i64, i8*}* %4555
	%4558 = load {i64, i8*}, {i64, i8*}* %4555
	%4559 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 651
	store {i64, i8*} %4558, {i64, i8*}* %4559
	%4560 = bitcast i32 (i8*, i8*, ...)* @"execlp" to void ()*
	%4561 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 651
	store void ()* %4560, void ()** %4561
	%4562 = alloca {i64, i8*}
	%4563 = getelementptr [5 x i8], [5 x i8]* @"str.662", i64 0, i64 0
	%4564 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4563, 1
	store {i64, i8*} %4564, {i64, i8*}* %4562
	%4565 = load {i64, i8*}, {i64, i8*}* %4562
	%4566 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 652
	store {i64, i8*} %4565, {i64, i8*}* %4566
	%4567 = bitcast i32 (i32)* @"nice" to void ()*
	%4568 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 652
	store void ()* %4567, void ()** %4568
	%4569 = alloca {i64, i8*}
	%4570 = getelementptr [6 x i8], [6 x i8]* @"str.663", i64 0, i64 0
	%4571 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4570, 1
	store {i64, i8*} %4571, {i64, i8*}* %4569
	%4572 = load {i64, i8*}, {i64, i8*}* %4569
	%4573 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 653
	store {i64, i8*} %4572, {i64, i8*}* %4573
	%4574 = bitcast void (i32)* @"_exit" to void ()*
	%4575 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 653
	store void ()* %4574, void ()** %4575
	%4576 = alloca {i64, i8*}
	%4577 = getelementptr [9 x i8], [9 x i8]* @"str.664", i64 0, i64 0
	%4578 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4577, 1
	store {i64, i8*} %4578, {i64, i8*}* %4576
	%4579 = load {i64, i8*}, {i64, i8*}* %4576
	%4580 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 654
	store {i64, i8*} %4579, {i64, i8*}* %4580
	%4581 = bitcast i64 (i8*, i32)* @"pathconf" to void ()*
	%4582 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 654
	store void ()* %4581, void ()** %4582
	%4583 = alloca {i64, i8*}
	%4584 = getelementptr [10 x i8], [10 x i8]* @"str.665", i64 0, i64 0
	%4585 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4584, 1
	store {i64, i8*} %4585, {i64, i8*}* %4583
	%4586 = load {i64, i8*}, {i64, i8*}* %4583
	%4587 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 655
	store {i64, i8*} %4586, {i64, i8*}* %4587
	%4588 = bitcast i64 (i32, i32)* @"fpathconf" to void ()*
	%4589 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 655
	store void ()* %4588, void ()** %4589
	%4590 = alloca {i64, i8*}
	%4591 = getelementptr [8 x i8], [8 x i8]* @"str.666", i64 0, i64 0
	%4592 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4591, 1
	store {i64, i8*} %4592, {i64, i8*}* %4590
	%4593 = load {i64, i8*}, {i64, i8*}* %4590
	%4594 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 656
	store {i64, i8*} %4593, {i64, i8*}* %4594
	%4595 = bitcast i64 (i32)* @"sysconf" to void ()*
	%4596 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 656
	store void ()* %4595, void ()** %4596
	%4597 = alloca {i64, i8*}
	%4598 = getelementptr [8 x i8], [8 x i8]* @"str.667", i64 0, i64 0
	%4599 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4598, 1
	store {i64, i8*} %4599, {i64, i8*}* %4597
	%4600 = load {i64, i8*}, {i64, i8*}* %4597
	%4601 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 657
	store {i64, i8*} %4600, {i64, i8*}* %4601
	%4602 = bitcast i64 (i32, i8*, i64)* @"confstr" to void ()*
	%4603 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 657
	store void ()* %4602, void ()** %4603
	%4604 = alloca {i64, i8*}
	%4605 = getelementptr [7 x i8], [7 x i8]* @"str.668", i64 0, i64 0
	%4606 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4605, 1
	store {i64, i8*} %4606, {i64, i8*}* %4604
	%4607 = load {i64, i8*}, {i64, i8*}* %4604
	%4608 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 658
	store {i64, i8*} %4607, {i64, i8*}* %4608
	%4609 = bitcast i32 ()* @"getpid" to void ()*
	%4610 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 658
	store void ()* %4609, void ()** %4610
	%4611 = alloca {i64, i8*}
	%4612 = getelementptr [8 x i8], [8 x i8]* @"str.669", i64 0, i64 0
	%4613 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4612, 1
	store {i64, i8*} %4613, {i64, i8*}* %4611
	%4614 = load {i64, i8*}, {i64, i8*}* %4611
	%4615 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 659
	store {i64, i8*} %4614, {i64, i8*}* %4615
	%4616 = bitcast i32 ()* @"getppid" to void ()*
	%4617 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 659
	store void ()* %4616, void ()** %4617
	%4618 = alloca {i64, i8*}
	%4619 = getelementptr [8 x i8], [8 x i8]* @"str.670", i64 0, i64 0
	%4620 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4619, 1
	store {i64, i8*} %4620, {i64, i8*}* %4618
	%4621 = load {i64, i8*}, {i64, i8*}* %4618
	%4622 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 660
	store {i64, i8*} %4621, {i64, i8*}* %4622
	%4623 = bitcast i32 ()* @"getpgrp" to void ()*
	%4624 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 660
	store void ()* %4623, void ()** %4624
	%4625 = alloca {i64, i8*}
	%4626 = getelementptr [10 x i8], [10 x i8]* @"str.671", i64 0, i64 0
	%4627 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4626, 1
	store {i64, i8*} %4627, {i64, i8*}* %4625
	%4628 = load {i64, i8*}, {i64, i8*}* %4625
	%4629 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 661
	store {i64, i8*} %4628, {i64, i8*}* %4629
	%4630 = bitcast i32 (i32)* @"__getpgid" to void ()*
	%4631 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 661
	store void ()* %4630, void ()** %4631
	%4632 = alloca {i64, i8*}
	%4633 = getelementptr [8 x i8], [8 x i8]* @"str.672", i64 0, i64 0
	%4634 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4633, 1
	store {i64, i8*} %4634, {i64, i8*}* %4632
	%4635 = load {i64, i8*}, {i64, i8*}* %4632
	%4636 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 662
	store {i64, i8*} %4635, {i64, i8*}* %4636
	%4637 = bitcast i32 (i32)* @"getpgid" to void ()*
	%4638 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 662
	store void ()* %4637, void ()** %4638
	%4639 = alloca {i64, i8*}
	%4640 = getelementptr [8 x i8], [8 x i8]* @"str.673", i64 0, i64 0
	%4641 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4640, 1
	store {i64, i8*} %4641, {i64, i8*}* %4639
	%4642 = load {i64, i8*}, {i64, i8*}* %4639
	%4643 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 663
	store {i64, i8*} %4642, {i64, i8*}* %4643
	%4644 = bitcast i32 (i32, i32)* @"setpgid" to void ()*
	%4645 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 663
	store void ()* %4644, void ()** %4645
	%4646 = alloca {i64, i8*}
	%4647 = getelementptr [8 x i8], [8 x i8]* @"str.674", i64 0, i64 0
	%4648 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4647, 1
	store {i64, i8*} %4648, {i64, i8*}* %4646
	%4649 = load {i64, i8*}, {i64, i8*}* %4646
	%4650 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 664
	store {i64, i8*} %4649, {i64, i8*}* %4650
	%4651 = bitcast i32 ()* @"setpgrp" to void ()*
	%4652 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 664
	store void ()* %4651, void ()** %4652
	%4653 = alloca {i64, i8*}
	%4654 = getelementptr [7 x i8], [7 x i8]* @"str.675", i64 0, i64 0
	%4655 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4654, 1
	store {i64, i8*} %4655, {i64, i8*}* %4653
	%4656 = load {i64, i8*}, {i64, i8*}* %4653
	%4657 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 665
	store {i64, i8*} %4656, {i64, i8*}* %4657
	%4658 = bitcast i32 ()* @"setsid" to void ()*
	%4659 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 665
	store void ()* %4658, void ()** %4659
	%4660 = alloca {i64, i8*}
	%4661 = getelementptr [7 x i8], [7 x i8]* @"str.676", i64 0, i64 0
	%4662 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4661, 1
	store {i64, i8*} %4662, {i64, i8*}* %4660
	%4663 = load {i64, i8*}, {i64, i8*}* %4660
	%4664 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 666
	store {i64, i8*} %4663, {i64, i8*}* %4664
	%4665 = bitcast i32 (i32)* @"getsid" to void ()*
	%4666 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 666
	store void ()* %4665, void ()** %4666
	%4667 = alloca {i64, i8*}
	%4668 = getelementptr [7 x i8], [7 x i8]* @"str.677", i64 0, i64 0
	%4669 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4668, 1
	store {i64, i8*} %4669, {i64, i8*}* %4667
	%4670 = load {i64, i8*}, {i64, i8*}* %4667
	%4671 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 667
	store {i64, i8*} %4670, {i64, i8*}* %4671
	%4672 = bitcast i32 ()* @"getuid" to void ()*
	%4673 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 667
	store void ()* %4672, void ()** %4673
	%4674 = alloca {i64, i8*}
	%4675 = getelementptr [8 x i8], [8 x i8]* @"str.678", i64 0, i64 0
	%4676 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4675, 1
	store {i64, i8*} %4676, {i64, i8*}* %4674
	%4677 = load {i64, i8*}, {i64, i8*}* %4674
	%4678 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 668
	store {i64, i8*} %4677, {i64, i8*}* %4678
	%4679 = bitcast i32 ()* @"geteuid" to void ()*
	%4680 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 668
	store void ()* %4679, void ()** %4680
	%4681 = alloca {i64, i8*}
	%4682 = getelementptr [7 x i8], [7 x i8]* @"str.679", i64 0, i64 0
	%4683 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4682, 1
	store {i64, i8*} %4683, {i64, i8*}* %4681
	%4684 = load {i64, i8*}, {i64, i8*}* %4681
	%4685 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 669
	store {i64, i8*} %4684, {i64, i8*}* %4685
	%4686 = bitcast i32 ()* @"getgid" to void ()*
	%4687 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 669
	store void ()* %4686, void ()** %4687
	%4688 = alloca {i64, i8*}
	%4689 = getelementptr [8 x i8], [8 x i8]* @"str.680", i64 0, i64 0
	%4690 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4689, 1
	store {i64, i8*} %4690, {i64, i8*}* %4688
	%4691 = load {i64, i8*}, {i64, i8*}* %4688
	%4692 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 670
	store {i64, i8*} %4691, {i64, i8*}* %4692
	%4693 = bitcast i32 ()* @"getegid" to void ()*
	%4694 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 670
	store void ()* %4693, void ()** %4694
	%4695 = alloca {i64, i8*}
	%4696 = getelementptr [10 x i8], [10 x i8]* @"str.681", i64 0, i64 0
	%4697 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4696, 1
	store {i64, i8*} %4697, {i64, i8*}* %4695
	%4698 = load {i64, i8*}, {i64, i8*}* %4695
	%4699 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 671
	store {i64, i8*} %4698, {i64, i8*}* %4699
	%4700 = bitcast i32 (i32, i32*)* @"getgroups" to void ()*
	%4701 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 671
	store void ()* %4700, void ()** %4701
	%4702 = alloca {i64, i8*}
	%4703 = getelementptr [7 x i8], [7 x i8]* @"str.682", i64 0, i64 0
	%4704 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4703, 1
	store {i64, i8*} %4704, {i64, i8*}* %4702
	%4705 = load {i64, i8*}, {i64, i8*}* %4702
	%4706 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 672
	store {i64, i8*} %4705, {i64, i8*}* %4706
	%4707 = bitcast i32 (i32)* @"setuid" to void ()*
	%4708 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 672
	store void ()* %4707, void ()** %4708
	%4709 = alloca {i64, i8*}
	%4710 = getelementptr [9 x i8], [9 x i8]* @"str.683", i64 0, i64 0
	%4711 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4710, 1
	store {i64, i8*} %4711, {i64, i8*}* %4709
	%4712 = load {i64, i8*}, {i64, i8*}* %4709
	%4713 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 673
	store {i64, i8*} %4712, {i64, i8*}* %4713
	%4714 = bitcast i32 (i32, i32)* @"setreuid" to void ()*
	%4715 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 673
	store void ()* %4714, void ()** %4715
	%4716 = alloca {i64, i8*}
	%4717 = getelementptr [8 x i8], [8 x i8]* @"str.684", i64 0, i64 0
	%4718 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4717, 1
	store {i64, i8*} %4718, {i64, i8*}* %4716
	%4719 = load {i64, i8*}, {i64, i8*}* %4716
	%4720 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 674
	store {i64, i8*} %4719, {i64, i8*}* %4720
	%4721 = bitcast i32 (i32)* @"seteuid" to void ()*
	%4722 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 674
	store void ()* %4721, void ()** %4722
	%4723 = alloca {i64, i8*}
	%4724 = getelementptr [7 x i8], [7 x i8]* @"str.685", i64 0, i64 0
	%4725 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4724, 1
	store {i64, i8*} %4725, {i64, i8*}* %4723
	%4726 = load {i64, i8*}, {i64, i8*}* %4723
	%4727 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 675
	store {i64, i8*} %4726, {i64, i8*}* %4727
	%4728 = bitcast i32 (i32)* @"setgid" to void ()*
	%4729 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 675
	store void ()* %4728, void ()** %4729
	%4730 = alloca {i64, i8*}
	%4731 = getelementptr [9 x i8], [9 x i8]* @"str.686", i64 0, i64 0
	%4732 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4731, 1
	store {i64, i8*} %4732, {i64, i8*}* %4730
	%4733 = load {i64, i8*}, {i64, i8*}* %4730
	%4734 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 676
	store {i64, i8*} %4733, {i64, i8*}* %4734
	%4735 = bitcast i32 (i32, i32)* @"setregid" to void ()*
	%4736 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 676
	store void ()* %4735, void ()** %4736
	%4737 = alloca {i64, i8*}
	%4738 = getelementptr [8 x i8], [8 x i8]* @"str.687", i64 0, i64 0
	%4739 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4738, 1
	store {i64, i8*} %4739, {i64, i8*}* %4737
	%4740 = load {i64, i8*}, {i64, i8*}* %4737
	%4741 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 677
	store {i64, i8*} %4740, {i64, i8*}* %4741
	%4742 = bitcast i32 (i32)* @"setegid" to void ()*
	%4743 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 677
	store void ()* %4742, void ()** %4743
	%4744 = alloca {i64, i8*}
	%4745 = getelementptr [5 x i8], [5 x i8]* @"str.688", i64 0, i64 0
	%4746 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4745, 1
	store {i64, i8*} %4746, {i64, i8*}* %4744
	%4747 = load {i64, i8*}, {i64, i8*}* %4744
	%4748 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 678
	store {i64, i8*} %4747, {i64, i8*}* %4748
	%4749 = bitcast i32 ()* @"fork" to void ()*
	%4750 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 678
	store void ()* %4749, void ()** %4750
	%4751 = alloca {i64, i8*}
	%4752 = getelementptr [6 x i8], [6 x i8]* @"str.689", i64 0, i64 0
	%4753 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4752, 1
	store {i64, i8*} %4753, {i64, i8*}* %4751
	%4754 = load {i64, i8*}, {i64, i8*}* %4751
	%4755 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 679
	store {i64, i8*} %4754, {i64, i8*}* %4755
	%4756 = bitcast i32 ()* @"vfork" to void ()*
	%4757 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 679
	store void ()* %4756, void ()** %4757
	%4758 = alloca {i64, i8*}
	%4759 = getelementptr [8 x i8], [8 x i8]* @"str.690", i64 0, i64 0
	%4760 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4759, 1
	store {i64, i8*} %4760, {i64, i8*}* %4758
	%4761 = load {i64, i8*}, {i64, i8*}* %4758
	%4762 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 680
	store {i64, i8*} %4761, {i64, i8*}* %4762
	%4763 = bitcast i8* (i32)* @"ttyname" to void ()*
	%4764 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 680
	store void ()* %4763, void ()** %4764
	%4765 = alloca {i64, i8*}
	%4766 = getelementptr [10 x i8], [10 x i8]* @"str.691", i64 0, i64 0
	%4767 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4766, 1
	store {i64, i8*} %4767, {i64, i8*}* %4765
	%4768 = load {i64, i8*}, {i64, i8*}* %4765
	%4769 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 681
	store {i64, i8*} %4768, {i64, i8*}* %4769
	%4770 = bitcast i32 (i32, i8*, i64)* @"ttyname_r" to void ()*
	%4771 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 681
	store void ()* %4770, void ()** %4771
	%4772 = alloca {i64, i8*}
	%4773 = getelementptr [7 x i8], [7 x i8]* @"str.692", i64 0, i64 0
	%4774 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4773, 1
	store {i64, i8*} %4774, {i64, i8*}* %4772
	%4775 = load {i64, i8*}, {i64, i8*}* %4772
	%4776 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 682
	store {i64, i8*} %4775, {i64, i8*}* %4776
	%4777 = bitcast i32 (i32)* @"isatty" to void ()*
	%4778 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 682
	store void ()* %4777, void ()** %4778
	%4779 = alloca {i64, i8*}
	%4780 = getelementptr [8 x i8], [8 x i8]* @"str.693", i64 0, i64 0
	%4781 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4780, 1
	store {i64, i8*} %4781, {i64, i8*}* %4779
	%4782 = load {i64, i8*}, {i64, i8*}* %4779
	%4783 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 683
	store {i64, i8*} %4782, {i64, i8*}* %4783
	%4784 = bitcast i32 ()* @"ttyslot" to void ()*
	%4785 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 683
	store void ()* %4784, void ()** %4785
	%4786 = alloca {i64, i8*}
	%4787 = getelementptr [5 x i8], [5 x i8]* @"str.694", i64 0, i64 0
	%4788 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4787, 1
	store {i64, i8*} %4788, {i64, i8*}* %4786
	%4789 = load {i64, i8*}, {i64, i8*}* %4786
	%4790 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 684
	store {i64, i8*} %4789, {i64, i8*}* %4790
	%4791 = bitcast i32 (i8*, i8*)* @"link" to void ()*
	%4792 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 684
	store void ()* %4791, void ()** %4792
	%4793 = alloca {i64, i8*}
	%4794 = getelementptr [7 x i8], [7 x i8]* @"str.695", i64 0, i64 0
	%4795 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4794, 1
	store {i64, i8*} %4795, {i64, i8*}* %4793
	%4796 = load {i64, i8*}, {i64, i8*}* %4793
	%4797 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 685
	store {i64, i8*} %4796, {i64, i8*}* %4797
	%4798 = bitcast i32 (i32, i8*, i32, i8*, i32)* @"linkat" to void ()*
	%4799 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 685
	store void ()* %4798, void ()** %4799
	%4800 = alloca {i64, i8*}
	%4801 = getelementptr [8 x i8], [8 x i8]* @"str.696", i64 0, i64 0
	%4802 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4801, 1
	store {i64, i8*} %4802, {i64, i8*}* %4800
	%4803 = load {i64, i8*}, {i64, i8*}* %4800
	%4804 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 686
	store {i64, i8*} %4803, {i64, i8*}* %4804
	%4805 = bitcast i32 (i8*, i8*)* @"symlink" to void ()*
	%4806 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 686
	store void ()* %4805, void ()** %4806
	%4807 = alloca {i64, i8*}
	%4808 = getelementptr [9 x i8], [9 x i8]* @"str.697", i64 0, i64 0
	%4809 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4808, 1
	store {i64, i8*} %4809, {i64, i8*}* %4807
	%4810 = load {i64, i8*}, {i64, i8*}* %4807
	%4811 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 687
	store {i64, i8*} %4810, {i64, i8*}* %4811
	%4812 = bitcast i64 (i8*, i8*, i64)* @"readlink" to void ()*
	%4813 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 687
	store void ()* %4812, void ()** %4813
	%4814 = alloca {i64, i8*}
	%4815 = getelementptr [10 x i8], [10 x i8]* @"str.698", i64 0, i64 0
	%4816 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4815, 1
	store {i64, i8*} %4816, {i64, i8*}* %4814
	%4817 = load {i64, i8*}, {i64, i8*}* %4814
	%4818 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 688
	store {i64, i8*} %4817, {i64, i8*}* %4818
	%4819 = bitcast i32 (i8*, i32, i8*)* @"symlinkat" to void ()*
	%4820 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 688
	store void ()* %4819, void ()** %4820
	%4821 = alloca {i64, i8*}
	%4822 = getelementptr [11 x i8], [11 x i8]* @"str.699", i64 0, i64 0
	%4823 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4822, 1
	store {i64, i8*} %4823, {i64, i8*}* %4821
	%4824 = load {i64, i8*}, {i64, i8*}* %4821
	%4825 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 689
	store {i64, i8*} %4824, {i64, i8*}* %4825
	%4826 = bitcast i64 (i32, i8*, i8*, i64)* @"readlinkat" to void ()*
	%4827 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 689
	store void ()* %4826, void ()** %4827
	%4828 = alloca {i64, i8*}
	%4829 = getelementptr [7 x i8], [7 x i8]* @"str.700", i64 0, i64 0
	%4830 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4829, 1
	store {i64, i8*} %4830, {i64, i8*}* %4828
	%4831 = load {i64, i8*}, {i64, i8*}* %4828
	%4832 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 690
	store {i64, i8*} %4831, {i64, i8*}* %4832
	%4833 = bitcast i32 (i8*)* @"unlink" to void ()*
	%4834 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 690
	store void ()* %4833, void ()** %4834
	%4835 = alloca {i64, i8*}
	%4836 = getelementptr [9 x i8], [9 x i8]* @"str.701", i64 0, i64 0
	%4837 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4836, 1
	store {i64, i8*} %4837, {i64, i8*}* %4835
	%4838 = load {i64, i8*}, {i64, i8*}* %4835
	%4839 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 691
	store {i64, i8*} %4838, {i64, i8*}* %4839
	%4840 = bitcast i32 (i32, i8*, i32)* @"unlinkat" to void ()*
	%4841 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 691
	store void ()* %4840, void ()** %4841
	%4842 = alloca {i64, i8*}
	%4843 = getelementptr [6 x i8], [6 x i8]* @"str.702", i64 0, i64 0
	%4844 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4843, 1
	store {i64, i8*} %4844, {i64, i8*}* %4842
	%4845 = load {i64, i8*}, {i64, i8*}* %4842
	%4846 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 692
	store {i64, i8*} %4845, {i64, i8*}* %4846
	%4847 = bitcast i32 (i8*)* @"rmdir" to void ()*
	%4848 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 692
	store void ()* %4847, void ()** %4848
	%4849 = alloca {i64, i8*}
	%4850 = getelementptr [10 x i8], [10 x i8]* @"str.703", i64 0, i64 0
	%4851 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4850, 1
	store {i64, i8*} %4851, {i64, i8*}* %4849
	%4852 = load {i64, i8*}, {i64, i8*}* %4849
	%4853 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 693
	store {i64, i8*} %4852, {i64, i8*}* %4853
	%4854 = bitcast i32 (i32)* @"tcgetpgrp" to void ()*
	%4855 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 693
	store void ()* %4854, void ()** %4855
	%4856 = alloca {i64, i8*}
	%4857 = getelementptr [10 x i8], [10 x i8]* @"str.704", i64 0, i64 0
	%4858 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4857, 1
	store {i64, i8*} %4858, {i64, i8*}* %4856
	%4859 = load {i64, i8*}, {i64, i8*}* %4856
	%4860 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 694
	store {i64, i8*} %4859, {i64, i8*}* %4860
	%4861 = bitcast i32 (i32, i32)* @"tcsetpgrp" to void ()*
	%4862 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 694
	store void ()* %4861, void ()** %4862
	%4863 = alloca {i64, i8*}
	%4864 = getelementptr [9 x i8], [9 x i8]* @"str.705", i64 0, i64 0
	%4865 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %4864, 1
	store {i64, i8*} %4865, {i64, i8*}* %4863
	%4866 = load {i64, i8*}, {i64, i8*}* %4863
	%4867 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 695
	store {i64, i8*} %4866, {i64, i8*}* %4867
	%4868 = bitcast i8* ()* @"getlogin" to void ()*
	%4869 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 695
	store void ()* %4868, void ()** %4869
	%4870 = alloca {i64, i8*}
	%4871 = getelementptr [11 x i8], [11 x i8]* @"str.706", i64 0, i64 0
	%4872 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4871, 1
	store {i64, i8*} %4872, {i64, i8*}* %4870
	%4873 = load {i64, i8*}, {i64, i8*}* %4870
	%4874 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 696
	store {i64, i8*} %4873, {i64, i8*}* %4874
	%4875 = bitcast i32 (i8*, i64)* @"getlogin_r" to void ()*
	%4876 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 696
	store void ()* %4875, void ()** %4876
	%4877 = alloca {i64, i8*}
	%4878 = getelementptr [7 x i8], [7 x i8]* @"str.707", i64 0, i64 0
	%4879 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4878, 1
	store {i64, i8*} %4879, {i64, i8*}* %4877
	%4880 = load {i64, i8*}, {i64, i8*}* %4877
	%4881 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 697
	store {i64, i8*} %4880, {i64, i8*}* %4881
	%4882 = bitcast i32 (i32, i8**, i8*)* @"getopt" to void ()*
	%4883 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 697
	store void ()* %4882, void ()** %4883
	%4884 = alloca {i64, i8*}
	%4885 = getelementptr [12 x i8], [12 x i8]* @"str.708", i64 0, i64 0
	%4886 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %4885, 1
	store {i64, i8*} %4886, {i64, i8*}* %4884
	%4887 = load {i64, i8*}, {i64, i8*}* %4884
	%4888 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 698
	store {i64, i8*} %4887, {i64, i8*}* %4888
	%4889 = bitcast i32 (i8*, i64)* @"gethostname" to void ()*
	%4890 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 698
	store void ()* %4889, void ()** %4890
	%4891 = alloca {i64, i8*}
	%4892 = getelementptr [12 x i8], [12 x i8]* @"str.709", i64 0, i64 0
	%4893 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %4892, 1
	store {i64, i8*} %4893, {i64, i8*}* %4891
	%4894 = load {i64, i8*}, {i64, i8*}* %4891
	%4895 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 699
	store {i64, i8*} %4894, {i64, i8*}* %4895
	%4896 = bitcast i32 (i8*, i64)* @"sethostname" to void ()*
	%4897 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 699
	store void ()* %4896, void ()** %4897
	%4898 = alloca {i64, i8*}
	%4899 = getelementptr [10 x i8], [10 x i8]* @"str.710", i64 0, i64 0
	%4900 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4899, 1
	store {i64, i8*} %4900, {i64, i8*}* %4898
	%4901 = load {i64, i8*}, {i64, i8*}* %4898
	%4902 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 700
	store {i64, i8*} %4901, {i64, i8*}* %4902
	%4903 = bitcast i32 (i64)* @"sethostid" to void ()*
	%4904 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 700
	store void ()* %4903, void ()** %4904
	%4905 = alloca {i64, i8*}
	%4906 = getelementptr [14 x i8], [14 x i8]* @"str.711", i64 0, i64 0
	%4907 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %4906, 1
	store {i64, i8*} %4907, {i64, i8*}* %4905
	%4908 = load {i64, i8*}, {i64, i8*}* %4905
	%4909 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 701
	store {i64, i8*} %4908, {i64, i8*}* %4909
	%4910 = bitcast i32 (i8*, i64)* @"getdomainname" to void ()*
	%4911 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 701
	store void ()* %4910, void ()** %4911
	%4912 = alloca {i64, i8*}
	%4913 = getelementptr [14 x i8], [14 x i8]* @"str.712", i64 0, i64 0
	%4914 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %4913, 1
	store {i64, i8*} %4914, {i64, i8*}* %4912
	%4915 = load {i64, i8*}, {i64, i8*}* %4912
	%4916 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 702
	store {i64, i8*} %4915, {i64, i8*}* %4916
	%4917 = bitcast i32 (i8*, i64)* @"setdomainname" to void ()*
	%4918 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 702
	store void ()* %4917, void ()** %4918
	%4919 = alloca {i64, i8*}
	%4920 = getelementptr [8 x i8], [8 x i8]* @"str.713", i64 0, i64 0
	%4921 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4920, 1
	store {i64, i8*} %4921, {i64, i8*}* %4919
	%4922 = load {i64, i8*}, {i64, i8*}* %4919
	%4923 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 703
	store {i64, i8*} %4922, {i64, i8*}* %4923
	%4924 = bitcast i32 ()* @"vhangup" to void ()*
	%4925 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 703
	store void ()* %4924, void ()** %4925
	%4926 = alloca {i64, i8*}
	%4927 = getelementptr [7 x i8], [7 x i8]* @"str.714", i64 0, i64 0
	%4928 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4927, 1
	store {i64, i8*} %4928, {i64, i8*}* %4926
	%4929 = load {i64, i8*}, {i64, i8*}* %4926
	%4930 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 704
	store {i64, i8*} %4929, {i64, i8*}* %4930
	%4931 = bitcast i32 (i16*, i64, i64, i32)* @"profil" to void ()*
	%4932 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 704
	store void ()* %4931, void ()** %4932
	%4933 = alloca {i64, i8*}
	%4934 = getelementptr [5 x i8], [5 x i8]* @"str.715", i64 0, i64 0
	%4935 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4934, 1
	store {i64, i8*} %4935, {i64, i8*}* %4933
	%4936 = load {i64, i8*}, {i64, i8*}* %4933
	%4937 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 705
	store {i64, i8*} %4936, {i64, i8*}* %4937
	%4938 = bitcast i32 (i8*)* @"acct" to void ()*
	%4939 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 705
	store void ()* %4938, void ()** %4939
	%4940 = alloca {i64, i8*}
	%4941 = getelementptr [13 x i8], [13 x i8]* @"str.716", i64 0, i64 0
	%4942 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4941, 1
	store {i64, i8*} %4942, {i64, i8*}* %4940
	%4943 = load {i64, i8*}, {i64, i8*}* %4940
	%4944 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 706
	store {i64, i8*} %4943, {i64, i8*}* %4944
	%4945 = bitcast i8* ()* @"getusershell" to void ()*
	%4946 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 706
	store void ()* %4945, void ()** %4946
	%4947 = alloca {i64, i8*}
	%4948 = getelementptr [13 x i8], [13 x i8]* @"str.717", i64 0, i64 0
	%4949 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4948, 1
	store {i64, i8*} %4949, {i64, i8*}* %4947
	%4950 = load {i64, i8*}, {i64, i8*}* %4947
	%4951 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 707
	store {i64, i8*} %4950, {i64, i8*}* %4951
	%4952 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 707
	store void ()* @"endusershell", void ()** %4952
	%4953 = alloca {i64, i8*}
	%4954 = getelementptr [13 x i8], [13 x i8]* @"str.718", i64 0, i64 0
	%4955 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %4954, 1
	store {i64, i8*} %4955, {i64, i8*}* %4953
	%4956 = load {i64, i8*}, {i64, i8*}* %4953
	%4957 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 708
	store {i64, i8*} %4956, {i64, i8*}* %4957
	%4958 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 708
	store void ()* @"setusershell", void ()** %4958
	%4959 = alloca {i64, i8*}
	%4960 = getelementptr [7 x i8], [7 x i8]* @"str.719", i64 0, i64 0
	%4961 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4960, 1
	store {i64, i8*} %4961, {i64, i8*}* %4959
	%4962 = load {i64, i8*}, {i64, i8*}* %4959
	%4963 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 709
	store {i64, i8*} %4962, {i64, i8*}* %4963
	%4964 = bitcast i32 (i32, i32)* @"daemon" to void ()*
	%4965 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 709
	store void ()* %4964, void ()** %4965
	%4966 = alloca {i64, i8*}
	%4967 = getelementptr [7 x i8], [7 x i8]* @"str.720", i64 0, i64 0
	%4968 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4967, 1
	store {i64, i8*} %4968, {i64, i8*}* %4966
	%4969 = load {i64, i8*}, {i64, i8*}* %4966
	%4970 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 710
	store {i64, i8*} %4969, {i64, i8*}* %4970
	%4971 = bitcast i32 (i8*)* @"chroot" to void ()*
	%4972 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 710
	store void ()* %4971, void ()** %4972
	%4973 = alloca {i64, i8*}
	%4974 = getelementptr [8 x i8], [8 x i8]* @"str.721", i64 0, i64 0
	%4975 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %4974, 1
	store {i64, i8*} %4975, {i64, i8*}* %4973
	%4976 = load {i64, i8*}, {i64, i8*}* %4973
	%4977 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 711
	store {i64, i8*} %4976, {i64, i8*}* %4977
	%4978 = bitcast i8* (i8*)* @"getpass" to void ()*
	%4979 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 711
	store void ()* %4978, void ()** %4979
	%4980 = alloca {i64, i8*}
	%4981 = getelementptr [6 x i8], [6 x i8]* @"str.722", i64 0, i64 0
	%4982 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %4981, 1
	store {i64, i8*} %4982, {i64, i8*}* %4980
	%4983 = load {i64, i8*}, {i64, i8*}* %4980
	%4984 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 712
	store {i64, i8*} %4983, {i64, i8*}* %4984
	%4985 = bitcast i32 (i32)* @"fsync" to void ()*
	%4986 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 712
	store void ()* %4985, void ()** %4986
	%4987 = alloca {i64, i8*}
	%4988 = getelementptr [10 x i8], [10 x i8]* @"str.723", i64 0, i64 0
	%4989 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %4988, 1
	store {i64, i8*} %4989, {i64, i8*}* %4987
	%4990 = load {i64, i8*}, {i64, i8*}* %4987
	%4991 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 713
	store {i64, i8*} %4990, {i64, i8*}* %4991
	%4992 = bitcast i64 ()* @"gethostid" to void ()*
	%4993 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 713
	store void ()* %4992, void ()** %4993
	%4994 = alloca {i64, i8*}
	%4995 = getelementptr [5 x i8], [5 x i8]* @"str.724", i64 0, i64 0
	%4996 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4995, 1
	store {i64, i8*} %4996, {i64, i8*}* %4994
	%4997 = load {i64, i8*}, {i64, i8*}* %4994
	%4998 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 714
	store {i64, i8*} %4997, {i64, i8*}* %4998
	%4999 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 714
	store void ()* @"sync", void ()** %4999
	%5000 = alloca {i64, i8*}
	%5001 = getelementptr [12 x i8], [12 x i8]* @"str.725", i64 0, i64 0
	%5002 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %5001, 1
	store {i64, i8*} %5002, {i64, i8*}* %5000
	%5003 = load {i64, i8*}, {i64, i8*}* %5000
	%5004 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 715
	store {i64, i8*} %5003, {i64, i8*}* %5004
	%5005 = bitcast i32 ()* @"getpagesize" to void ()*
	%5006 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 715
	store void ()* %5005, void ()** %5006
	%5007 = alloca {i64, i8*}
	%5008 = getelementptr [14 x i8], [14 x i8]* @"str.726", i64 0, i64 0
	%5009 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %5008, 1
	store {i64, i8*} %5009, {i64, i8*}* %5007
	%5010 = load {i64, i8*}, {i64, i8*}* %5007
	%5011 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 716
	store {i64, i8*} %5010, {i64, i8*}* %5011
	%5012 = bitcast i32 ()* @"getdtablesize" to void ()*
	%5013 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 716
	store void ()* %5012, void ()** %5013
	%5014 = alloca {i64, i8*}
	%5015 = getelementptr [9 x i8], [9 x i8]* @"str.727", i64 0, i64 0
	%5016 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %5015, 1
	store {i64, i8*} %5016, {i64, i8*}* %5014
	%5017 = load {i64, i8*}, {i64, i8*}* %5014
	%5018 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 717
	store {i64, i8*} %5017, {i64, i8*}* %5018
	%5019 = bitcast i32 (i8*, i64)* @"truncate" to void ()*
	%5020 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 717
	store void ()* %5019, void ()** %5020
	%5021 = alloca {i64, i8*}
	%5022 = getelementptr [10 x i8], [10 x i8]* @"str.728", i64 0, i64 0
	%5023 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %5022, 1
	store {i64, i8*} %5023, {i64, i8*}* %5021
	%5024 = load {i64, i8*}, {i64, i8*}* %5021
	%5025 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 718
	store {i64, i8*} %5024, {i64, i8*}* %5025
	%5026 = bitcast i32 (i32, i64)* @"ftruncate" to void ()*
	%5027 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 718
	store void ()* %5026, void ()** %5027
	%5028 = alloca {i64, i8*}
	%5029 = getelementptr [4 x i8], [4 x i8]* @"str.729", i64 0, i64 0
	%5030 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %5029, 1
	store {i64, i8*} %5030, {i64, i8*}* %5028
	%5031 = load {i64, i8*}, {i64, i8*}* %5028
	%5032 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 719
	store {i64, i8*} %5031, {i64, i8*}* %5032
	%5033 = bitcast i32 (i8*)* @"brk" to void ()*
	%5034 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 719
	store void ()* %5033, void ()** %5034
	%5035 = alloca {i64, i8*}
	%5036 = getelementptr [5 x i8], [5 x i8]* @"str.730", i64 0, i64 0
	%5037 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %5036, 1
	store {i64, i8*} %5037, {i64, i8*}* %5035
	%5038 = load {i64, i8*}, {i64, i8*}* %5035
	%5039 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 720
	store {i64, i8*} %5038, {i64, i8*}* %5039
	%5040 = bitcast i8* (i64)* @"sbrk" to void ()*
	%5041 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 720
	store void ()* %5040, void ()** %5041
	%5042 = alloca {i64, i8*}
	%5043 = getelementptr [8 x i8], [8 x i8]* @"str.731", i64 0, i64 0
	%5044 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %5043, 1
	store {i64, i8*} %5044, {i64, i8*}* %5042
	%5045 = load {i64, i8*}, {i64, i8*}* %5042
	%5046 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 721
	store {i64, i8*} %5045, {i64, i8*}* %5046
	%5047 = bitcast i64 (i64, ...)* @"syscall" to void ()*
	%5048 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 721
	store void ()* %5047, void ()** %5048
	%5049 = alloca {i64, i8*}
	%5050 = getelementptr [6 x i8], [6 x i8]* @"str.732", i64 0, i64 0
	%5051 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %5050, 1
	store {i64, i8*} %5051, {i64, i8*}* %5049
	%5052 = load {i64, i8*}, {i64, i8*}* %5049
	%5053 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 722
	store {i64, i8*} %5052, {i64, i8*}* %5053
	%5054 = bitcast i32 (i32, i32, i64)* @"lockf" to void ()*
	%5055 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 722
	store void ()* %5054, void ()** %5055
	%5056 = alloca {i64, i8*}
	%5057 = getelementptr [10 x i8], [10 x i8]* @"str.733", i64 0, i64 0
	%5058 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %5057, 1
	store {i64, i8*} %5058, {i64, i8*}* %5056
	%5059 = load {i64, i8*}, {i64, i8*}* %5056
	%5060 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 723
	store {i64, i8*} %5059, {i64, i8*}* %5060
	%5061 = bitcast i32 (i32)* @"fdatasync" to void ()*
	%5062 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 723
	store void ()* %5061, void ()** %5062
	%5063 = alloca {i64, i8*}
	%5064 = getelementptr [6 x i8], [6 x i8]* @"str.734", i64 0, i64 0
	%5065 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %5064, 1
	store {i64, i8*} %5065, {i64, i8*}* %5063
	%5066 = load {i64, i8*}, {i64, i8*}* %5063
	%5067 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 724
	store {i64, i8*} %5066, {i64, i8*}* %5067
	%5068 = bitcast i8* (i8*, i8*)* @"crypt" to void ()*
	%5069 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 724
	store void ()* %5068, void ()** %5069
	%5070 = alloca {i64, i8*}
	%5071 = getelementptr [11 x i8], [11 x i8]* @"str.735", i64 0, i64 0
	%5072 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %5071, 1
	store {i64, i8*} %5072, {i64, i8*}* %5070
	%5073 = load {i64, i8*}, {i64, i8*}* %5070
	%5074 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 725
	store {i64, i8*} %5073, {i64, i8*}* %5074
	%5075 = bitcast i32 (i8*, i64)* @"getentropy" to void ()*
	%5076 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 725
	store void ()* %5075, void ()** %5076
	%5077 = alloca {i64, i8*}
	%5078 = getelementptr [12 x i8], [12 x i8]* @"str.736", i64 0, i64 0
	%5079 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %5078, 1
	store {i64, i8*} %5079, {i64, i8*}* %5077
	%5080 = load {i64, i8*}, {i64, i8*}* %5077
	%5081 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 726
	store {i64, i8*} %5080, {i64, i8*}* %5081
	%5082 = bitcast i8 (i8*, i8*)* @"starts_with" to void ()*
	%5083 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 726
	store void ()* %5082, void ()** %5083
	%5084 = alloca {i64, i8*}
	%5085 = getelementptr [7 x i8], [7 x i8]* @"str.737", i64 0, i64 0
	%5086 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5085, 1
	store {i64, i8*} %5086, {i64, i8*}* %5084
	%5087 = load {i64, i8*}, {i64, i8*}* %5084
	%5088 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 727
	store {i64, i8*} %5087, {i64, i8*}* %5088
	%5089 = bitcast i32 (i8*, i8*, ...)* @"concat" to void ()*
	%5090 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 727
	store void ()* %5089, void ()** %5090
	%5091 = alloca {i64, i8*}
	%5092 = getelementptr [14 x i8], [14 x i8]* @"str.738", i64 0, i64 0
	%5093 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %5092, 1
	store {i64, i8*} %5093, {i64, i8*}* %5091
	%5094 = load {i64, i8*}, {i64, i8*}* %5091
	%5095 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 728
	store {i64, i8*} %5094, {i64, i8*}* %5095
	%5096 = bitcast void (i8*, i8*)* @"absolute_path" to void ()*
	%5097 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 728
	store void ()* %5096, void ()** %5097
	%5098 = alloca {i64, i8*}
	%5099 = getelementptr [16 x i8], [16 x i8]* @"str.739", i64 0, i64 0
	%5100 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5099, 1
	store {i64, i8*} %5100, {i64, i8*}* %5098
	%5101 = load {i64, i8*}, {i64, i8*}* %5098
	%5102 = getelementptr [730 x {i64, i8*}], [730 x {i64, i8*}]* @"cstd::__DEF_NAMES", i32 0, i32 729
	store {i64, i8*} %5101, {i64, i8*}* %5102
	%5103 = bitcast void (i8*)* @"executable_file" to void ()*
	%5104 = getelementptr [730 x void ()*], [730 x void ()*]* @"cstd::__DEFS", i32 0, i32 729
	store void ()* %5103, void ()** %5104
	%5105 = alloca {i64, i8*}
	%5106 = getelementptr [6 x i8], [6 x i8]* @"str.740", i64 0, i64 0
	%5107 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %5106, 1
	store {i64, i8*} %5107, {i64, i8*}* %5105
	%5108 = load {i64, i8*}, {i64, i8*}* %5105
	%5109 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 0
	store {i64, i8*} %5108, {i64, i8*}* %5109
	%5110 = bitcast %"cstd::s__IO_FILE"** @"stdin" to i8*
	%5111 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 0
	store i8* %5110, i8** %5111
	%5112 = alloca {i64, i8*}
	%5113 = getelementptr [7 x i8], [7 x i8]* @"str.741", i64 0, i64 0
	%5114 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5113, 1
	store {i64, i8*} %5114, {i64, i8*}* %5112
	%5115 = load {i64, i8*}, {i64, i8*}* %5112
	%5116 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 1
	store {i64, i8*} %5115, {i64, i8*}* %5116
	%5117 = bitcast %"cstd::s__IO_FILE"** @"stdout" to i8*
	%5118 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 1
	store i8* %5117, i8** %5118
	%5119 = alloca {i64, i8*}
	%5120 = getelementptr [7 x i8], [7 x i8]* @"str.742", i64 0, i64 0
	%5121 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5120, 1
	store {i64, i8*} %5121, {i64, i8*}* %5119
	%5122 = load {i64, i8*}, {i64, i8*}* %5119
	%5123 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 2
	store {i64, i8*} %5122, {i64, i8*}* %5123
	%5124 = bitcast %"cstd::s__IO_FILE"** @"stderr" to i8*
	%5125 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 2
	store i8* %5124, i8** %5125
	%5126 = alloca {i64, i8*}
	%5127 = getelementptr [9 x i8], [9 x i8]* @"str.743", i64 0, i64 0
	%5128 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %5127, 1
	store {i64, i8*} %5128, {i64, i8*}* %5126
	%5129 = load {i64, i8*}, {i64, i8*}* %5126
	%5130 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 3
	store {i64, i8*} %5129, {i64, i8*}* %5130
	%5131 = bitcast [2 x i8*]* @"__tzname" to i8*
	%5132 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 3
	store i8* %5131, i8** %5132
	%5133 = alloca {i64, i8*}
	%5134 = getelementptr [11 x i8], [11 x i8]* @"str.744", i64 0, i64 0
	%5135 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %5134, 1
	store {i64, i8*} %5135, {i64, i8*}* %5133
	%5136 = load {i64, i8*}, {i64, i8*}* %5133
	%5137 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 4
	store {i64, i8*} %5136, {i64, i8*}* %5137
	%5138 = bitcast i32* @"__daylight" to i8*
	%5139 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 4
	store i8* %5138, i8** %5139
	%5140 = alloca {i64, i8*}
	%5141 = getelementptr [11 x i8], [11 x i8]* @"str.745", i64 0, i64 0
	%5142 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %5141, 1
	store {i64, i8*} %5142, {i64, i8*}* %5140
	%5143 = load {i64, i8*}, {i64, i8*}* %5140
	%5144 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 5
	store {i64, i8*} %5143, {i64, i8*}* %5144
	%5145 = bitcast i64* @"__timezone" to i8*
	%5146 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 5
	store i8* %5145, i8** %5146
	%5147 = alloca {i64, i8*}
	%5148 = getelementptr [7 x i8], [7 x i8]* @"str.746", i64 0, i64 0
	%5149 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5148, 1
	store {i64, i8*} %5149, {i64, i8*}* %5147
	%5150 = load {i64, i8*}, {i64, i8*}* %5147
	%5151 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 6
	store {i64, i8*} %5150, {i64, i8*}* %5151
	%5152 = bitcast [2 x i8*]* @"tzname" to i8*
	%5153 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 6
	store i8* %5152, i8** %5153
	%5154 = alloca {i64, i8*}
	%5155 = getelementptr [9 x i8], [9 x i8]* @"str.747", i64 0, i64 0
	%5156 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %5155, 1
	store {i64, i8*} %5156, {i64, i8*}* %5154
	%5157 = load {i64, i8*}, {i64, i8*}* %5154
	%5158 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 7
	store {i64, i8*} %5157, {i64, i8*}* %5158
	%5159 = bitcast i32* @"daylight" to i8*
	%5160 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 7
	store i8* %5159, i8** %5160
	%5161 = alloca {i64, i8*}
	%5162 = getelementptr [9 x i8], [9 x i8]* @"str.748", i64 0, i64 0
	%5163 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %5162, 1
	store {i64, i8*} %5163, {i64, i8*}* %5161
	%5164 = load {i64, i8*}, {i64, i8*}* %5161
	%5165 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 8
	store {i64, i8*} %5164, {i64, i8*}* %5165
	%5166 = bitcast i64* @"timezone" to i8*
	%5167 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 8
	store i8* %5166, i8** %5167
	%5168 = alloca {i64, i8*}
	%5169 = getelementptr [8 x i8], [8 x i8]* @"str.749", i64 0, i64 0
	%5170 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %5169, 1
	store {i64, i8*} %5170, {i64, i8*}* %5168
	%5171 = load {i64, i8*}, {i64, i8*}* %5168
	%5172 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 9
	store {i64, i8*} %5171, {i64, i8*}* %5172
	%5173 = bitcast i32* @"signgam" to i8*
	%5174 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 9
	store i8* %5173, i8** %5174
	%5175 = alloca {i64, i8*}
	%5176 = getelementptr [13 x i8], [13 x i8]* @"str.750", i64 0, i64 0
	%5177 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %5176, 1
	store {i64, i8*} %5177, {i64, i8*}* %5175
	%5178 = load {i64, i8*}, {i64, i8*}* %5175
	%5179 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 10
	store {i64, i8*} %5178, {i64, i8*}* %5179
	%5180 = bitcast [65 x i8*]* @"_sys_siglist" to i8*
	%5181 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 10
	store i8* %5180, i8** %5181
	%5182 = alloca {i64, i8*}
	%5183 = getelementptr [12 x i8], [12 x i8]* @"str.751", i64 0, i64 0
	%5184 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %5183, 1
	store {i64, i8*} %5184, {i64, i8*}* %5182
	%5185 = load {i64, i8*}, {i64, i8*}* %5182
	%5186 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 11
	store {i64, i8*} %5185, {i64, i8*}* %5186
	%5187 = bitcast [65 x i8*]* @"sys_siglist" to i8*
	%5188 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 11
	store i8* %5187, i8** %5188
	%5189 = alloca {i64, i8*}
	%5190 = getelementptr [14 x i8], [14 x i8]* @"str.752", i64 0, i64 0
	%5191 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %5190, 1
	store {i64, i8*} %5191, {i64, i8*}* %5189
	%5192 = load {i64, i8*}, {i64, i8*}* %5189
	%5193 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 12
	store {i64, i8*} %5192, {i64, i8*}* %5193
	%5194 = bitcast %"cstd::ffi_type"* @"ffi_type_void" to i8*
	%5195 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 12
	store i8* %5194, i8** %5195
	%5196 = alloca {i64, i8*}
	%5197 = getelementptr [15 x i8], [15 x i8]* @"str.753", i64 0, i64 0
	%5198 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %5197, 1
	store {i64, i8*} %5198, {i64, i8*}* %5196
	%5199 = load {i64, i8*}, {i64, i8*}* %5196
	%5200 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 13
	store {i64, i8*} %5199, {i64, i8*}* %5200
	%5201 = bitcast %"cstd::ffi_type"* @"ffi_type_uint8" to i8*
	%5202 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 13
	store i8* %5201, i8** %5202
	%5203 = alloca {i64, i8*}
	%5204 = getelementptr [15 x i8], [15 x i8]* @"str.754", i64 0, i64 0
	%5205 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %5204, 1
	store {i64, i8*} %5205, {i64, i8*}* %5203
	%5206 = load {i64, i8*}, {i64, i8*}* %5203
	%5207 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 14
	store {i64, i8*} %5206, {i64, i8*}* %5207
	%5208 = bitcast %"cstd::ffi_type"* @"ffi_type_sint8" to i8*
	%5209 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 14
	store i8* %5208, i8** %5209
	%5210 = alloca {i64, i8*}
	%5211 = getelementptr [16 x i8], [16 x i8]* @"str.755", i64 0, i64 0
	%5212 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5211, 1
	store {i64, i8*} %5212, {i64, i8*}* %5210
	%5213 = load {i64, i8*}, {i64, i8*}* %5210
	%5214 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 15
	store {i64, i8*} %5213, {i64, i8*}* %5214
	%5215 = bitcast %"cstd::ffi_type"* @"ffi_type_uint16" to i8*
	%5216 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 15
	store i8* %5215, i8** %5216
	%5217 = alloca {i64, i8*}
	%5218 = getelementptr [16 x i8], [16 x i8]* @"str.756", i64 0, i64 0
	%5219 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5218, 1
	store {i64, i8*} %5219, {i64, i8*}* %5217
	%5220 = load {i64, i8*}, {i64, i8*}* %5217
	%5221 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 16
	store {i64, i8*} %5220, {i64, i8*}* %5221
	%5222 = bitcast %"cstd::ffi_type"* @"ffi_type_sint16" to i8*
	%5223 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 16
	store i8* %5222, i8** %5223
	%5224 = alloca {i64, i8*}
	%5225 = getelementptr [16 x i8], [16 x i8]* @"str.757", i64 0, i64 0
	%5226 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5225, 1
	store {i64, i8*} %5226, {i64, i8*}* %5224
	%5227 = load {i64, i8*}, {i64, i8*}* %5224
	%5228 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 17
	store {i64, i8*} %5227, {i64, i8*}* %5228
	%5229 = bitcast %"cstd::ffi_type"* @"ffi_type_uint32" to i8*
	%5230 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 17
	store i8* %5229, i8** %5230
	%5231 = alloca {i64, i8*}
	%5232 = getelementptr [16 x i8], [16 x i8]* @"str.758", i64 0, i64 0
	%5233 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5232, 1
	store {i64, i8*} %5233, {i64, i8*}* %5231
	%5234 = load {i64, i8*}, {i64, i8*}* %5231
	%5235 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 18
	store {i64, i8*} %5234, {i64, i8*}* %5235
	%5236 = bitcast %"cstd::ffi_type"* @"ffi_type_sint32" to i8*
	%5237 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 18
	store i8* %5236, i8** %5237
	%5238 = alloca {i64, i8*}
	%5239 = getelementptr [16 x i8], [16 x i8]* @"str.759", i64 0, i64 0
	%5240 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5239, 1
	store {i64, i8*} %5240, {i64, i8*}* %5238
	%5241 = load {i64, i8*}, {i64, i8*}* %5238
	%5242 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 19
	store {i64, i8*} %5241, {i64, i8*}* %5242
	%5243 = bitcast %"cstd::ffi_type"* @"ffi_type_uint64" to i8*
	%5244 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 19
	store i8* %5243, i8** %5244
	%5245 = alloca {i64, i8*}
	%5246 = getelementptr [16 x i8], [16 x i8]* @"str.760", i64 0, i64 0
	%5247 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5246, 1
	store {i64, i8*} %5247, {i64, i8*}* %5245
	%5248 = load {i64, i8*}, {i64, i8*}* %5245
	%5249 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 20
	store {i64, i8*} %5248, {i64, i8*}* %5249
	%5250 = bitcast %"cstd::ffi_type"* @"ffi_type_sint64" to i8*
	%5251 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 20
	store i8* %5250, i8** %5251
	%5252 = alloca {i64, i8*}
	%5253 = getelementptr [15 x i8], [15 x i8]* @"str.761", i64 0, i64 0
	%5254 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %5253, 1
	store {i64, i8*} %5254, {i64, i8*}* %5252
	%5255 = load {i64, i8*}, {i64, i8*}* %5252
	%5256 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 21
	store {i64, i8*} %5255, {i64, i8*}* %5256
	%5257 = bitcast %"cstd::ffi_type"* @"ffi_type_float" to i8*
	%5258 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 21
	store i8* %5257, i8** %5258
	%5259 = alloca {i64, i8*}
	%5260 = getelementptr [16 x i8], [16 x i8]* @"str.762", i64 0, i64 0
	%5261 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %5260, 1
	store {i64, i8*} %5261, {i64, i8*}* %5259
	%5262 = load {i64, i8*}, {i64, i8*}* %5259
	%5263 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 22
	store {i64, i8*} %5262, {i64, i8*}* %5263
	%5264 = bitcast %"cstd::ffi_type"* @"ffi_type_double" to i8*
	%5265 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 22
	store i8* %5264, i8** %5265
	%5266 = alloca {i64, i8*}
	%5267 = getelementptr [17 x i8], [17 x i8]* @"str.763", i64 0, i64 0
	%5268 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %5267, 1
	store {i64, i8*} %5268, {i64, i8*}* %5266
	%5269 = load {i64, i8*}, {i64, i8*}* %5266
	%5270 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 23
	store {i64, i8*} %5269, {i64, i8*}* %5270
	%5271 = bitcast %"cstd::ffi_type"* @"ffi_type_pointer" to i8*
	%5272 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 23
	store i8* %5271, i8** %5272
	%5273 = alloca {i64, i8*}
	%5274 = getelementptr [20 x i8], [20 x i8]* @"str.764", i64 0, i64 0
	%5275 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %5274, 1
	store {i64, i8*} %5275, {i64, i8*}* %5273
	%5276 = load {i64, i8*}, {i64, i8*}* %5273
	%5277 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 24
	store {i64, i8*} %5276, {i64, i8*}* %5277
	%5278 = bitcast %"cstd::ffi_type"* @"ffi_type_longdouble" to i8*
	%5279 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 24
	store i8* %5278, i8** %5279
	%5280 = alloca {i64, i8*}
	%5281 = getelementptr [23 x i8], [23 x i8]* @"str.765", i64 0, i64 0
	%5282 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %5281, 1
	store {i64, i8*} %5282, {i64, i8*}* %5280
	%5283 = load {i64, i8*}, {i64, i8*}* %5280
	%5284 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 25
	store {i64, i8*} %5283, {i64, i8*}* %5284
	%5285 = bitcast %"cstd::ffi_type"* @"ffi_type_complex_float" to i8*
	%5286 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 25
	store i8* %5285, i8** %5286
	%5287 = alloca {i64, i8*}
	%5288 = getelementptr [24 x i8], [24 x i8]* @"str.766", i64 0, i64 0
	%5289 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %5288, 1
	store {i64, i8*} %5289, {i64, i8*}* %5287
	%5290 = load {i64, i8*}, {i64, i8*}* %5287
	%5291 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 26
	store {i64, i8*} %5290, {i64, i8*}* %5291
	%5292 = bitcast %"cstd::ffi_type"* @"ffi_type_complex_double" to i8*
	%5293 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 26
	store i8* %5292, i8** %5293
	%5294 = alloca {i64, i8*}
	%5295 = getelementptr [28 x i8], [28 x i8]* @"str.767", i64 0, i64 0
	%5296 = insertvalue {i64, i8*} {i64 28, i8* undef}, i8* %5295, 1
	store {i64, i8*} %5296, {i64, i8*}* %5294
	%5297 = load {i64, i8*}, {i64, i8*}* %5294
	%5298 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 27
	store {i64, i8*} %5297, {i64, i8*}* %5298
	%5299 = bitcast %"cstd::ffi_type"* @"ffi_type_complex_longdouble" to i8*
	%5300 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 27
	store i8* %5299, i8** %5300
	%5301 = alloca {i64, i8*}
	%5302 = getelementptr [10 x i8], [10 x i8]* @"str.768", i64 0, i64 0
	%5303 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %5302, 1
	store {i64, i8*} %5303, {i64, i8*}* %5301
	%5304 = load {i64, i8*}, {i64, i8*}* %5301
	%5305 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 28
	store {i64, i8*} %5304, {i64, i8*}* %5305
	%5306 = bitcast i8*** @"__environ" to i8*
	%5307 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 28
	store i8* %5306, i8** %5307
	%5308 = alloca {i64, i8*}
	%5309 = getelementptr [7 x i8], [7 x i8]* @"str.769", i64 0, i64 0
	%5310 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5309, 1
	store {i64, i8*} %5310, {i64, i8*}* %5308
	%5311 = load {i64, i8*}, {i64, i8*}* %5308
	%5312 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 29
	store {i64, i8*} %5311, {i64, i8*}* %5312
	%5313 = bitcast i8** @"optarg" to i8*
	%5314 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 29
	store i8* %5313, i8** %5314
	%5315 = alloca {i64, i8*}
	%5316 = getelementptr [7 x i8], [7 x i8]* @"str.770", i64 0, i64 0
	%5317 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5316, 1
	store {i64, i8*} %5317, {i64, i8*}* %5315
	%5318 = load {i64, i8*}, {i64, i8*}* %5315
	%5319 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 30
	store {i64, i8*} %5318, {i64, i8*}* %5319
	%5320 = bitcast i32* @"optind" to i8*
	%5321 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 30
	store i8* %5320, i8** %5321
	%5322 = alloca {i64, i8*}
	%5323 = getelementptr [7 x i8], [7 x i8]* @"str.771", i64 0, i64 0
	%5324 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5323, 1
	store {i64, i8*} %5324, {i64, i8*}* %5322
	%5325 = load {i64, i8*}, {i64, i8*}* %5322
	%5326 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 31
	store {i64, i8*} %5325, {i64, i8*}* %5326
	%5327 = bitcast i32* @"opterr" to i8*
	%5328 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 31
	store i8* %5327, i8** %5328
	%5329 = alloca {i64, i8*}
	%5330 = getelementptr [7 x i8], [7 x i8]* @"str.772", i64 0, i64 0
	%5331 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %5330, 1
	store {i64, i8*} %5331, {i64, i8*}* %5329
	%5332 = load {i64, i8*}, {i64, i8*}* %5329
	%5333 = getelementptr [33 x {i64, i8*}], [33 x {i64, i8*}]* @"cstd::__VAR_NAMES", i32 0, i32 32
	store {i64, i8*} %5332, {i64, i8*}* %5333
	%5334 = bitcast i32* @"optopt" to i8*
	%5335 = getelementptr [33 x i8*], [33 x i8*]* @"cstd::__VARS", i32 0, i32 32
	store i8* %5334, i8** %5335
	ret void
}
declare float @"tanhf"(float)
declare void @"ffi_java_ptrarray_to_raw"(%"cstd::ffi_cif"*, i8**, %"cstd::ffi_raw"*)
declare i32 @"mblen"(i8*, i64)
declare i16** @"__ctype_b_loc"()
declare double @"log10"(double)
declare double @"significand"(double)
declare i32 @"fflush_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"timer_create"(i32, %"cstd::sigevent_t"*, i8**)
declare x86_fp80 @"tanhl"(x86_fp80)
declare i32 @"mknod"(i8*, i32, i64)
declare i8* @"fcvt"(double, i32, i32*, i32*)
declare i64 @"syscall"(i64, ...)
declare i32 @"rmdir"(i8*)
declare i32 @"ffsll"(i64)
declare void @"ffi_closure_free"(i8*)
declare i32 @"isxdigit_l"(i32, %"cstd::s___locale_struct"*)
declare float @"atan2f"(float, float)
declare x86_fp80 @"atan2l"(x86_fp80, x86_fp80)
declare double @"drand48"()
declare void @"siglongjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i32 @"setstate_r"(i8*, %"cstd::s_random_data"*)
declare i8* @"aligned_alloc"(i64, i64)
declare i32 @"lockf"(i32, i32, i64)
declare i8* @"strdup"(i8*)
declare i32 @"renameat"(i32, i8*, i32, i8*)
declare i32 @"strcasecmp_l"(i8*, i8*, %"cstd::s___locale_struct"*)
declare double @"log1p"(double)
declare i32 @"ffi_get_struct_offsets"(i32, %"cstd::ffi_type"*, i64*)
declare i32 @"random_r"(%"cstd::s_random_data"*, i32*)
declare void @"clearerr"(%"cstd::s__IO_FILE"*)
declare i32 @"clock_getcpuclockid"(i32, i32*)
declare i32 @"fexecve"(i32, i8**, i8**)
declare i32 @"profil"(i16*, i64, i64, i32)
declare i32 @"__xstat"(i32, i8*, %"cstd::s_stat"*)
declare i32 @"ffi_prep_cif"(%"cstd::ffi_cif"*, i32, i32, %"cstd::ffi_type"*, %"cstd::ffi_type"**)
declare i64 @"labs"(i64)
declare i32 @"sigwaitinfo"(%"cstd::__sigset_t"*, %"cstd::siginfo_t"*)
declare i32 @"toupper_l"(i32, %"cstd::s___locale_struct"*)
declare void @"srandom"(i32)
declare float @"log2f"(float)
declare x86_fp80 @"log2l"(x86_fp80)
declare i32 @"lstat"(i8*, %"cstd::s_stat"*)
declare float @"coshf"(float)
declare i32 @"strcoll_l"(i8*, i8*, %"cstd::s___locale_struct"*)
declare x86_fp80 @"coshl"(x86_fp80)
declare i8* @"strstr"(i8*, i8*)
declare i8* @"index"(i8*, i32)
declare %"cstd::s__IO_FILE"* @"tmpfile"()
declare float @"tgammaf"(float)
declare void @"psignal"(i32, i8*)
declare x86_fp80 @"tgammal"(x86_fp80)
declare i32 @"isalpha_l"(i32, %"cstd::s___locale_struct"*)
declare i64 @"lseek"(i32, i64, i32)
declare i32 @"ftrylockfile"(%"cstd::s__IO_FILE"*)
declare void @"absolute_path"(i8*, i8*)
declare i32 @"isdigit_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"daemon"(i32, i32)
declare i32 @"sigfillset"(%"cstd::__sigset_t"*)
declare i32 @"tcgetpgrp"(i32)
declare double @"difftime"(i64, i64)
declare i32 @"symlink"(i8*, i8*)
declare i32 @"nrand48_r"(i16*, %"cstd::s_drand48_data"*, i64*)
declare i32 @"vprintf"(i8*, %"__va_list_tag"*)
declare void (i32)* @"signal"(i32, void (i32)*)
declare i64 @"nrand48"(i16*)
declare i64 @"ftell"(%"cstd::s__IO_FILE"*)
declare i32 @"ffi_prep_raw_closure_loc"(%"cstd::ffi_raw_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, %"cstd::ffi_raw"*, i8*)*, i8*, i8*)
declare void @"ffi_raw_call"(%"cstd::ffi_cif"*, void ()*, i8*, %"cstd::ffi_raw"*)
declare i64 @"atoll"(i8*)
declare i8* @"memchr"(i8*, i32, i64)
declare double @"lgamma"(double)
declare i32 @"fgetc"(%"cstd::s__IO_FILE"*)
declare double @"ceil"(double)
declare float @"powf"(float, float)
declare void @"setbuf"(%"cstd::s__IO_FILE"*, i8*)
declare void @"ffi_java_raw_to_ptrarray"(%"cstd::ffi_cif"*, %"cstd::ffi_raw"*, i8**)
declare x86_fp80 @"powl"(x86_fp80, x86_fp80)
declare i8* @"fgets"(i8*, i32, %"cstd::s__IO_FILE"*)
declare double @"scalb"(double, double)
declare i32 @"__getpgid"(i32)
declare void @"exit"(i32)
declare %"cstd::s__IO_FILE"* @"open_memstream"(i8**, i64*)
declare void @"longjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i8* @"malloc"(i64)
declare i32 @"__iseqsig"(double, double)
declare void @"srand48"(i64)
declare i32 @"__sigsetjmp"(%"cstd::s___jmp_buf_tag"*, i32)
declare i32 @"fileno_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"execve"(i8*, i8**, i8**)
declare i32 @"__issignaling"(double)
declare float @"dremf"(float, float)
declare x86_fp80 @"dreml"(x86_fp80, x86_fp80)
declare double @"atof"(i8*)
declare i32 @"execvp"(i8*, i8**)
declare i32 @"atoi"(i8*)
declare i64 @"atol"(i8*)
declare i32 @"concat"(i8*, i8*, ...)
declare i32 @"ilogb"(double)
declare i32 @"scanf"(i8*, ...)
declare double @"round"(double)
declare i32 @"__isnan"(double)
declare i32 @"ffi_prep_cif_var"(%"cstd::ffi_cif"*, i32, i32, i32, %"cstd::ffi_type"*, %"cstd::ffi_type"**)
declare i64 @"a64l"(i8*)
declare i8* @"l64a"(i64)
declare double @"ldexp"(double, i32)
declare i64 @"fwrite"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i8* @"__stpcpy"(i8*, i8*)
declare i32 @"rename"(i8*, i8*)
declare i8* @"ctime"(i64*)
declare double @"acos"(double)
declare float @"fminf"(float, float)
declare i32 @"ispunct_l"(i32, %"cstd::s___locale_struct"*)
declare float @"lgammaf_r"(float, i32*)
declare i32 @"memcmp"(i8*, i8*, i64)
declare x86_fp80 @"fminl"(x86_fp80, x86_fp80)
declare i64 @"read"(i32, i8*, i64)
declare void @"clearerr_unlocked"(%"cstd::s__IO_FILE"*)
declare i32 @"mkfifoat"(i32, i8*, i32)
declare i64 @"llround"(double)
declare float @"remainderf"(float, float)
declare double @"frexp"(double, i32*)
declare double @"modf"(double, double*)
declare x86_fp80 @"remainderl"(x86_fp80, x86_fp80)
declare i32 @"pipe"(i32*)
declare i64 @"strcspn"(i8*, i8*)
declare double @"tan"(double)
declare double @"exp2"(double)
declare i64 @"fwrite_unlocked"(i8*, i64, i64, %"cstd::s__IO_FILE"*)
declare i32 @"putenv"(i8*)
declare i32 @"usleep"(i32)
declare i32 @"execl"(i8*, i8*, ...)
declare void @"_exit"(i32)
declare i32 @"clock_settime"(i32, %"cstd::s_timespec"*)
declare i32 @"erand48_r"(i16*, %"cstd::s_drand48_data"*, double*)
declare i32 @"execv"(i8*, i8**)
declare void @"perror"(i8*)
declare i64 @"pread"(i32, i8*, i64, i64)
declare i32 @"chdir"(i8*)
declare i32 @"mrand48_r"(%"cstd::s_drand48_data"*, i64*)
declare i64 @"getline"(i8**, i64*, %"cstd::s__IO_FILE"*)
declare i32 @"getopt"(i32, i8**, i8*)
declare i8* @"rindex"(i8*, i32)
declare i32 @"truncate"(i8*, i64)
declare float @"expf"(float)
declare i8* @"setstate"(i8*)
declare x86_fp80 @"expl"(x86_fp80)
declare i8* @"memcpy"(i8*, i8*, i64)
declare i32** @"__ctype_tolower_loc"()
declare i32 @"isascii"(i32)
declare i64 @"llrint"(double)
declare i32 @"ilogbf"(float)
declare i32 @"mkdir"(i8*, i32)
declare i32 @"ilogbl"(x86_fp80)
declare i32 @"unlinkat"(i32, i8*, i32)
declare i32 @"vfork"()
declare i32 @"dup2"(i32, i32)
declare i8* @"strndup"(i8*, i64)
declare float @"fdimf"(float, float)
declare i8* @"bsearch"(i8*, i8*, i64, i64, i32 (i8*, i8*)*)
declare x86_fp80 @"fdiml"(x86_fp80, x86_fp80)
declare void @"setlinebuf"(%"cstd::s__IO_FILE"*)
declare i64 @"confstr"(i32, i8*, i64)
declare i32 @"alarm"(i32)
declare i32 @"mkstemps"(i8*, i32)
declare double @"erfc"(double)
declare float @"erff"(float)
declare i32 @"__fpclassify"(double)
declare i32 @"strcoll"(i8*, i8*)
declare double @"remquo"(double, double, i32*)
declare i32 @"setegid"(i32)
declare x86_fp80 @"erfl"(x86_fp80)
declare double @"rint"(double)
declare float @"scalbf"(float, float)
declare i32 @"isprint_l"(i32, %"cstd::s___locale_struct"*)
declare i8* @"strcat"(i8*, i8*)
declare x86_fp80 @"scalbl"(x86_fp80, x86_fp80)
declare i32 @"initstate_r"(i32, i8*, i64, %"cstd::s_random_data"*)
declare i32 @"setpgid"(i32, i32)
declare double @"scalbn"(double, i32)
declare i32 @"_toupper"(i32)
declare i32 @"isinf"(double)
declare i32 @"fchownat"(i32, i8*, i32, i32, i32)
declare i8* @"asctime"(%"cstd::s_tm"*)
declare i8* @"getlogin"()
declare float @"asinhf"(float)
declare i32 @"lchown"(i8*, i32, i32)
declare x86_fp80 @"asinhl"(x86_fp80)
declare i32 @"setgid"(i32)
declare double @"fdim"(double, double)
declare i64 @"lrand48"()
declare void (i32)* @"ssignal"(i32, void (i32)*)
declare i8* @"realloc"(i8*, i64)
declare void @"setbuffer"(%"cstd::s__IO_FILE"*, i8*, i64)
declare void @"ffi_ptrarray_to_raw"(%"cstd::ffi_cif"*, i8**, %"cstd::ffi_raw"*)
declare float @"truncf"(float)
declare x86_fp80 @"truncl"(x86_fp80)
declare i32 @"__xmknodat"(i32, i32, i8*, i32, i64*)
declare i32 @"abs"(i32)
declare void @"freelocale"(%"cstd::s___locale_struct"*)
declare i32 @"__fxstat"(i32, i32, %"cstd::s_stat"*)
declare i32 @"vfprintf"(%"cstd::s__IO_FILE"*, i8*, %"__va_list_tag"*)
declare i32 @"at_quick_exit"(void ()*)
declare float @"nexttowardf"(float, x86_fp80)
declare i32 @"fseeko"(%"cstd::s__IO_FILE"*, i64, i32)
declare x86_fp80 @"nexttowardl"(x86_fp80, x86_fp80)
declare i64 @"llroundf"(float)
declare i32 @"getsubopt"(i8**, i8**, i8**)
declare i32 @"setreuid"(i32, i32)
declare void @"sync"()
declare i64 @"llroundl"(x86_fp80)
declare float @"nanf"(i8*)
declare x86_fp80 @"nanl"(i8*)
declare i32 @"ffi_prep_go_closure"(%"cstd::ffi_go_closure"*, %"cstd::ffi_cif"*, void (%"cstd::ffi_cif"*, i8*, i8**, i8*)*)
declare i64 @"timegm"(%"cstd::s_tm"*)
declare i64 @"llabs"(i64)
declare i32 @"remove"(i8*)
declare i32 @"clock_gettime"(i32, %"cstd::s_timespec"*)
declare double @"j0"(double)
declare double @"j1"(double)
declare i32 @"fchmodat"(i32, i8*, i32, i32)
declare i64 @"time"(i64*)
declare i64 @"strftime_l"(i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)
declare i32 @"drand48_r"(%"cstd::s_drand48_data"*, double*)
declare float @"roundf"(float)
declare i32 @"lrand48_r"(%"cstd::s_drand48_data"*, i64*)
declare i64 @"wcstombs"(i8*, i32*, i64)
declare x86_fp80 @"roundl"(x86_fp80)
declare void @"flockfile"(%"cstd::s__IO_FILE"*)
declare void @"srand"(i32)
declare double @"nexttoward"(double, x86_fp80)
declare i64 @"gethostid"()
declare i32 @"getgid"()
declare i8* @"strpbrk"(i8*, i8*)
declare i8* @"calloc"(i64, i64)
declare float @"frexpf"(float, i32*)
declare x86_fp80 @"frexpl"(x86_fp80, i32*)
declare i32 @"fdatasync"(i32)
declare void @"abort"()
declare double @"jn"(i32, double)
declare i32 @"ioctl"(i32, i64, ...)
declare i32 @"ecvt_r"(double, i32, i32*, i32*, i8*, i64)
declare i64 @"readlink"(i8*, i8*, i64)
declare float @"modff"(float, float*)
declare i32 @"ffsl"(i64)
declare x86_fp80 @"modfl"(x86_fp80, x86_fp80*)
declare i8* @"strchr"(i8*, i32)
declare i64 @"lrintf"(float)
declare i32 @"ftruncate"(i32, i64)
declare i32 @"fscanf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare i64 @"lrintl"(x86_fp80)
declare i32 @"getegid"()
declare i32 @"isblank_l"(i32, %"cstd::s___locale_struct"*)
declare float @"fmaf"(float, float, float)
declare double @"nan"(i8*)
declare i32 @"setvbuf"(%"cstd::s__IO_FILE"*, i8*, i32, i64)
declare x86_fp80 @"fmal"(x86_fp80, x86_fp80, x86_fp80)
declare i32 @"__isnanf"(float)
declare i32 @"sscanf"(i8*, i8*, ...)
declare i32 @"getpgid"(i32)
declare i32 @"__isnanl"(x86_fp80)
declare double @"fmax"(double, double)
declare i8* @"realpath"(i8*, i8*)
declare i32 @"toascii"(i32)
declare i32 @"isupper"(i32)
declare %"cstd::s___locale_struct"* @"newlocale"(i32, i8*, %"cstd::s___locale_struct"*)
declare i32 @"__xmknod"(i32, i8*, i32, i64*)
declare float @"erfcf"(float)
declare i32* @"__errno_location"()
declare i8* @"memccpy"(i8*, i8*, i32, i64)
declare void (i32)* @"__sysv_signal"(i32, void (i32)*)
declare x86_fp80 @"erfcl"(x86_fp80)
declare void @"ffi_raw_to_ptrarray"(%"cstd::ffi_cif"*, %"cstd::ffi_raw"*, i8**)
declare i32 @"sigwait"(%"cstd::__sigset_t"*, i32*)
declare i8* @"stpcpy"(i8*, i8*)
declare i32 @"kill"(i32, i32)
declare i32 @"sigqueue"(i32, i32, %"cstd::u_sigval")
declare i32 @"gsignal"(i32)
declare i32 @"futimens"(i32, %"cstd::s_timespec"*)
declare i8* @"strerror_l"(i32, %"cstd::s___locale_struct"*)
declare i32 @"setpgrp"()
declare i32 @"strerror_r"(i32, i8*, i64)
declare double @"erf"(double)
declare float @"fabsf"(float)
declare i64 @"ffi_java_raw_size"(%"cstd::ffi_cif"*)
declare x86_fp80 @"fabsl"(x86_fp80)
declare i32 @"iscntrl_l"(i32, %"cstd::s___locale_struct"*)
@"timezone" = external global i64 
@"ffi_type_uint64" = external global %"cstd::ffi_type" 
@"daylight" = external global i32 
@"ffi_type_sint64" = external global %"cstd::ffi_type" 
@"_sys_siglist" = external global [65 x i8*] 
@"cstd::__VAR_NAMES" = global [33 x {i64, i8*}] zeroinitializer
@"optarg" = external global i8* 
@"signgam" = external global i32 
@"stdout" = external global %"cstd::s__IO_FILE"* 
@"optind" = external global i32 
@"cstd::__DEFS" = global [730 x void ()*] zeroinitializer
@"ffi_type_pointer" = external global %"cstd::ffi_type" 
@"sys_siglist" = external global [65 x i8*] 
@"tzname" = external global [2 x i8*] 
@"opterr" = external global i32 
@"__timezone" = external global i64 
@"stdin" = external global %"cstd::s__IO_FILE"* 
@"__daylight" = external global i32 
@"ffi_type_uint32" = external global %"cstd::ffi_type" 
@"ffi_type_sint32" = external global %"cstd::ffi_type" 
@"ffi_type_complex_longdouble" = external global %"cstd::ffi_type" 
@"ffi_type_complex_float" = external global %"cstd::ffi_type" 
@"cstd::__DEF_NAMES" = global [730 x {i64, i8*}] zeroinitializer
@"ffi_type_uint16" = external global %"cstd::ffi_type" 
@"optopt" = external global i32 
@"ffi_type_complex_double" = external global %"cstd::ffi_type" 
@"stderr" = external global %"cstd::s__IO_FILE"* 
@"ffi_type_sint16" = external global %"cstd::ffi_type" 
@"__environ" = external global i8** 
@"cstd::__VARS" = global [33 x i8*] zeroinitializer
@"ffi_type_sint8" = external global %"cstd::ffi_type" 
@"ffi_type_float" = external global %"cstd::ffi_type" 
@"ffi_type_longdouble" = external global %"cstd::ffi_type" 
@"ffi_type_uint8" = external global %"cstd::ffi_type" 
@"__tzname" = external global [2 x i8*] 
@"ffi_type_double" = external global %"cstd::ffi_type" 
@"ffi_type_void" = external global %"cstd::ffi_type" 
@"str.0" = private global [11 x i8] c"FFI_UNIX64\00"
@"str.1" = private global [11 x i8] c"FFI_GNUW64\00"
@"str.2" = private global [10 x i8] c"FFI_EFI64\00"
@"str.3" = private global [14 x i8] c"FFI_FIRST_ABI\00"
@"str.4" = private global [13 x i8] c"FFI_LAST_ABI\00"
@"str.5" = private global [10 x i8] c"INVALID!!\00"
@"str.6" = private global [12 x i8] c"FFI_BAD_ABI\00"
@"str.7" = private global [16 x i8] c"FFI_BAD_TYPEDEF\00"
@"str.8" = private global [7 x i8] c"FFI_OK\00"
@"str.9" = private global [10 x i8] c"INVALID!!\00"
@"str.600" = private global [25 x i8] c"ffi_prep_raw_closure_loc\00"
@"str.601" = private global [26 x i8] c"ffi_prep_java_raw_closure\00"
@"str.602" = private global [30 x i8] c"ffi_prep_java_raw_closure_loc\00"
@"str.603" = private global [20 x i8] c"ffi_prep_go_closure\00"
@"str.604" = private global [12 x i8] c"ffi_call_go\00"
@"str.605" = private global [13 x i8] c"ffi_prep_cif\00"
@"str.606" = private global [17 x i8] c"ffi_prep_cif_var\00"
@"str.607" = private global [9 x i8] c"ffi_call\00"
@"str.608" = private global [23 x i8] c"ffi_get_struct_offsets\00"
@"str.609" = private global [5 x i8] c"stat\00"
@"str.610" = private global [6 x i8] c"fstat\00"
@"str.611" = private global [8 x i8] c"fstatat\00"
@"str.612" = private global [6 x i8] c"lstat\00"
@"str.613" = private global [6 x i8] c"chmod\00"
@"str.614" = private global [7 x i8] c"fchmod\00"
@"str.615" = private global [9 x i8] c"fchmodat\00"
@"str.616" = private global [6 x i8] c"umask\00"
@"str.617" = private global [6 x i8] c"mkdir\00"
@"str.618" = private global [8 x i8] c"mkdirat\00"
@"str.619" = private global [6 x i8] c"mknod\00"
@"str.10" = private global [23 x i8] c"__ctype_get_mb_cur_max\00"
@"str.11" = private global [5 x i8] c"atof\00"
@"str.12" = private global [5 x i8] c"atoi\00"
@"str.13" = private global [5 x i8] c"atol\00"
@"str.14" = private global [6 x i8] c"atoll\00"
@"str.15" = private global [7 x i8] c"strtod\00"
@"str.16" = private global [7 x i8] c"strtof\00"
@"str.17" = private global [8 x i8] c"strtold\00"
@"str.18" = private global [7 x i8] c"strtol\00"
@"str.19" = private global [8 x i8] c"strtoul\00"
@"str.620" = private global [8 x i8] c"mknodat\00"
@"str.621" = private global [7 x i8] c"mkfifo\00"
@"str.622" = private global [9 x i8] c"mkfifoat\00"
@"str.623" = private global [10 x i8] c"utimensat\00"
@"str.624" = private global [9 x i8] c"futimens\00"
@"str.625" = private global [9 x i8] c"__fxstat\00"
@"str.626" = private global [8 x i8] c"__xstat\00"
@"str.627" = private global [9 x i8] c"__lxstat\00"
@"str.628" = private global [11 x i8] c"__fxstatat\00"
@"str.629" = private global [9 x i8] c"__xmknod\00"
@"str.20" = private global [7 x i8] c"strtoq\00"
@"str.21" = private global [8 x i8] c"strtouq\00"
@"str.22" = private global [8 x i8] c"strtoll\00"
@"str.23" = private global [9 x i8] c"strtoull\00"
@"str.24" = private global [5 x i8] c"l64a\00"
@"str.25" = private global [5 x i8] c"a64l\00"
@"str.26" = private global [7 x i8] c"select\00"
@"str.27" = private global [8 x i8] c"pselect\00"
@"str.28" = private global [7 x i8] c"random\00"
@"str.29" = private global [8 x i8] c"srandom\00"
@"str.630" = private global [11 x i8] c"__xmknodat\00"
@"str.631" = private global [6 x i8] c"ioctl\00"
@"str.632" = private global [7 x i8] c"access\00"
@"str.633" = private global [10 x i8] c"faccessat\00"
@"str.634" = private global [6 x i8] c"lseek\00"
@"str.635" = private global [6 x i8] c"close\00"
@"str.636" = private global [5 x i8] c"read\00"
@"str.637" = private global [6 x i8] c"write\00"
@"str.638" = private global [6 x i8] c"pread\00"
@"str.639" = private global [7 x i8] c"pwrite\00"
@"str.30" = private global [10 x i8] c"initstate\00"
@"str.31" = private global [9 x i8] c"setstate\00"
@"str.32" = private global [9 x i8] c"random_r\00"
@"str.33" = private global [10 x i8] c"srandom_r\00"
@"str.34" = private global [12 x i8] c"initstate_r\00"
@"str.35" = private global [11 x i8] c"setstate_r\00"
@"str.36" = private global [5 x i8] c"rand\00"
@"str.37" = private global [6 x i8] c"srand\00"
@"str.38" = private global [7 x i8] c"rand_r\00"
@"str.39" = private global [8 x i8] c"drand48\00"
@"str.640" = private global [5 x i8] c"pipe\00"
@"str.641" = private global [6 x i8] c"alarm\00"
@"str.400" = private global [5 x i8] c"erff\00"
@"str.642" = private global [6 x i8] c"sleep\00"
@"str.401" = private global [6 x i8] c"erfcf\00"
@"str.643" = private global [7 x i8] c"ualarm\00"
@"str.402" = private global [8 x i8] c"lgammaf\00"
@"str.644" = private global [7 x i8] c"usleep\00"
@"str.403" = private global [8 x i8] c"tgammaf\00"
@"str.645" = private global [6 x i8] c"pause\00"
@"str.404" = private global [7 x i8] c"gammaf\00"
@"str.646" = private global [6 x i8] c"chown\00"
@"str.405" = private global [10 x i8] c"lgammaf_r\00"
@"str.647" = private global [7 x i8] c"fchown\00"
@"str.406" = private global [6 x i8] c"rintf\00"
@"str.648" = private global [7 x i8] c"lchown\00"
@"str.407" = private global [11 x i8] c"nextafterf\00"
@"str.649" = private global [9 x i8] c"fchownat\00"
@"str.408" = private global [12 x i8] c"nexttowardf\00"
@"str.409" = private global [11 x i8] c"remainderf\00"
@"str.40" = private global [8 x i8] c"erand48\00"
@"str.41" = private global [8 x i8] c"lrand48\00"
@"str.42" = private global [8 x i8] c"nrand48\00"
@"str.43" = private global [8 x i8] c"mrand48\00"
@"str.44" = private global [8 x i8] c"jrand48\00"
@"str.45" = private global [8 x i8] c"srand48\00"
@"str.46" = private global [7 x i8] c"seed48\00"
@"str.47" = private global [8 x i8] c"lcong48\00"
@"str.48" = private global [10 x i8] c"drand48_r\00"
@"str.49" = private global [10 x i8] c"erand48_r\00"
@"str.650" = private global [6 x i8] c"chdir\00"
@"str.651" = private global [7 x i8] c"fchdir\00"
@"str.410" = private global [8 x i8] c"scalbnf\00"
@"str.652" = private global [7 x i8] c"getcwd\00"
@"str.411" = private global [7 x i8] c"ilogbf\00"
@"str.653" = private global [4 x i8] c"dup\00"
@"str.412" = private global [9 x i8] c"scalblnf\00"
@"str.654" = private global [5 x i8] c"dup2\00"
@"str.413" = private global [11 x i8] c"nearbyintf\00"
@"str.655" = private global [7 x i8] c"execve\00"
@"str.414" = private global [7 x i8] c"roundf\00"
@"str.656" = private global [8 x i8] c"fexecve\00"
@"str.415" = private global [7 x i8] c"truncf\00"
@"str.657" = private global [6 x i8] c"execv\00"
@"str.416" = private global [8 x i8] c"remquof\00"
@"str.658" = private global [7 x i8] c"execle\00"
@"str.417" = private global [7 x i8] c"lrintf\00"
@"str.659" = private global [6 x i8] c"execl\00"
@"str.418" = private global [8 x i8] c"llrintf\00"
@"str.419" = private global [8 x i8] c"lroundf\00"
@"str.50" = private global [10 x i8] c"lrand48_r\00"
@"str.51" = private global [10 x i8] c"nrand48_r\00"
@"str.52" = private global [10 x i8] c"mrand48_r\00"
@"str.53" = private global [10 x i8] c"jrand48_r\00"
@"str.54" = private global [10 x i8] c"srand48_r\00"
@"str.55" = private global [9 x i8] c"seed48_r\00"
@"str.56" = private global [10 x i8] c"lcong48_r\00"
@"str.57" = private global [7 x i8] c"malloc\00"
@"str.58" = private global [7 x i8] c"calloc\00"
@"str.59" = private global [8 x i8] c"realloc\00"
@"str.660" = private global [7 x i8] c"execvp\00"
@"str.661" = private global [7 x i8] c"execlp\00"
@"str.420" = private global [9 x i8] c"llroundf\00"
@"str.662" = private global [5 x i8] c"nice\00"
@"str.421" = private global [6 x i8] c"fdimf\00"
@"str.663" = private global [6 x i8] c"_exit\00"
@"str.422" = private global [6 x i8] c"fmaxf\00"
@"str.664" = private global [9 x i8] c"pathconf\00"
@"str.423" = private global [6 x i8] c"fminf\00"
@"str.665" = private global [10 x i8] c"fpathconf\00"
@"str.424" = private global [5 x i8] c"fmaf\00"
@"str.666" = private global [8 x i8] c"sysconf\00"
@"str.425" = private global [7 x i8] c"scalbf\00"
@"str.667" = private global [8 x i8] c"confstr\00"
@"str.426" = private global [14 x i8] c"__fpclassifyl\00"
@"str.668" = private global [7 x i8] c"getpid\00"
@"str.427" = private global [11 x i8] c"__signbitl\00"
@"str.669" = private global [8 x i8] c"getppid\00"
@"str.428" = private global [9 x i8] c"__isinfl\00"
@"str.429" = private global [10 x i8] c"__finitel\00"
@"str.60" = private global [13 x i8] c"reallocarray\00"
@"str.61" = private global [5 x i8] c"free\00"
@"str.62" = private global [7 x i8] c"valloc\00"
@"str.63" = private global [15 x i8] c"posix_memalign\00"
@"str.64" = private global [14 x i8] c"aligned_alloc\00"
@"str.65" = private global [6 x i8] c"abort\00"
@"str.66" = private global [7 x i8] c"atexit\00"
@"str.67" = private global [14 x i8] c"at_quick_exit\00"
@"str.68" = private global [8 x i8] c"on_exit\00"
@"str.69" = private global [5 x i8] c"exit\00"
@"str.670" = private global [8 x i8] c"getpgrp\00"
@"str.671" = private global [10 x i8] c"__getpgid\00"
@"str.430" = private global [9 x i8] c"__isnanl\00"
@"str.672" = private global [8 x i8] c"getpgid\00"
@"str.431" = private global [11 x i8] c"__iseqsigl\00"
@"str.673" = private global [8 x i8] c"setpgid\00"
@"str.432" = private global [15 x i8] c"__issignalingl\00"
@"str.674" = private global [8 x i8] c"setpgrp\00"
@"str.433" = private global [6 x i8] c"acosl\00"
@"str.675" = private global [7 x i8] c"setsid\00"
@"str.434" = private global [6 x i8] c"asinl\00"
@"str.676" = private global [7 x i8] c"getsid\00"
@"str.435" = private global [6 x i8] c"atanl\00"
@"str.677" = private global [7 x i8] c"getuid\00"
@"str.436" = private global [7 x i8] c"atan2l\00"
@"str.678" = private global [8 x i8] c"geteuid\00"
@"str.437" = private global [5 x i8] c"cosl\00"
@"str.679" = private global [7 x i8] c"getgid\00"
@"str.438" = private global [5 x i8] c"sinl\00"
@"str.439" = private global [5 x i8] c"tanl\00"
@"str.70" = private global [11 x i8] c"quick_exit\00"
@"str.71" = private global [6 x i8] c"_Exit\00"
@"str.72" = private global [7 x i8] c"getenv\00"
@"str.73" = private global [7 x i8] c"putenv\00"
@"str.74" = private global [7 x i8] c"setenv\00"
@"str.75" = private global [9 x i8] c"unsetenv\00"
@"str.76" = private global [9 x i8] c"clearenv\00"
@"str.77" = private global [8 x i8] c"mkstemp\00"
@"str.78" = private global [9 x i8] c"mkstemps\00"
@"str.79" = private global [8 x i8] c"mkdtemp\00"
@"str.680" = private global [8 x i8] c"getegid\00"
@"str.681" = private global [10 x i8] c"getgroups\00"
@"str.440" = private global [6 x i8] c"coshl\00"
@"str.682" = private global [7 x i8] c"setuid\00"
@"str.441" = private global [6 x i8] c"sinhl\00"
@"str.683" = private global [9 x i8] c"setreuid\00"
@"str.200" = private global [8 x i8] c"strncmp\00"
@"str.442" = private global [6 x i8] c"tanhl\00"
@"str.684" = private global [8 x i8] c"seteuid\00"
@"str.201" = private global [8 x i8] c"strcoll\00"
@"str.443" = private global [7 x i8] c"acoshl\00"
@"str.685" = private global [7 x i8] c"setgid\00"
@"str.202" = private global [8 x i8] c"strxfrm\00"
@"str.444" = private global [7 x i8] c"asinhl\00"
@"str.686" = private global [9 x i8] c"setregid\00"
@"str.203" = private global [10 x i8] c"strcoll_l\00"
@"str.445" = private global [7 x i8] c"atanhl\00"
@"str.687" = private global [8 x i8] c"setegid\00"
@"str.204" = private global [10 x i8] c"strxfrm_l\00"
@"str.446" = private global [5 x i8] c"expl\00"
@"str.688" = private global [5 x i8] c"fork\00"
@"str.205" = private global [7 x i8] c"strdup\00"
@"str.447" = private global [7 x i8] c"frexpl\00"
@"str.689" = private global [6 x i8] c"vfork\00"
@"str.206" = private global [8 x i8] c"strndup\00"
@"str.448" = private global [7 x i8] c"ldexpl\00"
@"str.207" = private global [7 x i8] c"strchr\00"
@"str.449" = private global [5 x i8] c"logl\00"
@"str.208" = private global [8 x i8] c"strrchr\00"
@"str.209" = private global [8 x i8] c"strcspn\00"
@"str.80" = private global [7 x i8] c"system\00"
@"str.81" = private global [9 x i8] c"realpath\00"
@"str.82" = private global [8 x i8] c"bsearch\00"
@"str.83" = private global [6 x i8] c"qsort\00"
@"str.84" = private global [4 x i8] c"abs\00"
@"str.85" = private global [5 x i8] c"labs\00"
@"str.86" = private global [6 x i8] c"llabs\00"
@"str.87" = private global [4 x i8] c"div\00"
@"str.88" = private global [5 x i8] c"ldiv\00"
@"str.89" = private global [6 x i8] c"lldiv\00"
@"str.690" = private global [8 x i8] c"ttyname\00"
@"str.691" = private global [10 x i8] c"ttyname_r\00"
@"str.450" = private global [7 x i8] c"log10l\00"
@"str.692" = private global [7 x i8] c"isatty\00"
@"str.451" = private global [6 x i8] c"modfl\00"
@"str.693" = private global [8 x i8] c"ttyslot\00"
@"str.210" = private global [7 x i8] c"strspn\00"
@"str.452" = private global [7 x i8] c"expm1l\00"
@"str.694" = private global [5 x i8] c"link\00"
@"str.211" = private global [8 x i8] c"strpbrk\00"
@"str.453" = private global [7 x i8] c"log1pl\00"
@"str.695" = private global [7 x i8] c"linkat\00"
@"str.212" = private global [7 x i8] c"strstr\00"
@"str.454" = private global [6 x i8] c"logbl\00"
@"str.696" = private global [8 x i8] c"symlink\00"
@"str.213" = private global [7 x i8] c"strtok\00"
@"str.455" = private global [6 x i8] c"exp2l\00"
@"str.697" = private global [9 x i8] c"readlink\00"
@"str.214" = private global [11 x i8] c"__strtok_r\00"
@"str.456" = private global [6 x i8] c"log2l\00"
@"str.698" = private global [10 x i8] c"symlinkat\00"
@"str.215" = private global [9 x i8] c"strtok_r\00"
@"str.457" = private global [5 x i8] c"powl\00"
@"str.699" = private global [11 x i8] c"readlinkat\00"
@"str.216" = private global [7 x i8] c"strlen\00"
@"str.458" = private global [6 x i8] c"sqrtl\00"
@"str.217" = private global [8 x i8] c"strnlen\00"
@"str.459" = private global [7 x i8] c"hypotl\00"
@"str.218" = private global [9 x i8] c"strerror\00"
@"str.219" = private global [11 x i8] c"strerror_r\00"
@"str.90" = private global [5 x i8] c"ecvt\00"
@"str.91" = private global [5 x i8] c"fcvt\00"
@"str.92" = private global [5 x i8] c"gcvt\00"
@"str.93" = private global [6 x i8] c"qecvt\00"
@"str.94" = private global [6 x i8] c"qfcvt\00"
@"str.95" = private global [6 x i8] c"qgcvt\00"
@"str.96" = private global [7 x i8] c"ecvt_r\00"
@"str.97" = private global [7 x i8] c"fcvt_r\00"
@"str.98" = private global [8 x i8] c"qecvt_r\00"
@"str.99" = private global [8 x i8] c"qfcvt_r\00"
@"str.460" = private global [6 x i8] c"cbrtl\00"
@"str.461" = private global [6 x i8] c"ceill\00"
@"str.220" = private global [11 x i8] c"strerror_l\00"
@"str.462" = private global [6 x i8] c"fabsl\00"
@"str.221" = private global [5 x i8] c"bcmp\00"
@"str.463" = private global [7 x i8] c"floorl\00"
@"str.222" = private global [6 x i8] c"bcopy\00"
@"str.464" = private global [6 x i8] c"fmodl\00"
@"str.223" = private global [6 x i8] c"bzero\00"
@"str.465" = private global [7 x i8] c"isinfl\00"
@"str.224" = private global [6 x i8] c"index\00"
@"str.466" = private global [8 x i8] c"finitel\00"
@"str.225" = private global [7 x i8] c"rindex\00"
@"str.467" = private global [6 x i8] c"dreml\00"
@"str.226" = private global [4 x i8] c"ffs\00"
@"str.468" = private global [13 x i8] c"significandl\00"
@"str.227" = private global [5 x i8] c"ffsl\00"
@"str.469" = private global [10 x i8] c"copysignl\00"
@"str.228" = private global [6 x i8] c"ffsll\00"
@"str.229" = private global [11 x i8] c"strcasecmp\00"
@"str.470" = private global [5 x i8] c"nanl\00"
@"str.471" = private global [7 x i8] c"isnanl\00"
@"str.230" = private global [12 x i8] c"strncasecmp\00"
@"str.472" = private global [4 x i8] c"j0l\00"
@"str.231" = private global [13 x i8] c"strcasecmp_l\00"
@"str.473" = private global [4 x i8] c"j1l\00"
@"str.232" = private global [14 x i8] c"strncasecmp_l\00"
@"str.474" = private global [4 x i8] c"jnl\00"
@"str.233" = private global [15 x i8] c"explicit_bzero\00"
@"str.475" = private global [4 x i8] c"y0l\00"
@"str.234" = private global [7 x i8] c"strsep\00"
@"str.476" = private global [4 x i8] c"y1l\00"
@"str.235" = private global [10 x i8] c"strsignal\00"
@"str.477" = private global [4 x i8] c"ynl\00"
@"str.236" = private global [9 x i8] c"__stpcpy\00"
@"str.478" = private global [5 x i8] c"erfl\00"
@"str.237" = private global [7 x i8] c"stpcpy\00"
@"str.479" = private global [6 x i8] c"erfcl\00"
@"str.238" = private global [10 x i8] c"__stpncpy\00"
@"str.239" = private global [8 x i8] c"stpncpy\00"
@"str.480" = private global [8 x i8] c"lgammal\00"
@"str.481" = private global [8 x i8] c"tgammal\00"
@"str.240" = private global [6 x i8] c"clock\00"
@"str.482" = private global [7 x i8] c"gammal\00"
@"str.241" = private global [5 x i8] c"time\00"
@"str.483" = private global [10 x i8] c"lgammal_r\00"
@"str.242" = private global [9 x i8] c"difftime\00"
@"str.484" = private global [6 x i8] c"rintl\00"
@"str.243" = private global [7 x i8] c"mktime\00"
@"str.485" = private global [11 x i8] c"nextafterl\00"
@"str.244" = private global [9 x i8] c"strftime\00"
@"str.486" = private global [12 x i8] c"nexttowardl\00"
@"str.245" = private global [11 x i8] c"strftime_l\00"
@"str.487" = private global [11 x i8] c"remainderl\00"
@"str.246" = private global [7 x i8] c"gmtime\00"
@"str.488" = private global [8 x i8] c"scalbnl\00"
@"str.247" = private global [10 x i8] c"localtime\00"
@"str.489" = private global [7 x i8] c"ilogbl\00"
@"str.248" = private global [9 x i8] c"gmtime_r\00"
@"str.249" = private global [12 x i8] c"localtime_r\00"
@"str.490" = private global [9 x i8] c"scalblnl\00"
@"str.491" = private global [11 x i8] c"nearbyintl\00"
@"str.250" = private global [8 x i8] c"asctime\00"
@"str.492" = private global [7 x i8] c"roundl\00"
@"str.251" = private global [6 x i8] c"ctime\00"
@"str.493" = private global [7 x i8] c"truncl\00"
@"str.252" = private global [10 x i8] c"asctime_r\00"
@"str.494" = private global [8 x i8] c"remquol\00"
@"str.253" = private global [8 x i8] c"ctime_r\00"
@"str.495" = private global [7 x i8] c"lrintl\00"
@"str.254" = private global [6 x i8] c"tzset\00"
@"str.496" = private global [8 x i8] c"llrintl\00"
@"str.255" = private global [7 x i8] c"timegm\00"
@"str.497" = private global [8 x i8] c"lroundl\00"
@"str.256" = private global [10 x i8] c"timelocal\00"
@"str.498" = private global [9 x i8] c"llroundl\00"
@"str.257" = private global [7 x i8] c"dysize\00"
@"str.499" = private global [6 x i8] c"fdiml\00"
@"str.258" = private global [10 x i8] c"nanosleep\00"
@"str.259" = private global [13 x i8] c"clock_getres\00"
@"str.260" = private global [14 x i8] c"clock_gettime\00"
@"str.261" = private global [14 x i8] c"clock_settime\00"
@"str.262" = private global [16 x i8] c"clock_nanosleep\00"
@"str.263" = private global [20 x i8] c"clock_getcpuclockid\00"
@"str.264" = private global [13 x i8] c"timer_create\00"
@"str.265" = private global [13 x i8] c"timer_delete\00"
@"str.266" = private global [14 x i8] c"timer_settime\00"
@"str.267" = private global [14 x i8] c"timer_gettime\00"
@"str.268" = private global [17 x i8] c"timer_getoverrun\00"
@"str.269" = private global [13 x i8] c"timespec_get\00"
@"str.270" = private global [13 x i8] c"__fpclassify\00"
@"str.271" = private global [10 x i8] c"__signbit\00"
@"str.272" = private global [8 x i8] c"__isinf\00"
@"str.273" = private global [9 x i8] c"__finite\00"
@"str.274" = private global [8 x i8] c"__isnan\00"
@"str.275" = private global [10 x i8] c"__iseqsig\00"
@"str.276" = private global [14 x i8] c"__issignaling\00"
@"str.277" = private global [5 x i8] c"acos\00"
@"str.278" = private global [5 x i8] c"asin\00"
@"str.279" = private global [5 x i8] c"atan\00"
@"str.280" = private global [6 x i8] c"atan2\00"
@"str.281" = private global [4 x i8] c"cos\00"
@"str.282" = private global [4 x i8] c"sin\00"
@"str.283" = private global [4 x i8] c"tan\00"
@"str.284" = private global [5 x i8] c"cosh\00"
@"str.285" = private global [5 x i8] c"sinh\00"
@"str.286" = private global [5 x i8] c"tanh\00"
@"str.287" = private global [6 x i8] c"acosh\00"
@"str.288" = private global [6 x i8] c"asinh\00"
@"str.289" = private global [6 x i8] c"atanh\00"
@"str.290" = private global [4 x i8] c"exp\00"
@"str.291" = private global [6 x i8] c"frexp\00"
@"str.292" = private global [6 x i8] c"ldexp\00"
@"str.293" = private global [4 x i8] c"log\00"
@"str.294" = private global [6 x i8] c"log10\00"
@"str.295" = private global [5 x i8] c"modf\00"
@"str.296" = private global [6 x i8] c"expm1\00"
@"str.297" = private global [6 x i8] c"log1p\00"
@"str.298" = private global [5 x i8] c"logb\00"
@"str.299" = private global [5 x i8] c"exp2\00"
@"str.700" = private global [7 x i8] c"unlink\00"
@"str.701" = private global [9 x i8] c"unlinkat\00"
@"str.702" = private global [6 x i8] c"rmdir\00"
@"str.703" = private global [10 x i8] c"tcgetpgrp\00"
@"str.704" = private global [10 x i8] c"tcsetpgrp\00"
@"str.705" = private global [9 x i8] c"getlogin\00"
@"str.706" = private global [11 x i8] c"getlogin_r\00"
@"str.707" = private global [7 x i8] c"getopt\00"
@"str.708" = private global [12 x i8] c"gethostname\00"
@"str.709" = private global [12 x i8] c"sethostname\00"
@"str.710" = private global [10 x i8] c"sethostid\00"
@"str.711" = private global [14 x i8] c"getdomainname\00"
@"str.712" = private global [14 x i8] c"setdomainname\00"
@"str.713" = private global [8 x i8] c"vhangup\00"
@"str.714" = private global [7 x i8] c"profil\00"
@"str.715" = private global [5 x i8] c"acct\00"
@"str.716" = private global [13 x i8] c"getusershell\00"
@"str.717" = private global [13 x i8] c"endusershell\00"
@"str.718" = private global [13 x i8] c"setusershell\00"
@"str.719" = private global [7 x i8] c"daemon\00"
@"str.720" = private global [7 x i8] c"chroot\00"
@"str.721" = private global [8 x i8] c"getpass\00"
@"str.722" = private global [6 x i8] c"fsync\00"
@"str.723" = private global [10 x i8] c"gethostid\00"
@"str.724" = private global [5 x i8] c"sync\00"
@"str.725" = private global [12 x i8] c"getpagesize\00"
@"str.726" = private global [14 x i8] c"getdtablesize\00"
@"str.727" = private global [9 x i8] c"truncate\00"
@"str.728" = private global [10 x i8] c"ftruncate\00"
@"str.729" = private global [4 x i8] c"brk\00"
@"str.730" = private global [5 x i8] c"sbrk\00"
@"str.731" = private global [8 x i8] c"syscall\00"
@"str.732" = private global [6 x i8] c"lockf\00"
@"str.733" = private global [10 x i8] c"fdatasync\00"
@"str.734" = private global [6 x i8] c"crypt\00"
@"str.735" = private global [11 x i8] c"getentropy\00"
@"str.736" = private global [12 x i8] c"starts_with\00"
@"str.737" = private global [7 x i8] c"concat\00"
@"str.738" = private global [14 x i8] c"absolute_path\00"
@"str.739" = private global [16 x i8] c"executable_file\00"
@"str.740" = private global [6 x i8] c"stdin\00"
@"str.741" = private global [7 x i8] c"stdout\00"
@"str.500" = private global [6 x i8] c"fmaxl\00"
@"str.742" = private global [7 x i8] c"stderr\00"
@"str.501" = private global [6 x i8] c"fminl\00"
@"str.743" = private global [9 x i8] c"__tzname\00"
@"str.502" = private global [5 x i8] c"fmal\00"
@"str.744" = private global [11 x i8] c"__daylight\00"
@"str.503" = private global [7 x i8] c"scalbl\00"
@"str.745" = private global [11 x i8] c"__timezone\00"
@"str.504" = private global [14 x i8] c"__assert_fail\00"
@"str.746" = private global [7 x i8] c"tzname\00"
@"str.505" = private global [21 x i8] c"__assert_perror_fail\00"
@"str.747" = private global [9 x i8] c"daylight\00"
@"str.506" = private global [9 x i8] c"__assert\00"
@"str.748" = private global [9 x i8] c"timezone\00"
@"str.507" = private global [14 x i8] c"__sysv_signal\00"
@"str.749" = private global [8 x i8] c"signgam\00"
@"str.508" = private global [7 x i8] c"signal\00"
@"str.509" = private global [5 x i8] c"kill\00"
@"str.750" = private global [13 x i8] c"_sys_siglist\00"
@"str.751" = private global [12 x i8] c"sys_siglist\00"
@"str.510" = private global [7 x i8] c"killpg\00"
@"str.752" = private global [14 x i8] c"ffi_type_void\00"
@"str.511" = private global [6 x i8] c"raise\00"
@"str.753" = private global [15 x i8] c"ffi_type_uint8\00"
@"str.512" = private global [8 x i8] c"ssignal\00"
@"str.754" = private global [15 x i8] c"ffi_type_sint8\00"
@"str.513" = private global [8 x i8] c"gsignal\00"
@"str.755" = private global [16 x i8] c"ffi_type_uint16\00"
@"str.514" = private global [8 x i8] c"psignal\00"
@"str.756" = private global [16 x i8] c"ffi_type_sint16\00"
@"str.515" = private global [9 x i8] c"psiginfo\00"
@"str.757" = private global [16 x i8] c"ffi_type_uint32\00"
@"str.516" = private global [9 x i8] c"sigblock\00"
@"str.758" = private global [16 x i8] c"ffi_type_sint32\00"
@"str.517" = private global [11 x i8] c"sigsetmask\00"
@"str.759" = private global [16 x i8] c"ffi_type_uint64\00"
@"str.518" = private global [12 x i8] c"sigemptyset\00"
@"str.519" = private global [11 x i8] c"sigfillset\00"
@"str.760" = private global [16 x i8] c"ffi_type_sint64\00"
@"str.761" = private global [15 x i8] c"ffi_type_float\00"
@"str.520" = private global [10 x i8] c"sigaddset\00"
@"str.762" = private global [16 x i8] c"ffi_type_double\00"
@"str.521" = private global [10 x i8] c"sigdelset\00"
@"str.763" = private global [17 x i8] c"ffi_type_pointer\00"
@"str.522" = private global [12 x i8] c"sigismember\00"
@"str.764" = private global [20 x i8] c"ffi_type_longdouble\00"
@"str.523" = private global [12 x i8] c"sigprocmask\00"
@"str.765" = private global [23 x i8] c"ffi_type_complex_float\00"
@"str.524" = private global [11 x i8] c"sigsuspend\00"
@"str.766" = private global [24 x i8] c"ffi_type_complex_double\00"
@"str.525" = private global [10 x i8] c"sigaction\00"
@"str.767" = private global [28 x i8] c"ffi_type_complex_longdouble\00"
@"str.526" = private global [11 x i8] c"sigpending\00"
@"str.768" = private global [10 x i8] c"__environ\00"
@"str.527" = private global [8 x i8] c"sigwait\00"
@"str.769" = private global [7 x i8] c"optarg\00"
@"str.528" = private global [12 x i8] c"sigwaitinfo\00"
@"str.529" = private global [13 x i8] c"sigtimedwait\00"
@"str.770" = private global [7 x i8] c"optind\00"
@"str.771" = private global [7 x i8] c"opterr\00"
@"str.530" = private global [9 x i8] c"sigqueue\00"
@"str.772" = private global [7 x i8] c"optopt\00"
@"str.531" = private global [13 x i8] c"siginterrupt\00"
@"str.532" = private global [12 x i8] c"sigaltstack\00"
@"str.533" = private global [16 x i8] c"pthread_sigmask\00"
@"str.534" = private global [13 x i8] c"pthread_kill\00"
@"str.535" = private global [24 x i8] c"__libc_current_sigrtmin\00"
@"str.536" = private global [24 x i8] c"__libc_current_sigrtmax\00"
@"str.537" = private global [14 x i8] c"__ctype_b_loc\00"
@"str.538" = private global [20 x i8] c"__ctype_tolower_loc\00"
@"str.539" = private global [20 x i8] c"__ctype_toupper_loc\00"
@"str.540" = private global [8 x i8] c"isalnum\00"
@"str.541" = private global [8 x i8] c"isalpha\00"
@"str.300" = private global [5 x i8] c"log2\00"
@"str.542" = private global [8 x i8] c"iscntrl\00"
@"str.301" = private global [4 x i8] c"pow\00"
@"str.543" = private global [8 x i8] c"isdigit\00"
@"str.302" = private global [5 x i8] c"sqrt\00"
@"str.544" = private global [8 x i8] c"islower\00"
@"str.303" = private global [6 x i8] c"hypot\00"
@"str.545" = private global [8 x i8] c"isgraph\00"
@"str.304" = private global [5 x i8] c"cbrt\00"
@"str.546" = private global [8 x i8] c"isprint\00"
@"str.305" = private global [5 x i8] c"ceil\00"
@"str.547" = private global [8 x i8] c"ispunct\00"
@"str.306" = private global [5 x i8] c"fabs\00"
@"str.548" = private global [8 x i8] c"isspace\00"
@"str.307" = private global [6 x i8] c"floor\00"
@"str.549" = private global [8 x i8] c"isupper\00"
@"str.308" = private global [5 x i8] c"fmod\00"
@"str.309" = private global [6 x i8] c"isinf\00"
@"str.550" = private global [9 x i8] c"isxdigit\00"
@"str.551" = private global [8 x i8] c"tolower\00"
@"str.310" = private global [7 x i8] c"finite\00"
@"str.552" = private global [8 x i8] c"toupper\00"
@"str.311" = private global [5 x i8] c"drem\00"
@"str.553" = private global [8 x i8] c"isblank\00"
@"str.312" = private global [12 x i8] c"significand\00"
@"str.554" = private global [8 x i8] c"isascii\00"
@"str.313" = private global [9 x i8] c"copysign\00"
@"str.555" = private global [8 x i8] c"toascii\00"
@"str.314" = private global [4 x i8] c"nan\00"
@"str.556" = private global [9 x i8] c"_toupper\00"
@"str.315" = private global [6 x i8] c"isnan\00"
@"str.557" = private global [9 x i8] c"_tolower\00"
@"str.316" = private global [3 x i8] c"j0\00"
@"str.558" = private global [10 x i8] c"isalnum_l\00"
@"str.317" = private global [3 x i8] c"j1\00"
@"str.559" = private global [10 x i8] c"isalpha_l\00"
@"str.318" = private global [3 x i8] c"jn\00"
@"str.319" = private global [3 x i8] c"y0\00"
@"str.560" = private global [10 x i8] c"iscntrl_l\00"
@"str.561" = private global [10 x i8] c"isdigit_l\00"
@"str.320" = private global [3 x i8] c"y1\00"
@"str.562" = private global [10 x i8] c"islower_l\00"
@"str.321" = private global [3 x i8] c"yn\00"
@"str.563" = private global [10 x i8] c"isgraph_l\00"
@"str.322" = private global [4 x i8] c"erf\00"
@"str.564" = private global [10 x i8] c"isprint_l\00"
@"str.323" = private global [5 x i8] c"erfc\00"
@"str.565" = private global [10 x i8] c"ispunct_l\00"
@"str.324" = private global [7 x i8] c"lgamma\00"
@"str.566" = private global [10 x i8] c"isspace_l\00"
@"str.325" = private global [7 x i8] c"tgamma\00"
@"str.567" = private global [10 x i8] c"isupper_l\00"
@"str.326" = private global [6 x i8] c"gamma\00"
@"str.568" = private global [11 x i8] c"isxdigit_l\00"
@"str.327" = private global [9 x i8] c"lgamma_r\00"
@"str.569" = private global [10 x i8] c"isblank_l\00"
@"str.328" = private global [5 x i8] c"rint\00"
@"str.329" = private global [10 x i8] c"nextafter\00"
@"str.570" = private global [12 x i8] c"__tolower_l\00"
@"str.571" = private global [10 x i8] c"tolower_l\00"
@"str.330" = private global [11 x i8] c"nexttoward\00"
@"str.572" = private global [12 x i8] c"__toupper_l\00"
@"str.331" = private global [10 x i8] c"remainder\00"
@"str.573" = private global [10 x i8] c"toupper_l\00"
@"str.332" = private global [7 x i8] c"scalbn\00"
@"str.574" = private global [10 x i8] c"setlocale\00"
@"str.333" = private global [6 x i8] c"ilogb\00"
@"str.575" = private global [11 x i8] c"localeconv\00"
@"str.334" = private global [8 x i8] c"scalbln\00"
@"str.576" = private global [10 x i8] c"newlocale\00"
@"str.335" = private global [10 x i8] c"nearbyint\00"
@"str.577" = private global [10 x i8] c"duplocale\00"
@"str.336" = private global [6 x i8] c"round\00"
@"str.578" = private global [11 x i8] c"freelocale\00"
@"str.337" = private global [6 x i8] c"trunc\00"
@"str.579" = private global [10 x i8] c"uselocale\00"
@"str.338" = private global [7 x i8] c"remquo\00"
@"str.339" = private global [6 x i8] c"lrint\00"
@"str.580" = private global [7 x i8] c"setjmp\00"
@"str.581" = private global [12 x i8] c"__sigsetjmp\00"
@"str.340" = private global [7 x i8] c"llrint\00"
@"str.582" = private global [8 x i8] c"_setjmp\00"
@"str.341" = private global [7 x i8] c"lround\00"
@"str.583" = private global [8 x i8] c"longjmp\00"
@"str.100" = private global [6 x i8] c"mblen\00"
@"str.342" = private global [8 x i8] c"llround\00"
@"str.584" = private global [9 x i8] c"_longjmp\00"
@"str.101" = private global [7 x i8] c"mbtowc\00"
@"str.343" = private global [5 x i8] c"fdim\00"
@"str.585" = private global [11 x i8] c"siglongjmp\00"
@"str.102" = private global [7 x i8] c"wctomb\00"
@"str.344" = private global [5 x i8] c"fmax\00"
@"str.586" = private global [17 x i8] c"__errno_location\00"
@"str.103" = private global [9 x i8] c"mbstowcs\00"
@"str.345" = private global [5 x i8] c"fmin\00"
@"str.587" = private global [13 x i8] c"ffi_raw_call\00"
@"str.104" = private global [9 x i8] c"wcstombs\00"
@"str.346" = private global [4 x i8] c"fma\00"
@"str.588" = private global [20 x i8] c"ffi_ptrarray_to_raw\00"
@"str.105" = private global [8 x i8] c"rpmatch\00"
@"str.347" = private global [6 x i8] c"scalb\00"
@"str.589" = private global [20 x i8] c"ffi_raw_to_ptrarray\00"
@"str.106" = private global [10 x i8] c"getsubopt\00"
@"str.348" = private global [14 x i8] c"__fpclassifyf\00"
@"str.107" = private global [11 x i8] c"getloadavg\00"
@"str.349" = private global [11 x i8] c"__signbitf\00"
@"str.108" = private global [7 x i8] c"remove\00"
@"str.109" = private global [7 x i8] c"rename\00"
@"str.590" = private global [13 x i8] c"ffi_raw_size\00"
@"str.591" = private global [18 x i8] c"ffi_java_raw_call\00"
@"str.350" = private global [9 x i8] c"__isinff\00"
@"str.592" = private global [25 x i8] c"ffi_java_ptrarray_to_raw\00"
@"str.351" = private global [10 x i8] c"__finitef\00"
@"str.593" = private global [25 x i8] c"ffi_java_raw_to_ptrarray\00"
@"str.110" = private global [9 x i8] c"renameat\00"
@"str.352" = private global [9 x i8] c"__isnanf\00"
@"str.594" = private global [18 x i8] c"ffi_java_raw_size\00"
@"str.111" = private global [8 x i8] c"tmpfile\00"
@"str.353" = private global [11 x i8] c"__iseqsigf\00"
@"str.595" = private global [18 x i8] c"ffi_closure_alloc\00"
@"str.112" = private global [7 x i8] c"fclose\00"
@"str.354" = private global [15 x i8] c"__issignalingf\00"
@"str.596" = private global [17 x i8] c"ffi_closure_free\00"
@"str.113" = private global [7 x i8] c"fflush\00"
@"str.355" = private global [6 x i8] c"acosf\00"
@"str.597" = private global [17 x i8] c"ffi_prep_closure\00"
@"str.114" = private global [16 x i8] c"fflush_unlocked\00"
@"str.356" = private global [6 x i8] c"asinf\00"
@"str.598" = private global [21 x i8] c"ffi_prep_closure_loc\00"
@"str.115" = private global [6 x i8] c"fopen\00"
@"str.357" = private global [6 x i8] c"atanf\00"
@"str.599" = private global [21 x i8] c"ffi_prep_raw_closure\00"
@"str.116" = private global [8 x i8] c"freopen\00"
@"str.358" = private global [7 x i8] c"atan2f\00"
@"str.117" = private global [7 x i8] c"fdopen\00"
@"str.359" = private global [5 x i8] c"cosf\00"
@"str.118" = private global [9 x i8] c"fmemopen\00"
@"str.119" = private global [15 x i8] c"open_memstream\00"
@"str.360" = private global [5 x i8] c"sinf\00"
@"str.361" = private global [5 x i8] c"tanf\00"
@"str.120" = private global [7 x i8] c"setbuf\00"
@"str.362" = private global [6 x i8] c"coshf\00"
@"str.121" = private global [8 x i8] c"setvbuf\00"
@"str.363" = private global [6 x i8] c"sinhf\00"
@"str.122" = private global [10 x i8] c"setbuffer\00"
@"str.364" = private global [6 x i8] c"tanhf\00"
@"str.123" = private global [11 x i8] c"setlinebuf\00"
@"str.365" = private global [7 x i8] c"acoshf\00"
@"str.124" = private global [8 x i8] c"fprintf\00"
@"str.366" = private global [7 x i8] c"asinhf\00"
@"str.125" = private global [7 x i8] c"printf\00"
@"str.367" = private global [7 x i8] c"atanhf\00"
@"str.126" = private global [8 x i8] c"sprintf\00"
@"str.368" = private global [5 x i8] c"expf\00"
@"str.127" = private global [9 x i8] c"vfprintf\00"
@"str.369" = private global [7 x i8] c"frexpf\00"
@"str.128" = private global [8 x i8] c"vprintf\00"
@"str.129" = private global [9 x i8] c"vsprintf\00"
@"str.370" = private global [7 x i8] c"ldexpf\00"
@"str.371" = private global [5 x i8] c"logf\00"
@"str.130" = private global [9 x i8] c"snprintf\00"
@"str.372" = private global [7 x i8] c"log10f\00"
@"str.131" = private global [10 x i8] c"vsnprintf\00"
@"str.373" = private global [6 x i8] c"modff\00"
@"str.132" = private global [9 x i8] c"vdprintf\00"
@"str.374" = private global [7 x i8] c"expm1f\00"
@"str.133" = private global [8 x i8] c"dprintf\00"
@"str.375" = private global [7 x i8] c"log1pf\00"
@"str.134" = private global [7 x i8] c"fscanf\00"
@"str.376" = private global [6 x i8] c"logbf\00"
@"str.135" = private global [6 x i8] c"scanf\00"
@"str.377" = private global [6 x i8] c"exp2f\00"
@"str.136" = private global [7 x i8] c"sscanf\00"
@"str.378" = private global [6 x i8] c"log2f\00"
@"str.137" = private global [8 x i8] c"vfscanf\00"
@"str.379" = private global [5 x i8] c"powf\00"
@"str.138" = private global [7 x i8] c"vscanf\00"
@"str.139" = private global [8 x i8] c"vsscanf\00"
@"str.380" = private global [6 x i8] c"sqrtf\00"
@"str.381" = private global [7 x i8] c"hypotf\00"
@"str.140" = private global [6 x i8] c"fgetc\00"
@"str.382" = private global [6 x i8] c"cbrtf\00"
@"str.141" = private global [5 x i8] c"getc\00"
@"str.383" = private global [6 x i8] c"ceilf\00"
@"str.142" = private global [8 x i8] c"getchar\00"
@"str.384" = private global [6 x i8] c"fabsf\00"
@"str.143" = private global [14 x i8] c"getc_unlocked\00"
@"str.385" = private global [7 x i8] c"floorf\00"
@"str.144" = private global [17 x i8] c"getchar_unlocked\00"
@"str.386" = private global [6 x i8] c"fmodf\00"
@"str.145" = private global [15 x i8] c"fgetc_unlocked\00"
@"str.387" = private global [7 x i8] c"isinff\00"
@"str.146" = private global [6 x i8] c"fputc\00"
@"str.388" = private global [8 x i8] c"finitef\00"
@"str.147" = private global [5 x i8] c"putc\00"
@"str.389" = private global [6 x i8] c"dremf\00"
@"str.148" = private global [8 x i8] c"putchar\00"
@"str.149" = private global [15 x i8] c"fputc_unlocked\00"
@"str.390" = private global [13 x i8] c"significandf\00"
@"str.391" = private global [10 x i8] c"copysignf\00"
@"str.150" = private global [14 x i8] c"putc_unlocked\00"
@"str.392" = private global [5 x i8] c"nanf\00"
@"str.151" = private global [17 x i8] c"putchar_unlocked\00"
@"str.393" = private global [7 x i8] c"isnanf\00"
@"str.152" = private global [5 x i8] c"getw\00"
@"str.394" = private global [4 x i8] c"j0f\00"
@"str.153" = private global [5 x i8] c"putw\00"
@"str.395" = private global [4 x i8] c"j1f\00"
@"str.154" = private global [6 x i8] c"fgets\00"
@"str.396" = private global [4 x i8] c"jnf\00"
@"str.155" = private global [11 x i8] c"__getdelim\00"
@"str.397" = private global [4 x i8] c"y0f\00"
@"str.156" = private global [9 x i8] c"getdelim\00"
@"str.398" = private global [4 x i8] c"y1f\00"
@"str.157" = private global [8 x i8] c"getline\00"
@"str.399" = private global [4 x i8] c"ynf\00"
@"str.158" = private global [6 x i8] c"fputs\00"
@"str.159" = private global [5 x i8] c"puts\00"
@"str.160" = private global [7 x i8] c"ungetc\00"
@"str.161" = private global [6 x i8] c"fread\00"
@"str.162" = private global [7 x i8] c"fwrite\00"
@"str.163" = private global [15 x i8] c"fread_unlocked\00"
@"str.164" = private global [16 x i8] c"fwrite_unlocked\00"
@"str.165" = private global [6 x i8] c"fseek\00"
@"str.166" = private global [6 x i8] c"ftell\00"
@"str.167" = private global [7 x i8] c"rewind\00"
@"str.168" = private global [7 x i8] c"fseeko\00"
@"str.169" = private global [7 x i8] c"ftello\00"
@"str.170" = private global [8 x i8] c"fgetpos\00"
@"str.171" = private global [8 x i8] c"fsetpos\00"
@"str.172" = private global [9 x i8] c"clearerr\00"
@"str.173" = private global [5 x i8] c"feof\00"
@"str.174" = private global [7 x i8] c"ferror\00"
@"str.175" = private global [18 x i8] c"clearerr_unlocked\00"
@"str.176" = private global [14 x i8] c"feof_unlocked\00"
@"str.177" = private global [16 x i8] c"ferror_unlocked\00"
@"str.178" = private global [7 x i8] c"perror\00"
@"str.179" = private global [7 x i8] c"fileno\00"
@"str.180" = private global [16 x i8] c"fileno_unlocked\00"
@"str.181" = private global [6 x i8] c"popen\00"
@"str.182" = private global [7 x i8] c"pclose\00"
@"str.183" = private global [8 x i8] c"ctermid\00"
@"str.184" = private global [10 x i8] c"flockfile\00"
@"str.185" = private global [13 x i8] c"ftrylockfile\00"
@"str.186" = private global [12 x i8] c"funlockfile\00"
@"str.187" = private global [8 x i8] c"__uflow\00"
@"str.188" = private global [11 x i8] c"__overflow\00"
@"str.189" = private global [7 x i8] c"memcpy\00"
@"str.190" = private global [8 x i8] c"memmove\00"
@"str.191" = private global [8 x i8] c"memccpy\00"
@"str.192" = private global [7 x i8] c"memset\00"
@"str.193" = private global [7 x i8] c"memcmp\00"
@"str.194" = private global [7 x i8] c"memchr\00"
@"str.195" = private global [7 x i8] c"strcpy\00"
@"str.196" = private global [8 x i8] c"strncpy\00"
@"str.197" = private global [7 x i8] c"strcat\00"
@"str.198" = private global [8 x i8] c"strncat\00"
@"str.199" = private global [7 x i8] c"strcmp\00"
