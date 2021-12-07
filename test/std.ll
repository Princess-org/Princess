; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/std.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
declare i64 @"strlen"(i8*)
define void @"executable_file"(i8* %resolved.value) {
start:
	%resolved.0 = alloca i8*
	%len.0 = alloca i64
	%tmp.4 = alloca {i64, i8*}
	%tmp.5 = alloca i64
	store i8* %resolved.value, i8** %resolved.0
	%0 = getelementptr [15 x i8], [15 x i8]* @"std::str.0", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.4
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.4, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = load i8*, i8** %resolved.0
	%5 = zext i32 4096 to i64
	%6 = call i64 (i8*, i8*, i64) @"readlink"(i8* %3, i8* %4, i64 %5)
	store i64 %6, i64* %tmp.5
	%7 = load i64, i64* %tmp.5
	store i64 %7, i64* %len.0
	%8 = load i64, i64* %len.0
	%9 = sub i32 0, 1
	%10 = sext i32 %9 to i64
	%11 = icmp ne i64 %8, %10
	br i1 %11, label %12, label %16
12:
	%13 = load i64, i64* %len.0
	%14 = load i8*, i8** %resolved.0
	%15 = getelementptr i8, i8* %14, i64 %13
	store i8 0, i8* %15
	br label %16
16:
	ret void
}
define i8 @"starts_with"(i8* %str.value, i8* %pre.value) {
start:
	%str.0 = alloca i8*
	%pre.0 = alloca i8*
	%tmp.1 = alloca i64
	%tmp.2 = alloca i32
	store i8* %str.value, i8** %str.0
	store i8* %pre.value, i8** %pre.0
	%0 = load i8*, i8** %pre.0
	%1 = load i8*, i8** %str.0
	%2 = load i8*, i8** %pre.0
	%3 = call i64 (i8*) @"strlen"(i8* %2)
	store i64 %3, i64* %tmp.1
	%4 = load i64, i64* %tmp.1
	%5 = call i32 (i8*, i8*, i64) @"strncmp"(i8* %0, i8* %1, i64 %4)
	store i32 %5, i32* %tmp.2
	%6 = load i32, i32* %tmp.2
	%7 = icmp eq i32 %6, 0
	%8 = zext i1 %7 to i8
	ret i8 %8
9:
	ret i8 undef
}
declare i32 @"strncmp"(i8*, i8*, i64)
define void @"absolute_path"(i8* %pathname.value, i8* %resolved.value) {
start:
	%pathname.0 = alloca i8*
	%resolved.0 = alloca i8*
	%tmp.3 = alloca i8*
	store i8* %pathname.value, i8** %pathname.0
	store i8* %resolved.value, i8** %resolved.0
	%0 = load i8*, i8** %pathname.0
	%1 = load i8*, i8** %resolved.0
	%2 = call i8* (i8*, i8*) @"realpath"(i8* %0, i8* %1)
	store i8* %2, i8** %tmp.3
	ret void
}
define {i64, i8*} @"std::make_string::(*int8)"(i8* %ptr.value) {
start:
	%ptr.0 = alloca i8*
	%s.0 = alloca {i64, i8*}
	%tmp.0 = alloca i64
	store i8* %ptr.value, i8** %ptr.0
	%0 = load i8*, i8** %ptr.0
	%1 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	store i8* %0, i8** %1
	%2 = load i8*, i8** %ptr.0
	%3 = call i64 (i8*) @"strlen"(i8* %2)
	store i64 %3, i64* %tmp.0
	%4 = load i64, i64* %tmp.0
	%5 = zext i32 1 to i64
	%6 = add i64 %4, %5
	%7 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 0
	store i64 %6, i64* %7
	%8 = load {i64, i8*}, {i64, i8*}* %s.0
	ret {i64, i8*} %8
9:
	ret {i64, i8*} undef
}
declare void @"linux::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare i64 @"readlink"(i8*, i8*, i64)
define void @"std::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"linux::main::([[int8]])"({i64, {i64, i8*}*} %0)
	ret void
}
declare i8* @"realpath"(i8*, i8*)
@"std::str.0" = private global [15 x i8] c"/proc/self/exe\00"
