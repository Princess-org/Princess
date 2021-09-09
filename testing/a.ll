; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "./a.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"a::Point" = type {i32, i32}
%"a::Recursive" = type {%"a::Recursive"*, %"b::Line"}
%"b::T" = type {%"a::Point"*}
%"b::Line" = type {%"a::Point", %"a::Point"}
define void @"_F16a::some_function__"() {
start:
	%t.0 = alloca %"b::T"
	%p.0 = alloca %"a::Point"*
	%0 = getelementptr %"b::T", %"b::T"* %t.0, i32 0, i32 0
	%1 = load %"a::Point"*, %"a::Point"** %0
	store %"a::Point"* %1, %"a::Point"** %p.0
	ret void
}
define i32 @"_F6a::add__i32i32"(i32 %a.0.value, i32 %b.0.value) {
start:
	%a.0 = alloca i32
	store i32 %a.0.value, i32* %a.0
	%b.0 = alloca i32
	store i32 %b.0.value, i32* %b.0
	%0 = load i32, i32* %a.0
	%1 = load i32, i32* %b.0
	%2 = add i32 %0, %1
	ret i32 %2
}
define void @"_F7a::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	store i32 20, i32* @"a::some_value"
	call void @"_F16a::some_function__"()
	ret void
}
define double @"_F6a::add__f64f64"(double %a.0.value, double %b.0.value) {
start:
	%a.0 = alloca double
	store double %a.0.value, double* %a.0
	%b.0 = alloca double
	store double %b.0.value, double* %b.0
	%0 = load double, double* %a.0
	%1 = load double, double* %b.0
	%2 = fadd double %0, %1
	ret double %2
}
@"a::some_value" = global i32 zeroinitializer
