; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/c/Users/Vic/Programming/Princess/bin//../include/cstd.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"cstd::ldiv_t" = type {i64, i64}
%"cstd::sigevent_t" = type {%"cstd::u_sigval", i32, i32, %"<anonymous>.1"}
%"cstd::s__IO_codecvt" = type opaque
%"cstd::fd_set" = type {[16 x i64]}
%"cstd::s__xmmreg" = type {[4 x i32]}
%"<anonymous>.1" = type {[48 x i8]}
%"cstd::s__IO_wide_data" = type opaque
%"cstd::s_sigstack" = type {i8*, i32}
%"<anonymous>.2" = type {void (%"cstd::u_sigval")*, %"cstd::u_pthread_attr_t"*}
%"cstd::s_lconv" = type {i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8}
%"cstd::s_drand48_data" = type {[3 x i16], [3 x i16], i16, i16, i64}
%"cstd::s_random_data" = type {i32*, i32*, i32*, i32, i32, i32, i32*}
%"cstd::s_timeval" = type {i64, i64}
%"cstd::u_sigval" = type {[8 x i8]}
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
%"cstd::s_sigcontext" = type {i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, %"<anonymous>.1", [8 x i64]}
%"cstd::s__fpxreg" = type {[4 x i16], i16, [3 x i16]}
%"cstd::s_sigaction" = type {%"<anonymous>.1", %"cstd::__sigset_t", i32, void ()*}
%"cstd::stack_t" = type {i8*, i32, i64}
%"cstd::s_timespec" = type {i64, i64}
%"cstd::s__fpstate" = type {i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"cstd::s__fpxreg"], [16 x %"cstd::s__xmmreg"], [24 x i32]}
%"cstd::u_pthread_attr_t" = type {[56 x i8]}
%"cstd::s___locale_data" = type opaque
%"cstd::div_t" = type {i32, i32}
%"cstd::lldiv_t" = type {i64, i64}
define void @"_F10cstd::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	ret void
}
