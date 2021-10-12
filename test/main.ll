; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "test.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
define i32 @main(i32 %argc, i8** %argv) {
	%size = zext i32 %argc to i64
	%size.1 = mul i64 %size, 16
	%args = call i8* @malloc(i64 %size.1)
	%args.1 = bitcast i8* %args to {i64, i8*}*
	%args.2 = insertvalue {i64, {i64, i8*}*} undef, i64 %size, 0
	%args.3 = insertvalue {i64, {i64, i8*}*} %args.2, {i64, i8*}* %args.1, 1
	%i = alloca i32
	store i32 0, i32* %i
	br label %loop
loop:
	%i.1 = load i32, i32* %i
	%cond = icmp eq i32 %argc, %i.1
	br i1 %cond, label %end, label %inner
inner:
	%arg = getelementptr i8*, i8** %argv, i32 %i.1
	%arg.1 = load i8*, i8** %arg
	%arg.2 = getelementptr {i64, i8*}, {i64, i8*}* %args.1, i32 %i.1
	%arglen = call i64 @strlen(i8* %arg.1)
	%arglen.1 = add i64 %arglen, 1
	%arg.3 = insertvalue {i64, i8*} undef, i64 %arglen.1, 0
	%arg.4 = insertvalue {i64, i8*} %arg.3, i8* %arg.1, 1
	store {i64, i8*} %arg.4, {i64, i8*}* %arg.2
	%i.2 = add i32 %i.1, 1
	store i32 %i.2, i32* %i
	br label %loop
end:
	call void @"_F10main::main__AAi8"({i64, {i64, i8*}*} %args.3)
	call void @free(i8* %args)
	ret i32 0
}
%"main::Struct" = type {i32, i32, i32*}
declare i64 @"strlen"(i8*)
declare void @"_F9std::main__AAi8"({i64, {i64, i8*}*})
declare i32 @"printf"(i8*, ...)
define %"main::Struct" @"_F20main::returns_struct__"() {
start:
	%i.0 = alloca i32*
	%s.0 = alloca %"main::Struct"
	%0 = call i8* @"malloc"(i64 4)
	%1 = bitcast i8* %0 to i32*
	store i32* %1, i32** %i.0
	%2 = load i32*, i32** %i.0
	store i32 20, i32* %2
	%3 = load i32*, i32** %i.0
	%4 = insertvalue %"main::Struct" {i32 10, i32 10, i32* undef}, i32* %3, 2
	store %"main::Struct" %4, %"main::Struct"* %s.0
	%5 = getelementptr %"main::Struct", %"main::Struct"* %s.0, i32 0, i32 0
	%6 = load i32, i32* %5
	%7 = icmp eq i32 %6, 10
	br i1 %7, label %12, label %8
8:
	%9 = getelementptr [22 x i8], [22 x i8]* @"str.0", i32 0, i32 0
	%10 = getelementptr [8 x i8], [8 x i8]* @"str.1", i32 0, i32 0
	%11 = getelementptr [15 x i8], [15 x i8]* @"str.2", i32 0, i32 0
	call void @"__assert_fail"(i8* %9, i8* %10, i32 10, i8* %11)
	unreachable
12:
	%13 = load %"main::Struct", %"main::Struct"* %s.0
	ret %"main::Struct" %13
14:
	ret %"main::Struct" undef
}
declare void @"free"(i8*)
declare void @"__assert_fail"(i8*, i8*, i32, i8*)
declare void @"_F10cstd::main__AAi8"({i64, {i64, i8*}*})
declare i8* @"malloc"(i64)
define void @"_F10main::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	%0 = getelementptr %"main::Struct", %"main::Struct"* @"main::s", i32 0, i32 2
	store i32* @"const.3", i32** %0
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"_F10cstd::main__AAi8"({i64, {i64, i8*}*} %1)
	%2 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"_F9std::main__AAi8"({i64, {i64, i8*}*} %2)
	%3 = getelementptr %"main::Struct", %"main::Struct"* @"main::s", i32 0, i32 2
	%4 = load i32*, i32** %3
	%5 = load i32, i32* %4
	%6 = alloca {i64, i8*}
	%7 = getelementptr [2 x i8], [2 x i8]* @"str.3", i64 0, i64 0
	%8 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %7, 1
	store {i64, i8*} %8, {i64, i8*}* %6
	%9 = load {i64, i8*}, {i64, i8*}* %6
	%10 = getelementptr [3 x i8], [3 x i8]* @"str.4", i32 0, i32 0
	%11 = call i32 (i8*, ...) @"printf"(i8* %10, i32 %5)
	%12 = add i32 0, %11
	%13 = extractvalue {i64, i8*} %9, 1
	%14 = getelementptr [3 x i8], [3 x i8]* @"str.5", i32 0, i32 0
	%15 = call i32 (i8*, ...) @"printf"(i8* %14, i8* %13)
	%16 = add i32 %12, %15
	ret void
}
@"str.4" = private global [3 x i8] c"%d\00"
@"const.3" = private global i32 20
@"str.5" = private global [3 x i8] c"%s\00"
@"main::s" = global %"main::Struct" {i32 10, i32 10, i32* undef}
@"str.0" = private global [22 x i8] c"    assert(s.a == 10)\00"
@"str.1" = private global [8 x i8] c"test.pr\00"
@"str.2" = private global [15 x i8] c"returns_struct\00"
@"str.3" = private global [2 x i8] c"\0A\00"
