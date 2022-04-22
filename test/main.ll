; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "test3.pr"
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
	call void @"main::__main__::([[char]])"({i64, {i64, i8*}*} %args.3)
	call void @"main::__finalizer__::()"()
	call void @free(i8* %args)
	ret i32 0
}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}, {i64, i8*}, {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"runtime::Function" = type {{i64, i8*}, i1, {i64, i8*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}}
%"main::__main__::([[char]]).env" = type {}
%"main::__main__::([[char]]).defers" = type {%"main::__main__::([[char]]).env", void (%"main::__main__::([[char]]).env"*)*, %"main::__main__::([[char]]).defers"*}
declare void @"cstd::__finalizer__::()"()
declare void @"std::__finalizer__::()"()
declare void @"type::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare void @"runtime::__finalizer__::()"()
declare void @"runtime::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare void @"preload::__finalizer__::()"()
declare i8* @"malloc"(i64)
declare void @"free"(i8*)
declare i64 @"strlen"(i8*)
declare void @"cstd::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare i32 @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value)
declare void @"std::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare void @"preload::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
define void @"main::__main__::([[char]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	store %"main::__main__::([[char]]).defers"* null, %"main::__main__::([[char]]).defers"** @"__defers"
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"cstd::__main__::([[char]])"({i64, {i64, i8*}*} %0)
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"std::__main__::([[char]])"({i64, {i64, i8*}*} %1)
	%2 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"type::__main__::([[char]])"({i64, {i64, i8*}*} %2)
	%3 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"runtime::__main__::([[char]])"({i64, {i64, i8*}*} %3)
	%4 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"preload::__main__::([[char]])"({i64, {i64, i8*}*} %4)
	%5 = call i8* @"malloc"(i64 8)
	%6 = bitcast i8* %5 to i64*
	store i64 0, i64* %6
	%7 = insertvalue {i64*, i32*, %"runtime::Type"*} undef, i64* %6, 0
	%8 = call i8* @"malloc"(i64 4)
	%9 = bitcast i8* %8 to i32*
	store i32 20, i32* %9
	%10 = insertvalue {i64*, i32*, %"runtime::Type"*} %7, i32* %9, 1
	%11 = insertvalue {i64*, i32*, %"runtime::Type"*} %10, %"runtime::Type"* @"type::&int32", 2
	store {i64*, i32*, %"runtime::Type"*} %11, {i64*, i32*, %"runtime::Type"*}* @"main::a"
	%12 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::a", i32 0, i32 0
	%13 = load i64*, i64** %12
	%14 = ptrtoint i64* %13 to i64
	%15 = icmp eq i64 %14, 0
	br i1 %15, label %19, label %16
16:
	%17 = load i64, i64* %13
	%18 = add i64 %17, 1
	store i64 %18, i64* %13
	br label %19
19:
	%20 = call i8* @"malloc"(i64 16)
	%21 = bitcast i8* %20 to %"main::__main__::([[char]]).defers"*
	%22 = load %"main::__main__::([[char]]).defers"*, %"main::__main__::([[char]]).defers"** @"__defers"
	%23 = insertvalue %"main::__main__::([[char]]).defers" undef, %"main::__main__::([[char]]).env" undef, 0
	%24 = insertvalue %"main::__main__::([[char]]).defers" %23, void (%"main::__main__::([[char]]).env"*)* @"main::__main__::([[char]]).defer.0", 1
	%25 = insertvalue %"main::__main__::([[char]]).defers" %24, %"main::__main__::([[char]]).defers"* %22, 2
	store %"main::__main__::([[char]]).defers" %25, %"main::__main__::([[char]]).defers"* %21
	store %"main::__main__::([[char]]).defers"* %21, %"main::__main__::([[char]]).defers"** @"__defers"
	ret void
}
declare void @"__destruct__::(*&)"({i64*, i8*, %"runtime::Type"*}*)
define void @"main::__main__::([[char]]).defer.0"(%"main::__main__::([[char]]).env"* %__env.value) {
start:
	%tmp.0 = alloca {i64*, i8*, %"runtime::Type"*}
	%tmp.1 = alloca [1 x {i64*, i8*, %"runtime::Type"*}]
	%tmp.2 = alloca i32
	%0 = load {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::a"
	%1 = extractvalue {i64*, i32*, %"runtime::Type"*} %0, 1
	%2 = load i32, i32* %1
	%3 = call i8* @"malloc"(i64 8)
	%4 = bitcast i8* %3 to i64*
	store i64 0, i64* %4
	%5 = insertvalue {i64*, i8*, %"runtime::Type"*} undef, i64* %4, 0
	%6 = call i8* @"malloc"(i64 4)
	%7 = bitcast i8* %6 to i32*
	store i32 %2, i32* %7
	%8 = bitcast i32* %7 to i8*
	%9 = insertvalue {i64*, i8*, %"runtime::Type"*} %5, i8* %8, 1
	%10 = insertvalue {i64*, i8*, %"runtime::Type"*} %9, %"runtime::Type"* @"type::&int32", 2
	store {i64*, i8*, %"runtime::Type"*} %10, {i64*, i8*, %"runtime::Type"*}* %tmp.0
	%11 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %tmp.0, i32 0, i32 0
	%12 = load i64*, i64** %11
	%13 = ptrtoint i64* %12 to i64
	%14 = icmp eq i64 %13, 0
	br i1 %14, label %18, label %15
15:
	%16 = load i64, i64* %12
	%17 = add i64 %16, 1
	store i64 %17, i64* %12
	br label %18
18:
	%19 = insertvalue [1 x {i64*, i8*, %"runtime::Type"*}] [{i64*, i8*, %"runtime::Type"*} undef], {i64*, i8*, %"runtime::Type"*} %10, 0
	store [1 x {i64*, i8*, %"runtime::Type"*}] %19, [1 x {i64*, i8*, %"runtime::Type"*}]* %tmp.1
	%20 = getelementptr [1 x {i64*, i8*, %"runtime::Type"*}], [1 x {i64*, i8*, %"runtime::Type"*}]* %tmp.1, i64 0, i64 0
	%21 = insertvalue {i64, {i64*, i8*, %"runtime::Type"*}*} {i64 1, {i64*, i8*, %"runtime::Type"*}* undef}, {i64*, i8*, %"runtime::Type"*}* %20, 1
	%22 = call i32 ({i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %21)
	call void @"__destruct__::(*&)"({i64*, i8*, %"runtime::Type"*}* %tmp.0)
	store i32 %22, i32* %tmp.2
	ret void
}
declare void @"__destruct__::(*&int32)"({i64*, i32*, %"runtime::Type"*}*)
define void @"main::__finalizer__::()"() {
start:
	call void @"cstd::__finalizer__::()"()
	call void @"std::__finalizer__::()"()
	call void @"runtime::__finalizer__::()"()
	call void @"preload::__finalizer__::()"()
	br label %0
0:
	%1 = load %"main::__main__::([[char]]).defers"*, %"main::__main__::([[char]]).defers"** @"__defers"
	%2 = ptrtoint %"main::__main__::([[char]]).defers"* %1 to i64
	%3 = icmp ne i64 %2, 0
	br i1 %3, label %4, label %11
4:
	%5 = getelementptr %"main::__main__::([[char]]).defers", %"main::__main__::([[char]]).defers"* %1, i32 0, i32 0
	%6 = getelementptr %"main::__main__::([[char]]).defers", %"main::__main__::([[char]]).defers"* %1, i32 0, i32 1
	%7 = getelementptr %"main::__main__::([[char]]).defers", %"main::__main__::([[char]]).defers"* %1, i32 0, i32 2
	%8 = load void (%"main::__main__::([[char]]).env"*)*, void (%"main::__main__::([[char]]).env"*)** %6
	%9 = load %"main::__main__::([[char]]).defers"*, %"main::__main__::([[char]]).defers"** %7
	call void %8(%"main::__main__::([[char]]).env"* %5)
	store %"main::__main__::([[char]]).defers"* %9, %"main::__main__::([[char]]).defers"** @"__defers"
	%10 = bitcast %"main::__main__::([[char]]).defers"* %1 to i8*
	call void @"free"(i8* %10)
	br label %0
11:
	call void @"__destruct__::(*&int32)"({i64*, i32*, %"runtime::Type"*}* @"main::a")
	ret void
}
@"main::a" = global {i64*, i32*, %"runtime::Type"*} zeroinitializer
@"__defers" = private global %"main::__main__::([[char]]).defers"* zeroinitializer
@"type::int32" = external global %"runtime::Type" 
@"type::&int32" = external global %"runtime::Type" 
