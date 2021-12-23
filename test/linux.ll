; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/linux.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"linux::pthread_mutex_t" = type {[40 x i8]}
%"linux::u_sigval" = type {[8 x i8]}
%"linux::siginfo_t" = type {i32, i32, i32, i32, %"<anonymous>.1"}
%"linux::pthread_rwlockattr_t" = type {[8 x i8]}
%"linux::s_rusage" = type opaque
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"<anonymous>.1" = type {[112 x i8]}
%"linux::pthread_cond_t" = type {[48 x i8]}
%"<anonymous>.2" = type {i32, i32}
%"<anonymous>.3" = type {i32, i32, %"linux::u_sigval"}
%"<anonymous>.4" = type {i32, i32, %"linux::u_sigval"}
%"linux::s__fpxreg" = type {[4 x i16], i16, [3 x i16]}
%"<anonymous>.5" = type {i32, i32, i32, i64, i64}
%"<anonymous>.6" = type {i8*, i16, %"<anonymous>.7"}
%"linux::s_sigaction" = type {%"<anonymous>.1", %"linux::__sigset_t", i32, void ()*}
%"<anonymous>.7" = type {[16 x i8]}
%"<anonymous>.8" = type {i8*, i8*}
%"linux::stack_t" = type {i8*, i32, i64}
%"<anonymous>.9" = type {i64, i32}
%"linux::__sigset_t" = type {[16 x i64]}
%"linux::div_t" = type {i32, i32}
%"linux::ucontext_t" = type {i64, %"linux::ucontext_t"*, %"linux::stack_t", %"linux::mcontext_t", %"linux::__sigset_t", %"linux::s__libc_fpstate", [4 x i64]}
%"linux::s___pthread_rwlock_arch_t" = type {i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32}
%"linux::s__fpstate" = type {i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"linux::s__fpxreg"], [16 x %"linux::s__xmmreg"], [24 x i32]}
%"linux::s__xmmreg" = type {[4 x i32]}
%"linux::mcontext_t" = type {[23 x i64], %"linux::s__libc_fpstate"*, [8 x i64]}
%"linux::s__fpreg" = type {[4 x i16], i16}
%"linux::__pthread_list_t" = type {%"linux::__pthread_list_t"*, %"linux::__pthread_list_t"*}
%"linux::s__fpx_sw_bytes" = type {i32, i32, i64, i32, [7 x i32]}
%"linux::s__ymmh_state" = type {[64 x i32]}
%"linux::s_termios" = type {i32, i32, i32, i32, i8, [32 x i8], i32, i32}
%"linux::sigevent_t" = type {%"linux::u_sigval", i32, i32, %"<anonymous>.1"}
%"linux::s_termio" = type {i16, i16, i16, i16, i8, [8 x i8]}
%"linux::s_stat" = type {i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"linux::s_timespec", %"linux::s_timespec", %"linux::s_timespec", [3 x i64]}
%"linux::s_random_data" = type {i32*, i32*, i32*, i32, i32, i32, i32*}
%"linux::s_sigstack" = type {i8*, i32}
%"linux::pthread_mutexattr_t" = type {[4 x i8]}
%"linux::s___pthread_cond_s" = type {%"<anonymous>.1", %"<anonymous>.3", [2 x i32], [2 x i32], i32, i32, [2 x i32]}
%"linux::s_drand48_data" = type {[3 x i16], [3 x i16], i16, i16, i64}
%"linux::pthread_condattr_t" = type {[4 x i8]}
%"linux::pthread_barrier_t" = type {[32 x i8]}
%"linux::s_timeval" = type {i64, i64}
%"linux::s__xstate" = type {%"linux::s__fpstate", %"linux::s__xsave_hdr", %"linux::s__ymmh_state"}
%"linux::s__xsave_hdr" = type {i64, [2 x i64], [5 x i64]}
%"<anonymous>.10" = type {i8*, i32, i32}
%"linux::__fsid_t" = type {[2 x i32]}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"linux::s___pthread_mutex_s" = type {i32, i32, i32, i32, i32, i16, i16, %"linux::__pthread_list_t"}
%"linux::pthread_rwlock_t" = type {[56 x i8]}
%"linux::s_sigcontext" = type {i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, %"<anonymous>.1", [8 x i64]}
%"linux::lldiv_t" = type {i64, i64}
%"linux::s__libc_fpxreg" = type {[4 x i16], i16, [3 x i16]}
%"linux::s_timespec" = type {i64, i64}
%"linux::u_pthread_attr_t" = type {[56 x i8]}
%"linux::s_winsize" = type {i16, i16, i16, i16}
%"linux::ldiv_t" = type {i64, i64}
%"linux::pthread_barrierattr_t" = type {[4 x i8]}
%"linux::s__libc_fpstate" = type {i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"linux::s__libc_fpxreg"], [16 x %"linux::s__libc_xmmreg"], [24 x i32]}
%"linux::fd_set" = type {[16 x i64]}
%"linux::__pthread_slist_t" = type {%"linux::__pthread_slist_t"*}
%"linux::s__libc_xmmreg" = type {[4 x i32]}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
declare i32 @"__fxstatat"(i32, i32, i8*, %"linux::s_stat"*, i32)
declare i32 @"getuid"()
declare i32 @"mkstemp"(i8*)
declare i32 @"munlock"(i8*, i64)
declare i64 @"readlinkat"(i32, i8*, i8*, i64)
declare i32 @"sigaddset"(%"linux::__sigset_t"*, i32)
declare i32 @"tcflush"(i32, i32)
declare i32 @"waitpid"(i32, i32*, i32)
declare i32 @"setenv"(i8*, i8*, i32)
declare i32 @"fstat"(i32, %"linux::s_stat"*)
declare i32 @"waitid"(i32, i32, %"linux::siginfo_t"*, i32)
declare i32 @"getdtablesize"()
declare i64 @"read"(i32, i8*, i64)
declare i8* @"ttyname"(i32)
declare i32 @"sigaction"(i32, %"linux::s_sigaction"*, %"linux::s_sigaction"*)
declare i8* @"getcwd"(i8*, i64)
declare i64 @"strtouq"(i8*, i8**, i32)
declare i32 @"mkfifoat"(i32, i8*, i32)
declare i8* @"qecvt"(x86_fp80, i32, i32*, i32*)
declare double @"erand48"(i16*)
declare i32 @"fchdir"(i32)
declare i32 @"access"(i8*, i32)
declare i32 @"unsetenv"(i8*)
declare i32 @"sethostname"(i8*, i64)
declare i64 @"mrand48"()
declare i32 @"mkfifo"(i8*, i32)
declare i32 @"fcvt_r"(double, i32, i32*, i32*, i8*, i64)
declare i32 @"pipe"(i32*)
declare i64 @"pwrite"(i32, i8*, i64, i64)
declare i8* @"getusershell"()
declare i64 @"write"(i32, i8*, i64)
declare i32 @"siginterrupt"(i32, i32)
declare i32 @"geteuid"()
declare i8* @"reallocarray"(i8*, i64, i64)
declare float @"strtof"(i8*, i8**)
declare i32 @"raise"(i32)
declare i32 @"putenv"(i8*)
declare i32 @"usleep"(i32)
declare i64 @"strtoq"(i8*, i8**, i32)
declare i32 @"getlogin_r"(i8*, i64)
declare i32 @"pause"()
declare void @"endusershell"()
declare i32 @"close"(i32)
declare i32 @"utimensat"(i32, i8*, %"linux::s_timespec"*, i32)
declare i32 @"posix_memalign"(i8**, i64, i64)
declare i32 @"execl"(i8*, i8*, ...)
declare i8* @"mmap"(i8*, i64, i32, i32, i32, i64)
declare void @"_exit"(i32)
declare i32 @"fsync"(i32)
declare i32 @"erand48_r"(i16*, %"linux::s_drand48_data"*, double*)
declare i32 @"execv"(i8*, i8**)
declare i64 @"pread"(i32, i8*, i64, i64)
declare i32 @"rpmatch"(i8*)
declare i32 @"sigdelset"(%"linux::__sigset_t"*, i32)
declare i32 @"tcsetpgrp"(i32, i32)
declare i32 @"chdir"(i8*)
declare i32 @"lcong48_r"(i16*, %"linux::s_drand48_data"*)
declare i32 @"mrand48_r"(%"linux::s_drand48_data"*, i64*)
declare i8* @"ecvt"(double, i32, i32*, i32*)
declare i32 @"getopt"(i32, i8**, i8*)
declare i32 @"srand48_r"(i64, %"linux::s_drand48_data"*)
declare i64 @"jrand48"(i16*)
declare i32 @"truncate"(i8*, i64)
declare i32 @"seed48_r"(i16*, %"linux::s_drand48_data"*)
declare i32 @"linkat"(i32, i8*, i32, i8*, i32)
declare i8* @"setstate"(i8*)
declare void @"_Exit"(i32)
declare i32 @"shm_open"(i8*, i32, i32)
declare i32 @"getdomainname"(i8*, i64)
declare i32 @"getsid"(i32)
declare i32 @"__libc_current_sigrtmin"()
declare i8* @"getpass"(i8*)
declare i32 @"link"(i8*, i8*)
declare i32 @"tcsendbreak"(i32, i32)
declare i32 @"getgroups"(i32, i32*)
declare i8* @"qfcvt"(x86_fp80, i32, i32*, i32*)
declare i32 @"clearenv"()
declare i32 @"mkdir"(i8*, i32)
declare i32 @"setdomainname"(i8*, i64)
declare i32 @"unlinkat"(i32, i8*, i32)
declare i32 @"mlockall"(i32)
declare i32 @"execle"(i8*, i8*, ...)
declare i32 @"vfork"()
declare i32 @"setregid"(i32, i32)
declare i32 @"dup"(i32)
declare i32 @"qecvt_r"(x86_fp80, i32, i32*, i32*, i8*, i64)
declare i32 @"acct"(i8*)
declare i32 @"dup2"(i32, i32)
declare i32 @"killpg"(i32, i32)
declare i32 @"execlp"(i8*, i8*, ...)
declare i32 @"vhangup"()
declare i32 @"munmap"(i8*, i64)
declare i32 @"fchmod"(i32, i32)
declare i32 @"cfgetospeed"(%"linux::s_termios"*)
declare i64 @"confstr"(i32, i8*, i64)
declare void @"setusershell"()
declare i32 @"alarm"(i32)
declare i32 @"sigprocmask"(i32, %"linux::__sigset_t"*, %"linux::__sigset_t"*)
declare i32 @"cfsetospeed"(%"linux::s_termios"*, i32)
declare i32 @"mkstemps"(i8*, i32)
declare i32 @"brk"(i8*)
declare i32 @"setegid"(i32)
declare i32 @"mkdirat"(i32, i8*, i32)
declare i32 @"mknod"(i8*, i32, i64)
declare i32 @"shm_unlink"(i8*)
declare i8* @"fcvt"(double, i32, i32*, i32*)
declare i64 @"syscall"(i64, ...)
declare i32 @"__lxstat"(i32, i8*, %"linux::s_stat"*)
declare i32 @"mprotect"(i8*, i64, i32)
declare i32 @"rmdir"(i8*)
declare i32 @"setpgid"(i32, i32)
declare i32 @"initstate_r"(i32, i8*, i64, %"linux::s_random_data"*)
declare i32 @"ttyname_r"(i32, i8*, i64)
declare i32 @"tcgetattr"(i32, %"linux::s_termios"*)
declare i32 @"fchownat"(i32, i8*, i32, i32, i32)
declare i32 @"chmod"(i8*, i32)
declare i32 @"faccessat"(i32, i8*, i32, i32)
declare i32 @"unlink"(i8*)
declare i8* @"getlogin"()
declare i32 @"stat"(i8*, %"linux::s_stat"*)
declare i32 @"lchown"(i8*, i32, i32)
declare i32 @"msync"(i8*, i64, i32)
declare i32 @"getpgrp"()
declare i8* @"qgcvt"(x86_fp80, i32, i8*)
declare i32 @"tcflow"(i32, i32)
declare double @"drand48"()
declare i32 @"setgid"(i32)
declare i32 @"isatty"(i32)
declare i32 @"setstate_r"(i8*, %"linux::s_random_data"*)
declare i32 @"cfgetispeed"(%"linux::s_termios"*)
declare i32 @"sigpending"(%"linux::__sigset_t"*)
declare i64 @"lrand48"()
declare i8* @"aligned_alloc"(i64, i64)
declare i32 @"lockf"(i32, i32, i64)
declare void (i32)* @"ssignal"(i32, void (i32)*)
declare i32 @"cfsetispeed"(%"linux::s_termios"*, i32)
declare x86_fp80 @"strtold"(i8*, i8**)
declare i32 @"random_r"(%"linux::s_random_data"*, i32*)
declare i32 @"fexecve"(i32, i8**, i8**)
declare i32 @"sigtimedwait"(%"linux::__sigset_t"*, %"linux::siginfo_t"*, %"linux::s_timespec"*)
declare i32 @"tcdrain"(i32)
declare i32 @"profil"(i16*, i64, i64, i32)
declare i32 @"__xstat"(i32, i8*, %"linux::s_stat"*)
declare i64 @"strtoll"(i8*, i8**, i32)
declare i32 @"__xmknodat"(i32, i32, i8*, i32, i64*)
declare i64 @"fpathconf"(i32, i32)
declare i32 @"mincore"(i8*, i64, i8*)
declare i32 @"sigwaitinfo"(%"linux::__sigset_t"*, %"linux::siginfo_t"*)
declare i32 @"__fxstat"(i32, i32, %"linux::s_stat"*)
declare i32 @"symlinkat"(i8*, i32, i8*)
declare void @"srandom"(i32)
declare i32 @"at_quick_exit"(void ()*)
declare i32 @"lstat"(i8*, %"linux::s_stat"*)
declare i8* @"gcvt"(double, i32, i8*)
declare i32 @"fchown"(i32, i32, i32)
declare i32 @"setreuid"(i32, i32)
declare i32 @"gethostname"(i8*, i64)
declare void @"sync"()
declare i32 @"getsubopt"(i8**, i8**, i8**)
define {i64, i8*} @"to_string::(linux::idtype_t)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %9 [
		i32 1, label %0
		i32 2, label %3
		i32 0, label %6
	]
0:
	%1 = getelementptr [6 x i8], [6 x i8]* @"linux::str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [7 x i8], [7 x i8]* @"linux::str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [6 x i8], [6 x i8]* @"linux::str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [10 x i8], [10 x i8]* @"linux::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
}
declare i32 @"sleep"(i32)
declare void @"psignal"(i32, i8*)
declare i32 @"posix_madvise"(i8*, i64, i32)
declare i32 @"qfcvt_r"(x86_fp80, i32, i32*, i32*, i8*, i64)
declare i32 @"umask"(i32)
declare i32 @"getpid"()
declare i64 @"lseek"(i32, i64, i32)
declare i32 @"srandom_r"(i32, %"linux::s_random_data"*)
declare i32 @"seteuid"(i32)
declare i8* @"valloc"(i64)
declare i32 @"fork"()
declare i32 @"daemon"(i32, i32)
declare i64 @"llabs"(i64)
declare i8* @"sbrk"(i64)
declare i32 @"fchmodat"(i32, i8*, i32, i32)
declare i32 @"sigfillset"(%"linux::__sigset_t"*)
declare i32 @"tcgetpgrp"(i32)
declare i32 @"munlockall"()
declare i32 @"drand48_r"(%"linux::s_drand48_data"*, double*)
declare i32 @"chown"(i8*, i32, i32)
declare i32 @"symlink"(i8*, i8*)
declare i8* @"initstate"(i32, i8*, i64)
declare i32 @"getloadavg"(double*, i32)
declare i32 @"sigemptyset"(%"linux::__sigset_t"*)
declare i32 @"jrand48_r"(i16*, %"linux::s_drand48_data"*, i64*)
declare i32 @"lrand48_r"(%"linux::s_drand48_data"*, i64*)
declare i32 @"nrand48_r"(i16*, %"linux::s_drand48_data"*, i64*)
declare i32 @"sigblock"(i32)
declare %"linux::lldiv_t" @"lldiv"(i64, i64)
declare void (i32)* @"signal"(i32, void (i32)*)
declare i64 @"nrand48"(i16*)
declare i32 @"mknodat"(i32, i8*, i32, i64)
declare i32 @"mlock"(i8*, i64)
declare i64 @"gethostid"()
declare i8* @"mkdtemp"(i8*)
declare i32 @"getgid"()
declare i64 @"atoll"(i8*)
declare i32 @"setuid"(i32)
declare void @"quick_exit"(i32)
declare i16* @"seed48"(i16*)
declare i32 @"sethostid"(i64)
declare i32 @"fdatasync"(i32)
declare i32 @"pselect"(i32, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::s_timespec"*, %"linux::__sigset_t"*)
declare i32 @"fstatat"(i32, i8*, %"linux::s_stat"*, i32)
declare i64 @"sysconf"(i32)
declare i32 @"getppid"()
declare i32 @"pthread_kill"(i64, i32)
declare i64 @"random"()
declare i32 @"chroot"(i8*)
declare i32 @"ioctl"(i32, i64, ...)
declare i32 @"ttyslot"()
declare void @"cfmakeraw"(%"linux::s_termios"*)
declare i32 @"__libc_current_sigrtmax"()
declare i32 @"pthread_sigmask"(i32, %"linux::__sigset_t"*, %"linux::__sigset_t"*)
declare i32 @"sigsuspend"(%"linux::__sigset_t"*)
declare void @"psiginfo"(%"linux::siginfo_t"*, i8*)
declare i32 @"ecvt_r"(double, i32, i32*, i32*, i8*, i64)
declare i32 @"on_exit"(void (i32, i8*)*, i8*)
declare i64 @"readlink"(i8*, i8*, i64)
declare i32 @"rand_r"(i32*)
declare i32 @"__getpgid"(i32)
declare i32 @"getentropy"(i8*, i64)
declare i32 @"sigsetmask"(i32)
declare i32 @"ftruncate"(i32, i64)
declare i32 @"getegid"()
declare i32 @"sigismember"(%"linux::__sigset_t"*, i32)
declare i32 @"madvise"(i8*, i64, i32)
declare void @"srand48"(i64)
declare i32 @"wait3"(i32*, i32, %"linux::s_rusage"*)
declare i32 @"wait4"(i32, i32*, i32, %"linux::s_rusage"*)
declare i32 @"getpgid"(i32)
declare i32 @"ualarm"(i32, i32)
declare i32 @"select"(i32, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::s_timeval"*)
declare i32 @"execve"(i8*, i8**, i8**)
declare i8* @"crypt"(i8*, i8*)
declare i8* @"realpath"(i8*, i8*)
declare i64 @"__ctype_get_mb_cur_max"()
declare i32 @"cfsetspeed"(%"linux::s_termios"*, i32)
declare i64 @"pathconf"(i8*, i32)
declare i64 @"strtoull"(i8*, i8**, i32)
declare i32 @"execvp"(i8*, i8**)
declare i32 @"__xmknod"(i32, i8*, i32, i64*)
declare void (i32)* @"__sysv_signal"(i32, void (i32)*)
declare i32 @"tcsetattr"(i32, i32, %"linux::s_termios"*)
declare i32 @"sigwait"(%"linux::__sigset_t"*, i32*)
declare i32 @"nice"(i32)
declare i32 @"kill"(i32, i32)
declare i32 @"sigqueue"(i32, i32, %"linux::u_sigval")
declare i32 @"futimens"(i32, %"linux::s_timespec"*)
declare i32 @"gsignal"(i32)
declare i32 @"sigaltstack"(%"linux::stack_t"*, %"linux::stack_t"*)
declare i32 @"tcgetsid"(i32)
declare void @"lcong48"(i16*)
declare i32 @"setpgrp"()
declare i32 @"setsid"()
declare i64 @"a64l"(i8*)
declare i32 @"wait"(i32*)
declare i8* @"l64a"(i64)
define void @"linux::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
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
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = getelementptr [5 x i8], [5 x i8]* @"linux::str.4", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.0
	%2 = load {i64, i8*}, {i64, i8*}* %tmp.0
	%3 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 0
	store {i64, i8*} %2, {i64, i8*}* %3
	%4 = bitcast i32 (i8*, %"linux::s_stat"*)* @"stat" to void ()*
	%5 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 0
	store void ()* %4, void ()** %5
	%6 = getelementptr [6 x i8], [6 x i8]* @"linux::str.5", i64 0, i64 0
	%7 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %6, 1
	store {i64, i8*} %7, {i64, i8*}* %tmp.1
	%8 = load {i64, i8*}, {i64, i8*}* %tmp.1
	%9 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 1
	store {i64, i8*} %8, {i64, i8*}* %9
	%10 = bitcast i32 (i32, %"linux::s_stat"*)* @"fstat" to void ()*
	%11 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 1
	store void ()* %10, void ()** %11
	%12 = getelementptr [8 x i8], [8 x i8]* @"linux::str.6", i64 0, i64 0
	%13 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %12, 1
	store {i64, i8*} %13, {i64, i8*}* %tmp.2
	%14 = load {i64, i8*}, {i64, i8*}* %tmp.2
	%15 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 2
	store {i64, i8*} %14, {i64, i8*}* %15
	%16 = bitcast i32 (i32, i8*, %"linux::s_stat"*, i32)* @"fstatat" to void ()*
	%17 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 2
	store void ()* %16, void ()** %17
	%18 = getelementptr [6 x i8], [6 x i8]* @"linux::str.7", i64 0, i64 0
	%19 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %18, 1
	store {i64, i8*} %19, {i64, i8*}* %tmp.3
	%20 = load {i64, i8*}, {i64, i8*}* %tmp.3
	%21 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 3
	store {i64, i8*} %20, {i64, i8*}* %21
	%22 = bitcast i32 (i8*, %"linux::s_stat"*)* @"lstat" to void ()*
	%23 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 3
	store void ()* %22, void ()** %23
	%24 = getelementptr [6 x i8], [6 x i8]* @"linux::str.8", i64 0, i64 0
	%25 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %24, 1
	store {i64, i8*} %25, {i64, i8*}* %tmp.4
	%26 = load {i64, i8*}, {i64, i8*}* %tmp.4
	%27 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 4
	store {i64, i8*} %26, {i64, i8*}* %27
	%28 = bitcast i32 (i8*, i32)* @"chmod" to void ()*
	%29 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 4
	store void ()* %28, void ()** %29
	%30 = getelementptr [7 x i8], [7 x i8]* @"linux::str.9", i64 0, i64 0
	%31 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %30, 1
	store {i64, i8*} %31, {i64, i8*}* %tmp.5
	%32 = load {i64, i8*}, {i64, i8*}* %tmp.5
	%33 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 5
	store {i64, i8*} %32, {i64, i8*}* %33
	%34 = bitcast i32 (i32, i32)* @"fchmod" to void ()*
	%35 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 5
	store void ()* %34, void ()** %35
	%36 = getelementptr [9 x i8], [9 x i8]* @"linux::str.10", i64 0, i64 0
	%37 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %36, 1
	store {i64, i8*} %37, {i64, i8*}* %tmp.6
	%38 = load {i64, i8*}, {i64, i8*}* %tmp.6
	%39 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 6
	store {i64, i8*} %38, {i64, i8*}* %39
	%40 = bitcast i32 (i32, i8*, i32, i32)* @"fchmodat" to void ()*
	%41 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 6
	store void ()* %40, void ()** %41
	%42 = getelementptr [6 x i8], [6 x i8]* @"linux::str.11", i64 0, i64 0
	%43 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %42, 1
	store {i64, i8*} %43, {i64, i8*}* %tmp.7
	%44 = load {i64, i8*}, {i64, i8*}* %tmp.7
	%45 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 7
	store {i64, i8*} %44, {i64, i8*}* %45
	%46 = bitcast i32 (i32)* @"umask" to void ()*
	%47 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 7
	store void ()* %46, void ()** %47
	%48 = getelementptr [6 x i8], [6 x i8]* @"linux::str.12", i64 0, i64 0
	%49 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %48, 1
	store {i64, i8*} %49, {i64, i8*}* %tmp.8
	%50 = load {i64, i8*}, {i64, i8*}* %tmp.8
	%51 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 8
	store {i64, i8*} %50, {i64, i8*}* %51
	%52 = bitcast i32 (i8*, i32)* @"mkdir" to void ()*
	%53 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 8
	store void ()* %52, void ()** %53
	%54 = getelementptr [8 x i8], [8 x i8]* @"linux::str.13", i64 0, i64 0
	%55 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %54, 1
	store {i64, i8*} %55, {i64, i8*}* %tmp.9
	%56 = load {i64, i8*}, {i64, i8*}* %tmp.9
	%57 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 9
	store {i64, i8*} %56, {i64, i8*}* %57
	%58 = bitcast i32 (i32, i8*, i32)* @"mkdirat" to void ()*
	%59 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 9
	store void ()* %58, void ()** %59
	%60 = getelementptr [6 x i8], [6 x i8]* @"linux::str.14", i64 0, i64 0
	%61 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %60, 1
	store {i64, i8*} %61, {i64, i8*}* %tmp.10
	%62 = load {i64, i8*}, {i64, i8*}* %tmp.10
	%63 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 10
	store {i64, i8*} %62, {i64, i8*}* %63
	%64 = bitcast i32 (i8*, i32, i64)* @"mknod" to void ()*
	%65 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 10
	store void ()* %64, void ()** %65
	%66 = getelementptr [8 x i8], [8 x i8]* @"linux::str.15", i64 0, i64 0
	%67 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %66, 1
	store {i64, i8*} %67, {i64, i8*}* %tmp.11
	%68 = load {i64, i8*}, {i64, i8*}* %tmp.11
	%69 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 11
	store {i64, i8*} %68, {i64, i8*}* %69
	%70 = bitcast i32 (i32, i8*, i32, i64)* @"mknodat" to void ()*
	%71 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 11
	store void ()* %70, void ()** %71
	%72 = getelementptr [7 x i8], [7 x i8]* @"linux::str.16", i64 0, i64 0
	%73 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %72, 1
	store {i64, i8*} %73, {i64, i8*}* %tmp.12
	%74 = load {i64, i8*}, {i64, i8*}* %tmp.12
	%75 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 12
	store {i64, i8*} %74, {i64, i8*}* %75
	%76 = bitcast i32 (i8*, i32)* @"mkfifo" to void ()*
	%77 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 12
	store void ()* %76, void ()** %77
	%78 = getelementptr [9 x i8], [9 x i8]* @"linux::str.17", i64 0, i64 0
	%79 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %78, 1
	store {i64, i8*} %79, {i64, i8*}* %tmp.13
	%80 = load {i64, i8*}, {i64, i8*}* %tmp.13
	%81 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 13
	store {i64, i8*} %80, {i64, i8*}* %81
	%82 = bitcast i32 (i32, i8*, i32)* @"mkfifoat" to void ()*
	%83 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 13
	store void ()* %82, void ()** %83
	%84 = getelementptr [10 x i8], [10 x i8]* @"linux::str.18", i64 0, i64 0
	%85 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %84, 1
	store {i64, i8*} %85, {i64, i8*}* %tmp.14
	%86 = load {i64, i8*}, {i64, i8*}* %tmp.14
	%87 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 14
	store {i64, i8*} %86, {i64, i8*}* %87
	%88 = bitcast i32 (i32, i8*, %"linux::s_timespec"*, i32)* @"utimensat" to void ()*
	%89 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 14
	store void ()* %88, void ()** %89
	%90 = getelementptr [9 x i8], [9 x i8]* @"linux::str.19", i64 0, i64 0
	%91 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %90, 1
	store {i64, i8*} %91, {i64, i8*}* %tmp.15
	%92 = load {i64, i8*}, {i64, i8*}* %tmp.15
	%93 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 15
	store {i64, i8*} %92, {i64, i8*}* %93
	%94 = bitcast i32 (i32, %"linux::s_timespec"*)* @"futimens" to void ()*
	%95 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 15
	store void ()* %94, void ()** %95
	%96 = getelementptr [9 x i8], [9 x i8]* @"linux::str.20", i64 0, i64 0
	%97 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %96, 1
	store {i64, i8*} %97, {i64, i8*}* %tmp.16
	%98 = load {i64, i8*}, {i64, i8*}* %tmp.16
	%99 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 16
	store {i64, i8*} %98, {i64, i8*}* %99
	%100 = bitcast i32 (i32, i32, %"linux::s_stat"*)* @"__fxstat" to void ()*
	%101 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 16
	store void ()* %100, void ()** %101
	%102 = getelementptr [8 x i8], [8 x i8]* @"linux::str.21", i64 0, i64 0
	%103 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %102, 1
	store {i64, i8*} %103, {i64, i8*}* %tmp.17
	%104 = load {i64, i8*}, {i64, i8*}* %tmp.17
	%105 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 17
	store {i64, i8*} %104, {i64, i8*}* %105
	%106 = bitcast i32 (i32, i8*, %"linux::s_stat"*)* @"__xstat" to void ()*
	%107 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 17
	store void ()* %106, void ()** %107
	%108 = getelementptr [9 x i8], [9 x i8]* @"linux::str.22", i64 0, i64 0
	%109 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %108, 1
	store {i64, i8*} %109, {i64, i8*}* %tmp.18
	%110 = load {i64, i8*}, {i64, i8*}* %tmp.18
	%111 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 18
	store {i64, i8*} %110, {i64, i8*}* %111
	%112 = bitcast i32 (i32, i8*, %"linux::s_stat"*)* @"__lxstat" to void ()*
	%113 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 18
	store void ()* %112, void ()** %113
	%114 = getelementptr [11 x i8], [11 x i8]* @"linux::str.23", i64 0, i64 0
	%115 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %114, 1
	store {i64, i8*} %115, {i64, i8*}* %tmp.19
	%116 = load {i64, i8*}, {i64, i8*}* %tmp.19
	%117 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 19
	store {i64, i8*} %116, {i64, i8*}* %117
	%118 = bitcast i32 (i32, i32, i8*, %"linux::s_stat"*, i32)* @"__fxstatat" to void ()*
	%119 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 19
	store void ()* %118, void ()** %119
	%120 = getelementptr [9 x i8], [9 x i8]* @"linux::str.24", i64 0, i64 0
	%121 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %120, 1
	store {i64, i8*} %121, {i64, i8*}* %tmp.20
	%122 = load {i64, i8*}, {i64, i8*}* %tmp.20
	%123 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 20
	store {i64, i8*} %122, {i64, i8*}* %123
	%124 = bitcast i32 (i32, i8*, i32, i64*)* @"__xmknod" to void ()*
	%125 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 20
	store void ()* %124, void ()** %125
	%126 = getelementptr [11 x i8], [11 x i8]* @"linux::str.25", i64 0, i64 0
	%127 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %126, 1
	store {i64, i8*} %127, {i64, i8*}* %tmp.21
	%128 = load {i64, i8*}, {i64, i8*}* %tmp.21
	%129 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 21
	store {i64, i8*} %128, {i64, i8*}* %129
	%130 = bitcast i32 (i32, i32, i8*, i32, i64*)* @"__xmknodat" to void ()*
	%131 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 21
	store void ()* %130, void ()** %131
	%132 = getelementptr [6 x i8], [6 x i8]* @"linux::str.26", i64 0, i64 0
	%133 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %132, 1
	store {i64, i8*} %133, {i64, i8*}* %tmp.22
	%134 = load {i64, i8*}, {i64, i8*}* %tmp.22
	%135 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 22
	store {i64, i8*} %134, {i64, i8*}* %135
	%136 = bitcast i32 (i32, i64, ...)* @"ioctl" to void ()*
	%137 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 22
	store void ()* %136, void ()** %137
	%138 = getelementptr [14 x i8], [14 x i8]* @"linux::str.27", i64 0, i64 0
	%139 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %138, 1
	store {i64, i8*} %139, {i64, i8*}* %tmp.23
	%140 = load {i64, i8*}, {i64, i8*}* %tmp.23
	%141 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 23
	store {i64, i8*} %140, {i64, i8*}* %141
	%142 = bitcast void (i32)* (i32, void (i32)*)* @"__sysv_signal" to void ()*
	%143 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 23
	store void ()* %142, void ()** %143
	%144 = getelementptr [7 x i8], [7 x i8]* @"linux::str.28", i64 0, i64 0
	%145 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %144, 1
	store {i64, i8*} %145, {i64, i8*}* %tmp.24
	%146 = load {i64, i8*}, {i64, i8*}* %tmp.24
	%147 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 24
	store {i64, i8*} %146, {i64, i8*}* %147
	%148 = bitcast void (i32)* (i32, void (i32)*)* @"signal" to void ()*
	%149 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 24
	store void ()* %148, void ()** %149
	%150 = getelementptr [5 x i8], [5 x i8]* @"linux::str.29", i64 0, i64 0
	%151 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %150, 1
	store {i64, i8*} %151, {i64, i8*}* %tmp.25
	%152 = load {i64, i8*}, {i64, i8*}* %tmp.25
	%153 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 25
	store {i64, i8*} %152, {i64, i8*}* %153
	%154 = bitcast i32 (i32, i32)* @"kill" to void ()*
	%155 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 25
	store void ()* %154, void ()** %155
	%156 = getelementptr [7 x i8], [7 x i8]* @"linux::str.30", i64 0, i64 0
	%157 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %156, 1
	store {i64, i8*} %157, {i64, i8*}* %tmp.26
	%158 = load {i64, i8*}, {i64, i8*}* %tmp.26
	%159 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 26
	store {i64, i8*} %158, {i64, i8*}* %159
	%160 = bitcast i32 (i32, i32)* @"killpg" to void ()*
	%161 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 26
	store void ()* %160, void ()** %161
	%162 = getelementptr [6 x i8], [6 x i8]* @"linux::str.31", i64 0, i64 0
	%163 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %162, 1
	store {i64, i8*} %163, {i64, i8*}* %tmp.27
	%164 = load {i64, i8*}, {i64, i8*}* %tmp.27
	%165 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 27
	store {i64, i8*} %164, {i64, i8*}* %165
	%166 = bitcast i32 (i32)* @"raise" to void ()*
	%167 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 27
	store void ()* %166, void ()** %167
	%168 = getelementptr [8 x i8], [8 x i8]* @"linux::str.32", i64 0, i64 0
	%169 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %168, 1
	store {i64, i8*} %169, {i64, i8*}* %tmp.28
	%170 = load {i64, i8*}, {i64, i8*}* %tmp.28
	%171 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 28
	store {i64, i8*} %170, {i64, i8*}* %171
	%172 = bitcast void (i32)* (i32, void (i32)*)* @"ssignal" to void ()*
	%173 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 28
	store void ()* %172, void ()** %173
	%174 = getelementptr [8 x i8], [8 x i8]* @"linux::str.33", i64 0, i64 0
	%175 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %174, 1
	store {i64, i8*} %175, {i64, i8*}* %tmp.29
	%176 = load {i64, i8*}, {i64, i8*}* %tmp.29
	%177 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 29
	store {i64, i8*} %176, {i64, i8*}* %177
	%178 = bitcast i32 (i32)* @"gsignal" to void ()*
	%179 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 29
	store void ()* %178, void ()** %179
	%180 = getelementptr [8 x i8], [8 x i8]* @"linux::str.34", i64 0, i64 0
	%181 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %180, 1
	store {i64, i8*} %181, {i64, i8*}* %tmp.30
	%182 = load {i64, i8*}, {i64, i8*}* %tmp.30
	%183 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 30
	store {i64, i8*} %182, {i64, i8*}* %183
	%184 = bitcast void (i32, i8*)* @"psignal" to void ()*
	%185 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 30
	store void ()* %184, void ()** %185
	%186 = getelementptr [9 x i8], [9 x i8]* @"linux::str.35", i64 0, i64 0
	%187 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %186, 1
	store {i64, i8*} %187, {i64, i8*}* %tmp.31
	%188 = load {i64, i8*}, {i64, i8*}* %tmp.31
	%189 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 31
	store {i64, i8*} %188, {i64, i8*}* %189
	%190 = bitcast void (%"linux::siginfo_t"*, i8*)* @"psiginfo" to void ()*
	%191 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 31
	store void ()* %190, void ()** %191
	%192 = getelementptr [9 x i8], [9 x i8]* @"linux::str.36", i64 0, i64 0
	%193 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %192, 1
	store {i64, i8*} %193, {i64, i8*}* %tmp.32
	%194 = load {i64, i8*}, {i64, i8*}* %tmp.32
	%195 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 32
	store {i64, i8*} %194, {i64, i8*}* %195
	%196 = bitcast i32 (i32)* @"sigblock" to void ()*
	%197 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 32
	store void ()* %196, void ()** %197
	%198 = getelementptr [11 x i8], [11 x i8]* @"linux::str.37", i64 0, i64 0
	%199 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %198, 1
	store {i64, i8*} %199, {i64, i8*}* %tmp.33
	%200 = load {i64, i8*}, {i64, i8*}* %tmp.33
	%201 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 33
	store {i64, i8*} %200, {i64, i8*}* %201
	%202 = bitcast i32 (i32)* @"sigsetmask" to void ()*
	%203 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 33
	store void ()* %202, void ()** %203
	%204 = getelementptr [12 x i8], [12 x i8]* @"linux::str.38", i64 0, i64 0
	%205 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %204, 1
	store {i64, i8*} %205, {i64, i8*}* %tmp.34
	%206 = load {i64, i8*}, {i64, i8*}* %tmp.34
	%207 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 34
	store {i64, i8*} %206, {i64, i8*}* %207
	%208 = bitcast i32 (%"linux::__sigset_t"*)* @"sigemptyset" to void ()*
	%209 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 34
	store void ()* %208, void ()** %209
	%210 = getelementptr [11 x i8], [11 x i8]* @"linux::str.39", i64 0, i64 0
	%211 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %210, 1
	store {i64, i8*} %211, {i64, i8*}* %tmp.35
	%212 = load {i64, i8*}, {i64, i8*}* %tmp.35
	%213 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 35
	store {i64, i8*} %212, {i64, i8*}* %213
	%214 = bitcast i32 (%"linux::__sigset_t"*)* @"sigfillset" to void ()*
	%215 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 35
	store void ()* %214, void ()** %215
	%216 = getelementptr [10 x i8], [10 x i8]* @"linux::str.40", i64 0, i64 0
	%217 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %216, 1
	store {i64, i8*} %217, {i64, i8*}* %tmp.36
	%218 = load {i64, i8*}, {i64, i8*}* %tmp.36
	%219 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 36
	store {i64, i8*} %218, {i64, i8*}* %219
	%220 = bitcast i32 (%"linux::__sigset_t"*, i32)* @"sigaddset" to void ()*
	%221 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 36
	store void ()* %220, void ()** %221
	%222 = getelementptr [10 x i8], [10 x i8]* @"linux::str.41", i64 0, i64 0
	%223 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %222, 1
	store {i64, i8*} %223, {i64, i8*}* %tmp.37
	%224 = load {i64, i8*}, {i64, i8*}* %tmp.37
	%225 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 37
	store {i64, i8*} %224, {i64, i8*}* %225
	%226 = bitcast i32 (%"linux::__sigset_t"*, i32)* @"sigdelset" to void ()*
	%227 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 37
	store void ()* %226, void ()** %227
	%228 = getelementptr [12 x i8], [12 x i8]* @"linux::str.42", i64 0, i64 0
	%229 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %228, 1
	store {i64, i8*} %229, {i64, i8*}* %tmp.38
	%230 = load {i64, i8*}, {i64, i8*}* %tmp.38
	%231 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 38
	store {i64, i8*} %230, {i64, i8*}* %231
	%232 = bitcast i32 (%"linux::__sigset_t"*, i32)* @"sigismember" to void ()*
	%233 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 38
	store void ()* %232, void ()** %233
	%234 = getelementptr [12 x i8], [12 x i8]* @"linux::str.43", i64 0, i64 0
	%235 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %234, 1
	store {i64, i8*} %235, {i64, i8*}* %tmp.39
	%236 = load {i64, i8*}, {i64, i8*}* %tmp.39
	%237 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 39
	store {i64, i8*} %236, {i64, i8*}* %237
	%238 = bitcast i32 (i32, %"linux::__sigset_t"*, %"linux::__sigset_t"*)* @"sigprocmask" to void ()*
	%239 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 39
	store void ()* %238, void ()** %239
	%240 = getelementptr [11 x i8], [11 x i8]* @"linux::str.44", i64 0, i64 0
	%241 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %240, 1
	store {i64, i8*} %241, {i64, i8*}* %tmp.40
	%242 = load {i64, i8*}, {i64, i8*}* %tmp.40
	%243 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 40
	store {i64, i8*} %242, {i64, i8*}* %243
	%244 = bitcast i32 (%"linux::__sigset_t"*)* @"sigsuspend" to void ()*
	%245 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 40
	store void ()* %244, void ()** %245
	%246 = getelementptr [10 x i8], [10 x i8]* @"linux::str.45", i64 0, i64 0
	%247 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %246, 1
	store {i64, i8*} %247, {i64, i8*}* %tmp.41
	%248 = load {i64, i8*}, {i64, i8*}* %tmp.41
	%249 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 41
	store {i64, i8*} %248, {i64, i8*}* %249
	%250 = bitcast i32 (i32, %"linux::s_sigaction"*, %"linux::s_sigaction"*)* @"sigaction" to void ()*
	%251 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 41
	store void ()* %250, void ()** %251
	%252 = getelementptr [11 x i8], [11 x i8]* @"linux::str.46", i64 0, i64 0
	%253 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %252, 1
	store {i64, i8*} %253, {i64, i8*}* %tmp.42
	%254 = load {i64, i8*}, {i64, i8*}* %tmp.42
	%255 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 42
	store {i64, i8*} %254, {i64, i8*}* %255
	%256 = bitcast i32 (%"linux::__sigset_t"*)* @"sigpending" to void ()*
	%257 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 42
	store void ()* %256, void ()** %257
	%258 = getelementptr [8 x i8], [8 x i8]* @"linux::str.47", i64 0, i64 0
	%259 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %258, 1
	store {i64, i8*} %259, {i64, i8*}* %tmp.43
	%260 = load {i64, i8*}, {i64, i8*}* %tmp.43
	%261 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 43
	store {i64, i8*} %260, {i64, i8*}* %261
	%262 = bitcast i32 (%"linux::__sigset_t"*, i32*)* @"sigwait" to void ()*
	%263 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 43
	store void ()* %262, void ()** %263
	%264 = getelementptr [12 x i8], [12 x i8]* @"linux::str.48", i64 0, i64 0
	%265 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %264, 1
	store {i64, i8*} %265, {i64, i8*}* %tmp.44
	%266 = load {i64, i8*}, {i64, i8*}* %tmp.44
	%267 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 44
	store {i64, i8*} %266, {i64, i8*}* %267
	%268 = bitcast i32 (%"linux::__sigset_t"*, %"linux::siginfo_t"*)* @"sigwaitinfo" to void ()*
	%269 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 44
	store void ()* %268, void ()** %269
	%270 = getelementptr [13 x i8], [13 x i8]* @"linux::str.49", i64 0, i64 0
	%271 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %270, 1
	store {i64, i8*} %271, {i64, i8*}* %tmp.45
	%272 = load {i64, i8*}, {i64, i8*}* %tmp.45
	%273 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 45
	store {i64, i8*} %272, {i64, i8*}* %273
	%274 = bitcast i32 (%"linux::__sigset_t"*, %"linux::siginfo_t"*, %"linux::s_timespec"*)* @"sigtimedwait" to void ()*
	%275 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 45
	store void ()* %274, void ()** %275
	%276 = getelementptr [9 x i8], [9 x i8]* @"linux::str.50", i64 0, i64 0
	%277 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %276, 1
	store {i64, i8*} %277, {i64, i8*}* %tmp.46
	%278 = load {i64, i8*}, {i64, i8*}* %tmp.46
	%279 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 46
	store {i64, i8*} %278, {i64, i8*}* %279
	%280 = bitcast i32 (i32, i32, %"linux::u_sigval")* @"sigqueue" to void ()*
	%281 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 46
	store void ()* %280, void ()** %281
	%282 = getelementptr [13 x i8], [13 x i8]* @"linux::str.51", i64 0, i64 0
	%283 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %282, 1
	store {i64, i8*} %283, {i64, i8*}* %tmp.47
	%284 = load {i64, i8*}, {i64, i8*}* %tmp.47
	%285 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 47
	store {i64, i8*} %284, {i64, i8*}* %285
	%286 = bitcast i32 (i32, i32)* @"siginterrupt" to void ()*
	%287 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 47
	store void ()* %286, void ()** %287
	%288 = getelementptr [12 x i8], [12 x i8]* @"linux::str.52", i64 0, i64 0
	%289 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %288, 1
	store {i64, i8*} %289, {i64, i8*}* %tmp.48
	%290 = load {i64, i8*}, {i64, i8*}* %tmp.48
	%291 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 48
	store {i64, i8*} %290, {i64, i8*}* %291
	%292 = bitcast i32 (%"linux::stack_t"*, %"linux::stack_t"*)* @"sigaltstack" to void ()*
	%293 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 48
	store void ()* %292, void ()** %293
	%294 = getelementptr [16 x i8], [16 x i8]* @"linux::str.53", i64 0, i64 0
	%295 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %294, 1
	store {i64, i8*} %295, {i64, i8*}* %tmp.49
	%296 = load {i64, i8*}, {i64, i8*}* %tmp.49
	%297 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 49
	store {i64, i8*} %296, {i64, i8*}* %297
	%298 = bitcast i32 (i32, %"linux::__sigset_t"*, %"linux::__sigset_t"*)* @"pthread_sigmask" to void ()*
	%299 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 49
	store void ()* %298, void ()** %299
	%300 = getelementptr [13 x i8], [13 x i8]* @"linux::str.54", i64 0, i64 0
	%301 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %300, 1
	store {i64, i8*} %301, {i64, i8*}* %tmp.50
	%302 = load {i64, i8*}, {i64, i8*}* %tmp.50
	%303 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 50
	store {i64, i8*} %302, {i64, i8*}* %303
	%304 = bitcast i32 (i64, i32)* @"pthread_kill" to void ()*
	%305 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 50
	store void ()* %304, void ()** %305
	%306 = getelementptr [24 x i8], [24 x i8]* @"linux::str.55", i64 0, i64 0
	%307 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %306, 1
	store {i64, i8*} %307, {i64, i8*}* %tmp.51
	%308 = load {i64, i8*}, {i64, i8*}* %tmp.51
	%309 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 51
	store {i64, i8*} %308, {i64, i8*}* %309
	%310 = bitcast i32 ()* @"__libc_current_sigrtmin" to void ()*
	%311 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 51
	store void ()* %310, void ()** %311
	%312 = getelementptr [24 x i8], [24 x i8]* @"linux::str.56", i64 0, i64 0
	%313 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %312, 1
	store {i64, i8*} %313, {i64, i8*}* %tmp.52
	%314 = load {i64, i8*}, {i64, i8*}* %tmp.52
	%315 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 52
	store {i64, i8*} %314, {i64, i8*}* %315
	%316 = bitcast i32 ()* @"__libc_current_sigrtmax" to void ()*
	%317 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 52
	store void ()* %316, void ()** %317
	%318 = getelementptr [5 x i8], [5 x i8]* @"linux::str.57", i64 0, i64 0
	%319 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %318, 1
	store {i64, i8*} %319, {i64, i8*}* %tmp.53
	%320 = load {i64, i8*}, {i64, i8*}* %tmp.53
	%321 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 53
	store {i64, i8*} %320, {i64, i8*}* %321
	%322 = bitcast i32 (i32*)* @"wait" to void ()*
	%323 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 53
	store void ()* %322, void ()** %323
	%324 = getelementptr [8 x i8], [8 x i8]* @"linux::str.58", i64 0, i64 0
	%325 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %324, 1
	store {i64, i8*} %325, {i64, i8*}* %tmp.54
	%326 = load {i64, i8*}, {i64, i8*}* %tmp.54
	%327 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 54
	store {i64, i8*} %326, {i64, i8*}* %327
	%328 = bitcast i32 (i32, i32*, i32)* @"waitpid" to void ()*
	%329 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 54
	store void ()* %328, void ()** %329
	%330 = getelementptr [7 x i8], [7 x i8]* @"linux::str.59", i64 0, i64 0
	%331 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %330, 1
	store {i64, i8*} %331, {i64, i8*}* %tmp.55
	%332 = load {i64, i8*}, {i64, i8*}* %tmp.55
	%333 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 55
	store {i64, i8*} %332, {i64, i8*}* %333
	%334 = bitcast i32 (i32, i32, %"linux::siginfo_t"*, i32)* @"waitid" to void ()*
	%335 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 55
	store void ()* %334, void ()** %335
	%336 = getelementptr [6 x i8], [6 x i8]* @"linux::str.60", i64 0, i64 0
	%337 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %336, 1
	store {i64, i8*} %337, {i64, i8*}* %tmp.56
	%338 = load {i64, i8*}, {i64, i8*}* %tmp.56
	%339 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 56
	store {i64, i8*} %338, {i64, i8*}* %339
	%340 = bitcast i32 (i32*, i32, %"linux::s_rusage"*)* @"wait3" to void ()*
	%341 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 56
	store void ()* %340, void ()** %341
	%342 = getelementptr [6 x i8], [6 x i8]* @"linux::str.61", i64 0, i64 0
	%343 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %342, 1
	store {i64, i8*} %343, {i64, i8*}* %tmp.57
	%344 = load {i64, i8*}, {i64, i8*}* %tmp.57
	%345 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 57
	store {i64, i8*} %344, {i64, i8*}* %345
	%346 = bitcast i32 (i32, i32*, i32, %"linux::s_rusage"*)* @"wait4" to void ()*
	%347 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 57
	store void ()* %346, void ()** %347
	%348 = getelementptr [5 x i8], [5 x i8]* @"linux::str.62", i64 0, i64 0
	%349 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %348, 1
	store {i64, i8*} %349, {i64, i8*}* %tmp.58
	%350 = load {i64, i8*}, {i64, i8*}* %tmp.58
	%351 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 58
	store {i64, i8*} %350, {i64, i8*}* %351
	%352 = bitcast i8* (i8*, i64, i32, i32, i32, i64)* @"mmap" to void ()*
	%353 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 58
	store void ()* %352, void ()** %353
	%354 = getelementptr [7 x i8], [7 x i8]* @"linux::str.63", i64 0, i64 0
	%355 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %354, 1
	store {i64, i8*} %355, {i64, i8*}* %tmp.59
	%356 = load {i64, i8*}, {i64, i8*}* %tmp.59
	%357 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 59
	store {i64, i8*} %356, {i64, i8*}* %357
	%358 = bitcast i32 (i8*, i64)* @"munmap" to void ()*
	%359 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 59
	store void ()* %358, void ()** %359
	%360 = getelementptr [9 x i8], [9 x i8]* @"linux::str.64", i64 0, i64 0
	%361 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %360, 1
	store {i64, i8*} %361, {i64, i8*}* %tmp.60
	%362 = load {i64, i8*}, {i64, i8*}* %tmp.60
	%363 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 60
	store {i64, i8*} %362, {i64, i8*}* %363
	%364 = bitcast i32 (i8*, i64, i32)* @"mprotect" to void ()*
	%365 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 60
	store void ()* %364, void ()** %365
	%366 = getelementptr [6 x i8], [6 x i8]* @"linux::str.65", i64 0, i64 0
	%367 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %366, 1
	store {i64, i8*} %367, {i64, i8*}* %tmp.61
	%368 = load {i64, i8*}, {i64, i8*}* %tmp.61
	%369 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 61
	store {i64, i8*} %368, {i64, i8*}* %369
	%370 = bitcast i32 (i8*, i64, i32)* @"msync" to void ()*
	%371 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 61
	store void ()* %370, void ()** %371
	%372 = getelementptr [8 x i8], [8 x i8]* @"linux::str.66", i64 0, i64 0
	%373 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %372, 1
	store {i64, i8*} %373, {i64, i8*}* %tmp.62
	%374 = load {i64, i8*}, {i64, i8*}* %tmp.62
	%375 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 62
	store {i64, i8*} %374, {i64, i8*}* %375
	%376 = bitcast i32 (i8*, i64, i32)* @"madvise" to void ()*
	%377 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 62
	store void ()* %376, void ()** %377
	%378 = getelementptr [14 x i8], [14 x i8]* @"linux::str.67", i64 0, i64 0
	%379 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %378, 1
	store {i64, i8*} %379, {i64, i8*}* %tmp.63
	%380 = load {i64, i8*}, {i64, i8*}* %tmp.63
	%381 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 63
	store {i64, i8*} %380, {i64, i8*}* %381
	%382 = bitcast i32 (i8*, i64, i32)* @"posix_madvise" to void ()*
	%383 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 63
	store void ()* %382, void ()** %383
	%384 = getelementptr [6 x i8], [6 x i8]* @"linux::str.68", i64 0, i64 0
	%385 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %384, 1
	store {i64, i8*} %385, {i64, i8*}* %tmp.64
	%386 = load {i64, i8*}, {i64, i8*}* %tmp.64
	%387 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 64
	store {i64, i8*} %386, {i64, i8*}* %387
	%388 = bitcast i32 (i8*, i64)* @"mlock" to void ()*
	%389 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 64
	store void ()* %388, void ()** %389
	%390 = getelementptr [8 x i8], [8 x i8]* @"linux::str.69", i64 0, i64 0
	%391 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %390, 1
	store {i64, i8*} %391, {i64, i8*}* %tmp.65
	%392 = load {i64, i8*}, {i64, i8*}* %tmp.65
	%393 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 65
	store {i64, i8*} %392, {i64, i8*}* %393
	%394 = bitcast i32 (i8*, i64)* @"munlock" to void ()*
	%395 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 65
	store void ()* %394, void ()** %395
	%396 = getelementptr [9 x i8], [9 x i8]* @"linux::str.70", i64 0, i64 0
	%397 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %396, 1
	store {i64, i8*} %397, {i64, i8*}* %tmp.66
	%398 = load {i64, i8*}, {i64, i8*}* %tmp.66
	%399 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 66
	store {i64, i8*} %398, {i64, i8*}* %399
	%400 = bitcast i32 (i32)* @"mlockall" to void ()*
	%401 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 66
	store void ()* %400, void ()** %401
	%402 = getelementptr [11 x i8], [11 x i8]* @"linux::str.71", i64 0, i64 0
	%403 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %402, 1
	store {i64, i8*} %403, {i64, i8*}* %tmp.67
	%404 = load {i64, i8*}, {i64, i8*}* %tmp.67
	%405 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 67
	store {i64, i8*} %404, {i64, i8*}* %405
	%406 = bitcast i32 ()* @"munlockall" to void ()*
	%407 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 67
	store void ()* %406, void ()** %407
	%408 = getelementptr [8 x i8], [8 x i8]* @"linux::str.72", i64 0, i64 0
	%409 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %408, 1
	store {i64, i8*} %409, {i64, i8*}* %tmp.68
	%410 = load {i64, i8*}, {i64, i8*}* %tmp.68
	%411 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 68
	store {i64, i8*} %410, {i64, i8*}* %411
	%412 = bitcast i32 (i8*, i64, i8*)* @"mincore" to void ()*
	%413 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 68
	store void ()* %412, void ()** %413
	%414 = getelementptr [9 x i8], [9 x i8]* @"linux::str.73", i64 0, i64 0
	%415 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %414, 1
	store {i64, i8*} %415, {i64, i8*}* %tmp.69
	%416 = load {i64, i8*}, {i64, i8*}* %tmp.69
	%417 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 69
	store {i64, i8*} %416, {i64, i8*}* %417
	%418 = bitcast i32 (i8*, i32, i32)* @"shm_open" to void ()*
	%419 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 69
	store void ()* %418, void ()** %419
	%420 = getelementptr [11 x i8], [11 x i8]* @"linux::str.74", i64 0, i64 0
	%421 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %420, 1
	store {i64, i8*} %421, {i64, i8*}* %tmp.70
	%422 = load {i64, i8*}, {i64, i8*}* %tmp.70
	%423 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 70
	store {i64, i8*} %422, {i64, i8*}* %423
	%424 = bitcast i32 (i8*)* @"shm_unlink" to void ()*
	%425 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 70
	store void ()* %424, void ()** %425
	%426 = getelementptr [7 x i8], [7 x i8]* @"linux::str.75", i64 0, i64 0
	%427 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %426, 1
	store {i64, i8*} %427, {i64, i8*}* %tmp.71
	%428 = load {i64, i8*}, {i64, i8*}* %tmp.71
	%429 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 71
	store {i64, i8*} %428, {i64, i8*}* %429
	%430 = bitcast i32 (i8*, i32)* @"access" to void ()*
	%431 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 71
	store void ()* %430, void ()** %431
	%432 = getelementptr [10 x i8], [10 x i8]* @"linux::str.76", i64 0, i64 0
	%433 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %432, 1
	store {i64, i8*} %433, {i64, i8*}* %tmp.72
	%434 = load {i64, i8*}, {i64, i8*}* %tmp.72
	%435 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 72
	store {i64, i8*} %434, {i64, i8*}* %435
	%436 = bitcast i32 (i32, i8*, i32, i32)* @"faccessat" to void ()*
	%437 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 72
	store void ()* %436, void ()** %437
	%438 = getelementptr [6 x i8], [6 x i8]* @"linux::str.77", i64 0, i64 0
	%439 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %438, 1
	store {i64, i8*} %439, {i64, i8*}* %tmp.73
	%440 = load {i64, i8*}, {i64, i8*}* %tmp.73
	%441 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 73
	store {i64, i8*} %440, {i64, i8*}* %441
	%442 = bitcast i64 (i32, i64, i32)* @"lseek" to void ()*
	%443 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 73
	store void ()* %442, void ()** %443
	%444 = getelementptr [6 x i8], [6 x i8]* @"linux::str.78", i64 0, i64 0
	%445 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %444, 1
	store {i64, i8*} %445, {i64, i8*}* %tmp.74
	%446 = load {i64, i8*}, {i64, i8*}* %tmp.74
	%447 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 74
	store {i64, i8*} %446, {i64, i8*}* %447
	%448 = bitcast i32 (i32)* @"close" to void ()*
	%449 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 74
	store void ()* %448, void ()** %449
	%450 = getelementptr [5 x i8], [5 x i8]* @"linux::str.79", i64 0, i64 0
	%451 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %450, 1
	store {i64, i8*} %451, {i64, i8*}* %tmp.75
	%452 = load {i64, i8*}, {i64, i8*}* %tmp.75
	%453 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 75
	store {i64, i8*} %452, {i64, i8*}* %453
	%454 = bitcast i64 (i32, i8*, i64)* @"read" to void ()*
	%455 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 75
	store void ()* %454, void ()** %455
	%456 = getelementptr [6 x i8], [6 x i8]* @"linux::str.80", i64 0, i64 0
	%457 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %456, 1
	store {i64, i8*} %457, {i64, i8*}* %tmp.76
	%458 = load {i64, i8*}, {i64, i8*}* %tmp.76
	%459 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 76
	store {i64, i8*} %458, {i64, i8*}* %459
	%460 = bitcast i64 (i32, i8*, i64)* @"write" to void ()*
	%461 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 76
	store void ()* %460, void ()** %461
	%462 = getelementptr [6 x i8], [6 x i8]* @"linux::str.81", i64 0, i64 0
	%463 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %462, 1
	store {i64, i8*} %463, {i64, i8*}* %tmp.77
	%464 = load {i64, i8*}, {i64, i8*}* %tmp.77
	%465 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 77
	store {i64, i8*} %464, {i64, i8*}* %465
	%466 = bitcast i64 (i32, i8*, i64, i64)* @"pread" to void ()*
	%467 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 77
	store void ()* %466, void ()** %467
	%468 = getelementptr [7 x i8], [7 x i8]* @"linux::str.82", i64 0, i64 0
	%469 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %468, 1
	store {i64, i8*} %469, {i64, i8*}* %tmp.78
	%470 = load {i64, i8*}, {i64, i8*}* %tmp.78
	%471 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 78
	store {i64, i8*} %470, {i64, i8*}* %471
	%472 = bitcast i64 (i32, i8*, i64, i64)* @"pwrite" to void ()*
	%473 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 78
	store void ()* %472, void ()** %473
	%474 = getelementptr [5 x i8], [5 x i8]* @"linux::str.83", i64 0, i64 0
	%475 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %474, 1
	store {i64, i8*} %475, {i64, i8*}* %tmp.79
	%476 = load {i64, i8*}, {i64, i8*}* %tmp.79
	%477 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 79
	store {i64, i8*} %476, {i64, i8*}* %477
	%478 = bitcast i32 (i32*)* @"pipe" to void ()*
	%479 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 79
	store void ()* %478, void ()** %479
	%480 = getelementptr [6 x i8], [6 x i8]* @"linux::str.84", i64 0, i64 0
	%481 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %480, 1
	store {i64, i8*} %481, {i64, i8*}* %tmp.80
	%482 = load {i64, i8*}, {i64, i8*}* %tmp.80
	%483 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 80
	store {i64, i8*} %482, {i64, i8*}* %483
	%484 = bitcast i32 (i32)* @"alarm" to void ()*
	%485 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 80
	store void ()* %484, void ()** %485
	%486 = getelementptr [6 x i8], [6 x i8]* @"linux::str.85", i64 0, i64 0
	%487 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %486, 1
	store {i64, i8*} %487, {i64, i8*}* %tmp.81
	%488 = load {i64, i8*}, {i64, i8*}* %tmp.81
	%489 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 81
	store {i64, i8*} %488, {i64, i8*}* %489
	%490 = bitcast i32 (i32)* @"sleep" to void ()*
	%491 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 81
	store void ()* %490, void ()** %491
	%492 = getelementptr [7 x i8], [7 x i8]* @"linux::str.86", i64 0, i64 0
	%493 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %492, 1
	store {i64, i8*} %493, {i64, i8*}* %tmp.82
	%494 = load {i64, i8*}, {i64, i8*}* %tmp.82
	%495 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 82
	store {i64, i8*} %494, {i64, i8*}* %495
	%496 = bitcast i32 (i32, i32)* @"ualarm" to void ()*
	%497 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 82
	store void ()* %496, void ()** %497
	%498 = getelementptr [7 x i8], [7 x i8]* @"linux::str.87", i64 0, i64 0
	%499 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %498, 1
	store {i64, i8*} %499, {i64, i8*}* %tmp.83
	%500 = load {i64, i8*}, {i64, i8*}* %tmp.83
	%501 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 83
	store {i64, i8*} %500, {i64, i8*}* %501
	%502 = bitcast i32 (i32)* @"usleep" to void ()*
	%503 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 83
	store void ()* %502, void ()** %503
	%504 = getelementptr [6 x i8], [6 x i8]* @"linux::str.88", i64 0, i64 0
	%505 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %504, 1
	store {i64, i8*} %505, {i64, i8*}* %tmp.84
	%506 = load {i64, i8*}, {i64, i8*}* %tmp.84
	%507 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 84
	store {i64, i8*} %506, {i64, i8*}* %507
	%508 = bitcast i32 ()* @"pause" to void ()*
	%509 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 84
	store void ()* %508, void ()** %509
	%510 = getelementptr [6 x i8], [6 x i8]* @"linux::str.89", i64 0, i64 0
	%511 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %510, 1
	store {i64, i8*} %511, {i64, i8*}* %tmp.85
	%512 = load {i64, i8*}, {i64, i8*}* %tmp.85
	%513 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 85
	store {i64, i8*} %512, {i64, i8*}* %513
	%514 = bitcast i32 (i8*, i32, i32)* @"chown" to void ()*
	%515 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 85
	store void ()* %514, void ()** %515
	%516 = getelementptr [7 x i8], [7 x i8]* @"linux::str.90", i64 0, i64 0
	%517 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %516, 1
	store {i64, i8*} %517, {i64, i8*}* %tmp.86
	%518 = load {i64, i8*}, {i64, i8*}* %tmp.86
	%519 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 86
	store {i64, i8*} %518, {i64, i8*}* %519
	%520 = bitcast i32 (i32, i32, i32)* @"fchown" to void ()*
	%521 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 86
	store void ()* %520, void ()** %521
	%522 = getelementptr [7 x i8], [7 x i8]* @"linux::str.91", i64 0, i64 0
	%523 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %522, 1
	store {i64, i8*} %523, {i64, i8*}* %tmp.87
	%524 = load {i64, i8*}, {i64, i8*}* %tmp.87
	%525 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 87
	store {i64, i8*} %524, {i64, i8*}* %525
	%526 = bitcast i32 (i8*, i32, i32)* @"lchown" to void ()*
	%527 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 87
	store void ()* %526, void ()** %527
	%528 = getelementptr [9 x i8], [9 x i8]* @"linux::str.92", i64 0, i64 0
	%529 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %528, 1
	store {i64, i8*} %529, {i64, i8*}* %tmp.88
	%530 = load {i64, i8*}, {i64, i8*}* %tmp.88
	%531 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 88
	store {i64, i8*} %530, {i64, i8*}* %531
	%532 = bitcast i32 (i32, i8*, i32, i32, i32)* @"fchownat" to void ()*
	%533 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 88
	store void ()* %532, void ()** %533
	%534 = getelementptr [6 x i8], [6 x i8]* @"linux::str.93", i64 0, i64 0
	%535 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %534, 1
	store {i64, i8*} %535, {i64, i8*}* %tmp.89
	%536 = load {i64, i8*}, {i64, i8*}* %tmp.89
	%537 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 89
	store {i64, i8*} %536, {i64, i8*}* %537
	%538 = bitcast i32 (i8*)* @"chdir" to void ()*
	%539 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 89
	store void ()* %538, void ()** %539
	%540 = getelementptr [7 x i8], [7 x i8]* @"linux::str.94", i64 0, i64 0
	%541 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %540, 1
	store {i64, i8*} %541, {i64, i8*}* %tmp.90
	%542 = load {i64, i8*}, {i64, i8*}* %tmp.90
	%543 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 90
	store {i64, i8*} %542, {i64, i8*}* %543
	%544 = bitcast i32 (i32)* @"fchdir" to void ()*
	%545 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 90
	store void ()* %544, void ()** %545
	%546 = getelementptr [7 x i8], [7 x i8]* @"linux::str.95", i64 0, i64 0
	%547 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %546, 1
	store {i64, i8*} %547, {i64, i8*}* %tmp.91
	%548 = load {i64, i8*}, {i64, i8*}* %tmp.91
	%549 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 91
	store {i64, i8*} %548, {i64, i8*}* %549
	%550 = bitcast i8* (i8*, i64)* @"getcwd" to void ()*
	%551 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 91
	store void ()* %550, void ()** %551
	%552 = getelementptr [4 x i8], [4 x i8]* @"linux::str.96", i64 0, i64 0
	%553 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %552, 1
	store {i64, i8*} %553, {i64, i8*}* %tmp.92
	%554 = load {i64, i8*}, {i64, i8*}* %tmp.92
	%555 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 92
	store {i64, i8*} %554, {i64, i8*}* %555
	%556 = bitcast i32 (i32)* @"dup" to void ()*
	%557 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 92
	store void ()* %556, void ()** %557
	%558 = getelementptr [5 x i8], [5 x i8]* @"linux::str.97", i64 0, i64 0
	%559 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %558, 1
	store {i64, i8*} %559, {i64, i8*}* %tmp.93
	%560 = load {i64, i8*}, {i64, i8*}* %tmp.93
	%561 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 93
	store {i64, i8*} %560, {i64, i8*}* %561
	%562 = bitcast i32 (i32, i32)* @"dup2" to void ()*
	%563 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 93
	store void ()* %562, void ()** %563
	%564 = getelementptr [7 x i8], [7 x i8]* @"linux::str.98", i64 0, i64 0
	%565 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %564, 1
	store {i64, i8*} %565, {i64, i8*}* %tmp.94
	%566 = load {i64, i8*}, {i64, i8*}* %tmp.94
	%567 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 94
	store {i64, i8*} %566, {i64, i8*}* %567
	%568 = bitcast i32 (i8*, i8**, i8**)* @"execve" to void ()*
	%569 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 94
	store void ()* %568, void ()** %569
	%570 = getelementptr [8 x i8], [8 x i8]* @"linux::str.99", i64 0, i64 0
	%571 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %570, 1
	store {i64, i8*} %571, {i64, i8*}* %tmp.95
	%572 = load {i64, i8*}, {i64, i8*}* %tmp.95
	%573 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 95
	store {i64, i8*} %572, {i64, i8*}* %573
	%574 = bitcast i32 (i32, i8**, i8**)* @"fexecve" to void ()*
	%575 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 95
	store void ()* %574, void ()** %575
	%576 = getelementptr [6 x i8], [6 x i8]* @"linux::str.100", i64 0, i64 0
	%577 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %576, 1
	store {i64, i8*} %577, {i64, i8*}* %tmp.96
	%578 = load {i64, i8*}, {i64, i8*}* %tmp.96
	%579 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 96
	store {i64, i8*} %578, {i64, i8*}* %579
	%580 = bitcast i32 (i8*, i8**)* @"execv" to void ()*
	%581 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 96
	store void ()* %580, void ()** %581
	%582 = getelementptr [7 x i8], [7 x i8]* @"linux::str.101", i64 0, i64 0
	%583 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %582, 1
	store {i64, i8*} %583, {i64, i8*}* %tmp.97
	%584 = load {i64, i8*}, {i64, i8*}* %tmp.97
	%585 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 97
	store {i64, i8*} %584, {i64, i8*}* %585
	%586 = bitcast i32 (i8*, i8*, ...)* @"execle" to void ()*
	%587 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 97
	store void ()* %586, void ()** %587
	%588 = getelementptr [6 x i8], [6 x i8]* @"linux::str.102", i64 0, i64 0
	%589 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %588, 1
	store {i64, i8*} %589, {i64, i8*}* %tmp.98
	%590 = load {i64, i8*}, {i64, i8*}* %tmp.98
	%591 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 98
	store {i64, i8*} %590, {i64, i8*}* %591
	%592 = bitcast i32 (i8*, i8*, ...)* @"execl" to void ()*
	%593 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 98
	store void ()* %592, void ()** %593
	%594 = getelementptr [7 x i8], [7 x i8]* @"linux::str.103", i64 0, i64 0
	%595 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %594, 1
	store {i64, i8*} %595, {i64, i8*}* %tmp.99
	%596 = load {i64, i8*}, {i64, i8*}* %tmp.99
	%597 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 99
	store {i64, i8*} %596, {i64, i8*}* %597
	%598 = bitcast i32 (i8*, i8**)* @"execvp" to void ()*
	%599 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 99
	store void ()* %598, void ()** %599
	%600 = getelementptr [7 x i8], [7 x i8]* @"linux::str.104", i64 0, i64 0
	%601 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %600, 1
	store {i64, i8*} %601, {i64, i8*}* %tmp.100
	%602 = load {i64, i8*}, {i64, i8*}* %tmp.100
	%603 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 100
	store {i64, i8*} %602, {i64, i8*}* %603
	%604 = bitcast i32 (i8*, i8*, ...)* @"execlp" to void ()*
	%605 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 100
	store void ()* %604, void ()** %605
	%606 = getelementptr [5 x i8], [5 x i8]* @"linux::str.105", i64 0, i64 0
	%607 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %606, 1
	store {i64, i8*} %607, {i64, i8*}* %tmp.101
	%608 = load {i64, i8*}, {i64, i8*}* %tmp.101
	%609 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 101
	store {i64, i8*} %608, {i64, i8*}* %609
	%610 = bitcast i32 (i32)* @"nice" to void ()*
	%611 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 101
	store void ()* %610, void ()** %611
	%612 = getelementptr [6 x i8], [6 x i8]* @"linux::str.106", i64 0, i64 0
	%613 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %612, 1
	store {i64, i8*} %613, {i64, i8*}* %tmp.102
	%614 = load {i64, i8*}, {i64, i8*}* %tmp.102
	%615 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 102
	store {i64, i8*} %614, {i64, i8*}* %615
	%616 = bitcast void (i32)* @"_exit" to void ()*
	%617 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 102
	store void ()* %616, void ()** %617
	%618 = getelementptr [9 x i8], [9 x i8]* @"linux::str.107", i64 0, i64 0
	%619 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %618, 1
	store {i64, i8*} %619, {i64, i8*}* %tmp.103
	%620 = load {i64, i8*}, {i64, i8*}* %tmp.103
	%621 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 103
	store {i64, i8*} %620, {i64, i8*}* %621
	%622 = bitcast i64 (i8*, i32)* @"pathconf" to void ()*
	%623 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 103
	store void ()* %622, void ()** %623
	%624 = getelementptr [10 x i8], [10 x i8]* @"linux::str.108", i64 0, i64 0
	%625 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %624, 1
	store {i64, i8*} %625, {i64, i8*}* %tmp.104
	%626 = load {i64, i8*}, {i64, i8*}* %tmp.104
	%627 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 104
	store {i64, i8*} %626, {i64, i8*}* %627
	%628 = bitcast i64 (i32, i32)* @"fpathconf" to void ()*
	%629 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 104
	store void ()* %628, void ()** %629
	%630 = getelementptr [8 x i8], [8 x i8]* @"linux::str.109", i64 0, i64 0
	%631 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %630, 1
	store {i64, i8*} %631, {i64, i8*}* %tmp.105
	%632 = load {i64, i8*}, {i64, i8*}* %tmp.105
	%633 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 105
	store {i64, i8*} %632, {i64, i8*}* %633
	%634 = bitcast i64 (i32)* @"sysconf" to void ()*
	%635 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 105
	store void ()* %634, void ()** %635
	%636 = getelementptr [8 x i8], [8 x i8]* @"linux::str.110", i64 0, i64 0
	%637 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %636, 1
	store {i64, i8*} %637, {i64, i8*}* %tmp.106
	%638 = load {i64, i8*}, {i64, i8*}* %tmp.106
	%639 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 106
	store {i64, i8*} %638, {i64, i8*}* %639
	%640 = bitcast i64 (i32, i8*, i64)* @"confstr" to void ()*
	%641 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 106
	store void ()* %640, void ()** %641
	%642 = getelementptr [7 x i8], [7 x i8]* @"linux::str.111", i64 0, i64 0
	%643 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %642, 1
	store {i64, i8*} %643, {i64, i8*}* %tmp.107
	%644 = load {i64, i8*}, {i64, i8*}* %tmp.107
	%645 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 107
	store {i64, i8*} %644, {i64, i8*}* %645
	%646 = bitcast i32 ()* @"getpid" to void ()*
	%647 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 107
	store void ()* %646, void ()** %647
	%648 = getelementptr [8 x i8], [8 x i8]* @"linux::str.112", i64 0, i64 0
	%649 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %648, 1
	store {i64, i8*} %649, {i64, i8*}* %tmp.108
	%650 = load {i64, i8*}, {i64, i8*}* %tmp.108
	%651 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 108
	store {i64, i8*} %650, {i64, i8*}* %651
	%652 = bitcast i32 ()* @"getppid" to void ()*
	%653 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 108
	store void ()* %652, void ()** %653
	%654 = getelementptr [8 x i8], [8 x i8]* @"linux::str.113", i64 0, i64 0
	%655 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %654, 1
	store {i64, i8*} %655, {i64, i8*}* %tmp.109
	%656 = load {i64, i8*}, {i64, i8*}* %tmp.109
	%657 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 109
	store {i64, i8*} %656, {i64, i8*}* %657
	%658 = bitcast i32 ()* @"getpgrp" to void ()*
	%659 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 109
	store void ()* %658, void ()** %659
	%660 = getelementptr [10 x i8], [10 x i8]* @"linux::str.114", i64 0, i64 0
	%661 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %660, 1
	store {i64, i8*} %661, {i64, i8*}* %tmp.110
	%662 = load {i64, i8*}, {i64, i8*}* %tmp.110
	%663 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 110
	store {i64, i8*} %662, {i64, i8*}* %663
	%664 = bitcast i32 (i32)* @"__getpgid" to void ()*
	%665 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 110
	store void ()* %664, void ()** %665
	%666 = getelementptr [8 x i8], [8 x i8]* @"linux::str.115", i64 0, i64 0
	%667 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %666, 1
	store {i64, i8*} %667, {i64, i8*}* %tmp.111
	%668 = load {i64, i8*}, {i64, i8*}* %tmp.111
	%669 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 111
	store {i64, i8*} %668, {i64, i8*}* %669
	%670 = bitcast i32 (i32)* @"getpgid" to void ()*
	%671 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 111
	store void ()* %670, void ()** %671
	%672 = getelementptr [8 x i8], [8 x i8]* @"linux::str.116", i64 0, i64 0
	%673 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %672, 1
	store {i64, i8*} %673, {i64, i8*}* %tmp.112
	%674 = load {i64, i8*}, {i64, i8*}* %tmp.112
	%675 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 112
	store {i64, i8*} %674, {i64, i8*}* %675
	%676 = bitcast i32 (i32, i32)* @"setpgid" to void ()*
	%677 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 112
	store void ()* %676, void ()** %677
	%678 = getelementptr [8 x i8], [8 x i8]* @"linux::str.117", i64 0, i64 0
	%679 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %678, 1
	store {i64, i8*} %679, {i64, i8*}* %tmp.113
	%680 = load {i64, i8*}, {i64, i8*}* %tmp.113
	%681 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 113
	store {i64, i8*} %680, {i64, i8*}* %681
	%682 = bitcast i32 ()* @"setpgrp" to void ()*
	%683 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 113
	store void ()* %682, void ()** %683
	%684 = getelementptr [7 x i8], [7 x i8]* @"linux::str.118", i64 0, i64 0
	%685 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %684, 1
	store {i64, i8*} %685, {i64, i8*}* %tmp.114
	%686 = load {i64, i8*}, {i64, i8*}* %tmp.114
	%687 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 114
	store {i64, i8*} %686, {i64, i8*}* %687
	%688 = bitcast i32 ()* @"setsid" to void ()*
	%689 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 114
	store void ()* %688, void ()** %689
	%690 = getelementptr [7 x i8], [7 x i8]* @"linux::str.119", i64 0, i64 0
	%691 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %690, 1
	store {i64, i8*} %691, {i64, i8*}* %tmp.115
	%692 = load {i64, i8*}, {i64, i8*}* %tmp.115
	%693 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 115
	store {i64, i8*} %692, {i64, i8*}* %693
	%694 = bitcast i32 (i32)* @"getsid" to void ()*
	%695 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 115
	store void ()* %694, void ()** %695
	%696 = getelementptr [7 x i8], [7 x i8]* @"linux::str.120", i64 0, i64 0
	%697 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %696, 1
	store {i64, i8*} %697, {i64, i8*}* %tmp.116
	%698 = load {i64, i8*}, {i64, i8*}* %tmp.116
	%699 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 116
	store {i64, i8*} %698, {i64, i8*}* %699
	%700 = bitcast i32 ()* @"getuid" to void ()*
	%701 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 116
	store void ()* %700, void ()** %701
	%702 = getelementptr [8 x i8], [8 x i8]* @"linux::str.121", i64 0, i64 0
	%703 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %702, 1
	store {i64, i8*} %703, {i64, i8*}* %tmp.117
	%704 = load {i64, i8*}, {i64, i8*}* %tmp.117
	%705 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 117
	store {i64, i8*} %704, {i64, i8*}* %705
	%706 = bitcast i32 ()* @"geteuid" to void ()*
	%707 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 117
	store void ()* %706, void ()** %707
	%708 = getelementptr [7 x i8], [7 x i8]* @"linux::str.122", i64 0, i64 0
	%709 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %708, 1
	store {i64, i8*} %709, {i64, i8*}* %tmp.118
	%710 = load {i64, i8*}, {i64, i8*}* %tmp.118
	%711 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 118
	store {i64, i8*} %710, {i64, i8*}* %711
	%712 = bitcast i32 ()* @"getgid" to void ()*
	%713 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 118
	store void ()* %712, void ()** %713
	%714 = getelementptr [8 x i8], [8 x i8]* @"linux::str.123", i64 0, i64 0
	%715 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %714, 1
	store {i64, i8*} %715, {i64, i8*}* %tmp.119
	%716 = load {i64, i8*}, {i64, i8*}* %tmp.119
	%717 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 119
	store {i64, i8*} %716, {i64, i8*}* %717
	%718 = bitcast i32 ()* @"getegid" to void ()*
	%719 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 119
	store void ()* %718, void ()** %719
	%720 = getelementptr [10 x i8], [10 x i8]* @"linux::str.124", i64 0, i64 0
	%721 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %720, 1
	store {i64, i8*} %721, {i64, i8*}* %tmp.120
	%722 = load {i64, i8*}, {i64, i8*}* %tmp.120
	%723 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 120
	store {i64, i8*} %722, {i64, i8*}* %723
	%724 = bitcast i32 (i32, i32*)* @"getgroups" to void ()*
	%725 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 120
	store void ()* %724, void ()** %725
	%726 = getelementptr [7 x i8], [7 x i8]* @"linux::str.125", i64 0, i64 0
	%727 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %726, 1
	store {i64, i8*} %727, {i64, i8*}* %tmp.121
	%728 = load {i64, i8*}, {i64, i8*}* %tmp.121
	%729 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 121
	store {i64, i8*} %728, {i64, i8*}* %729
	%730 = bitcast i32 (i32)* @"setuid" to void ()*
	%731 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 121
	store void ()* %730, void ()** %731
	%732 = getelementptr [9 x i8], [9 x i8]* @"linux::str.126", i64 0, i64 0
	%733 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %732, 1
	store {i64, i8*} %733, {i64, i8*}* %tmp.122
	%734 = load {i64, i8*}, {i64, i8*}* %tmp.122
	%735 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 122
	store {i64, i8*} %734, {i64, i8*}* %735
	%736 = bitcast i32 (i32, i32)* @"setreuid" to void ()*
	%737 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 122
	store void ()* %736, void ()** %737
	%738 = getelementptr [8 x i8], [8 x i8]* @"linux::str.127", i64 0, i64 0
	%739 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %738, 1
	store {i64, i8*} %739, {i64, i8*}* %tmp.123
	%740 = load {i64, i8*}, {i64, i8*}* %tmp.123
	%741 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 123
	store {i64, i8*} %740, {i64, i8*}* %741
	%742 = bitcast i32 (i32)* @"seteuid" to void ()*
	%743 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 123
	store void ()* %742, void ()** %743
	%744 = getelementptr [7 x i8], [7 x i8]* @"linux::str.128", i64 0, i64 0
	%745 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %744, 1
	store {i64, i8*} %745, {i64, i8*}* %tmp.124
	%746 = load {i64, i8*}, {i64, i8*}* %tmp.124
	%747 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 124
	store {i64, i8*} %746, {i64, i8*}* %747
	%748 = bitcast i32 (i32)* @"setgid" to void ()*
	%749 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 124
	store void ()* %748, void ()** %749
	%750 = getelementptr [9 x i8], [9 x i8]* @"linux::str.129", i64 0, i64 0
	%751 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %750, 1
	store {i64, i8*} %751, {i64, i8*}* %tmp.125
	%752 = load {i64, i8*}, {i64, i8*}* %tmp.125
	%753 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 125
	store {i64, i8*} %752, {i64, i8*}* %753
	%754 = bitcast i32 (i32, i32)* @"setregid" to void ()*
	%755 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 125
	store void ()* %754, void ()** %755
	%756 = getelementptr [8 x i8], [8 x i8]* @"linux::str.130", i64 0, i64 0
	%757 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %756, 1
	store {i64, i8*} %757, {i64, i8*}* %tmp.126
	%758 = load {i64, i8*}, {i64, i8*}* %tmp.126
	%759 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 126
	store {i64, i8*} %758, {i64, i8*}* %759
	%760 = bitcast i32 (i32)* @"setegid" to void ()*
	%761 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 126
	store void ()* %760, void ()** %761
	%762 = getelementptr [5 x i8], [5 x i8]* @"linux::str.131", i64 0, i64 0
	%763 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %762, 1
	store {i64, i8*} %763, {i64, i8*}* %tmp.127
	%764 = load {i64, i8*}, {i64, i8*}* %tmp.127
	%765 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 127
	store {i64, i8*} %764, {i64, i8*}* %765
	%766 = bitcast i32 ()* @"fork" to void ()*
	%767 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 127
	store void ()* %766, void ()** %767
	%768 = getelementptr [6 x i8], [6 x i8]* @"linux::str.132", i64 0, i64 0
	%769 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %768, 1
	store {i64, i8*} %769, {i64, i8*}* %tmp.128
	%770 = load {i64, i8*}, {i64, i8*}* %tmp.128
	%771 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 128
	store {i64, i8*} %770, {i64, i8*}* %771
	%772 = bitcast i32 ()* @"vfork" to void ()*
	%773 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 128
	store void ()* %772, void ()** %773
	%774 = getelementptr [8 x i8], [8 x i8]* @"linux::str.133", i64 0, i64 0
	%775 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %774, 1
	store {i64, i8*} %775, {i64, i8*}* %tmp.129
	%776 = load {i64, i8*}, {i64, i8*}* %tmp.129
	%777 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 129
	store {i64, i8*} %776, {i64, i8*}* %777
	%778 = bitcast i8* (i32)* @"ttyname" to void ()*
	%779 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 129
	store void ()* %778, void ()** %779
	%780 = getelementptr [10 x i8], [10 x i8]* @"linux::str.134", i64 0, i64 0
	%781 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %780, 1
	store {i64, i8*} %781, {i64, i8*}* %tmp.130
	%782 = load {i64, i8*}, {i64, i8*}* %tmp.130
	%783 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 130
	store {i64, i8*} %782, {i64, i8*}* %783
	%784 = bitcast i32 (i32, i8*, i64)* @"ttyname_r" to void ()*
	%785 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 130
	store void ()* %784, void ()** %785
	%786 = getelementptr [7 x i8], [7 x i8]* @"linux::str.135", i64 0, i64 0
	%787 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %786, 1
	store {i64, i8*} %787, {i64, i8*}* %tmp.131
	%788 = load {i64, i8*}, {i64, i8*}* %tmp.131
	%789 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 131
	store {i64, i8*} %788, {i64, i8*}* %789
	%790 = bitcast i32 (i32)* @"isatty" to void ()*
	%791 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 131
	store void ()* %790, void ()** %791
	%792 = getelementptr [8 x i8], [8 x i8]* @"linux::str.136", i64 0, i64 0
	%793 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %792, 1
	store {i64, i8*} %793, {i64, i8*}* %tmp.132
	%794 = load {i64, i8*}, {i64, i8*}* %tmp.132
	%795 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 132
	store {i64, i8*} %794, {i64, i8*}* %795
	%796 = bitcast i32 ()* @"ttyslot" to void ()*
	%797 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 132
	store void ()* %796, void ()** %797
	%798 = getelementptr [5 x i8], [5 x i8]* @"linux::str.137", i64 0, i64 0
	%799 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %798, 1
	store {i64, i8*} %799, {i64, i8*}* %tmp.133
	%800 = load {i64, i8*}, {i64, i8*}* %tmp.133
	%801 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 133
	store {i64, i8*} %800, {i64, i8*}* %801
	%802 = bitcast i32 (i8*, i8*)* @"link" to void ()*
	%803 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 133
	store void ()* %802, void ()** %803
	%804 = getelementptr [7 x i8], [7 x i8]* @"linux::str.138", i64 0, i64 0
	%805 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %804, 1
	store {i64, i8*} %805, {i64, i8*}* %tmp.134
	%806 = load {i64, i8*}, {i64, i8*}* %tmp.134
	%807 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 134
	store {i64, i8*} %806, {i64, i8*}* %807
	%808 = bitcast i32 (i32, i8*, i32, i8*, i32)* @"linkat" to void ()*
	%809 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 134
	store void ()* %808, void ()** %809
	%810 = getelementptr [8 x i8], [8 x i8]* @"linux::str.139", i64 0, i64 0
	%811 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %810, 1
	store {i64, i8*} %811, {i64, i8*}* %tmp.135
	%812 = load {i64, i8*}, {i64, i8*}* %tmp.135
	%813 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 135
	store {i64, i8*} %812, {i64, i8*}* %813
	%814 = bitcast i32 (i8*, i8*)* @"symlink" to void ()*
	%815 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 135
	store void ()* %814, void ()** %815
	%816 = getelementptr [9 x i8], [9 x i8]* @"linux::str.140", i64 0, i64 0
	%817 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %816, 1
	store {i64, i8*} %817, {i64, i8*}* %tmp.136
	%818 = load {i64, i8*}, {i64, i8*}* %tmp.136
	%819 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 136
	store {i64, i8*} %818, {i64, i8*}* %819
	%820 = bitcast i64 (i8*, i8*, i64)* @"readlink" to void ()*
	%821 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 136
	store void ()* %820, void ()** %821
	%822 = getelementptr [10 x i8], [10 x i8]* @"linux::str.141", i64 0, i64 0
	%823 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %822, 1
	store {i64, i8*} %823, {i64, i8*}* %tmp.137
	%824 = load {i64, i8*}, {i64, i8*}* %tmp.137
	%825 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 137
	store {i64, i8*} %824, {i64, i8*}* %825
	%826 = bitcast i32 (i8*, i32, i8*)* @"symlinkat" to void ()*
	%827 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 137
	store void ()* %826, void ()** %827
	%828 = getelementptr [11 x i8], [11 x i8]* @"linux::str.142", i64 0, i64 0
	%829 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %828, 1
	store {i64, i8*} %829, {i64, i8*}* %tmp.138
	%830 = load {i64, i8*}, {i64, i8*}* %tmp.138
	%831 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 138
	store {i64, i8*} %830, {i64, i8*}* %831
	%832 = bitcast i64 (i32, i8*, i8*, i64)* @"readlinkat" to void ()*
	%833 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 138
	store void ()* %832, void ()** %833
	%834 = getelementptr [7 x i8], [7 x i8]* @"linux::str.143", i64 0, i64 0
	%835 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %834, 1
	store {i64, i8*} %835, {i64, i8*}* %tmp.139
	%836 = load {i64, i8*}, {i64, i8*}* %tmp.139
	%837 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 139
	store {i64, i8*} %836, {i64, i8*}* %837
	%838 = bitcast i32 (i8*)* @"unlink" to void ()*
	%839 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 139
	store void ()* %838, void ()** %839
	%840 = getelementptr [9 x i8], [9 x i8]* @"linux::str.144", i64 0, i64 0
	%841 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %840, 1
	store {i64, i8*} %841, {i64, i8*}* %tmp.140
	%842 = load {i64, i8*}, {i64, i8*}* %tmp.140
	%843 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 140
	store {i64, i8*} %842, {i64, i8*}* %843
	%844 = bitcast i32 (i32, i8*, i32)* @"unlinkat" to void ()*
	%845 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 140
	store void ()* %844, void ()** %845
	%846 = getelementptr [6 x i8], [6 x i8]* @"linux::str.145", i64 0, i64 0
	%847 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %846, 1
	store {i64, i8*} %847, {i64, i8*}* %tmp.141
	%848 = load {i64, i8*}, {i64, i8*}* %tmp.141
	%849 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 141
	store {i64, i8*} %848, {i64, i8*}* %849
	%850 = bitcast i32 (i8*)* @"rmdir" to void ()*
	%851 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 141
	store void ()* %850, void ()** %851
	%852 = getelementptr [10 x i8], [10 x i8]* @"linux::str.146", i64 0, i64 0
	%853 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %852, 1
	store {i64, i8*} %853, {i64, i8*}* %tmp.142
	%854 = load {i64, i8*}, {i64, i8*}* %tmp.142
	%855 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 142
	store {i64, i8*} %854, {i64, i8*}* %855
	%856 = bitcast i32 (i32)* @"tcgetpgrp" to void ()*
	%857 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 142
	store void ()* %856, void ()** %857
	%858 = getelementptr [10 x i8], [10 x i8]* @"linux::str.147", i64 0, i64 0
	%859 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %858, 1
	store {i64, i8*} %859, {i64, i8*}* %tmp.143
	%860 = load {i64, i8*}, {i64, i8*}* %tmp.143
	%861 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 143
	store {i64, i8*} %860, {i64, i8*}* %861
	%862 = bitcast i32 (i32, i32)* @"tcsetpgrp" to void ()*
	%863 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 143
	store void ()* %862, void ()** %863
	%864 = getelementptr [9 x i8], [9 x i8]* @"linux::str.148", i64 0, i64 0
	%865 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %864, 1
	store {i64, i8*} %865, {i64, i8*}* %tmp.144
	%866 = load {i64, i8*}, {i64, i8*}* %tmp.144
	%867 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 144
	store {i64, i8*} %866, {i64, i8*}* %867
	%868 = bitcast i8* ()* @"getlogin" to void ()*
	%869 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 144
	store void ()* %868, void ()** %869
	%870 = getelementptr [11 x i8], [11 x i8]* @"linux::str.149", i64 0, i64 0
	%871 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %870, 1
	store {i64, i8*} %871, {i64, i8*}* %tmp.145
	%872 = load {i64, i8*}, {i64, i8*}* %tmp.145
	%873 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 145
	store {i64, i8*} %872, {i64, i8*}* %873
	%874 = bitcast i32 (i8*, i64)* @"getlogin_r" to void ()*
	%875 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 145
	store void ()* %874, void ()** %875
	%876 = getelementptr [7 x i8], [7 x i8]* @"linux::str.150", i64 0, i64 0
	%877 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %876, 1
	store {i64, i8*} %877, {i64, i8*}* %tmp.146
	%878 = load {i64, i8*}, {i64, i8*}* %tmp.146
	%879 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 146
	store {i64, i8*} %878, {i64, i8*}* %879
	%880 = bitcast i32 (i32, i8**, i8*)* @"getopt" to void ()*
	%881 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 146
	store void ()* %880, void ()** %881
	%882 = getelementptr [12 x i8], [12 x i8]* @"linux::str.151", i64 0, i64 0
	%883 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %882, 1
	store {i64, i8*} %883, {i64, i8*}* %tmp.147
	%884 = load {i64, i8*}, {i64, i8*}* %tmp.147
	%885 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 147
	store {i64, i8*} %884, {i64, i8*}* %885
	%886 = bitcast i32 (i8*, i64)* @"gethostname" to void ()*
	%887 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 147
	store void ()* %886, void ()** %887
	%888 = getelementptr [12 x i8], [12 x i8]* @"linux::str.152", i64 0, i64 0
	%889 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %888, 1
	store {i64, i8*} %889, {i64, i8*}* %tmp.148
	%890 = load {i64, i8*}, {i64, i8*}* %tmp.148
	%891 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 148
	store {i64, i8*} %890, {i64, i8*}* %891
	%892 = bitcast i32 (i8*, i64)* @"sethostname" to void ()*
	%893 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 148
	store void ()* %892, void ()** %893
	%894 = getelementptr [10 x i8], [10 x i8]* @"linux::str.153", i64 0, i64 0
	%895 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %894, 1
	store {i64, i8*} %895, {i64, i8*}* %tmp.149
	%896 = load {i64, i8*}, {i64, i8*}* %tmp.149
	%897 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 149
	store {i64, i8*} %896, {i64, i8*}* %897
	%898 = bitcast i32 (i64)* @"sethostid" to void ()*
	%899 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 149
	store void ()* %898, void ()** %899
	%900 = getelementptr [14 x i8], [14 x i8]* @"linux::str.154", i64 0, i64 0
	%901 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %900, 1
	store {i64, i8*} %901, {i64, i8*}* %tmp.150
	%902 = load {i64, i8*}, {i64, i8*}* %tmp.150
	%903 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 150
	store {i64, i8*} %902, {i64, i8*}* %903
	%904 = bitcast i32 (i8*, i64)* @"getdomainname" to void ()*
	%905 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 150
	store void ()* %904, void ()** %905
	%906 = getelementptr [14 x i8], [14 x i8]* @"linux::str.155", i64 0, i64 0
	%907 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %906, 1
	store {i64, i8*} %907, {i64, i8*}* %tmp.151
	%908 = load {i64, i8*}, {i64, i8*}* %tmp.151
	%909 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 151
	store {i64, i8*} %908, {i64, i8*}* %909
	%910 = bitcast i32 (i8*, i64)* @"setdomainname" to void ()*
	%911 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 151
	store void ()* %910, void ()** %911
	%912 = getelementptr [8 x i8], [8 x i8]* @"linux::str.156", i64 0, i64 0
	%913 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %912, 1
	store {i64, i8*} %913, {i64, i8*}* %tmp.152
	%914 = load {i64, i8*}, {i64, i8*}* %tmp.152
	%915 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 152
	store {i64, i8*} %914, {i64, i8*}* %915
	%916 = bitcast i32 ()* @"vhangup" to void ()*
	%917 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 152
	store void ()* %916, void ()** %917
	%918 = getelementptr [7 x i8], [7 x i8]* @"linux::str.157", i64 0, i64 0
	%919 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %918, 1
	store {i64, i8*} %919, {i64, i8*}* %tmp.153
	%920 = load {i64, i8*}, {i64, i8*}* %tmp.153
	%921 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 153
	store {i64, i8*} %920, {i64, i8*}* %921
	%922 = bitcast i32 (i16*, i64, i64, i32)* @"profil" to void ()*
	%923 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 153
	store void ()* %922, void ()** %923
	%924 = getelementptr [5 x i8], [5 x i8]* @"linux::str.158", i64 0, i64 0
	%925 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %924, 1
	store {i64, i8*} %925, {i64, i8*}* %tmp.154
	%926 = load {i64, i8*}, {i64, i8*}* %tmp.154
	%927 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 154
	store {i64, i8*} %926, {i64, i8*}* %927
	%928 = bitcast i32 (i8*)* @"acct" to void ()*
	%929 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 154
	store void ()* %928, void ()** %929
	%930 = getelementptr [13 x i8], [13 x i8]* @"linux::str.159", i64 0, i64 0
	%931 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %930, 1
	store {i64, i8*} %931, {i64, i8*}* %tmp.155
	%932 = load {i64, i8*}, {i64, i8*}* %tmp.155
	%933 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 155
	store {i64, i8*} %932, {i64, i8*}* %933
	%934 = bitcast i8* ()* @"getusershell" to void ()*
	%935 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 155
	store void ()* %934, void ()** %935
	%936 = getelementptr [13 x i8], [13 x i8]* @"linux::str.160", i64 0, i64 0
	%937 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %936, 1
	store {i64, i8*} %937, {i64, i8*}* %tmp.156
	%938 = load {i64, i8*}, {i64, i8*}* %tmp.156
	%939 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 156
	store {i64, i8*} %938, {i64, i8*}* %939
	%940 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 156
	store void ()* @"endusershell", void ()** %940
	%941 = getelementptr [13 x i8], [13 x i8]* @"linux::str.161", i64 0, i64 0
	%942 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %941, 1
	store {i64, i8*} %942, {i64, i8*}* %tmp.157
	%943 = load {i64, i8*}, {i64, i8*}* %tmp.157
	%944 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 157
	store {i64, i8*} %943, {i64, i8*}* %944
	%945 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 157
	store void ()* @"setusershell", void ()** %945
	%946 = getelementptr [7 x i8], [7 x i8]* @"linux::str.162", i64 0, i64 0
	%947 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %946, 1
	store {i64, i8*} %947, {i64, i8*}* %tmp.158
	%948 = load {i64, i8*}, {i64, i8*}* %tmp.158
	%949 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 158
	store {i64, i8*} %948, {i64, i8*}* %949
	%950 = bitcast i32 (i32, i32)* @"daemon" to void ()*
	%951 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 158
	store void ()* %950, void ()** %951
	%952 = getelementptr [7 x i8], [7 x i8]* @"linux::str.163", i64 0, i64 0
	%953 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %952, 1
	store {i64, i8*} %953, {i64, i8*}* %tmp.159
	%954 = load {i64, i8*}, {i64, i8*}* %tmp.159
	%955 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 159
	store {i64, i8*} %954, {i64, i8*}* %955
	%956 = bitcast i32 (i8*)* @"chroot" to void ()*
	%957 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 159
	store void ()* %956, void ()** %957
	%958 = getelementptr [8 x i8], [8 x i8]* @"linux::str.164", i64 0, i64 0
	%959 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %958, 1
	store {i64, i8*} %959, {i64, i8*}* %tmp.160
	%960 = load {i64, i8*}, {i64, i8*}* %tmp.160
	%961 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 160
	store {i64, i8*} %960, {i64, i8*}* %961
	%962 = bitcast i8* (i8*)* @"getpass" to void ()*
	%963 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 160
	store void ()* %962, void ()** %963
	%964 = getelementptr [6 x i8], [6 x i8]* @"linux::str.165", i64 0, i64 0
	%965 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %964, 1
	store {i64, i8*} %965, {i64, i8*}* %tmp.161
	%966 = load {i64, i8*}, {i64, i8*}* %tmp.161
	%967 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 161
	store {i64, i8*} %966, {i64, i8*}* %967
	%968 = bitcast i32 (i32)* @"fsync" to void ()*
	%969 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 161
	store void ()* %968, void ()** %969
	%970 = getelementptr [10 x i8], [10 x i8]* @"linux::str.166", i64 0, i64 0
	%971 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %970, 1
	store {i64, i8*} %971, {i64, i8*}* %tmp.162
	%972 = load {i64, i8*}, {i64, i8*}* %tmp.162
	%973 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 162
	store {i64, i8*} %972, {i64, i8*}* %973
	%974 = bitcast i64 ()* @"gethostid" to void ()*
	%975 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 162
	store void ()* %974, void ()** %975
	%976 = getelementptr [5 x i8], [5 x i8]* @"linux::str.167", i64 0, i64 0
	%977 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %976, 1
	store {i64, i8*} %977, {i64, i8*}* %tmp.163
	%978 = load {i64, i8*}, {i64, i8*}* %tmp.163
	%979 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 163
	store {i64, i8*} %978, {i64, i8*}* %979
	%980 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 163
	store void ()* @"sync", void ()** %980
	%981 = getelementptr [12 x i8], [12 x i8]* @"linux::str.168", i64 0, i64 0
	%982 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %981, 1
	store {i64, i8*} %982, {i64, i8*}* %tmp.164
	%983 = load {i64, i8*}, {i64, i8*}* %tmp.164
	%984 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 164
	store {i64, i8*} %983, {i64, i8*}* %984
	%985 = bitcast i32 ()* @"getpagesize" to void ()*
	%986 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 164
	store void ()* %985, void ()** %986
	%987 = getelementptr [14 x i8], [14 x i8]* @"linux::str.169", i64 0, i64 0
	%988 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %987, 1
	store {i64, i8*} %988, {i64, i8*}* %tmp.165
	%989 = load {i64, i8*}, {i64, i8*}* %tmp.165
	%990 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 165
	store {i64, i8*} %989, {i64, i8*}* %990
	%991 = bitcast i32 ()* @"getdtablesize" to void ()*
	%992 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 165
	store void ()* %991, void ()** %992
	%993 = getelementptr [9 x i8], [9 x i8]* @"linux::str.170", i64 0, i64 0
	%994 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %993, 1
	store {i64, i8*} %994, {i64, i8*}* %tmp.166
	%995 = load {i64, i8*}, {i64, i8*}* %tmp.166
	%996 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 166
	store {i64, i8*} %995, {i64, i8*}* %996
	%997 = bitcast i32 (i8*, i64)* @"truncate" to void ()*
	%998 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 166
	store void ()* %997, void ()** %998
	%999 = getelementptr [10 x i8], [10 x i8]* @"linux::str.171", i64 0, i64 0
	%1000 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %999, 1
	store {i64, i8*} %1000, {i64, i8*}* %tmp.167
	%1001 = load {i64, i8*}, {i64, i8*}* %tmp.167
	%1002 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 167
	store {i64, i8*} %1001, {i64, i8*}* %1002
	%1003 = bitcast i32 (i32, i64)* @"ftruncate" to void ()*
	%1004 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 167
	store void ()* %1003, void ()** %1004
	%1005 = getelementptr [4 x i8], [4 x i8]* @"linux::str.172", i64 0, i64 0
	%1006 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1005, 1
	store {i64, i8*} %1006, {i64, i8*}* %tmp.168
	%1007 = load {i64, i8*}, {i64, i8*}* %tmp.168
	%1008 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 168
	store {i64, i8*} %1007, {i64, i8*}* %1008
	%1009 = bitcast i32 (i8*)* @"brk" to void ()*
	%1010 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 168
	store void ()* %1009, void ()** %1010
	%1011 = getelementptr [5 x i8], [5 x i8]* @"linux::str.173", i64 0, i64 0
	%1012 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1011, 1
	store {i64, i8*} %1012, {i64, i8*}* %tmp.169
	%1013 = load {i64, i8*}, {i64, i8*}* %tmp.169
	%1014 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 169
	store {i64, i8*} %1013, {i64, i8*}* %1014
	%1015 = bitcast i8* (i64)* @"sbrk" to void ()*
	%1016 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 169
	store void ()* %1015, void ()** %1016
	%1017 = getelementptr [8 x i8], [8 x i8]* @"linux::str.174", i64 0, i64 0
	%1018 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1017, 1
	store {i64, i8*} %1018, {i64, i8*}* %tmp.170
	%1019 = load {i64, i8*}, {i64, i8*}* %tmp.170
	%1020 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 170
	store {i64, i8*} %1019, {i64, i8*}* %1020
	%1021 = bitcast i64 (i64, ...)* @"syscall" to void ()*
	%1022 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 170
	store void ()* %1021, void ()** %1022
	%1023 = getelementptr [6 x i8], [6 x i8]* @"linux::str.175", i64 0, i64 0
	%1024 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1023, 1
	store {i64, i8*} %1024, {i64, i8*}* %tmp.171
	%1025 = load {i64, i8*}, {i64, i8*}* %tmp.171
	%1026 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 171
	store {i64, i8*} %1025, {i64, i8*}* %1026
	%1027 = bitcast i32 (i32, i32, i64)* @"lockf" to void ()*
	%1028 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 171
	store void ()* %1027, void ()** %1028
	%1029 = getelementptr [10 x i8], [10 x i8]* @"linux::str.176", i64 0, i64 0
	%1030 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1029, 1
	store {i64, i8*} %1030, {i64, i8*}* %tmp.172
	%1031 = load {i64, i8*}, {i64, i8*}* %tmp.172
	%1032 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 172
	store {i64, i8*} %1031, {i64, i8*}* %1032
	%1033 = bitcast i32 (i32)* @"fdatasync" to void ()*
	%1034 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 172
	store void ()* %1033, void ()** %1034
	%1035 = getelementptr [6 x i8], [6 x i8]* @"linux::str.177", i64 0, i64 0
	%1036 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1035, 1
	store {i64, i8*} %1036, {i64, i8*}* %tmp.173
	%1037 = load {i64, i8*}, {i64, i8*}* %tmp.173
	%1038 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 173
	store {i64, i8*} %1037, {i64, i8*}* %1038
	%1039 = bitcast i8* (i8*, i8*)* @"crypt" to void ()*
	%1040 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 173
	store void ()* %1039, void ()** %1040
	%1041 = getelementptr [11 x i8], [11 x i8]* @"linux::str.178", i64 0, i64 0
	%1042 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1041, 1
	store {i64, i8*} %1042, {i64, i8*}* %tmp.174
	%1043 = load {i64, i8*}, {i64, i8*}* %tmp.174
	%1044 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 174
	store {i64, i8*} %1043, {i64, i8*}* %1044
	%1045 = bitcast i32 (i8*, i64)* @"getentropy" to void ()*
	%1046 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 174
	store void ()* %1045, void ()** %1046
	%1047 = getelementptr [12 x i8], [12 x i8]* @"linux::str.179", i64 0, i64 0
	%1048 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1047, 1
	store {i64, i8*} %1048, {i64, i8*}* %tmp.175
	%1049 = load {i64, i8*}, {i64, i8*}* %tmp.175
	%1050 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 175
	store {i64, i8*} %1049, {i64, i8*}* %1050
	%1051 = bitcast i32 (%"linux::s_termios"*)* @"cfgetospeed" to void ()*
	%1052 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 175
	store void ()* %1051, void ()** %1052
	%1053 = getelementptr [12 x i8], [12 x i8]* @"linux::str.180", i64 0, i64 0
	%1054 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1053, 1
	store {i64, i8*} %1054, {i64, i8*}* %tmp.176
	%1055 = load {i64, i8*}, {i64, i8*}* %tmp.176
	%1056 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 176
	store {i64, i8*} %1055, {i64, i8*}* %1056
	%1057 = bitcast i32 (%"linux::s_termios"*)* @"cfgetispeed" to void ()*
	%1058 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 176
	store void ()* %1057, void ()** %1058
	%1059 = getelementptr [12 x i8], [12 x i8]* @"linux::str.181", i64 0, i64 0
	%1060 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1059, 1
	store {i64, i8*} %1060, {i64, i8*}* %tmp.177
	%1061 = load {i64, i8*}, {i64, i8*}* %tmp.177
	%1062 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 177
	store {i64, i8*} %1061, {i64, i8*}* %1062
	%1063 = bitcast i32 (%"linux::s_termios"*, i32)* @"cfsetospeed" to void ()*
	%1064 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 177
	store void ()* %1063, void ()** %1064
	%1065 = getelementptr [12 x i8], [12 x i8]* @"linux::str.182", i64 0, i64 0
	%1066 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1065, 1
	store {i64, i8*} %1066, {i64, i8*}* %tmp.178
	%1067 = load {i64, i8*}, {i64, i8*}* %tmp.178
	%1068 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 178
	store {i64, i8*} %1067, {i64, i8*}* %1068
	%1069 = bitcast i32 (%"linux::s_termios"*, i32)* @"cfsetispeed" to void ()*
	%1070 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 178
	store void ()* %1069, void ()** %1070
	%1071 = getelementptr [11 x i8], [11 x i8]* @"linux::str.183", i64 0, i64 0
	%1072 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1071, 1
	store {i64, i8*} %1072, {i64, i8*}* %tmp.179
	%1073 = load {i64, i8*}, {i64, i8*}* %tmp.179
	%1074 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 179
	store {i64, i8*} %1073, {i64, i8*}* %1074
	%1075 = bitcast i32 (%"linux::s_termios"*, i32)* @"cfsetspeed" to void ()*
	%1076 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 179
	store void ()* %1075, void ()** %1076
	%1077 = getelementptr [10 x i8], [10 x i8]* @"linux::str.184", i64 0, i64 0
	%1078 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1077, 1
	store {i64, i8*} %1078, {i64, i8*}* %tmp.180
	%1079 = load {i64, i8*}, {i64, i8*}* %tmp.180
	%1080 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 180
	store {i64, i8*} %1079, {i64, i8*}* %1080
	%1081 = bitcast i32 (i32, %"linux::s_termios"*)* @"tcgetattr" to void ()*
	%1082 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 180
	store void ()* %1081, void ()** %1082
	%1083 = getelementptr [10 x i8], [10 x i8]* @"linux::str.185", i64 0, i64 0
	%1084 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1083, 1
	store {i64, i8*} %1084, {i64, i8*}* %tmp.181
	%1085 = load {i64, i8*}, {i64, i8*}* %tmp.181
	%1086 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 181
	store {i64, i8*} %1085, {i64, i8*}* %1086
	%1087 = bitcast i32 (i32, i32, %"linux::s_termios"*)* @"tcsetattr" to void ()*
	%1088 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 181
	store void ()* %1087, void ()** %1088
	%1089 = getelementptr [10 x i8], [10 x i8]* @"linux::str.186", i64 0, i64 0
	%1090 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1089, 1
	store {i64, i8*} %1090, {i64, i8*}* %tmp.182
	%1091 = load {i64, i8*}, {i64, i8*}* %tmp.182
	%1092 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 182
	store {i64, i8*} %1091, {i64, i8*}* %1092
	%1093 = bitcast void (%"linux::s_termios"*)* @"cfmakeraw" to void ()*
	%1094 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 182
	store void ()* %1093, void ()** %1094
	%1095 = getelementptr [12 x i8], [12 x i8]* @"linux::str.187", i64 0, i64 0
	%1096 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1095, 1
	store {i64, i8*} %1096, {i64, i8*}* %tmp.183
	%1097 = load {i64, i8*}, {i64, i8*}* %tmp.183
	%1098 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 183
	store {i64, i8*} %1097, {i64, i8*}* %1098
	%1099 = bitcast i32 (i32, i32)* @"tcsendbreak" to void ()*
	%1100 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 183
	store void ()* %1099, void ()** %1100
	%1101 = getelementptr [8 x i8], [8 x i8]* @"linux::str.188", i64 0, i64 0
	%1102 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1101, 1
	store {i64, i8*} %1102, {i64, i8*}* %tmp.184
	%1103 = load {i64, i8*}, {i64, i8*}* %tmp.184
	%1104 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 184
	store {i64, i8*} %1103, {i64, i8*}* %1104
	%1105 = bitcast i32 (i32)* @"tcdrain" to void ()*
	%1106 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 184
	store void ()* %1105, void ()** %1106
	%1107 = getelementptr [8 x i8], [8 x i8]* @"linux::str.189", i64 0, i64 0
	%1108 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1107, 1
	store {i64, i8*} %1108, {i64, i8*}* %tmp.185
	%1109 = load {i64, i8*}, {i64, i8*}* %tmp.185
	%1110 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 185
	store {i64, i8*} %1109, {i64, i8*}* %1110
	%1111 = bitcast i32 (i32, i32)* @"tcflush" to void ()*
	%1112 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 185
	store void ()* %1111, void ()** %1112
	%1113 = getelementptr [7 x i8], [7 x i8]* @"linux::str.190", i64 0, i64 0
	%1114 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1113, 1
	store {i64, i8*} %1114, {i64, i8*}* %tmp.186
	%1115 = load {i64, i8*}, {i64, i8*}* %tmp.186
	%1116 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 186
	store {i64, i8*} %1115, {i64, i8*}* %1116
	%1117 = bitcast i32 (i32, i32)* @"tcflow" to void ()*
	%1118 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 186
	store void ()* %1117, void ()** %1118
	%1119 = getelementptr [9 x i8], [9 x i8]* @"linux::str.191", i64 0, i64 0
	%1120 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1119, 1
	store {i64, i8*} %1120, {i64, i8*}* %tmp.187
	%1121 = load {i64, i8*}, {i64, i8*}* %tmp.187
	%1122 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 187
	store {i64, i8*} %1121, {i64, i8*}* %1122
	%1123 = bitcast i32 (i32)* @"tcgetsid" to void ()*
	%1124 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 187
	store void ()* %1123, void ()** %1124
	%1125 = getelementptr [23 x i8], [23 x i8]* @"linux::str.192", i64 0, i64 0
	%1126 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %1125, 1
	store {i64, i8*} %1126, {i64, i8*}* %tmp.188
	%1127 = load {i64, i8*}, {i64, i8*}* %tmp.188
	%1128 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 188
	store {i64, i8*} %1127, {i64, i8*}* %1128
	%1129 = bitcast i64 ()* @"__ctype_get_mb_cur_max" to void ()*
	%1130 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 188
	store void ()* %1129, void ()** %1130
	%1131 = getelementptr [6 x i8], [6 x i8]* @"linux::str.193", i64 0, i64 0
	%1132 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1131, 1
	store {i64, i8*} %1132, {i64, i8*}* %tmp.189
	%1133 = load {i64, i8*}, {i64, i8*}* %tmp.189
	%1134 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 189
	store {i64, i8*} %1133, {i64, i8*}* %1134
	%1135 = bitcast i64 (i8*)* @"atoll" to void ()*
	%1136 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 189
	store void ()* %1135, void ()** %1136
	%1137 = getelementptr [7 x i8], [7 x i8]* @"linux::str.194", i64 0, i64 0
	%1138 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1137, 1
	store {i64, i8*} %1138, {i64, i8*}* %tmp.190
	%1139 = load {i64, i8*}, {i64, i8*}* %tmp.190
	%1140 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 190
	store {i64, i8*} %1139, {i64, i8*}* %1140
	%1141 = bitcast float (i8*, i8**)* @"strtof" to void ()*
	%1142 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 190
	store void ()* %1141, void ()** %1142
	%1143 = getelementptr [8 x i8], [8 x i8]* @"linux::str.195", i64 0, i64 0
	%1144 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1143, 1
	store {i64, i8*} %1144, {i64, i8*}* %tmp.191
	%1145 = load {i64, i8*}, {i64, i8*}* %tmp.191
	%1146 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 191
	store {i64, i8*} %1145, {i64, i8*}* %1146
	%1147 = bitcast x86_fp80 (i8*, i8**)* @"strtold" to void ()*
	%1148 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 191
	store void ()* %1147, void ()** %1148
	%1149 = getelementptr [7 x i8], [7 x i8]* @"linux::str.196", i64 0, i64 0
	%1150 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1149, 1
	store {i64, i8*} %1150, {i64, i8*}* %tmp.192
	%1151 = load {i64, i8*}, {i64, i8*}* %tmp.192
	%1152 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 192
	store {i64, i8*} %1151, {i64, i8*}* %1152
	%1153 = bitcast i64 (i8*, i8**, i32)* @"strtoq" to void ()*
	%1154 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 192
	store void ()* %1153, void ()** %1154
	%1155 = getelementptr [8 x i8], [8 x i8]* @"linux::str.197", i64 0, i64 0
	%1156 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1155, 1
	store {i64, i8*} %1156, {i64, i8*}* %tmp.193
	%1157 = load {i64, i8*}, {i64, i8*}* %tmp.193
	%1158 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 193
	store {i64, i8*} %1157, {i64, i8*}* %1158
	%1159 = bitcast i64 (i8*, i8**, i32)* @"strtouq" to void ()*
	%1160 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 193
	store void ()* %1159, void ()** %1160
	%1161 = getelementptr [8 x i8], [8 x i8]* @"linux::str.198", i64 0, i64 0
	%1162 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1161, 1
	store {i64, i8*} %1162, {i64, i8*}* %tmp.194
	%1163 = load {i64, i8*}, {i64, i8*}* %tmp.194
	%1164 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 194
	store {i64, i8*} %1163, {i64, i8*}* %1164
	%1165 = bitcast i64 (i8*, i8**, i32)* @"strtoll" to void ()*
	%1166 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 194
	store void ()* %1165, void ()** %1166
	%1167 = getelementptr [9 x i8], [9 x i8]* @"linux::str.199", i64 0, i64 0
	%1168 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1167, 1
	store {i64, i8*} %1168, {i64, i8*}* %tmp.195
	%1169 = load {i64, i8*}, {i64, i8*}* %tmp.195
	%1170 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 195
	store {i64, i8*} %1169, {i64, i8*}* %1170
	%1171 = bitcast i64 (i8*, i8**, i32)* @"strtoull" to void ()*
	%1172 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 195
	store void ()* %1171, void ()** %1172
	%1173 = getelementptr [5 x i8], [5 x i8]* @"linux::str.200", i64 0, i64 0
	%1174 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1173, 1
	store {i64, i8*} %1174, {i64, i8*}* %tmp.196
	%1175 = load {i64, i8*}, {i64, i8*}* %tmp.196
	%1176 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 196
	store {i64, i8*} %1175, {i64, i8*}* %1176
	%1177 = bitcast i8* (i64)* @"l64a" to void ()*
	%1178 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 196
	store void ()* %1177, void ()** %1178
	%1179 = getelementptr [5 x i8], [5 x i8]* @"linux::str.201", i64 0, i64 0
	%1180 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1179, 1
	store {i64, i8*} %1180, {i64, i8*}* %tmp.197
	%1181 = load {i64, i8*}, {i64, i8*}* %tmp.197
	%1182 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 197
	store {i64, i8*} %1181, {i64, i8*}* %1182
	%1183 = bitcast i64 (i8*)* @"a64l" to void ()*
	%1184 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 197
	store void ()* %1183, void ()** %1184
	%1185 = getelementptr [7 x i8], [7 x i8]* @"linux::str.202", i64 0, i64 0
	%1186 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1185, 1
	store {i64, i8*} %1186, {i64, i8*}* %tmp.198
	%1187 = load {i64, i8*}, {i64, i8*}* %tmp.198
	%1188 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 198
	store {i64, i8*} %1187, {i64, i8*}* %1188
	%1189 = bitcast i32 (i32, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::s_timeval"*)* @"select" to void ()*
	%1190 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 198
	store void ()* %1189, void ()** %1190
	%1191 = getelementptr [8 x i8], [8 x i8]* @"linux::str.203", i64 0, i64 0
	%1192 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1191, 1
	store {i64, i8*} %1192, {i64, i8*}* %tmp.199
	%1193 = load {i64, i8*}, {i64, i8*}* %tmp.199
	%1194 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 199
	store {i64, i8*} %1193, {i64, i8*}* %1194
	%1195 = bitcast i32 (i32, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::fd_set"*, %"linux::s_timespec"*, %"linux::__sigset_t"*)* @"pselect" to void ()*
	%1196 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 199
	store void ()* %1195, void ()** %1196
	%1197 = getelementptr [7 x i8], [7 x i8]* @"linux::str.204", i64 0, i64 0
	%1198 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1197, 1
	store {i64, i8*} %1198, {i64, i8*}* %tmp.200
	%1199 = load {i64, i8*}, {i64, i8*}* %tmp.200
	%1200 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 200
	store {i64, i8*} %1199, {i64, i8*}* %1200
	%1201 = bitcast i64 ()* @"random" to void ()*
	%1202 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 200
	store void ()* %1201, void ()** %1202
	%1203 = getelementptr [8 x i8], [8 x i8]* @"linux::str.205", i64 0, i64 0
	%1204 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1203, 1
	store {i64, i8*} %1204, {i64, i8*}* %tmp.201
	%1205 = load {i64, i8*}, {i64, i8*}* %tmp.201
	%1206 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 201
	store {i64, i8*} %1205, {i64, i8*}* %1206
	%1207 = bitcast void (i32)* @"srandom" to void ()*
	%1208 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 201
	store void ()* %1207, void ()** %1208
	%1209 = getelementptr [10 x i8], [10 x i8]* @"linux::str.206", i64 0, i64 0
	%1210 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1209, 1
	store {i64, i8*} %1210, {i64, i8*}* %tmp.202
	%1211 = load {i64, i8*}, {i64, i8*}* %tmp.202
	%1212 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 202
	store {i64, i8*} %1211, {i64, i8*}* %1212
	%1213 = bitcast i8* (i32, i8*, i64)* @"initstate" to void ()*
	%1214 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 202
	store void ()* %1213, void ()** %1214
	%1215 = getelementptr [9 x i8], [9 x i8]* @"linux::str.207", i64 0, i64 0
	%1216 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1215, 1
	store {i64, i8*} %1216, {i64, i8*}* %tmp.203
	%1217 = load {i64, i8*}, {i64, i8*}* %tmp.203
	%1218 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 203
	store {i64, i8*} %1217, {i64, i8*}* %1218
	%1219 = bitcast i8* (i8*)* @"setstate" to void ()*
	%1220 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 203
	store void ()* %1219, void ()** %1220
	%1221 = getelementptr [9 x i8], [9 x i8]* @"linux::str.208", i64 0, i64 0
	%1222 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1221, 1
	store {i64, i8*} %1222, {i64, i8*}* %tmp.204
	%1223 = load {i64, i8*}, {i64, i8*}* %tmp.204
	%1224 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 204
	store {i64, i8*} %1223, {i64, i8*}* %1224
	%1225 = bitcast i32 (%"linux::s_random_data"*, i32*)* @"random_r" to void ()*
	%1226 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 204
	store void ()* %1225, void ()** %1226
	%1227 = getelementptr [10 x i8], [10 x i8]* @"linux::str.209", i64 0, i64 0
	%1228 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1227, 1
	store {i64, i8*} %1228, {i64, i8*}* %tmp.205
	%1229 = load {i64, i8*}, {i64, i8*}* %tmp.205
	%1230 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 205
	store {i64, i8*} %1229, {i64, i8*}* %1230
	%1231 = bitcast i32 (i32, %"linux::s_random_data"*)* @"srandom_r" to void ()*
	%1232 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 205
	store void ()* %1231, void ()** %1232
	%1233 = getelementptr [12 x i8], [12 x i8]* @"linux::str.210", i64 0, i64 0
	%1234 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1233, 1
	store {i64, i8*} %1234, {i64, i8*}* %tmp.206
	%1235 = load {i64, i8*}, {i64, i8*}* %tmp.206
	%1236 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 206
	store {i64, i8*} %1235, {i64, i8*}* %1236
	%1237 = bitcast i32 (i32, i8*, i64, %"linux::s_random_data"*)* @"initstate_r" to void ()*
	%1238 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 206
	store void ()* %1237, void ()** %1238
	%1239 = getelementptr [11 x i8], [11 x i8]* @"linux::str.211", i64 0, i64 0
	%1240 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1239, 1
	store {i64, i8*} %1240, {i64, i8*}* %tmp.207
	%1241 = load {i64, i8*}, {i64, i8*}* %tmp.207
	%1242 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 207
	store {i64, i8*} %1241, {i64, i8*}* %1242
	%1243 = bitcast i32 (i8*, %"linux::s_random_data"*)* @"setstate_r" to void ()*
	%1244 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 207
	store void ()* %1243, void ()** %1244
	%1245 = getelementptr [7 x i8], [7 x i8]* @"linux::str.212", i64 0, i64 0
	%1246 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1245, 1
	store {i64, i8*} %1246, {i64, i8*}* %tmp.208
	%1247 = load {i64, i8*}, {i64, i8*}* %tmp.208
	%1248 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 208
	store {i64, i8*} %1247, {i64, i8*}* %1248
	%1249 = bitcast i32 (i32*)* @"rand_r" to void ()*
	%1250 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 208
	store void ()* %1249, void ()** %1250
	%1251 = getelementptr [8 x i8], [8 x i8]* @"linux::str.213", i64 0, i64 0
	%1252 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1251, 1
	store {i64, i8*} %1252, {i64, i8*}* %tmp.209
	%1253 = load {i64, i8*}, {i64, i8*}* %tmp.209
	%1254 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 209
	store {i64, i8*} %1253, {i64, i8*}* %1254
	%1255 = bitcast double ()* @"drand48" to void ()*
	%1256 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 209
	store void ()* %1255, void ()** %1256
	%1257 = getelementptr [8 x i8], [8 x i8]* @"linux::str.214", i64 0, i64 0
	%1258 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1257, 1
	store {i64, i8*} %1258, {i64, i8*}* %tmp.210
	%1259 = load {i64, i8*}, {i64, i8*}* %tmp.210
	%1260 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 210
	store {i64, i8*} %1259, {i64, i8*}* %1260
	%1261 = bitcast double (i16*)* @"erand48" to void ()*
	%1262 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 210
	store void ()* %1261, void ()** %1262
	%1263 = getelementptr [8 x i8], [8 x i8]* @"linux::str.215", i64 0, i64 0
	%1264 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1263, 1
	store {i64, i8*} %1264, {i64, i8*}* %tmp.211
	%1265 = load {i64, i8*}, {i64, i8*}* %tmp.211
	%1266 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 211
	store {i64, i8*} %1265, {i64, i8*}* %1266
	%1267 = bitcast i64 ()* @"lrand48" to void ()*
	%1268 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 211
	store void ()* %1267, void ()** %1268
	%1269 = getelementptr [8 x i8], [8 x i8]* @"linux::str.216", i64 0, i64 0
	%1270 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1269, 1
	store {i64, i8*} %1270, {i64, i8*}* %tmp.212
	%1271 = load {i64, i8*}, {i64, i8*}* %tmp.212
	%1272 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 212
	store {i64, i8*} %1271, {i64, i8*}* %1272
	%1273 = bitcast i64 (i16*)* @"nrand48" to void ()*
	%1274 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 212
	store void ()* %1273, void ()** %1274
	%1275 = getelementptr [8 x i8], [8 x i8]* @"linux::str.217", i64 0, i64 0
	%1276 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1275, 1
	store {i64, i8*} %1276, {i64, i8*}* %tmp.213
	%1277 = load {i64, i8*}, {i64, i8*}* %tmp.213
	%1278 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 213
	store {i64, i8*} %1277, {i64, i8*}* %1278
	%1279 = bitcast i64 ()* @"mrand48" to void ()*
	%1280 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 213
	store void ()* %1279, void ()** %1280
	%1281 = getelementptr [8 x i8], [8 x i8]* @"linux::str.218", i64 0, i64 0
	%1282 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1281, 1
	store {i64, i8*} %1282, {i64, i8*}* %tmp.214
	%1283 = load {i64, i8*}, {i64, i8*}* %tmp.214
	%1284 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 214
	store {i64, i8*} %1283, {i64, i8*}* %1284
	%1285 = bitcast i64 (i16*)* @"jrand48" to void ()*
	%1286 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 214
	store void ()* %1285, void ()** %1286
	%1287 = getelementptr [8 x i8], [8 x i8]* @"linux::str.219", i64 0, i64 0
	%1288 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1287, 1
	store {i64, i8*} %1288, {i64, i8*}* %tmp.215
	%1289 = load {i64, i8*}, {i64, i8*}* %tmp.215
	%1290 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 215
	store {i64, i8*} %1289, {i64, i8*}* %1290
	%1291 = bitcast void (i64)* @"srand48" to void ()*
	%1292 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 215
	store void ()* %1291, void ()** %1292
	%1293 = getelementptr [7 x i8], [7 x i8]* @"linux::str.220", i64 0, i64 0
	%1294 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1293, 1
	store {i64, i8*} %1294, {i64, i8*}* %tmp.216
	%1295 = load {i64, i8*}, {i64, i8*}* %tmp.216
	%1296 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 216
	store {i64, i8*} %1295, {i64, i8*}* %1296
	%1297 = bitcast i16* (i16*)* @"seed48" to void ()*
	%1298 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 216
	store void ()* %1297, void ()** %1298
	%1299 = getelementptr [8 x i8], [8 x i8]* @"linux::str.221", i64 0, i64 0
	%1300 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1299, 1
	store {i64, i8*} %1300, {i64, i8*}* %tmp.217
	%1301 = load {i64, i8*}, {i64, i8*}* %tmp.217
	%1302 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 217
	store {i64, i8*} %1301, {i64, i8*}* %1302
	%1303 = bitcast void (i16*)* @"lcong48" to void ()*
	%1304 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 217
	store void ()* %1303, void ()** %1304
	%1305 = getelementptr [10 x i8], [10 x i8]* @"linux::str.222", i64 0, i64 0
	%1306 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1305, 1
	store {i64, i8*} %1306, {i64, i8*}* %tmp.218
	%1307 = load {i64, i8*}, {i64, i8*}* %tmp.218
	%1308 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 218
	store {i64, i8*} %1307, {i64, i8*}* %1308
	%1309 = bitcast i32 (%"linux::s_drand48_data"*, double*)* @"drand48_r" to void ()*
	%1310 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 218
	store void ()* %1309, void ()** %1310
	%1311 = getelementptr [10 x i8], [10 x i8]* @"linux::str.223", i64 0, i64 0
	%1312 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1311, 1
	store {i64, i8*} %1312, {i64, i8*}* %tmp.219
	%1313 = load {i64, i8*}, {i64, i8*}* %tmp.219
	%1314 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 219
	store {i64, i8*} %1313, {i64, i8*}* %1314
	%1315 = bitcast i32 (i16*, %"linux::s_drand48_data"*, double*)* @"erand48_r" to void ()*
	%1316 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 219
	store void ()* %1315, void ()** %1316
	%1317 = getelementptr [10 x i8], [10 x i8]* @"linux::str.224", i64 0, i64 0
	%1318 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1317, 1
	store {i64, i8*} %1318, {i64, i8*}* %tmp.220
	%1319 = load {i64, i8*}, {i64, i8*}* %tmp.220
	%1320 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 220
	store {i64, i8*} %1319, {i64, i8*}* %1320
	%1321 = bitcast i32 (%"linux::s_drand48_data"*, i64*)* @"lrand48_r" to void ()*
	%1322 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 220
	store void ()* %1321, void ()** %1322
	%1323 = getelementptr [10 x i8], [10 x i8]* @"linux::str.225", i64 0, i64 0
	%1324 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1323, 1
	store {i64, i8*} %1324, {i64, i8*}* %tmp.221
	%1325 = load {i64, i8*}, {i64, i8*}* %tmp.221
	%1326 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 221
	store {i64, i8*} %1325, {i64, i8*}* %1326
	%1327 = bitcast i32 (i16*, %"linux::s_drand48_data"*, i64*)* @"nrand48_r" to void ()*
	%1328 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 221
	store void ()* %1327, void ()** %1328
	%1329 = getelementptr [10 x i8], [10 x i8]* @"linux::str.226", i64 0, i64 0
	%1330 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1329, 1
	store {i64, i8*} %1330, {i64, i8*}* %tmp.222
	%1331 = load {i64, i8*}, {i64, i8*}* %tmp.222
	%1332 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 222
	store {i64, i8*} %1331, {i64, i8*}* %1332
	%1333 = bitcast i32 (%"linux::s_drand48_data"*, i64*)* @"mrand48_r" to void ()*
	%1334 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 222
	store void ()* %1333, void ()** %1334
	%1335 = getelementptr [10 x i8], [10 x i8]* @"linux::str.227", i64 0, i64 0
	%1336 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1335, 1
	store {i64, i8*} %1336, {i64, i8*}* %tmp.223
	%1337 = load {i64, i8*}, {i64, i8*}* %tmp.223
	%1338 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 223
	store {i64, i8*} %1337, {i64, i8*}* %1338
	%1339 = bitcast i32 (i16*, %"linux::s_drand48_data"*, i64*)* @"jrand48_r" to void ()*
	%1340 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 223
	store void ()* %1339, void ()** %1340
	%1341 = getelementptr [10 x i8], [10 x i8]* @"linux::str.228", i64 0, i64 0
	%1342 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1341, 1
	store {i64, i8*} %1342, {i64, i8*}* %tmp.224
	%1343 = load {i64, i8*}, {i64, i8*}* %tmp.224
	%1344 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 224
	store {i64, i8*} %1343, {i64, i8*}* %1344
	%1345 = bitcast i32 (i64, %"linux::s_drand48_data"*)* @"srand48_r" to void ()*
	%1346 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 224
	store void ()* %1345, void ()** %1346
	%1347 = getelementptr [9 x i8], [9 x i8]* @"linux::str.229", i64 0, i64 0
	%1348 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1347, 1
	store {i64, i8*} %1348, {i64, i8*}* %tmp.225
	%1349 = load {i64, i8*}, {i64, i8*}* %tmp.225
	%1350 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 225
	store {i64, i8*} %1349, {i64, i8*}* %1350
	%1351 = bitcast i32 (i16*, %"linux::s_drand48_data"*)* @"seed48_r" to void ()*
	%1352 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 225
	store void ()* %1351, void ()** %1352
	%1353 = getelementptr [10 x i8], [10 x i8]* @"linux::str.230", i64 0, i64 0
	%1354 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1353, 1
	store {i64, i8*} %1354, {i64, i8*}* %tmp.226
	%1355 = load {i64, i8*}, {i64, i8*}* %tmp.226
	%1356 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 226
	store {i64, i8*} %1355, {i64, i8*}* %1356
	%1357 = bitcast i32 (i16*, %"linux::s_drand48_data"*)* @"lcong48_r" to void ()*
	%1358 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 226
	store void ()* %1357, void ()** %1358
	%1359 = getelementptr [13 x i8], [13 x i8]* @"linux::str.231", i64 0, i64 0
	%1360 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1359, 1
	store {i64, i8*} %1360, {i64, i8*}* %tmp.227
	%1361 = load {i64, i8*}, {i64, i8*}* %tmp.227
	%1362 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 227
	store {i64, i8*} %1361, {i64, i8*}* %1362
	%1363 = bitcast i8* (i8*, i64, i64)* @"reallocarray" to void ()*
	%1364 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 227
	store void ()* %1363, void ()** %1364
	%1365 = getelementptr [7 x i8], [7 x i8]* @"linux::str.232", i64 0, i64 0
	%1366 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1365, 1
	store {i64, i8*} %1366, {i64, i8*}* %tmp.228
	%1367 = load {i64, i8*}, {i64, i8*}* %tmp.228
	%1368 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 228
	store {i64, i8*} %1367, {i64, i8*}* %1368
	%1369 = bitcast i8* (i64)* @"valloc" to void ()*
	%1370 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 228
	store void ()* %1369, void ()** %1370
	%1371 = getelementptr [15 x i8], [15 x i8]* @"linux::str.233", i64 0, i64 0
	%1372 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %1371, 1
	store {i64, i8*} %1372, {i64, i8*}* %tmp.229
	%1373 = load {i64, i8*}, {i64, i8*}* %tmp.229
	%1374 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 229
	store {i64, i8*} %1373, {i64, i8*}* %1374
	%1375 = bitcast i32 (i8**, i64, i64)* @"posix_memalign" to void ()*
	%1376 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 229
	store void ()* %1375, void ()** %1376
	%1377 = getelementptr [14 x i8], [14 x i8]* @"linux::str.234", i64 0, i64 0
	%1378 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1377, 1
	store {i64, i8*} %1378, {i64, i8*}* %tmp.230
	%1379 = load {i64, i8*}, {i64, i8*}* %tmp.230
	%1380 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 230
	store {i64, i8*} %1379, {i64, i8*}* %1380
	%1381 = bitcast i8* (i64, i64)* @"aligned_alloc" to void ()*
	%1382 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 230
	store void ()* %1381, void ()** %1382
	%1383 = getelementptr [14 x i8], [14 x i8]* @"linux::str.235", i64 0, i64 0
	%1384 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1383, 1
	store {i64, i8*} %1384, {i64, i8*}* %tmp.231
	%1385 = load {i64, i8*}, {i64, i8*}* %tmp.231
	%1386 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 231
	store {i64, i8*} %1385, {i64, i8*}* %1386
	%1387 = bitcast i32 (void ()*)* @"at_quick_exit" to void ()*
	%1388 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 231
	store void ()* %1387, void ()** %1388
	%1389 = getelementptr [8 x i8], [8 x i8]* @"linux::str.236", i64 0, i64 0
	%1390 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1389, 1
	store {i64, i8*} %1390, {i64, i8*}* %tmp.232
	%1391 = load {i64, i8*}, {i64, i8*}* %tmp.232
	%1392 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 232
	store {i64, i8*} %1391, {i64, i8*}* %1392
	%1393 = bitcast i32 (void (i32, i8*)*, i8*)* @"on_exit" to void ()*
	%1394 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 232
	store void ()* %1393, void ()** %1394
	%1395 = getelementptr [11 x i8], [11 x i8]* @"linux::str.237", i64 0, i64 0
	%1396 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1395, 1
	store {i64, i8*} %1396, {i64, i8*}* %tmp.233
	%1397 = load {i64, i8*}, {i64, i8*}* %tmp.233
	%1398 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 233
	store {i64, i8*} %1397, {i64, i8*}* %1398
	%1399 = bitcast void (i32)* @"quick_exit" to void ()*
	%1400 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 233
	store void ()* %1399, void ()** %1400
	%1401 = getelementptr [6 x i8], [6 x i8]* @"linux::str.238", i64 0, i64 0
	%1402 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1401, 1
	store {i64, i8*} %1402, {i64, i8*}* %tmp.234
	%1403 = load {i64, i8*}, {i64, i8*}* %tmp.234
	%1404 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 234
	store {i64, i8*} %1403, {i64, i8*}* %1404
	%1405 = bitcast void (i32)* @"_Exit" to void ()*
	%1406 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 234
	store void ()* %1405, void ()** %1406
	%1407 = getelementptr [7 x i8], [7 x i8]* @"linux::str.239", i64 0, i64 0
	%1408 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1407, 1
	store {i64, i8*} %1408, {i64, i8*}* %tmp.235
	%1409 = load {i64, i8*}, {i64, i8*}* %tmp.235
	%1410 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 235
	store {i64, i8*} %1409, {i64, i8*}* %1410
	%1411 = bitcast i32 (i8*)* @"putenv" to void ()*
	%1412 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 235
	store void ()* %1411, void ()** %1412
	%1413 = getelementptr [7 x i8], [7 x i8]* @"linux::str.240", i64 0, i64 0
	%1414 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1413, 1
	store {i64, i8*} %1414, {i64, i8*}* %tmp.236
	%1415 = load {i64, i8*}, {i64, i8*}* %tmp.236
	%1416 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 236
	store {i64, i8*} %1415, {i64, i8*}* %1416
	%1417 = bitcast i32 (i8*, i8*, i32)* @"setenv" to void ()*
	%1418 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 236
	store void ()* %1417, void ()** %1418
	%1419 = getelementptr [9 x i8], [9 x i8]* @"linux::str.241", i64 0, i64 0
	%1420 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1419, 1
	store {i64, i8*} %1420, {i64, i8*}* %tmp.237
	%1421 = load {i64, i8*}, {i64, i8*}* %tmp.237
	%1422 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 237
	store {i64, i8*} %1421, {i64, i8*}* %1422
	%1423 = bitcast i32 (i8*)* @"unsetenv" to void ()*
	%1424 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 237
	store void ()* %1423, void ()** %1424
	%1425 = getelementptr [9 x i8], [9 x i8]* @"linux::str.242", i64 0, i64 0
	%1426 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1425, 1
	store {i64, i8*} %1426, {i64, i8*}* %tmp.238
	%1427 = load {i64, i8*}, {i64, i8*}* %tmp.238
	%1428 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 238
	store {i64, i8*} %1427, {i64, i8*}* %1428
	%1429 = bitcast i32 ()* @"clearenv" to void ()*
	%1430 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 238
	store void ()* %1429, void ()** %1430
	%1431 = getelementptr [8 x i8], [8 x i8]* @"linux::str.243", i64 0, i64 0
	%1432 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1431, 1
	store {i64, i8*} %1432, {i64, i8*}* %tmp.239
	%1433 = load {i64, i8*}, {i64, i8*}* %tmp.239
	%1434 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 239
	store {i64, i8*} %1433, {i64, i8*}* %1434
	%1435 = bitcast i32 (i8*)* @"mkstemp" to void ()*
	%1436 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 239
	store void ()* %1435, void ()** %1436
	%1437 = getelementptr [9 x i8], [9 x i8]* @"linux::str.244", i64 0, i64 0
	%1438 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1437, 1
	store {i64, i8*} %1438, {i64, i8*}* %tmp.240
	%1439 = load {i64, i8*}, {i64, i8*}* %tmp.240
	%1440 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 240
	store {i64, i8*} %1439, {i64, i8*}* %1440
	%1441 = bitcast i32 (i8*, i32)* @"mkstemps" to void ()*
	%1442 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 240
	store void ()* %1441, void ()** %1442
	%1443 = getelementptr [8 x i8], [8 x i8]* @"linux::str.245", i64 0, i64 0
	%1444 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1443, 1
	store {i64, i8*} %1444, {i64, i8*}* %tmp.241
	%1445 = load {i64, i8*}, {i64, i8*}* %tmp.241
	%1446 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 241
	store {i64, i8*} %1445, {i64, i8*}* %1446
	%1447 = bitcast i8* (i8*)* @"mkdtemp" to void ()*
	%1448 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 241
	store void ()* %1447, void ()** %1448
	%1449 = getelementptr [9 x i8], [9 x i8]* @"linux::str.246", i64 0, i64 0
	%1450 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %1449, 1
	store {i64, i8*} %1450, {i64, i8*}* %tmp.242
	%1451 = load {i64, i8*}, {i64, i8*}* %tmp.242
	%1452 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 242
	store {i64, i8*} %1451, {i64, i8*}* %1452
	%1453 = bitcast i8* (i8*, i8*)* @"realpath" to void ()*
	%1454 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 242
	store void ()* %1453, void ()** %1454
	%1455 = getelementptr [6 x i8], [6 x i8]* @"linux::str.247", i64 0, i64 0
	%1456 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1455, 1
	store {i64, i8*} %1456, {i64, i8*}* %tmp.243
	%1457 = load {i64, i8*}, {i64, i8*}* %tmp.243
	%1458 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 243
	store {i64, i8*} %1457, {i64, i8*}* %1458
	%1459 = bitcast i64 (i64)* @"llabs" to void ()*
	%1460 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 243
	store void ()* %1459, void ()** %1460
	%1461 = getelementptr [6 x i8], [6 x i8]* @"linux::str.248", i64 0, i64 0
	%1462 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1461, 1
	store {i64, i8*} %1462, {i64, i8*}* %tmp.244
	%1463 = load {i64, i8*}, {i64, i8*}* %tmp.244
	%1464 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 244
	store {i64, i8*} %1463, {i64, i8*}* %1464
	%1465 = bitcast %"linux::lldiv_t" (i64, i64)* @"lldiv" to void ()*
	%1466 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 244
	store void ()* %1465, void ()** %1466
	%1467 = getelementptr [5 x i8], [5 x i8]* @"linux::str.249", i64 0, i64 0
	%1468 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1467, 1
	store {i64, i8*} %1468, {i64, i8*}* %tmp.245
	%1469 = load {i64, i8*}, {i64, i8*}* %tmp.245
	%1470 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 245
	store {i64, i8*} %1469, {i64, i8*}* %1470
	%1471 = bitcast i8* (double, i32, i32*, i32*)* @"ecvt" to void ()*
	%1472 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 245
	store void ()* %1471, void ()** %1472
	%1473 = getelementptr [5 x i8], [5 x i8]* @"linux::str.250", i64 0, i64 0
	%1474 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1473, 1
	store {i64, i8*} %1474, {i64, i8*}* %tmp.246
	%1475 = load {i64, i8*}, {i64, i8*}* %tmp.246
	%1476 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 246
	store {i64, i8*} %1475, {i64, i8*}* %1476
	%1477 = bitcast i8* (double, i32, i32*, i32*)* @"fcvt" to void ()*
	%1478 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 246
	store void ()* %1477, void ()** %1478
	%1479 = getelementptr [5 x i8], [5 x i8]* @"linux::str.251", i64 0, i64 0
	%1480 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1479, 1
	store {i64, i8*} %1480, {i64, i8*}* %tmp.247
	%1481 = load {i64, i8*}, {i64, i8*}* %tmp.247
	%1482 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 247
	store {i64, i8*} %1481, {i64, i8*}* %1482
	%1483 = bitcast i8* (double, i32, i8*)* @"gcvt" to void ()*
	%1484 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 247
	store void ()* %1483, void ()** %1484
	%1485 = getelementptr [6 x i8], [6 x i8]* @"linux::str.252", i64 0, i64 0
	%1486 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1485, 1
	store {i64, i8*} %1486, {i64, i8*}* %tmp.248
	%1487 = load {i64, i8*}, {i64, i8*}* %tmp.248
	%1488 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 248
	store {i64, i8*} %1487, {i64, i8*}* %1488
	%1489 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @"qecvt" to void ()*
	%1490 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 248
	store void ()* %1489, void ()** %1490
	%1491 = getelementptr [6 x i8], [6 x i8]* @"linux::str.253", i64 0, i64 0
	%1492 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1491, 1
	store {i64, i8*} %1492, {i64, i8*}* %tmp.249
	%1493 = load {i64, i8*}, {i64, i8*}* %tmp.249
	%1494 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 249
	store {i64, i8*} %1493, {i64, i8*}* %1494
	%1495 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @"qfcvt" to void ()*
	%1496 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 249
	store void ()* %1495, void ()** %1496
	%1497 = getelementptr [6 x i8], [6 x i8]* @"linux::str.254", i64 0, i64 0
	%1498 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %1497, 1
	store {i64, i8*} %1498, {i64, i8*}* %tmp.250
	%1499 = load {i64, i8*}, {i64, i8*}* %tmp.250
	%1500 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 250
	store {i64, i8*} %1499, {i64, i8*}* %1500
	%1501 = bitcast i8* (x86_fp80, i32, i8*)* @"qgcvt" to void ()*
	%1502 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 250
	store void ()* %1501, void ()** %1502
	%1503 = getelementptr [7 x i8], [7 x i8]* @"linux::str.255", i64 0, i64 0
	%1504 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1503, 1
	store {i64, i8*} %1504, {i64, i8*}* %tmp.251
	%1505 = load {i64, i8*}, {i64, i8*}* %tmp.251
	%1506 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 251
	store {i64, i8*} %1505, {i64, i8*}* %1506
	%1507 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @"ecvt_r" to void ()*
	%1508 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 251
	store void ()* %1507, void ()** %1508
	%1509 = getelementptr [7 x i8], [7 x i8]* @"linux::str.256", i64 0, i64 0
	%1510 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1509, 1
	store {i64, i8*} %1510, {i64, i8*}* %tmp.252
	%1511 = load {i64, i8*}, {i64, i8*}* %tmp.252
	%1512 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 252
	store {i64, i8*} %1511, {i64, i8*}* %1512
	%1513 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @"fcvt_r" to void ()*
	%1514 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 252
	store void ()* %1513, void ()** %1514
	%1515 = getelementptr [8 x i8], [8 x i8]* @"linux::str.257", i64 0, i64 0
	%1516 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1515, 1
	store {i64, i8*} %1516, {i64, i8*}* %tmp.253
	%1517 = load {i64, i8*}, {i64, i8*}* %tmp.253
	%1518 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 253
	store {i64, i8*} %1517, {i64, i8*}* %1518
	%1519 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @"qecvt_r" to void ()*
	%1520 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 253
	store void ()* %1519, void ()** %1520
	%1521 = getelementptr [8 x i8], [8 x i8]* @"linux::str.258", i64 0, i64 0
	%1522 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1521, 1
	store {i64, i8*} %1522, {i64, i8*}* %tmp.254
	%1523 = load {i64, i8*}, {i64, i8*}* %tmp.254
	%1524 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 254
	store {i64, i8*} %1523, {i64, i8*}* %1524
	%1525 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @"qfcvt_r" to void ()*
	%1526 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 254
	store void ()* %1525, void ()** %1526
	%1527 = getelementptr [8 x i8], [8 x i8]* @"linux::str.259", i64 0, i64 0
	%1528 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %1527, 1
	store {i64, i8*} %1528, {i64, i8*}* %tmp.255
	%1529 = load {i64, i8*}, {i64, i8*}* %tmp.255
	%1530 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 255
	store {i64, i8*} %1529, {i64, i8*}* %1530
	%1531 = bitcast i32 (i8*)* @"rpmatch" to void ()*
	%1532 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 255
	store void ()* %1531, void ()** %1532
	%1533 = getelementptr [10 x i8], [10 x i8]* @"linux::str.260", i64 0, i64 0
	%1534 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1533, 1
	store {i64, i8*} %1534, {i64, i8*}* %tmp.256
	%1535 = load {i64, i8*}, {i64, i8*}* %tmp.256
	%1536 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 256
	store {i64, i8*} %1535, {i64, i8*}* %1536
	%1537 = bitcast i32 (i8**, i8**, i8**)* @"getsubopt" to void ()*
	%1538 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 256
	store void ()* %1537, void ()** %1538
	%1539 = getelementptr [11 x i8], [11 x i8]* @"linux::str.261", i64 0, i64 0
	%1540 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %1539, 1
	store {i64, i8*} %1540, {i64, i8*}* %tmp.257
	%1541 = load {i64, i8*}, {i64, i8*}* %tmp.257
	%1542 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i32 0, i32 257
	store {i64, i8*} %1541, {i64, i8*}* %1542
	%1543 = bitcast i32 (double*, i32)* @"getloadavg" to void ()*
	%1544 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 257
	store void ()* %1543, void ()** %1544
	%1545 = getelementptr [13 x i8], [13 x i8]* @"linux::str.262", i64 0, i64 0
	%1546 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %1545, 1
	store {i64, i8*} %1546, {i64, i8*}* %tmp.258
	%1547 = load {i64, i8*}, {i64, i8*}* %tmp.258
	%1548 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 0
	store {i64, i8*} %1547, {i64, i8*}* %1548
	%1549 = bitcast [65 x i8*]* @"_sys_siglist" to i8*
	%1550 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 0
	store i8* %1549, i8** %1550
	%1551 = getelementptr [12 x i8], [12 x i8]* @"linux::str.263", i64 0, i64 0
	%1552 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %1551, 1
	store {i64, i8*} %1552, {i64, i8*}* %tmp.259
	%1553 = load {i64, i8*}, {i64, i8*}* %tmp.259
	%1554 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 1
	store {i64, i8*} %1553, {i64, i8*}* %1554
	%1555 = bitcast [65 x i8*]* @"sys_siglist" to i8*
	%1556 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 1
	store i8* %1555, i8** %1556
	%1557 = getelementptr [10 x i8], [10 x i8]* @"linux::str.264", i64 0, i64 0
	%1558 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %1557, 1
	store {i64, i8*} %1558, {i64, i8*}* %tmp.260
	%1559 = load {i64, i8*}, {i64, i8*}* %tmp.260
	%1560 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 2
	store {i64, i8*} %1559, {i64, i8*}* %1560
	%1561 = bitcast i8*** @"__environ" to i8*
	%1562 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 2
	store i8* %1561, i8** %1562
	%1563 = getelementptr [7 x i8], [7 x i8]* @"linux::str.265", i64 0, i64 0
	%1564 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1563, 1
	store {i64, i8*} %1564, {i64, i8*}* %tmp.261
	%1565 = load {i64, i8*}, {i64, i8*}* %tmp.261
	%1566 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 3
	store {i64, i8*} %1565, {i64, i8*}* %1566
	%1567 = bitcast i8** @"optarg" to i8*
	%1568 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 3
	store i8* %1567, i8** %1568
	%1569 = getelementptr [7 x i8], [7 x i8]* @"linux::str.266", i64 0, i64 0
	%1570 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1569, 1
	store {i64, i8*} %1570, {i64, i8*}* %tmp.262
	%1571 = load {i64, i8*}, {i64, i8*}* %tmp.262
	%1572 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 4
	store {i64, i8*} %1571, {i64, i8*}* %1572
	%1573 = bitcast i32* @"optind" to i8*
	%1574 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 4
	store i8* %1573, i8** %1574
	%1575 = getelementptr [7 x i8], [7 x i8]* @"linux::str.267", i64 0, i64 0
	%1576 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1575, 1
	store {i64, i8*} %1576, {i64, i8*}* %tmp.263
	%1577 = load {i64, i8*}, {i64, i8*}* %tmp.263
	%1578 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 5
	store {i64, i8*} %1577, {i64, i8*}* %1578
	%1579 = bitcast i32* @"opterr" to i8*
	%1580 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 5
	store i8* %1579, i8** %1580
	%1581 = getelementptr [7 x i8], [7 x i8]* @"linux::str.268", i64 0, i64 0
	%1582 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1581, 1
	store {i64, i8*} %1582, {i64, i8*}* %tmp.264
	%1583 = load {i64, i8*}, {i64, i8*}* %tmp.264
	%1584 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i32 0, i32 6
	store {i64, i8*} %1583, {i64, i8*}* %1584
	%1585 = bitcast i32* @"optopt" to i8*
	%1586 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 6
	store i8* %1585, i8** %1586
	ret void
}
declare i32 @"getpagesize"()
@"linux::_SC_THREAD_STACK_MIN" = global i32 75
@"linux::_CS_POSIX_V6_ILP32_OFF32_LDFLAGS" = global i32 1117
@"linux::_PC_SYMLINK_MAX" = global i32 19
@"linux::_SC_FILE_SYSTEM" = global i32 148
@"linux::_SC_STREAMS" = global i32 174
@"linux::_SC_INT_MAX" = global i32 104
@"linux::_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS" = global i32 1135
@"linux::FPE_FLTSUB" = global i32 8
@"linux::_SC_SPIN_LOCKS" = global i32 154
@"linux::_SC_XBS5_LPBIG_OFFBIG" = global i32 128
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS" = global i32 1129
@"linux::_SC_PAGESIZE" = global i32 30
@"linux::_SC_2_VERSION" = global i32 46
@"linux::_SC_PII_INTERNET_STREAM" = global i32 61
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LIBS" = global i32 1130
@"linux::_SC_C_LANG_SUPPORT" = global i32 135
@"linux::_PC_ALLOC_SIZE_MIN" = global i32 18
@"linux::_SC_THREAD_ROBUST_PRIO_INHERIT" = global i32 247
@"linux::_SC_MONOTONIC_CLOCK" = global i32 149
@"linux::_SC_FILE_ATTRIBUTES" = global i32 146
@"linux::_SC_2_FORT_RUN" = global i32 50
@"linux::_SC_LEVEL2_CACHE_ASSOC" = global i32 192
@"linux::ILL_COPROC" = global i32 7
@"linux::_CS_XBS5_LP64_OFF64_LIBS" = global i32 1110
@"linux::SI_TIMER" = global i32 -2
@"linux::_SC_SEM_NSEMS_MAX" = global i32 32
@"linux::BUS_MCEERR_AO" = global i32 5
@"linux::_CS_POSIX_V6_LP64_OFF64_CFLAGS" = global i32 1124
@"linux::BUS_MCEERR_AR" = global i32 4
@"linux::_SC_TIMEOUTS" = global i32 164
@"linux::_PC_SOCK_MAXBUF" = global i32 12
@"linux::SEGV_ACCADI" = global i32 5
@"linux::_CS_POSIX_V7_ILP32_OFF32_LIBS" = global i32 1134
@"linux::_PC_LINK_MAX" = global i32 0
@"linux::_SC_MEMORY_PROTECTION" = global i32 19
@"linux::_SC_XBS5_ILP32_OFFBIG" = global i32 126
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS" = global i32 1121
@"linux::_SC_JOB_CONTROL" = global i32 7
@"linux::_SC_PII_OSI_M" = global i32 65
@"linux::_SC_FIFO" = global i32 144
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS" = global i32 1128
@"linux::_CS_V7_ENV" = global i32 1149
@"linux::_SC_SYNCHRONIZED_IO" = global i32 14
@"linux::__DEFS" = global [258 x void ()*] zeroinitializer
@"linux::_SC_2_C_BIND" = global i32 47
@"linux::_SC_SPORADIC_SERVER" = global i32 160
@"linux::_SC_SEMAPHORES" = global i32 21
@"linux::_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS" = global i32 1115
@"linux::_SC_LEVEL4_CACHE_SIZE" = global i32 197
@"linux::_SC_NPROCESSORS_CONF" = global i32 83
@"opterr" = external global i32 
@"linux::_SC_TRACE_SYS_MAX" = global i32 244
@"linux::SEGV_BNDERR" = global i32 3
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS" = global i32 1147
@"linux::__VAR_NAMES" = global [7 x {i64, i8*}] zeroinitializer
@"linux::SI_ASYNCIO" = global i32 -4
@"linux::_CS_LFS_CFLAGS" = global i32 1000
@"linux::POLL_HUP" = global i32 6
@"linux::_SC_SCHAR_MAX" = global i32 111
@"linux::_SC_LEVEL1_ICACHE_SIZE" = global i32 185
@"linux::_SC_SINGLE_PROCESS" = global i32 151
@"linux::ILL_BADIADDR" = global i32 9
@"linux::_SC_BARRIERS" = global i32 133
@"linux::_SC_2_PBS_ACCOUNTING" = global i32 169
@"linux::_CS_XBS5_ILP32_OFFBIG_LINTFLAGS" = global i32 1107
@"linux::_SC_ASYNCHRONOUS_IO" = global i32 12
@"linux::_SC_PII_XTI" = global i32 54
@"linux::_CS_LFS_LINTFLAGS" = global i32 1003
@"linux::_SC_TRACE_INHERIT" = global i32 183
@"linux::_SC_XBS5_LP64_OFF64" = global i32 127
@"linux::_CS_POSIX_V6_LP64_OFF64_LDFLAGS" = global i32 1125
@"linux::_SC_AVPHYS_PAGES" = global i32 86
@"linux::_SC_BC_DIM_MAX" = global i32 37
@"linux::_SC_BC_SCALE_MAX" = global i32 38
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS" = global i32 1139
@"linux::_SC_NETWORKING" = global i32 152
@"linux::_SC_SHARED_MEMORY_OBJECTS" = global i32 22
@"linux::_SC_V6_ILP32_OFF32" = global i32 176
@"linux::BUS_OBJERR" = global i32 3
@"linux::ILL_ILLOPC" = global i32 1
@"linux::ILL_ILLOPN" = global i32 2
@"linux::_SC_NGROUPS_MAX" = global i32 3
@"linux::_CS_V6_ENV" = global i32 1148
@"linux::_SC_NL_LANGMAX" = global i32 120
@"linux::SS_DISABLE" = global i32 2
@"linux::_SC_INT_MIN" = global i32 105
@"linux::_CS_XBS5_ILP32_OFF32_LIBS" = global i32 1102
@"linux::SI_MESGQ" = global i32 -3
@"linux::_SC_NPROCESSORS_ONLN" = global i32 84
@"linux::POLL_ERR" = global i32 4
@"linux::_SC_V6_LP64_OFF64" = global i32 178
@"linux::SEGV_ACCERR" = global i32 2
@"linux::_CS_POSIX_V6_LP64_OFF64_LIBS" = global i32 1126
@"linux::_PC_2_SYMLINKS" = global i32 20
@"linux::SEGV_PKUERR" = global i32 4
@"linux::_PC_PIPE_BUF" = global i32 5
@"linux::_SC_THREAD_PRIO_INHERIT" = global i32 80
@"linux::_SC_XOPEN_VERSION" = global i32 89
@"linux::_SC_LOGIN_NAME_MAX" = global i32 71
@"linux::_SC_LEVEL3_CACHE_LINESIZE" = global i32 196
@"linux::_SC_TRACE" = global i32 181
@"linux::_SC_MQ_PRIO_MAX" = global i32 28
@"linux::_SC_THREAD_PROCESS_SHARED" = global i32 82
@"linux::_SC_MB_LEN_MAX" = global i32 108
@"linux::_CS_POSIX_V6_ILP32_OFF32_CFLAGS" = global i32 1116
@"linux::_PC_SYNC_IO" = global i32 9
@"linux::_SC_PASS_MAX" = global i32 88
@"linux::_CS_XBS5_ILP32_OFFBIG_LIBS" = global i32 1106
@"linux::_SC_SS_REPL_MAX" = global i32 241
@"linux::_SC_EQUIV_CLASS_MAX" = global i32 41
@"linux::_SC_THREAD_PRIORITY_SCHEDULING" = global i32 79
@"linux::_SC_XOPEN_STREAMS" = global i32 246
@"linux::_PC_MAX_CANON" = global i32 1
@"linux::SI_ASYNCNL" = global i32 -60
@"linux::_SC_DEVICE_SPECIFIC" = global i32 141
@"linux::_SC_2_LOCALEDEF" = global i32 52
@"linux::FPE_FLTOVF" = global i32 4
@"linux::SIGEV_NONE" = global i32 1
@"_sys_siglist" = external global [65 x i8*] 
@"linux::_SC_LEVEL4_CACHE_ASSOC" = global i32 198
@"linux::_SC_PIPE" = global i32 145
@"linux::CLD_KILLED" = global i32 2
@"linux::_CS_V5_WIDTH_RESTRICTED_ENVS" = global i32 4
@"linux::_PC_CHOWN_RESTRICTED" = global i32 6
@"linux::_SC_NL_TEXTMAX" = global i32 124
@"linux::_SC_SELECT" = global i32 59
@"linux::_SC_2_SW_DEV" = global i32 51
@"linux::_SC_THREAD_DESTRUCTOR_ITERATIONS" = global i32 73
@"linux::_SC_LEVEL1_ICACHE_ASSOC" = global i32 186
@"linux::_SC_REGEXP" = global i32 155
@"linux::_CS_XBS5_ILP32_OFFBIG_CFLAGS" = global i32 1104
@"linux::_CS_LFS64_LDFLAGS" = global i32 1005
@"linux::_SC_AIO_MAX" = global i32 24
@"linux::_SC_V6_LPBIG_OFFBIG" = global i32 179
@"linux::_SC_ADVISORY_INFO" = global i32 132
@"linux::_SC_SHRT_MAX" = global i32 113
@"linux::_SC_2_PBS_LOCATE" = global i32 170
@"linux::_SC_MEMLOCK_RANGE" = global i32 18
@"linux::_CS_POSIX_V7_ILP32_OFF32_LDFLAGS" = global i32 1133
@"optarg" = external global i8* 
@"linux::_SC_PII_OSI_COTS" = global i32 63
@"linux::_SC_DEVICE_SPECIFIC_R" = global i32 142
@"linux::_SC_FILE_LOCKING" = global i32 147
@"linux::SIGEV_THREAD" = global i32 2
@"linux::__VARS" = global [7 x i8*] zeroinitializer
@"linux::_SC_SCHAR_MIN" = global i32 112
@"linux::_SC_CHAR_BIT" = global i32 101
@"linux::_CS_PATH" = global i32 0
@"linux::_SC_REGEX_VERSION" = global i32 156
@"linux::_SC_IPV6" = global i32 235
@"linux::_SC_V6_ILP32_OFFBIG" = global i32 177
@"linux::_SC_PII_INTERNET_DGRAM" = global i32 62
@"linux::_SC_XOPEN_XCU_VERSION" = global i32 90
@"linux::_SC_2_CHAR_TERM" = global i32 95
@"linux::_SC_TRACE_EVENT_NAME_MAX" = global i32 242
@"linux::_SC_ATEXIT_MAX" = global i32 87
@"linux::_SC_THREAD_THREADS_MAX" = global i32 76
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS" = global i32 1131
@"linux::_SC_XOPEN_REALTIME" = global i32 130
@"linux::_SC_LONG_BIT" = global i32 106
@"linux::_SC_2_FORT_DEV" = global i32 49
@"linux::_SC_GETGR_R_SIZE_MAX" = global i32 69
@"linux::_SC_SYSTEM_DATABASE" = global i32 162
@"linux::_SC_PRIORITY_SCHEDULING" = global i32 10
@"linux::_SC_LEVEL2_CACHE_SIZE" = global i32 191
@"linux::FPE_FLTINV" = global i32 7
@"linux::_PC_FILESIZEBITS" = global i32 13
@"linux::_SC_STREAM_MAX" = global i32 5
@"linux::_SC_NL_SETMAX" = global i32 123
@"optopt" = external global i32 
@"linux::_SC_TYPED_MEMORY_OBJECTS" = global i32 165
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS" = global i32 1144
@"linux::_SC_SIGNALS" = global i32 158
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS" = global i32 1123
@"linux::ILL_PRVOPC" = global i32 5
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LIBS" = global i32 1146
@"linux::_SC_XOPEN_ENH_I18N" = global i32 93
@"linux::_SC_CHAR_MAX" = global i32 102
@"linux::_CS_POSIX_V7_LP64_OFF64_LINTFLAGS" = global i32 1143
@"linux::_SC_MESSAGE_PASSING" = global i32 20
@"linux::_SC_SIGQUEUE_MAX" = global i32 34
@"linux::_PC_PRIO_IO" = global i32 11
@"linux::_SC_2_PBS_TRACK" = global i32 172
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LIBS" = global i32 1122
@"linux::_SC_CHILD_MAX" = global i32 1
@"linux::_CS_XBS5_ILP32_OFF32_LINTFLAGS" = global i32 1103
@"linux::CLD_CONTINUED" = global i32 6
@"linux::_SC_T_IOV_MAX" = global i32 66
@"linux::_SC_THREAD_ROBUST_PRIO_PROTECT" = global i32 248
@"linux::_CS_POSIX_V7_LP64_OFF64_CFLAGS" = global i32 1140
@"linux::_SC_SHELL" = global i32 157
@"linux::_SC_PHYS_PAGES" = global i32 85
@"linux::SI_QUEUE" = global i32 -1
@"linux::SS_ONSTACK" = global i32 1
@"linux::FPE_CONDTRAP" = global i32 15
@"linux::FPE_INTOVF" = global i32 2
@"linux::_SC_THREAD_SAFE_FUNCTIONS" = global i32 68
@"linux::_SC_SYSTEM_DATABASE_R" = global i32 163
@"linux::BUS_ADRERR" = global i32 2
@"linux::_SC_LEVEL1_ICACHE_LINESIZE" = global i32 187
@"linux::SI_DETHREAD" = global i32 -7
@"linux::SI_USER" = global i32 0
@"linux::_SC_TIMERS" = global i32 11
@"linux::_CS_XBS5_LP64_OFF64_LINTFLAGS" = global i32 1111
@"linux::_SC_MULTI_PROCESS" = global i32 150
@"linux::SIGEV_SIGNAL" = global i32 0
@"linux::_SC_DEVICE_IO" = global i32 140
@"linux::_SC_PII" = global i32 53
@"linux::_SC_USHRT_MAX" = global i32 118
@"linux::_CS_POSIX_V6_ILP32_OFF32_LIBS" = global i32 1118
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS" = global i32 1120
@"linux::_SC_AIO_PRIO_DELTA_MAX" = global i32 25
@"linux::_SC_AIO_LISTIO_MAX" = global i32 23
@"linux::_SC_CLK_TCK" = global i32 2
@"linux::_CS_GNU_LIBC_VERSION" = global i32 2
@"linux::_PC_REC_XFER_ALIGN" = global i32 17
@"linux::_SC_CHARCLASS_NAME_MAX" = global i32 45
@"linux::_SC_C_LANG_SUPPORT_R" = global i32 136
@"linux::_SC_PII_OSI_CLTS" = global i32 64
@"linux::POLL_PRI" = global i32 5
@"linux::SEGV_ADIDERR" = global i32 6
@"linux::SEGV_MAPERR" = global i32 1
@"linux::BUS_ADRALN" = global i32 1
@"linux::_SC_THREAD_ATTR_STACKADDR" = global i32 77
@"linux::CLD_DUMPED" = global i32 3
@"linux::_SC_SHRT_MIN" = global i32 114
@"linux::_SC_NL_MSGMAX" = global i32 121
@"linux::_PC_NO_TRUNC" = global i32 7
@"linux::_PC_NAME_MAX" = global i32 3
@"linux::_SC_THREAD_SPORADIC_SERVER" = global i32 161
@"linux::_SC_BASE" = global i32 134
@"linux::_SC_V7_LP64_OFF64" = global i32 239
@"linux::_SC_THREAD_ATTR_STACKSIZE" = global i32 78
@"linux::FPE_FLTDIV" = global i32 3
@"linux::_SC_READER_WRITER_LOCKS" = global i32 153
@"linux::_SC_THREAD_CPUTIME" = global i32 139
@"linux::_SC_TRACE_USER_EVENT_MAX" = global i32 245
@"linux::FPE_FLTRES" = global i32 6
@"linux::_SC_DELAYTIMER_MAX" = global i32 26
@"linux::str.0" = private global [6 x i8] c"P_PID\00"
@"linux::str.1" = private global [7 x i8] c"P_PGID\00"
@"linux::ILL_BADSTK" = global i32 8
@"linux::str.2" = private global [6 x i8] c"P_ALL\00"
@"linux::str.200" = private global [5 x i8] c"l64a\00"
@"linux::_SC_LEVEL1_DCACHE_ASSOC" = global i32 189
@"linux::str.3" = private global [10 x i8] c"INVALID!!\00"
@"linux::str.10" = private global [9 x i8] c"fchmodat\00"
@"linux::str.201" = private global [5 x i8] c"a64l\00"
@"linux::str.4" = private global [5 x i8] c"stat\00"
@"linux::str.11" = private global [6 x i8] c"umask\00"
@"linux::str.202" = private global [7 x i8] c"select\00"
@"linux::_SC_USER_GROUPS" = global i32 166
@"linux::str.5" = private global [6 x i8] c"fstat\00"
@"linux::str.12" = private global [6 x i8] c"mkdir\00"
@"linux::str.203" = private global [8 x i8] c"pselect\00"
@"linux::_PC_VDISABLE" = global i32 8
@"linux::str.6" = private global [8 x i8] c"fstatat\00"
@"linux::str.13" = private global [8 x i8] c"mkdirat\00"
@"linux::str.204" = private global [7 x i8] c"random\00"
@"linux::_SC_UIO_MAXIOV" = global i32 60
@"linux::str.7" = private global [6 x i8] c"lstat\00"
@"linux::str.14" = private global [6 x i8] c"mknod\00"
@"linux::str.205" = private global [8 x i8] c"srandom\00"
@"linux::str.8" = private global [6 x i8] c"chmod\00"
@"linux::str.15" = private global [8 x i8] c"mknodat\00"
@"linux::str.206" = private global [10 x i8] c"initstate\00"
@"linux::_CS_V6_WIDTH_RESTRICTED_ENVS" = global i32 1
@"linux::str.9" = private global [7 x i8] c"fchmod\00"
@"linux::str.16" = private global [7 x i8] c"mkfifo\00"
@"linux::str.207" = private global [9 x i8] c"setstate\00"
@"linux::str.17" = private global [9 x i8] c"mkfifoat\00"
@"linux::str.208" = private global [9 x i8] c"random_r\00"
@"linux::str.18" = private global [10 x i8] c"utimensat\00"
@"linux::str.209" = private global [10 x i8] c"srandom_r\00"
@"linux::str.19" = private global [9 x i8] c"futimens\00"
@"linux::_SC_SYMLOOP_MAX" = global i32 173
@"linux::_SC_TRACE_EVENT_FILTER" = global i32 182
@"linux::_CS_GNU_LIBPTHREAD_VERSION" = global i32 3
@"linux::_SC_PRIORITIZED_IO" = global i32 13
@"linux::_SC_CLOCK_SELECTION" = global i32 137
@"linux::_SC_XOPEN_LEGACY" = global i32 129
@"linux::str.210" = private global [12 x i8] c"initstate_r\00"
@"linux::str.20" = private global [9 x i8] c"__fxstat\00"
@"linux::str.211" = private global [11 x i8] c"setstate_r\00"
@"linux::str.21" = private global [8 x i8] c"__xstat\00"
@"linux::str.212" = private global [7 x i8] c"rand_r\00"
@"linux::str.22" = private global [9 x i8] c"__lxstat\00"
@"linux::str.213" = private global [8 x i8] c"drand48\00"
@"linux::str.23" = private global [11 x i8] c"__fxstatat\00"
@"linux::str.214" = private global [8 x i8] c"erand48\00"
@"linux::str.24" = private global [9 x i8] c"__xmknod\00"
@"linux::str.215" = private global [8 x i8] c"lrand48\00"
@"linux::str.25" = private global [11 x i8] c"__xmknodat\00"
@"linux::str.216" = private global [8 x i8] c"nrand48\00"
@"linux::str.26" = private global [6 x i8] c"ioctl\00"
@"linux::str.217" = private global [8 x i8] c"mrand48\00"
@"linux::_PC_REC_MIN_XFER_SIZE" = global i32 16
@"linux::str.27" = private global [14 x i8] c"__sysv_signal\00"
@"linux::str.218" = private global [8 x i8] c"jrand48\00"
@"linux::str.28" = private global [7 x i8] c"signal\00"
@"linux::str.219" = private global [8 x i8] c"srand48\00"
@"linux::str.29" = private global [5 x i8] c"kill\00"
@"linux::_SC_2_C_VERSION" = global i32 96
@"linux::_SC_UCHAR_MAX" = global i32 115
@"linux::_SC_RE_DUP_MAX" = global i32 44
@"linux::_SC_RTSIG_MAX" = global i32 31
@"linux::SI_SIGIO" = global i32 -5
@"linux::_SC_2_PBS_MESSAGE" = global i32 171
@"linux::_PC_ASYNC_IO" = global i32 10
@"linux::_SC_LEVEL3_CACHE_ASSOC" = global i32 195
@"linux::str.220" = private global [7 x i8] c"seed48\00"
@"linux::_SC_TRACE_NAME_MAX" = global i32 243
@"linux::str.30" = private global [7 x i8] c"killpg\00"
@"linux::str.100" = private global [6 x i8] c"execv\00"
@"linux::str.221" = private global [8 x i8] c"lcong48\00"
@"linux::str.31" = private global [6 x i8] c"raise\00"
@"linux::str.101" = private global [7 x i8] c"execle\00"
@"linux::str.222" = private global [10 x i8] c"drand48_r\00"
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS" = global i32 1145
@"linux::str.32" = private global [8 x i8] c"ssignal\00"
@"linux::str.102" = private global [6 x i8] c"execl\00"
@"linux::str.223" = private global [10 x i8] c"erand48_r\00"
@"linux::SEGV_ADIPERR" = global i32 7
@"linux::str.33" = private global [8 x i8] c"gsignal\00"
@"linux::str.103" = private global [7 x i8] c"execvp\00"
@"linux::str.224" = private global [10 x i8] c"lrand48_r\00"
@"linux::str.34" = private global [8 x i8] c"psignal\00"
@"linux::str.104" = private global [7 x i8] c"execlp\00"
@"linux::str.225" = private global [10 x i8] c"nrand48_r\00"
@"linux::_SC_THREADS" = global i32 67
@"linux::str.35" = private global [9 x i8] c"psiginfo\00"
@"linux::str.105" = private global [5 x i8] c"nice\00"
@"linux::str.226" = private global [10 x i8] c"mrand48_r\00"
@"linux::str.36" = private global [9 x i8] c"sigblock\00"
@"linux::str.106" = private global [6 x i8] c"_exit\00"
@"linux::str.227" = private global [10 x i8] c"jrand48_r\00"
@"linux::FPE_FLTUND" = global i32 5
@"linux::str.37" = private global [11 x i8] c"sigsetmask\00"
@"linux::str.107" = private global [9 x i8] c"pathconf\00"
@"linux::str.228" = private global [10 x i8] c"srand48_r\00"
@"linux::str.38" = private global [12 x i8] c"sigemptyset\00"
@"linux::str.108" = private global [10 x i8] c"fpathconf\00"
@"linux::str.229" = private global [9 x i8] c"seed48_r\00"
@"linux::str.39" = private global [11 x i8] c"sigfillset\00"
@"linux::str.109" = private global [8 x i8] c"sysconf\00"
@"linux::FPE_FLTUNK" = global i32 14
@"linux::SI_TKILL" = global i32 -6
@"linux::_SC_BC_BASE_MAX" = global i32 36
@"linux::_SC_PII_OSI" = global i32 57
@"linux::_SC_ULONG_MAX" = global i32 117
@"linux::_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS" = global i32 1119
@"linux::_SC_LEVEL1_DCACHE_LINESIZE" = global i32 190
@"linux::_SC_XOPEN_UNIX" = global i32 91
@"linux::_SC_FD_MGMT" = global i32 143
@"linux::str.230" = private global [10 x i8] c"lcong48_r\00"
@"linux::_SC_CHAR_MIN" = global i32 103
@"linux::str.40" = private global [10 x i8] c"sigaddset\00"
@"linux::str.110" = private global [8 x i8] c"confstr\00"
@"linux::str.231" = private global [13 x i8] c"reallocarray\00"
@"linux::str.41" = private global [10 x i8] c"sigdelset\00"
@"linux::str.111" = private global [7 x i8] c"getpid\00"
@"linux::str.232" = private global [7 x i8] c"valloc\00"
@"linux::str.42" = private global [12 x i8] c"sigismember\00"
@"linux::str.112" = private global [8 x i8] c"getppid\00"
@"linux::str.233" = private global [15 x i8] c"posix_memalign\00"
@"linux::ILL_ILLADR" = global i32 3
@"linux::str.43" = private global [12 x i8] c"sigprocmask\00"
@"linux::str.113" = private global [8 x i8] c"getpgrp\00"
@"linux::str.234" = private global [14 x i8] c"aligned_alloc\00"
@"linux::_SC_EXPR_NEST_MAX" = global i32 42
@"linux::str.44" = private global [11 x i8] c"sigsuspend\00"
@"linux::str.114" = private global [10 x i8] c"__getpgid\00"
@"linux::str.235" = private global [14 x i8] c"at_quick_exit\00"
@"linux::str.45" = private global [10 x i8] c"sigaction\00"
@"linux::str.115" = private global [8 x i8] c"getpgid\00"
@"linux::str.236" = private global [8 x i8] c"on_exit\00"
@"linux::_SC_OPEN_MAX" = global i32 4
@"linux::str.46" = private global [11 x i8] c"sigpending\00"
@"linux::str.116" = private global [8 x i8] c"setpgid\00"
@"linux::str.237" = private global [11 x i8] c"quick_exit\00"
@"linux::_SC_LEVEL1_DCACHE_SIZE" = global i32 188
@"linux::str.47" = private global [8 x i8] c"sigwait\00"
@"linux::str.117" = private global [8 x i8] c"setpgrp\00"
@"linux::str.238" = private global [6 x i8] c"_Exit\00"
@"linux::str.48" = private global [12 x i8] c"sigwaitinfo\00"
@"linux::str.118" = private global [7 x i8] c"setsid\00"
@"linux::str.239" = private global [7 x i8] c"putenv\00"
@"linux::_SC_2_C_DEV" = global i32 48
@"linux::str.49" = private global [13 x i8] c"sigtimedwait\00"
@"linux::str.119" = private global [7 x i8] c"getsid\00"
@"linux::_SC_THREAD_PRIO_PROTECT" = global i32 81
@"linux::_CS_LFS64_LIBS" = global i32 1006
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS" = global i32 1137
@"linux::_CS_XBS5_LPBIG_OFFBIG_LDFLAGS" = global i32 1113
@"linux::POLL_OUT" = global i32 2
@"linux::CLD_STOPPED" = global i32 5
@"linux::_SC_ARG_MAX" = global i32 0
@"linux::_SC_PII_SOCKET" = global i32 55
@"linux::_CS_LFS64_LINTFLAGS" = global i32 1007
@"linux::__DEF_NAMES" = global [258 x {i64, i8*}] zeroinitializer
@"linux::_PC_PATH_MAX" = global i32 4
@"linux::_SC_LEVEL4_CACHE_LINESIZE" = global i32 199
@"linux::str.240" = private global [7 x i8] c"setenv\00"
@"linux::str.50" = private global [9 x i8] c"sigqueue\00"
@"linux::str.120" = private global [7 x i8] c"getuid\00"
@"linux::str.241" = private global [9 x i8] c"unsetenv\00"
@"linux::str.51" = private global [13 x i8] c"siginterrupt\00"
@"linux::str.121" = private global [8 x i8] c"geteuid\00"
@"linux::str.242" = private global [9 x i8] c"clearenv\00"
@"linux::str.52" = private global [12 x i8] c"sigaltstack\00"
@"linux::str.122" = private global [7 x i8] c"getgid\00"
@"linux::str.243" = private global [8 x i8] c"mkstemp\00"
@"linux::str.53" = private global [16 x i8] c"pthread_sigmask\00"
@"linux::str.123" = private global [8 x i8] c"getegid\00"
@"linux::str.244" = private global [9 x i8] c"mkstemps\00"
@"linux::str.54" = private global [13 x i8] c"pthread_kill\00"
@"linux::str.124" = private global [10 x i8] c"getgroups\00"
@"linux::str.245" = private global [8 x i8] c"mkdtemp\00"
@"linux::str.55" = private global [24 x i8] c"__libc_current_sigrtmin\00"
@"linux::str.125" = private global [7 x i8] c"setuid\00"
@"linux::str.246" = private global [9 x i8] c"realpath\00"
@"linux::str.56" = private global [24 x i8] c"__libc_current_sigrtmax\00"
@"linux::str.126" = private global [9 x i8] c"setreuid\00"
@"linux::str.247" = private global [6 x i8] c"llabs\00"
@"linux::str.57" = private global [5 x i8] c"wait\00"
@"linux::str.127" = private global [8 x i8] c"seteuid\00"
@"linux::str.248" = private global [6 x i8] c"lldiv\00"
@"linux::str.58" = private global [8 x i8] c"waitpid\00"
@"linux::str.128" = private global [7 x i8] c"setgid\00"
@"linux::str.249" = private global [5 x i8] c"ecvt\00"
@"linux::CLD_EXITED" = global i32 1
@"linux::str.59" = private global [7 x i8] c"waitid\00"
@"linux::str.129" = private global [9 x i8] c"setregid\00"
@"linux::_SC_XOPEN_REALTIME_THREADS" = global i32 131
@"optind" = external global i32 
@"linux::_SC_V7_LPBIG_OFFBIG" = global i32 240
@"sys_siglist" = external global [65 x i8*] 
@"linux::_SC_2_PBS" = global i32 168
@"linux::_CS_POSIX_V7_LP64_OFF64_LIBS" = global i32 1142
@"linux::_SC_XOPEN_XPG2" = global i32 98
@"linux::_SC_XOPEN_XPG3" = global i32 99
@"linux::_SC_XOPEN_XPG4" = global i32 100
@"linux::str.250" = private global [5 x i8] c"fcvt\00"
@"linux::str.60" = private global [6 x i8] c"wait3\00"
@"linux::str.130" = private global [8 x i8] c"setegid\00"
@"linux::str.251" = private global [5 x i8] c"gcvt\00"
@"linux::_CS_POSIX_V7_LP64_OFF64_LDFLAGS" = global i32 1141
@"linux::str.61" = private global [6 x i8] c"wait4\00"
@"linux::str.131" = private global [5 x i8] c"fork\00"
@"linux::str.252" = private global [6 x i8] c"qecvt\00"
@"linux::str.62" = private global [5 x i8] c"mmap\00"
@"linux::str.132" = private global [6 x i8] c"vfork\00"
@"linux::str.253" = private global [6 x i8] c"qfcvt\00"
@"linux::str.63" = private global [7 x i8] c"munmap\00"
@"linux::str.133" = private global [8 x i8] c"ttyname\00"
@"linux::str.254" = private global [6 x i8] c"qgcvt\00"
@"linux::str.64" = private global [9 x i8] c"mprotect\00"
@"linux::str.134" = private global [10 x i8] c"ttyname_r\00"
@"linux::str.255" = private global [7 x i8] c"ecvt_r\00"
@"linux::_CS_LFS64_CFLAGS" = global i32 1004
@"linux::str.65" = private global [6 x i8] c"msync\00"
@"linux::str.135" = private global [7 x i8] c"isatty\00"
@"linux::str.256" = private global [7 x i8] c"fcvt_r\00"
@"linux::_SC_COLL_WEIGHTS_MAX" = global i32 40
@"linux::_CS_XBS5_ILP32_OFFBIG_LDFLAGS" = global i32 1105
@"linux::str.66" = private global [8 x i8] c"madvise\00"
@"linux::str.136" = private global [8 x i8] c"ttyslot\00"
@"linux::str.257" = private global [8 x i8] c"qecvt_r\00"
@"linux::str.67" = private global [14 x i8] c"posix_madvise\00"
@"linux::str.137" = private global [5 x i8] c"link\00"
@"linux::str.258" = private global [8 x i8] c"qfcvt_r\00"
@"linux::str.68" = private global [6 x i8] c"mlock\00"
@"linux::str.138" = private global [7 x i8] c"linkat\00"
@"linux::str.259" = private global [8 x i8] c"rpmatch\00"
@"linux::str.69" = private global [8 x i8] c"munlock\00"
@"linux::str.139" = private global [8 x i8] c"symlink\00"
@"linux::POLL_MSG" = global i32 3
@"__environ" = external global i8** 
@"linux::_SC_LEVEL3_CACHE_SIZE" = global i32 194
@"linux::_SC_GETPW_R_SIZE_MAX" = global i32 70
@"linux::_SC_XOPEN_CRYPT" = global i32 92
@"linux::_CS_XBS5_ILP32_OFF32_LDFLAGS" = global i32 1101
@"linux::_PC_REC_MAX_XFER_SIZE" = global i32 15
@"linux::str.260" = private global [10 x i8] c"getsubopt\00"
@"linux::_SC_SAVED_IDS" = global i32 8
@"linux::str.70" = private global [9 x i8] c"mlockall\00"
@"linux::str.140" = private global [9 x i8] c"readlink\00"
@"linux::str.261" = private global [11 x i8] c"getloadavg\00"
@"linux::str.71" = private global [11 x i8] c"munlockall\00"
@"linux::str.141" = private global [10 x i8] c"symlinkat\00"
@"linux::str.262" = private global [13 x i8] c"_sys_siglist\00"
@"linux::_SC_V7_ILP32_OFFBIG" = global i32 238
@"linux::str.72" = private global [8 x i8] c"mincore\00"
@"linux::str.142" = private global [11 x i8] c"readlinkat\00"
@"linux::str.263" = private global [12 x i8] c"sys_siglist\00"
@"linux::_SC_LEVEL2_CACHE_LINESIZE" = global i32 193
@"linux::str.73" = private global [9 x i8] c"shm_open\00"
@"linux::str.143" = private global [7 x i8] c"unlink\00"
@"linux::str.264" = private global [10 x i8] c"__environ\00"
@"linux::str.74" = private global [11 x i8] c"shm_unlink\00"
@"linux::str.144" = private global [9 x i8] c"unlinkat\00"
@"linux::str.265" = private global [7 x i8] c"optarg\00"
@"linux::str.75" = private global [7 x i8] c"access\00"
@"linux::str.145" = private global [6 x i8] c"rmdir\00"
@"linux::str.266" = private global [7 x i8] c"optind\00"
@"linux::str.76" = private global [10 x i8] c"faccessat\00"
@"linux::str.146" = private global [10 x i8] c"tcgetpgrp\00"
@"linux::str.267" = private global [7 x i8] c"opterr\00"
@"linux::_SC_HOST_NAME_MAX" = global i32 180
@"linux::str.77" = private global [6 x i8] c"lseek\00"
@"linux::str.147" = private global [10 x i8] c"tcsetpgrp\00"
@"linux::str.268" = private global [7 x i8] c"optopt\00"
@"linux::str.78" = private global [6 x i8] c"close\00"
@"linux::str.148" = private global [9 x i8] c"getlogin\00"
@"linux::str.79" = private global [5 x i8] c"read\00"
@"linux::str.149" = private global [11 x i8] c"getlogin_r\00"
@"linux::_SC_THREAD_KEYS_MAX" = global i32 74
@"linux::FPE_INTDIV" = global i32 1
@"linux::_PC_MAX_INPUT" = global i32 2
@"linux::_SC_SEM_VALUE_MAX" = global i32 33
@"linux::_SC_WORD_BIT" = global i32 107
@"linux::_SC_NL_NMAX" = global i32 122
@"linux::_SC_V7_ILP32_OFF32" = global i32 237
@"linux::_CS_POSIX_V6_LP64_OFF64_LINTFLAGS" = global i32 1127
@"linux::_SC_POLL" = global i32 58
@"linux::_SC_SPAWN" = global i32 159
@"linux::str.80" = private global [6 x i8] c"write\00"
@"linux::str.150" = private global [7 x i8] c"getopt\00"
@"linux::_CS_XBS5_LPBIG_OFFBIG_LIBS" = global i32 1114
@"linux::str.81" = private global [6 x i8] c"pread\00"
@"linux::str.151" = private global [12 x i8] c"gethostname\00"
@"linux::str.82" = private global [7 x i8] c"pwrite\00"
@"linux::str.152" = private global [12 x i8] c"sethostname\00"
@"linux::str.83" = private global [5 x i8] c"pipe\00"
@"linux::str.153" = private global [10 x i8] c"sethostid\00"
@"linux::str.84" = private global [6 x i8] c"alarm\00"
@"linux::str.154" = private global [14 x i8] c"getdomainname\00"
@"linux::str.85" = private global [6 x i8] c"sleep\00"
@"linux::str.155" = private global [14 x i8] c"setdomainname\00"
@"linux::str.86" = private global [7 x i8] c"ualarm\00"
@"linux::str.156" = private global [8 x i8] c"vhangup\00"
@"linux::str.87" = private global [7 x i8] c"usleep\00"
@"linux::str.157" = private global [7 x i8] c"profil\00"
@"linux::str.88" = private global [6 x i8] c"pause\00"
@"linux::str.158" = private global [5 x i8] c"acct\00"
@"linux::str.89" = private global [6 x i8] c"chown\00"
@"linux::str.159" = private global [13 x i8] c"getusershell\00"
@"linux::P_PGID" = global i32 2
@"linux::_SC_NL_ARGMAX" = global i32 119
@"linux::_CS_XBS5_LP64_OFF64_CFLAGS" = global i32 1108
@"linux::_SC_2_UPE" = global i32 97
@"linux::str.90" = private global [7 x i8] c"fchown\00"
@"linux::str.160" = private global [13 x i8] c"endusershell\00"
@"linux::str.91" = private global [7 x i8] c"lchown\00"
@"linux::str.161" = private global [13 x i8] c"setusershell\00"
@"linux::_PC_REC_INCR_XFER_SIZE" = global i32 14
@"linux::str.92" = private global [9 x i8] c"fchownat\00"
@"linux::str.162" = private global [7 x i8] c"daemon\00"
@"linux::str.93" = private global [6 x i8] c"chdir\00"
@"linux::str.163" = private global [7 x i8] c"chroot\00"
@"linux::str.94" = private global [7 x i8] c"fchdir\00"
@"linux::str.164" = private global [8 x i8] c"getpass\00"
@"linux::str.95" = private global [7 x i8] c"getcwd\00"
@"linux::str.165" = private global [6 x i8] c"fsync\00"
@"linux::str.96" = private global [4 x i8] c"dup\00"
@"linux::str.166" = private global [10 x i8] c"gethostid\00"
@"linux::str.97" = private global [5 x i8] c"dup2\00"
@"linux::str.167" = private global [5 x i8] c"sync\00"
@"linux::str.98" = private global [7 x i8] c"execve\00"
@"linux::str.168" = private global [12 x i8] c"getpagesize\00"
@"linux::str.99" = private global [8 x i8] c"fexecve\00"
@"linux::str.169" = private global [14 x i8] c"getdtablesize\00"
@"linux::_SC_TRACE_LOG" = global i32 184
@"linux::_CS_POSIX_V7_ILP32_OFF32_CFLAGS" = global i32 1132
@"linux::_SC_LINE_MAX" = global i32 43
@"linux::_CS_XBS5_LP64_OFF64_LDFLAGS" = global i32 1109
@"linux::_SC_CPUTIME" = global i32 138
@"linux::SI_KERNEL" = global i32 128
@"linux::_CS_XBS5_LPBIG_OFFBIG_CFLAGS" = global i32 1112
@"linux::_SC_USER_GROUPS_R" = global i32 167
@"linux::str.170" = private global [9 x i8] c"truncate\00"
@"linux::str.171" = private global [10 x i8] c"ftruncate\00"
@"linux::str.172" = private global [4 x i8] c"brk\00"
@"linux::_SC_MEMLOCK" = global i32 17
@"linux::str.173" = private global [5 x i8] c"sbrk\00"
@"linux::str.174" = private global [8 x i8] c"syscall\00"
@"linux::_SC_XBS5_ILP32_OFF32" = global i32 125
@"linux::str.175" = private global [6 x i8] c"lockf\00"
@"linux::SIGEV_THREAD_ID" = global i32 4
@"linux::str.176" = private global [10 x i8] c"fdatasync\00"
@"linux::str.177" = private global [6 x i8] c"crypt\00"
@"linux::str.178" = private global [11 x i8] c"getentropy\00"
@"linux::str.179" = private global [12 x i8] c"cfgetospeed\00"
@"linux::_CS_LFS_LDFLAGS" = global i32 1001
@"linux::_SC_TIMER_MAX" = global i32 35
@"linux::_SC_2_PBS_CHECKPOINT" = global i32 175
@"linux::POLL_IN" = global i32 1
@"linux::_SC_IOV_MAX" = global i32 60
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS" = global i32 1136
@"linux::str.180" = private global [12 x i8] c"cfgetispeed\00"
@"linux::str.181" = private global [12 x i8] c"cfsetospeed\00"
@"linux::str.182" = private global [12 x i8] c"cfsetispeed\00"
@"linux::str.183" = private global [11 x i8] c"cfsetspeed\00"
@"linux::str.184" = private global [10 x i8] c"tcgetattr\00"
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LIBS" = global i32 1138
@"linux::str.185" = private global [10 x i8] c"tcsetattr\00"
@"linux::str.186" = private global [10 x i8] c"cfmakeraw\00"
@"linux::str.187" = private global [12 x i8] c"tcsendbreak\00"
@"linux::str.188" = private global [8 x i8] c"tcdrain\00"
@"linux::str.189" = private global [8 x i8] c"tcflush\00"
@"linux::_SC_RAW_SOCKETS" = global i32 236
@"linux::_SC_MQ_OPEN_MAX" = global i32 27
@"linux::_SC_PII_INTERNET" = global i32 56
@"linux::P_PID" = global i32 1
@"linux::_CS_V7_WIDTH_RESTRICTED_ENVS" = global i32 5
@"linux::_SC_TTY_NAME_MAX" = global i32 72
@"linux::_SC_BC_STRING_MAX" = global i32 39
@"linux::_SC_SSIZE_MAX" = global i32 110
@"linux::str.190" = private global [7 x i8] c"tcflow\00"
@"linux::str.191" = private global [9 x i8] c"tcgetsid\00"
@"linux::str.192" = private global [23 x i8] c"__ctype_get_mb_cur_max\00"
@"linux::str.193" = private global [6 x i8] c"atoll\00"
@"linux::str.194" = private global [7 x i8] c"strtof\00"
@"linux::ILL_PRVREG" = global i32 6
@"linux::str.195" = private global [8 x i8] c"strtold\00"
@"linux::_SC_FSYNC" = global i32 15
@"linux::str.196" = private global [7 x i8] c"strtoq\00"
@"linux::P_ALL" = global i32 0
@"linux::str.197" = private global [8 x i8] c"strtouq\00"
@"linux::str.198" = private global [8 x i8] c"strtoll\00"
@"linux::str.199" = private global [9 x i8] c"strtoull\00"
@"linux::_SC_MAPPED_FILES" = global i32 16
@"linux::ILL_ILLTRP" = global i32 4
@"linux::CLD_TRAPPED" = global i32 4
@"linux::_CS_LFS_LIBS" = global i32 1002
@"linux::_SC_TZNAME_MAX" = global i32 6
@"linux::_SC_REALTIME_SIGNALS" = global i32 9
@"linux::_SC_NZERO" = global i32 109
@"linux::_SC_VERSION" = global i32 29
@"linux::_SC_UINT_MAX" = global i32 116
@"linux::_SC_XOPEN_SHM" = global i32 94
@"linux::_CS_XBS5_ILP32_OFF32_CFLAGS" = global i32 1100
