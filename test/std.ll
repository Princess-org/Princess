; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/c/Users/Vic/Programming/Princess/bin//../include/std.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
declare i64 @"strlen"(i8*)
define void @"_F9std::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	ret void
}
define {i64, i8*} @"_F16std::make_string__Pi8"(i8* %ptr.0.value) {
start:
	%ptr.0 = alloca i8*
	%s.0 = alloca {i64, i8*}
	%tmp.0 = alloca i64
	store i8* %ptr.0.value, i8** %ptr.0
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
