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
%"main::Point" = type {i32, i32}
%"b::Rectangle" = type {%"a::Point", i32, i32}
%"main::Struct" = type {i32}
%"a::Point" = type {i32, i32}
%"a::Recursive" = type {%"a::Recursive"*, %"b::Line"}
%"b::Line" = type {%"a::Point", %"a::Point"}
declare i64 @"strlen"(i8*)
declare i32 @"_F6a::add__i32i32"(i32, i32)
declare void @"free"(i8*)
declare double @"_F6a::add__f64f64"(double, double)
define void @"_F10main::test__"() {
start:
	%point.0 = alloca %"main::Point"
	store %"main::Point" {i32 10, i32 20}, %"main::Point"* %point.0
	ret void
}
declare i8* @"malloc"(i64)
define void @"_F10main::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	store %"a::Point" {i32 10, i32 20}, %"a::Point"* @"main::pos"
	%0 = load %"a::Point", %"a::Point"* @"main::pos"
	%1 = insertvalue %"b::Rectangle" {%"a::Point" undef, i32 10, i32 20}, %"a::Point" %0, 0
	store %"b::Rectangle" %1, %"b::Rectangle"* @"main::rectangle"
	call void @"_F10main::test__"()
	call void @"_F11main::test2__"()
	%2 = load i32, i32* @"a::some_value"
	store i32 %2, i32* @"main::d"
	%3 = alloca i32
	%4 = call i32 (i32, i32) @"_F6a::add__i32i32"(i32 1, i32 1)
	store i32 %4, i32* %3
	%5 = alloca double
	%6 = call double (double, double) @"_F6a::add__f64f64"(double 0x3FF8000000000000, double 0x3FF8000000000000)
	store double %6, double* %5
	ret void
}
define double @"_F14main::function__i32f64"(i32 %a.0.value, double %b.0.value) {
start:
	%a.0 = alloca i32
	store i32 %a.0.value, i32* %a.0
	%b.0 = alloca double
	store double %b.0.value, double* %b.0
	%0 = load i32, i32* %a.0
	%1 = sitofp i32 %0 to double
	%2 = load double, double* %b.0
	%3 = fmul double %1, %2
	ret double %3
}
define double @"_F14main::function__f64i32"(double %b.0.value, i32 %a.0.value) {
start:
	%b.0 = alloca double
	store double %b.0.value, double* %b.0
	%a.0 = alloca i32
	store i32 %a.0.value, i32* %a.0
	%0 = load i32, i32* %a.0
	%1 = sitofp i32 %0 to double
	%2 = load double, double* %b.0
	%3 = fmul double %1, %2
	ret double %3
}
define void @"_F11main::test2__"() {
start:
	%0 = alloca double
	%1 = call double (i32, double) @"_F14main::function__i32f64"(i32 1, double 0x3FF8000000000000)
	store double %1, double* %0
	%2 = alloca double
	%3 = call double (double, i32) @"_F14main::function__f64i32"(double 0x3FF8000000000000, i32 1)
	store double %3, double* %2
	%4 = alloca i32
	%5 = call i32 @"_F14main::function__"()
	store i32 %5, i32* %4
	ret void
}
define i32 @"_F14main::function__"() {
start:
	ret i32 10
}
@"main::pos" = global %"a::Point" zeroinitializer
@"a::some_value" = external global i32 
@"main::d" = global i32 zeroinitializer
@"main::rectangle" = global %"b::Rectangle" zeroinitializer
