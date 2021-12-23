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
	call void @"main::main::([[int8]])"({i64, {i64, i8*}*} %args.3)
	call void @free(i8* %args)
	ret i32 0
}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
define void @"main::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	%tmp.0 = alloca [1 x {i64*, i8*, %"runtime::Type"*}]
	%tmp.1 = alloca i32
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"std::main::([[int8]])"({i64, {i64, i8*}*} %0)
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"type::main::([[int8]])"({i64, {i64, i8*}*} %1)
	%2 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"runtime::main::([[int8]])"({i64, {i64, i8*}*} %2)
	%3 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"preload::main::([[int8]])"({i64, {i64, i8*}*} %3)
	store i1 true, i1* @"main::e"
	%4 = load i1, i1* @"main::e"
	%5 = call i8* @"malloc"(i64 8)
	%6 = bitcast i8* %5 to i64*
	store i64 0, i64* %6
	%7 = insertvalue {i64*, i8*, %"runtime::Type"*} undef, i64* %6, 0
	%8 = call i8* @"malloc"(i64 8)
	%9 = bitcast i8* %8 to i1*
	store i1 %4, i1* %9
	%10 = bitcast i1* %9 to i8*
	%11 = insertvalue {i64*, i8*, %"runtime::Type"*} %7, i8* %10, 1
	%12 = insertvalue {i64*, i8*, %"runtime::Type"*} %11, %"runtime::Type"* @"type::bool", 2
	%13 = insertvalue [1 x {i64*, i8*, %"runtime::Type"*}] [{i64*, i8*, %"runtime::Type"*} undef], {i64*, i8*, %"runtime::Type"*} %12, 0
	store [1 x {i64*, i8*, %"runtime::Type"*}] %13, [1 x {i64*, i8*, %"runtime::Type"*}]* %tmp.0
	%14 = getelementptr [1 x {i64*, i8*, %"runtime::Type"*}], [1 x {i64*, i8*, %"runtime::Type"*}]* %tmp.0, i64 0, i64 0
	%15 = insertvalue {i64, {i64*, i8*, %"runtime::Type"*}*} {i64 1, {i64*, i8*, %"runtime::Type"*}* undef}, {i64*, i8*, %"runtime::Type"*}* %14, 1
	%16 = call i32 ({i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %15)
	store i32 %16, i32* %tmp.1
	ret void
}
declare i32 @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value)
declare i64 @"strlen"(i8*)
declare void @"preload::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare void @"runtime::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare i8* @"malloc"(i64)
declare void @"free"(i8*)
define {i64, i8*} @"to_string::(main::E)"(i8 %enum.value) {
start:
	switch i8 %enum.value, label %9 [
		i8 2, label %0
		i8 1, label %3
		i8 0, label %6
	]
0:
	%1 = getelementptr [4 x i8], [4 x i8]* @"main::str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [4 x i8], [4 x i8]* @"main::str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [4 x i8], [4 x i8]* @"main::str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [10 x i8], [10 x i8]* @"main::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
}
declare void @"type::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare void @"std::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
@"main::e" = global i1 zeroinitializer
@"type::bool" = external global %"runtime::Type" 
@"main::str.0" = private global [4 x i8] c"BAZ\00"
@"main::str.1" = private global [4 x i8] c"BAR\00"
@"main::str.2" = private global [4 x i8] c"FOO\00"
@"main::str.3" = private global [10 x i8] c"INVALID!!\00"
