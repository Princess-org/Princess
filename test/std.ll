; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/std.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}, {i64, i8*}, {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"runtime::Function" = type {{i64, i8*}, i1, {i64, i8*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}}
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_codecvt" = type opaque
%"cstd::s__IO_wide_data" = type opaque
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
%"map::Entry" = type {{i64, i8*}, i8*, %"map::Entry"*, %"map::Entry"*, %"map::Entry"*}
%"map::Map" = type {i64, {i64, %"map::Entry"**}, %"map::Entry"*, %"map::Entry"*}
%"preload::FfiFunction" = type {{i64, i8*}, void ()*, i1, %"ffi::ffi_cif"}
%"ffi::ffi_cif" = type {i32, i32, %"ffi::ffi_type"**, %"ffi::ffi_type"*, i32, i32}
%"ffi::ffi_type" = type {i64, i16, i16, %"ffi::ffi_type"**}
%"preload::FfiGlobal" = type {{i64, i8*}, i8*}
declare i8* @"malloc"(i64)
declare i8* @"calloc"(i64, i64)
declare void @"free"(i8*)
declare i32 @"system"(i8*)
declare i32 @"fclose"(%"cstd::s__IO_FILE"*)
declare %"cstd::s__IO_FILE"* @"fopen"(i8*, i8*)
declare %"cstd::s__IO_FILE"* @"freopen"(i8*, i8*, %"cstd::s__IO_FILE"*)
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare i8* @"fgets"(i8*, i32, %"cstd::s__IO_FILE"*)
declare i32 @"fseek"(%"cstd::s__IO_FILE"*, i64, i32)
declare i64 @"ftell"(%"cstd::s__IO_FILE"*)
declare i8* @"memcpy"(i8*, i8*, i64)
declare i32 @"strncmp"(i8*, i8*, i64)
declare i64 @"strlen"(i8*)
declare double @"fmax"(double, double)
declare double @"fmin"(double, double)
define %"cstd::s__IO_FILE"* @"std::stdin::()"() {
start:
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stdin"
	ret %"cstd::s__IO_FILE"* %0
1:
	ret %"cstd::s__IO_FILE"* undef
}
define %"cstd::s__IO_FILE"* @"std::stdout::()"() {
start:
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stdout"
	ret %"cstd::s__IO_FILE"* %0
1:
	ret %"cstd::s__IO_FILE"* undef
}
define %"cstd::s__IO_FILE"* @"std::stderr::()"() {
start:
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stderr"
	ret %"cstd::s__IO_FILE"* %0
1:
	ret %"cstd::s__IO_FILE"* undef
}
define {i64, i8*} @"std::make_string::(*char)"(i8* %ptr.value) {
start:
	%ptr.0 = alloca i8*
	%s.0 = alloca {i64, i8*}
	%tmp.0 = alloca i64
	store i8* %ptr.value, i8** %ptr.0
	store {i64, i8*} zeroinitializer, {i64, i8*}* %s.0
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
define i32 @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%tmp.1 = alloca %"cstd::s__IO_FILE"*
	%tmp.2 = alloca i32
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%0 = call %"cstd::s__IO_FILE"* @"std::stdout::()"()
	store %"cstd::s__IO_FILE"* %0, %"cstd::s__IO_FILE"** %tmp.1
	%1 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %tmp.1
	%2 = load {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%3 = call i32 (%"cstd::s__IO_FILE"*, {i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %1, {i64, {i64*, i8*, %"runtime::Type"*}*} %2)
	store i32 %3, i32* %tmp.2
	%4 = load i32, i32* %tmp.2
	ret i32 %4
5:
	ret i32 undef
}
define i32 @"std::error::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%tmp.3 = alloca %"cstd::s__IO_FILE"*
	%tmp.4 = alloca i32
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%0 = call %"cstd::s__IO_FILE"* @"std::stderr::()"()
	store %"cstd::s__IO_FILE"* %0, %"cstd::s__IO_FILE"** %tmp.3
	%1 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %tmp.3
	%2 = load {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%3 = call i32 (%"cstd::s__IO_FILE"*, {i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %1, {i64, {i64*, i8*, %"runtime::Type"*}*} %2)
	store i32 %3, i32* %tmp.4
	%4 = load i32, i32* %tmp.4
	ret i32 %4
5:
	ret i32 undef
}
define i32 @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %file.value, {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%sum.0 = alloca i32
	%i.1 = alloca i32
	%arg.1 = alloca {i64*, i8*, %"runtime::Type"*}
	%tmp.73 = alloca %"runtime::Type"*
	%tmp.74 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	store i32 zeroinitializer, i32* %sum.0
	store i32 0, i32* %sum.0
	%0 = getelementptr {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0, i32 0, i32 0
	%1 = load i64, i64* %0
	%2 = trunc i64 %1 to i32
	store i32 0, i32* %i.1
	br label %3
3:
	%4 = load i32, i32* %i.1
	%5 = icmp slt i32 %4, %2
	br i1 %5, label %6, label %42
6:
	store {i64*, i8*, %"runtime::Type"*} zeroinitializer, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%7 = load i32, i32* %i.1
	%8 = getelementptr {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0, i32 0, i32 1
	%9 = load {i64*, i8*, %"runtime::Type"*}*, {i64*, i8*, %"runtime::Type"*}** %8
	%10 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %9, i32 %7
	%11 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %10
	store {i64*, i8*, %"runtime::Type"*} %11, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%12 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 0
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
	%20 = load i32, i32* %sum.0
	%21 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%22 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%23 = extractvalue {i64*, i8*, %"runtime::Type"*} %22, 0
	%24 = extractvalue {i64*, i8*, %"runtime::Type"*} %22, 1
	%25 = extractvalue {i64*, i8*, %"runtime::Type"*} %22, 2
	%26 = bitcast i8* %24 to i8*
	%27 = insertvalue %"runtime::Ref" undef, i64* %23, 0
	%28 = insertvalue %"runtime::Ref" %27, i8* %26, 1
	%29 = insertvalue %"runtime::Ref" %28, %"runtime::Type"* %25, 2
	%30 = call %"runtime::Type"* (%"runtime::Ref") @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %29)
	store %"runtime::Type"* %30, %"runtime::Type"** %tmp.73
	%31 = load %"runtime::Type"*, %"runtime::Type"** %tmp.73
	%32 = getelementptr %"runtime::Type", %"runtime::Type"* %31, i32 0, i32 4
	%33 = load %"runtime::Type"*, %"runtime::Type"** %32
	%34 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%35 = extractvalue {i64*, i8*, %"runtime::Type"*} %34, 1
	%36 = bitcast i8* %35 to i8*
	%37 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %21, %"runtime::Type"* %33, i8* %36)
	store i32 %37, i32* %tmp.74
	%38 = load i32, i32* %tmp.74
	%39 = add i32 %20, %38
	store i32 %39, i32* %sum.0
	call void @"__destruct__::(*&)"({i64*, i8*, %"runtime::Type"*}* %arg.1)
	br label %40
40:
	%41 = add i32 %4, 1
	store i32 %41, i32* %i.1
	br label %3
42:
	%43 = load i32, i32* %sum.0
	ret i32 %43
44:
	ret i32 undef
}
define void @"std::concat::([char], [char])"({i64, i8*} %base.value, {i64, i8*} %to_append.value) {
start:
	%base.0 = alloca {i64, i8*}
	%to_append.0 = alloca {i64, i8*}
	%tmp.75 = alloca i64
	%tmp.76 = alloca i8*
	store {i64, i8*} %base.value, {i64, i8*}* %base.0
	store {i64, i8*} %to_append.value, {i64, i8*}* %to_append.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %base.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = ptrtoint i8* %1 to i64
	%3 = getelementptr {i64, i8*}, {i64, i8*}* %base.0, i32 0, i32 1
	%4 = load i8*, i8** %3
	%5 = call i64 (i8*) @"strlen"(i8* %4)
	store i64 %5, i64* %tmp.75
	%6 = load i64, i64* %tmp.75
	%7 = add i64 %2, %6
	%8 = inttoptr i64 %7 to i8*
	%9 = bitcast i8* %8 to i8*
	%10 = getelementptr {i64, i8*}, {i64, i8*}* %to_append.0, i32 0, i32 1
	%11 = load i8*, i8** %10
	%12 = bitcast i8* %11 to i8*
	%13 = getelementptr {i64, i8*}, {i64, i8*}* %to_append.0, i32 0, i32 0
	%14 = load i64, i64* %13
	%15 = call i8* (i8*, i8*, i64) @"memcpy"(i8* %9, i8* %12, i64 %14)
	store i8* %15, i8** %tmp.76
	ret void
}
define i64 @"std::length::([char])"({i64, i8*} %s.value) {
start:
	%s.0 = alloca {i64, i8*}
	store {i64, i8*} %s.value, {i64, i8*}* %s.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 0
	%1 = load i64, i64* %0
	%2 = zext i32 1 to i64
	%3 = sub i64 %1, %2
	ret i64 %3
4:
	ret i64 undef
}
define i8* @"std::allocate::(uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%tmp.77 = alloca i8*
	store i64 %size.value, i64* %size.0
	%0 = load i64, i64* %size.0
	%1 = call i8* (i64) @"malloc"(i64 %0)
	store i8* %1, i8** %tmp.77
	%2 = load i8*, i8** %tmp.77
	ret i8* %2
3:
	ret i8* undef
}
define %"map::Entry"* @"std::allocate::(type<map::Entry>)"() {
start:
	%tmp.100 = alloca i8*
	%0 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Entry", i32 0, i32 5
	%1 = load i64, i64* %0
	%2 = call i8* (i64) @"malloc"(i64 %1)
	store i8* %2, i8** %tmp.100
	%3 = load i8*, i8** %tmp.100
	%4 = bitcast i8* %3 to %"map::Entry"*
	ret %"map::Entry"* %4
5:
	ret %"map::Entry"* undef
}
define %"map::Map"* @"std::allocate::(type<map::Map>)"() {
start:
	%tmp.101 = alloca i8*
	%0 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Map", i32 0, i32 5
	%1 = load i64, i64* %0
	%2 = call i8* (i64) @"malloc"(i64 %1)
	store i8* %2, i8** %tmp.101
	%3 = load i8*, i8** %tmp.101
	%4 = bitcast i8* %3 to %"map::Map"*
	ret %"map::Map"* %4
5:
	ret %"map::Map"* undef
}
define {i64, {i64, i8*}*} @"std::allocate::(type<[char]>, uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%arr.0 = alloca {i64, {i64, i8*}*}
	%tmp.102 = alloca i8*
	store i64 %size.value, i64* %size.0
	store {i64, {i64, i8*}*} zeroinitializer, {i64, {i64, i8*}*}* %arr.0
	%0 = load i64, i64* %size.0
	%1 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %arr.0, i32 0, i32 0
	store i64 %0, i64* %1
	%2 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[char]", i32 0, i32 5
	%3 = load i64, i64* %2
	%4 = load i64, i64* %size.0
	%5 = mul i64 %3, %4
	%6 = call i8* (i64) @"malloc"(i64 %5)
	store i8* %6, i8** %tmp.102
	%7 = load i8*, i8** %tmp.102
	%8 = bitcast i8* %7 to {i64, i8*}*
	%9 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %arr.0, i32 0, i32 1
	store {i64, i8*}* %8, {i64, i8*}** %9
	%10 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %arr.0
	ret {i64, {i64, i8*}*} %10
11:
	ret {i64, {i64, i8*}*} undef
}
define %"preload::FfiFunction"* @"std::allocate::(type<preload::FfiFunction>)"() {
start:
	%tmp.103 = alloca i8*
	%0 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiFunction", i32 0, i32 5
	%1 = load i64, i64* %0
	%2 = call i8* (i64) @"malloc"(i64 %1)
	store i8* %2, i8** %tmp.103
	%3 = load i8*, i8** %tmp.103
	%4 = bitcast i8* %3 to %"preload::FfiFunction"*
	ret %"preload::FfiFunction"* %4
5:
	ret %"preload::FfiFunction"* undef
}
define %"preload::FfiGlobal"* @"std::allocate::(type<preload::FfiGlobal>)"() {
start:
	%tmp.104 = alloca i8*
	%0 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiGlobal", i32 0, i32 5
	%1 = load i64, i64* %0
	%2 = call i8* (i64) @"malloc"(i64 %1)
	store i8* %2, i8** %tmp.104
	%3 = load i8*, i8** %tmp.104
	%4 = bitcast i8* %3 to %"preload::FfiGlobal"*
	ret %"preload::FfiGlobal"* %4
5:
	ret %"preload::FfiGlobal"* undef
}
define i8* @"std::zero_allocate::(uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%tmp.78 = alloca i8*
	store i64 %size.value, i64* %size.0
	%0 = load i64, i64* %size.0
	%1 = call i8* (i64, i64) @"calloc"(i64 1, i64 %0)
	store i8* %1, i8** %tmp.78
	%2 = load i8*, i8** %tmp.78
	ret i8* %2
3:
	ret i8* undef
}
define {i64, %"map::Entry"**} @"std::zero_allocate::(type<*map::Entry>, uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%arr.0 = alloca {i64, %"map::Entry"**}
	%tmp.99 = alloca i8*
	store i64 %size.value, i64* %size.0
	store {i64, %"map::Entry"**} zeroinitializer, {i64, %"map::Entry"**}* %arr.0
	%0 = load i64, i64* %size.0
	%1 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %arr.0, i32 0, i32 0
	store i64 %0, i64* %1
	%2 = load i64, i64* %size.0
	%3 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*map::Entry", i32 0, i32 5
	%4 = load i64, i64* %3
	%5 = call i8* (i64, i64) @"calloc"(i64 %2, i64 %4)
	store i8* %5, i8** %tmp.99
	%6 = load i8*, i8** %tmp.99
	%7 = bitcast i8* %6 to %"map::Entry"**
	%8 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %arr.0, i32 0, i32 1
	store %"map::Entry"** %7, %"map::Entry"*** %8
	%9 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %arr.0
	ret {i64, %"map::Entry"**} %9
10:
	ret {i64, %"map::Entry"**} undef
}
define void @"std::free::([*map::Entry])"({i64, %"map::Entry"**} %value.value) {
start:
	%value.0 = alloca {i64, %"map::Entry"**}
	store {i64, %"map::Entry"**} %value.value, {i64, %"map::Entry"**}* %value.0
	%0 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %value.0, i32 0, i32 1
	%1 = load %"map::Entry"**, %"map::Entry"*** %0
	%2 = bitcast %"map::Entry"** %1 to i8*
	call void (i8*) @"free"(i8* %2)
	ret void
}
define %"cstd::s__IO_FILE"* @"std::open::([char], [char])"({i64, i8*} %file_path.value, {i64, i8*} %mode.value) {
start:
	%file_path.0 = alloca {i64, i8*}
	%mode.0 = alloca {i64, i8*}
	%tmp.79 = alloca %"cstd::s__IO_FILE"*
	store {i64, i8*} %file_path.value, {i64, i8*}* %file_path.0
	store {i64, i8*} %mode.value, {i64, i8*}* %mode.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %file_path.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %mode.0, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = call %"cstd::s__IO_FILE"* (i8*, i8*) @"fopen"(i8* %1, i8* %3)
	store %"cstd::s__IO_FILE"* %4, %"cstd::s__IO_FILE"** %tmp.79
	%5 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %tmp.79
	ret %"cstd::s__IO_FILE"* %5
6:
	ret %"cstd::s__IO_FILE"* undef
}
define %"cstd::s__IO_FILE"* @"std::reopen::([char], [char], *cstd::s__IO_FILE)"({i64, i8*} %file_path.value, {i64, i8*} %mode.value, %"cstd::s__IO_FILE"* %file.value) {
start:
	%file_path.0 = alloca {i64, i8*}
	%mode.0 = alloca {i64, i8*}
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%tmp.80 = alloca %"cstd::s__IO_FILE"*
	store {i64, i8*} %file_path.value, {i64, i8*}* %file_path.0
	store {i64, i8*} %mode.value, {i64, i8*}* %mode.0
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %file_path.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %mode.0, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%5 = call %"cstd::s__IO_FILE"* (i8*, i8*, %"cstd::s__IO_FILE"*) @"freopen"(i8* %1, i8* %3, %"cstd::s__IO_FILE"* %4)
	store %"cstd::s__IO_FILE"* %5, %"cstd::s__IO_FILE"** %tmp.80
	%6 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %tmp.80
	ret %"cstd::s__IO_FILE"* %6
7:
	ret %"cstd::s__IO_FILE"* undef
}
define i32 @"std::close::(*cstd::s__IO_FILE)"(%"cstd::s__IO_FILE"* %file.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%tmp.81 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%1 = call i32 (%"cstd::s__IO_FILE"*) @"fclose"(%"cstd::s__IO_FILE"* %0)
	store i32 %1, i32* %tmp.81
	%2 = load i32, i32* %tmp.81
	ret i32 %2
3:
	ret i32 undef
}
define i32 @"std::write_string::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %file.value, {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%tmp.82 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%1 = load {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%2 = call i32 (%"cstd::s__IO_FILE"*, {i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %0, {i64, {i64*, i8*, %"runtime::Type"*}*} %1)
	store i32 %2, i32* %tmp.82
	%3 = load i32, i32* %tmp.82
	ret i32 %3
4:
	ret i32 undef
}
define void @"std::read_line::(*cstd::s__IO_FILE, [char])"(%"cstd::s__IO_FILE"* %file.value, {i64, i8*} %str.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%str.0 = alloca {i64, i8*}
	%tmp.83 = alloca i8*
	%tmp.84 = alloca i64
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store {i64, i8*} %str.value, {i64, i8*}* %str.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 0
	%3 = load i64, i64* %2
	%4 = trunc i64 %3 to i32
	%5 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%6 = call i8* (i8*, i32, %"cstd::s__IO_FILE"*) @"fgets"(i8* %1, i32 %4, %"cstd::s__IO_FILE"* %5)
	store i8* %6, i8** %tmp.83
	%7 = load {i64, i8*}, {i64, i8*}* %str.0
	%8 = call i64 ({i64, i8*}) @"std::strlen::([char])"({i64, i8*} %7)
	store i64 %8, i64* %tmp.84
	%9 = load i64, i64* %tmp.84
	%10 = zext i32 1 to i64
	%11 = add i64 %9, %10
	%12 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 0
	store i64 %11, i64* %12
	ret void
}
define i32 @"std::seek::(*cstd::s__IO_FILE, int64, int32)"(%"cstd::s__IO_FILE"* %file.value, i64 %offset.value, i32 %whence.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%offset.0 = alloca i64
	%whence.0 = alloca i32
	%tmp.85 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store i64 %offset.value, i64* %offset.0
	store i32 %whence.value, i32* %whence.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%1 = load i64, i64* %offset.0
	%2 = load i32, i32* %whence.0
	%3 = call i32 (%"cstd::s__IO_FILE"*, i64, i32) @"fseek"(%"cstd::s__IO_FILE"* %0, i64 %1, i32 %2)
	store i32 %3, i32* %tmp.85
	%4 = load i32, i32* %tmp.85
	ret i32 %4
5:
	ret i32 undef
}
define i64 @"std::tell::(*cstd::s__IO_FILE)"(%"cstd::s__IO_FILE"* %file.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%tmp.86 = alloca i64
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%1 = call i64 (%"cstd::s__IO_FILE"*) @"ftell"(%"cstd::s__IO_FILE"* %0)
	store i64 %1, i64* %tmp.86
	%2 = load i64, i64* %tmp.86
	ret i64 %2
3:
	ret i64 undef
}
define i64 @"std::strlen::([char])"({i64, i8*} %str.value) {
start:
	%str.0 = alloca {i64, i8*}
	%tmp.87 = alloca i64
	store {i64, i8*} %str.value, {i64, i8*}* %str.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = call i64 (i8*) @"strlen"(i8* %1)
	store i64 %2, i64* %tmp.87
	%3 = load i64, i64* %tmp.87
	ret i64 %3
4:
	ret i64 undef
}
define double @"std::max::(float64, float64)"(double %a.value, double %b.value) {
start:
	%a.0 = alloca double
	%b.0 = alloca double
	%tmp.88 = alloca double
	store double %a.value, double* %a.0
	store double %b.value, double* %b.0
	%0 = load double, double* %a.0
	%1 = load double, double* %b.0
	%2 = call double (double, double) @"fmax"(double %0, double %1)
	store double %2, double* %tmp.88
	%3 = load double, double* %tmp.88
	ret double %3
4:
	ret double undef
}
define double @"std::min::(float64, float64)"(double %a.value, double %b.value) {
start:
	%a.0 = alloca double
	%b.0 = alloca double
	%tmp.89 = alloca double
	store double %a.value, double* %a.0
	store double %b.value, double* %b.0
	%0 = load double, double* %a.0
	%1 = load double, double* %b.0
	%2 = call double (double, double) @"fmin"(double %0, double %1)
	store double %2, double* %tmp.89
	%3 = load double, double* %tmp.89
	ret double %3
4:
	ret double undef
}
define i8* @"std::memcopy::(*, *, uint64)"(i8* %src.value, i8* %dest.value, i64 %size.value) {
start:
	%src.0 = alloca i8*
	%dest.0 = alloca i8*
	%size.0 = alloca i64
	%tmp.90 = alloca i8*
	store i8* %src.value, i8** %src.0
	store i8* %dest.value, i8** %dest.0
	store i64 %size.value, i64* %size.0
	%0 = load i8*, i8** %dest.0
	%1 = load i8*, i8** %src.0
	%2 = load i64, i64* %size.0
	%3 = call i8* (i8*, i8*, i64) @"memcpy"(i8* %0, i8* %1, i64 %2)
	store i8* %3, i8** %tmp.90
	%4 = load i8*, i8** %tmp.90
	ret i8* %4
5:
	ret i8* undef
}
define i32 @"std::system::([char])"({i64, i8*} %command.value) {
start:
	%command.0 = alloca {i64, i8*}
	%tmp.91 = alloca i32
	store {i64, i8*} %command.value, {i64, i8*}* %command.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %command.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = call i32 (i8*) @"system"(i8* %1)
	store i32 %2, i32* %tmp.91
	%3 = load i32, i32* %tmp.91
	ret i32 %3
4:
	ret i32 undef
}
define i1 @"std::starts_with::([char], [char])"({i64, i8*} %str.value, {i64, i8*} %pre.value) {
start:
	%str.0 = alloca {i64, i8*}
	%pre.0 = alloca {i64, i8*}
	%tmp.92 = alloca i64
	%tmp.93 = alloca i32
	store {i64, i8*} %str.value, {i64, i8*}* %str.0
	store {i64, i8*} %pre.value, {i64, i8*}* %pre.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %pre.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = getelementptr {i64, i8*}, {i64, i8*}* %pre.0, i32 0, i32 1
	%5 = load i8*, i8** %4
	%6 = call i64 (i8*) @"strlen"(i8* %5)
	store i64 %6, i64* %tmp.92
	%7 = load i64, i64* %tmp.92
	%8 = call i32 (i8*, i8*, i64) @"strncmp"(i8* %1, i8* %3, i64 %7)
	store i32 %8, i32* %tmp.93
	%9 = load i32, i32* %tmp.93
	%10 = icmp eq i32 %9, 0
	ret i1 %10
11:
	ret i1 undef
}
define void @"std::executable_file::(*[char])"({i64, i8*}* %resolved.value) {
start:
	%resolved.0 = alloca {i64, i8*}*
	%len.0 = alloca i64
	%tmp.94 = alloca {i64, i8*}
	%tmp.95 = alloca i64
	%tmp.96 = alloca i64
	store {i64, i8*}* %resolved.value, {i64, i8*}** %resolved.0
	store i64 zeroinitializer, i64* %len.0
	%0 = getelementptr [15 x i8], [15 x i8]* @"std::str.31", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.94
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.94, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%5 = getelementptr {i64, i8*}, {i64, i8*}* %4, i32 0, i32 1
	%6 = load i8*, i8** %5
	%7 = zext i32 4096 to i64
	%8 = call i64 (i8*, i8*, i64) @"readlink"(i8* %3, i8* %6, i64 %7)
	store i64 %8, i64* %tmp.95
	%9 = load i64, i64* %tmp.95
	store i64 %9, i64* %len.0
	%10 = load i64, i64* %len.0
	%11 = sub i32 0, 1
	%12 = sext i32 %11 to i64
	%13 = icmp ne i64 %10, %12
	br i1 %13, label %14, label %20
14:
	%15 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%16 = getelementptr {i64, i8*}, {i64, i8*}* %15, i32 0, i32 1
	%17 = load i64, i64* %len.0
	%18 = load i8*, i8** %16
	%19 = getelementptr i8, i8* %18, i64 %17
	store i8 0, i8* %19
	br label %20
20:
	%21 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%22 = getelementptr {i64, i8*}, {i64, i8*}* %21, i32 0, i32 1
	%23 = load i8*, i8** %22
	%24 = call i64 (i8*) @"strlen"(i8* %23)
	store i64 %24, i64* %tmp.96
	%25 = load i64, i64* %tmp.96
	%26 = zext i32 1 to i64
	%27 = add i64 %25, %26
	%28 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%29 = getelementptr {i64, i8*}, {i64, i8*}* %28, i32 0, i32 0
	store i64 %27, i64* %29
	ret void
}
define void @"std::absolute_path::([char], *[char])"({i64, i8*} %pathname.value, {i64, i8*}* %resolved.value) {
start:
	%pathname.0 = alloca {i64, i8*}
	%resolved.0 = alloca {i64, i8*}*
	%tmp.97 = alloca i8*
	%tmp.98 = alloca i64
	store {i64, i8*} %pathname.value, {i64, i8*}* %pathname.0
	store {i64, i8*}* %resolved.value, {i64, i8*}** %resolved.0
	%0 = getelementptr {i64, i8*}, {i64, i8*}* %pathname.0, i32 0, i32 1
	%1 = load i8*, i8** %0
	%2 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%3 = getelementptr {i64, i8*}, {i64, i8*}* %2, i32 0, i32 1
	%4 = load i8*, i8** %3
	%5 = call i8* (i8*, i8*) @"realpath"(i8* %1, i8* %4)
	store i8* %5, i8** %tmp.97
	%6 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%7 = getelementptr {i64, i8*}, {i64, i8*}* %6, i32 0, i32 1
	%8 = load i8*, i8** %7
	%9 = call i64 (i8*) @"strlen"(i8* %8)
	store i64 %9, i64* %tmp.98
	%10 = load i64, i64* %tmp.98
	%11 = zext i32 1 to i64
	%12 = add i64 %10, %11
	%13 = load {i64, i8*}*, {i64, i8*}** %resolved.0
	%14 = getelementptr {i64, i8*}, {i64, i8*}* %13, i32 0, i32 0
	store i64 %12, i64* %14
	ret void
}
declare %"runtime::Type"* @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %a.value)
declare i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %a.value, %"runtime::Type"* %b.value)
declare i64 @"readlink"(i8*, i8*, i64)
declare i8* @"realpath"(i8*, i8*)
define void @"std::__main__::([[char]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"runtime::__main__::([[char]])"({i64, {i64, i8*}*} %0)
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"linux::__main__::([[char]])"({i64, {i64, i8*}*} %1)
	ret void
}
define i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %file.value, %"runtime::Type"* %tpe.value, i8* %value.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%tpe.0 = alloca %"runtime::Type"*
	%value.0 = alloca i8*
	%tmp.5 = alloca i1
	%tmp.6 = alloca {i64, i8*}
	%tmp.7 = alloca i32
	%tmp.8 = alloca {i64, i8*}
	%tmp.9 = alloca i32
	%tmp.10 = alloca i1
	%tmp.11 = alloca {i64, i8*}
	%tmp.12 = alloca i32
	%tmp.13 = alloca {i64, i8*}
	%tmp.14 = alloca i32
	%tmp.15 = alloca {i64, i8*}
	%tmp.16 = alloca i32
	%tmp.17 = alloca {i64, i8*}
	%tmp.18 = alloca i32
	%tmp.19 = alloca {i64, i8*}
	%tmp.20 = alloca i32
	%tmp.21 = alloca {i64, i8*}
	%tmp.22 = alloca i32
	%tmp.23 = alloca {i64, i8*}
	%tmp.24 = alloca i32
	%tmp.25 = alloca {i64, i8*}
	%tmp.26 = alloca i32
	%tmp.27 = alloca {i64, i8*}
	%tmp.28 = alloca i32
	%tmp.29 = alloca {i64, i8*}
	%tmp.30 = alloca i32
	%tmp.31 = alloca {i64, i8*}
	%tmp.32 = alloca i32
	%tmp.33 = alloca {i64, i8*}
	%tmp.34 = alloca i32
	%tmp.35 = alloca {i64, i8*}
	%tmp.36 = alloca i32
	%tmp.37 = alloca {i64, i8*}
	%tmp.38 = alloca i32
	%tmp.39 = alloca {i64, i8*}
	%tmp.40 = alloca i32
	%tmp.41 = alloca {i64, i8*}
	%tmp.42 = alloca i32
	%tmp.43 = alloca {i64, i8*}
	%tmp.44 = alloca i32
	%v.21 = alloca %"runtime::Ref"*
	%tmp.45 = alloca i32
	%arr.22 = alloca {i64, i8**}
	%size.22 = alloca i64
	%elements.22 = alloca i8**
	%sum.22 = alloca i32
	%tmp.46 = alloca {i64, i8*}
	%tmp.47 = alloca i32
	%i.23 = alloca i32
	%tmp.48 = alloca i32
	%tmp.49 = alloca {i64, i8*}
	%tmp.50 = alloca i32
	%tmp.51 = alloca {i64, i8*}
	%tmp.52 = alloca i32
	%size.25 = alloca i64
	%sum.25 = alloca i32
	%tmp.53 = alloca {i64, i8*}
	%tmp.54 = alloca i32
	%i.26 = alloca i32
	%tmp.55 = alloca i32
	%tmp.56 = alloca {i64, i8*}
	%tmp.57 = alloca i32
	%tmp.58 = alloca {i64, i8*}
	%tmp.59 = alloca i32
	%tmp.60 = alloca i1
	%fields.28 = alloca {i64, %"runtime::Field"*}
	%sum.28 = alloca i32
	%tmp.61 = alloca {i64, i8*}
	%tmp.62 = alloca i32
	%i.29 = alloca i32
	%field.29 = alloca %"runtime::Field"
	%tmp.63 = alloca {i64, i8*}
	%tmp.64 = alloca i32
	%tmp.65 = alloca i32
	%tmp.66 = alloca {i64, i8*}
	%tmp.67 = alloca i32
	%tmp.68 = alloca {i64, i8*}
	%tmp.69 = alloca i32
	%v.31 = alloca i64
	%i.32 = alloca i32
	%str.31 = alloca {i64, i8*}
	%tmp.70 = alloca {i64, i8*}
	%i.33 = alloca i32
	%ev.33 = alloca %"runtime::EnumValue"
	%tmp.71 = alloca {i64, i8*}
	%tmp.72 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store %"runtime::Type"* %tpe.value, %"runtime::Type"** %tpe.0
	store i8* %value.value, i8** %value.0
	%0 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%1 = ptrtoint %"runtime::Type"* %0 to i64
	%2 = icmp ne i64 %1, 0
	%3 = xor i1 %2, true
	br i1 %3, label %4, label %5
4:
	store i1 true, i1* %tmp.5
	br label %10
5:
	%6 = load i8*, i8** %value.0
	%7 = ptrtoint i8* %6 to i64
	%8 = icmp ne i64 %7, 0
	%9 = xor i1 %8, true
	store i1 %9, i1* %tmp.5
	br label %10
10:
	%11 = load i1, i1* %tmp.5
	br i1 %11, label %12, label %22
12:
	%13 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%14 = getelementptr [3 x i8], [3 x i8]* @"std::str.0", i64 0, i64 0
	%15 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %14, 1
	store {i64, i8*} %15, {i64, i8*}* %tmp.6
	%16 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.6, i32 0, i32 1
	%17 = load i8*, i8** %16
	%18 = load i8*, i8** %value.0
	%19 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %13, i8* %17, i8* %18)
	store i32 %19, i32* %tmp.7
	%20 = load i32, i32* %tmp.7
	ret i32 %20
21:
	br label %646
22:
	%23 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%24 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %23, %"runtime::Type"* @"type::[char]")
	br i1 %24, label %25, label %38
25:
	%26 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%27 = getelementptr [3 x i8], [3 x i8]* @"std::str.1", i64 0, i64 0
	%28 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %27, 1
	store {i64, i8*} %28, {i64, i8*}* %tmp.8
	%29 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.8, i32 0, i32 1
	%30 = load i8*, i8** %29
	%31 = load i8*, i8** %value.0
	%32 = bitcast i8* %31 to {i64, i8*}*
	%33 = getelementptr {i64, i8*}, {i64, i8*}* %32, i32 0, i32 1
	%34 = load i8*, i8** %33
	%35 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %26, i8* %30, i8* %34)
	store i32 %35, i32* %tmp.9
	%36 = load i32, i32* %tmp.9
	ret i32 %36
37:
	br label %646
38:
	%39 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%40 = getelementptr %"runtime::Type", %"runtime::Type"* %39, i32 0, i32 0
	%41 = load i32, i32* %40
	%42 = icmp eq i32 %41, 6
	br i1 %42, label %44, label %43
43:
	store i1 false, i1* %tmp.10
	br label %49
44:
	%45 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%46 = getelementptr %"runtime::Type", %"runtime::Type"* %45, i32 0, i32 4
	%47 = load %"runtime::Type"*, %"runtime::Type"** %46
	%48 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %47, %"runtime::Type"* @"type::char")
	store i1 %48, i1* %tmp.10
	br label %49
49:
	%50 = load i1, i1* %tmp.10
	br i1 %50, label %51, label %62
51:
	%52 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%53 = getelementptr [3 x i8], [3 x i8]* @"std::str.2", i64 0, i64 0
	%54 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %53, 1
	store {i64, i8*} %54, {i64, i8*}* %tmp.11
	%55 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.11, i32 0, i32 1
	%56 = load i8*, i8** %55
	%57 = load i8*, i8** %value.0
	%58 = bitcast i8* %57 to i8*
	%59 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %52, i8* %56, i8* %58)
	store i32 %59, i32* %tmp.12
	%60 = load i32, i32* %tmp.12
	ret i32 %60
61:
	br label %646
62:
	%63 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%64 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %63, %"runtime::Type"* @"type::*char")
	br i1 %64, label %65, label %77
65:
	%66 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%67 = getelementptr [3 x i8], [3 x i8]* @"std::str.3", i64 0, i64 0
	%68 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %67, 1
	store {i64, i8*} %68, {i64, i8*}* %tmp.13
	%69 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.13, i32 0, i32 1
	%70 = load i8*, i8** %69
	%71 = load i8*, i8** %value.0
	%72 = bitcast i8* %71 to i8**
	%73 = load i8*, i8** %72
	%74 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %66, i8* %70, i8* %73)
	store i32 %74, i32* %tmp.14
	%75 = load i32, i32* %tmp.14
	ret i32 %75
76:
	br label %646
77:
	%78 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%79 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %78, %"runtime::Type"* @"type::uint64")
	br i1 %79, label %80, label %92
80:
	%81 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%82 = getelementptr [4 x i8], [4 x i8]* @"std::str.4", i64 0, i64 0
	%83 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %82, 1
	store {i64, i8*} %83, {i64, i8*}* %tmp.15
	%84 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.15, i32 0, i32 1
	%85 = load i8*, i8** %84
	%86 = load i8*, i8** %value.0
	%87 = bitcast i8* %86 to i64*
	%88 = load i64, i64* %87
	%89 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %81, i8* %85, i64 %88)
	store i32 %89, i32* %tmp.16
	%90 = load i32, i32* %tmp.16
	ret i32 %90
91:
	br label %646
92:
	%93 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%94 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %93, %"runtime::Type"* @"type::char")
	br i1 %94, label %95, label %107
95:
	%96 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%97 = getelementptr [3 x i8], [3 x i8]* @"std::str.5", i64 0, i64 0
	%98 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %97, 1
	store {i64, i8*} %98, {i64, i8*}* %tmp.17
	%99 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.17, i32 0, i32 1
	%100 = load i8*, i8** %99
	%101 = load i8*, i8** %value.0
	%102 = bitcast i8* %101 to i8*
	%103 = load i8, i8* %102
	%104 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %96, i8* %100, i8 %103)
	store i32 %104, i32* %tmp.18
	%105 = load i32, i32* %tmp.18
	ret i32 %105
106:
	br label %646
107:
	%108 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%109 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %108, %"runtime::Type"* @"type::int8")
	br i1 %109, label %110, label %122
110:
	%111 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%112 = getelementptr [5 x i8], [5 x i8]* @"std::str.6", i64 0, i64 0
	%113 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %112, 1
	store {i64, i8*} %113, {i64, i8*}* %tmp.19
	%114 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.19, i32 0, i32 1
	%115 = load i8*, i8** %114
	%116 = load i8*, i8** %value.0
	%117 = bitcast i8* %116 to i8*
	%118 = load i8, i8* %117
	%119 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %111, i8* %115, i8 %118)
	store i32 %119, i32* %tmp.20
	%120 = load i32, i32* %tmp.20
	ret i32 %120
121:
	br label %646
122:
	%123 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%124 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %123, %"runtime::Type"* @"type::uint8")
	br i1 %124, label %125, label %137
125:
	%126 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%127 = getelementptr [5 x i8], [5 x i8]* @"std::str.7", i64 0, i64 0
	%128 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %127, 1
	store {i64, i8*} %128, {i64, i8*}* %tmp.21
	%129 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.21, i32 0, i32 1
	%130 = load i8*, i8** %129
	%131 = load i8*, i8** %value.0
	%132 = bitcast i8* %131 to i8*
	%133 = load i8, i8* %132
	%134 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %126, i8* %130, i8 %133)
	store i32 %134, i32* %tmp.22
	%135 = load i32, i32* %tmp.22
	ret i32 %135
136:
	br label %646
137:
	%138 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%139 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %138, %"runtime::Type"* @"type::int16")
	br i1 %139, label %140, label %152
140:
	%141 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%142 = getelementptr [4 x i8], [4 x i8]* @"std::str.8", i64 0, i64 0
	%143 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %142, 1
	store {i64, i8*} %143, {i64, i8*}* %tmp.23
	%144 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.23, i32 0, i32 1
	%145 = load i8*, i8** %144
	%146 = load i8*, i8** %value.0
	%147 = bitcast i8* %146 to i16*
	%148 = load i16, i16* %147
	%149 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %141, i8* %145, i16 %148)
	store i32 %149, i32* %tmp.24
	%150 = load i32, i32* %tmp.24
	ret i32 %150
151:
	br label %646
152:
	%153 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%154 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %153, %"runtime::Type"* @"type::uint16")
	br i1 %154, label %155, label %167
155:
	%156 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%157 = getelementptr [4 x i8], [4 x i8]* @"std::str.9", i64 0, i64 0
	%158 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %157, 1
	store {i64, i8*} %158, {i64, i8*}* %tmp.25
	%159 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.25, i32 0, i32 1
	%160 = load i8*, i8** %159
	%161 = load i8*, i8** %value.0
	%162 = bitcast i8* %161 to i16*
	%163 = load i16, i16* %162
	%164 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %156, i8* %160, i16 %163)
	store i32 %164, i32* %tmp.26
	%165 = load i32, i32* %tmp.26
	ret i32 %165
166:
	br label %646
167:
	%168 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%169 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %168, %"runtime::Type"* @"type::int32")
	br i1 %169, label %170, label %182
170:
	%171 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%172 = getelementptr [3 x i8], [3 x i8]* @"std::str.10", i64 0, i64 0
	%173 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %172, 1
	store {i64, i8*} %173, {i64, i8*}* %tmp.27
	%174 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.27, i32 0, i32 1
	%175 = load i8*, i8** %174
	%176 = load i8*, i8** %value.0
	%177 = bitcast i8* %176 to i32*
	%178 = load i32, i32* %177
	%179 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %171, i8* %175, i32 %178)
	store i32 %179, i32* %tmp.28
	%180 = load i32, i32* %tmp.28
	ret i32 %180
181:
	br label %646
182:
	%183 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%184 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %183, %"runtime::Type"* @"type::uint32")
	br i1 %184, label %185, label %197
185:
	%186 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%187 = getelementptr [3 x i8], [3 x i8]* @"std::str.11", i64 0, i64 0
	%188 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %187, 1
	store {i64, i8*} %188, {i64, i8*}* %tmp.29
	%189 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.29, i32 0, i32 1
	%190 = load i8*, i8** %189
	%191 = load i8*, i8** %value.0
	%192 = bitcast i8* %191 to i32*
	%193 = load i32, i32* %192
	%194 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %186, i8* %190, i32 %193)
	store i32 %194, i32* %tmp.30
	%195 = load i32, i32* %tmp.30
	ret i32 %195
196:
	br label %646
197:
	%198 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%199 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %198, %"runtime::Type"* @"type::int64")
	br i1 %199, label %200, label %212
200:
	%201 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%202 = getelementptr [4 x i8], [4 x i8]* @"std::str.12", i64 0, i64 0
	%203 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %202, 1
	store {i64, i8*} %203, {i64, i8*}* %tmp.31
	%204 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.31, i32 0, i32 1
	%205 = load i8*, i8** %204
	%206 = load i8*, i8** %value.0
	%207 = bitcast i8* %206 to i64*
	%208 = load i64, i64* %207
	%209 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %201, i8* %205, i64 %208)
	store i32 %209, i32* %tmp.32
	%210 = load i32, i32* %tmp.32
	ret i32 %210
211:
	br label %646
212:
	%213 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%214 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %213, %"runtime::Type"* @"type::uint64")
	br i1 %214, label %215, label %227
215:
	%216 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%217 = getelementptr [4 x i8], [4 x i8]* @"std::str.13", i64 0, i64 0
	%218 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %217, 1
	store {i64, i8*} %218, {i64, i8*}* %tmp.33
	%219 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.33, i32 0, i32 1
	%220 = load i8*, i8** %219
	%221 = load i8*, i8** %value.0
	%222 = bitcast i8* %221 to i64*
	%223 = load i64, i64* %222
	%224 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %216, i8* %220, i64 %223)
	store i32 %224, i32* %tmp.34
	%225 = load i32, i32* %tmp.34
	ret i32 %225
226:
	br label %646
227:
	%228 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%229 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %228, %"runtime::Type"* @"type::float64")
	br i1 %229, label %230, label %242
230:
	%231 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%232 = getelementptr [4 x i8], [4 x i8]* @"std::str.14", i64 0, i64 0
	%233 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %232, 1
	store {i64, i8*} %233, {i64, i8*}* %tmp.35
	%234 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.35, i32 0, i32 1
	%235 = load i8*, i8** %234
	%236 = load i8*, i8** %value.0
	%237 = bitcast i8* %236 to double*
	%238 = load double, double* %237
	%239 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %231, i8* %235, double %238)
	store i32 %239, i32* %tmp.36
	%240 = load i32, i32* %tmp.36
	ret i32 %240
241:
	br label %646
242:
	%243 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%244 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %243, %"runtime::Type"* @"type::float32")
	br i1 %244, label %245, label %257
245:
	%246 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%247 = getelementptr [3 x i8], [3 x i8]* @"std::str.15", i64 0, i64 0
	%248 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %247, 1
	store {i64, i8*} %248, {i64, i8*}* %tmp.37
	%249 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.37, i32 0, i32 1
	%250 = load i8*, i8** %249
	%251 = load i8*, i8** %value.0
	%252 = bitcast i8* %251 to float*
	%253 = load float, float* %252
	%254 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %246, i8* %250, float %253)
	store i32 %254, i32* %tmp.38
	%255 = load i32, i32* %tmp.38
	ret i32 %255
256:
	br label %646
257:
	%258 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%259 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %258, %"runtime::Type"* @"type::bool")
	br i1 %259, label %260, label %283
260:
	%261 = load i8*, i8** %value.0
	%262 = bitcast i8* %261 to i1*
	%263 = load i1, i1* %262
	br i1 %263, label %264, label %273
264:
	%265 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%266 = getelementptr [5 x i8], [5 x i8]* @"std::str.16", i64 0, i64 0
	%267 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %266, 1
	store {i64, i8*} %267, {i64, i8*}* %tmp.39
	%268 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.39, i32 0, i32 1
	%269 = load i8*, i8** %268
	%270 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %265, i8* %269)
	store i32 %270, i32* %tmp.40
	%271 = load i32, i32* %tmp.40
	ret i32 %271
272:
	br label %282
273:
	%274 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%275 = getelementptr [6 x i8], [6 x i8]* @"std::str.17", i64 0, i64 0
	%276 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %275, 1
	store {i64, i8*} %276, {i64, i8*}* %tmp.41
	%277 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.41, i32 0, i32 1
	%278 = load i8*, i8** %277
	%279 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %274, i8* %278)
	store i32 %279, i32* %tmp.42
	%280 = load i32, i32* %tmp.42
	ret i32 %280
281:
	br label %282
282:
	br label %646
283:
	%284 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%285 = getelementptr %"runtime::Type", %"runtime::Type"* %284, i32 0, i32 0
	%286 = load i32, i32* %285
	%287 = icmp eq i32 %286, 7
	br i1 %287, label %288, label %300
288:
	%289 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%290 = getelementptr [3 x i8], [3 x i8]* @"std::str.18", i64 0, i64 0
	%291 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %290, 1
	store {i64, i8*} %291, {i64, i8*}* %tmp.43
	%292 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.43, i32 0, i32 1
	%293 = load i8*, i8** %292
	%294 = load i8*, i8** %value.0
	%295 = bitcast i8* %294 to i8**
	%296 = load i8*, i8** %295
	%297 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %289, i8* %293, i8* %296)
	store i32 %297, i32* %tmp.44
	%298 = load i32, i32* %tmp.44
	ret i32 %298
299:
	br label %646
300:
	%301 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%302 = getelementptr %"runtime::Type", %"runtime::Type"* %301, i32 0, i32 0
	%303 = load i32, i32* %302
	%304 = icmp eq i32 %303, 8
	br i1 %304, label %305, label %318
305:
	store %"runtime::Ref"* zeroinitializer, %"runtime::Ref"** %v.21
	%306 = load i8*, i8** %value.0
	%307 = bitcast i8* %306 to %"runtime::Ref"*
	store %"runtime::Ref"* %307, %"runtime::Ref"** %v.21
	%308 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%309 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%310 = getelementptr %"runtime::Type", %"runtime::Type"* %309, i32 0, i32 4
	%311 = load %"runtime::Type"*, %"runtime::Type"** %310
	%312 = load %"runtime::Ref"*, %"runtime::Ref"** %v.21
	%313 = getelementptr %"runtime::Ref", %"runtime::Ref"* %312, i32 0, i32 1
	%314 = load i8*, i8** %313
	%315 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %308, %"runtime::Type"* %311, i8* %314)
	store i32 %315, i32* %tmp.45
	%316 = load i32, i32* %tmp.45
	ret i32 %316
317:
	br label %646
318:
	%319 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%320 = getelementptr %"runtime::Type", %"runtime::Type"* %319, i32 0, i32 0
	%321 = load i32, i32* %320
	%322 = icmp eq i32 %321, 5
	br i1 %322, label %323, label %398
323:
	store {i64, i8**} zeroinitializer, {i64, i8**}* %arr.22
	%324 = load i8*, i8** %value.0
	%325 = bitcast i8* %324 to {i64, i8**}*
	%326 = load {i64, i8**}, {i64, i8**}* %325
	store {i64, i8**} %326, {i64, i8**}* %arr.22
	store i64 zeroinitializer, i64* %size.22
	%327 = getelementptr {i64, i8**}, {i64, i8**}* %arr.22, i32 0, i32 0
	%328 = load i64, i64* %327
	store i64 %328, i64* %size.22
	store i8** zeroinitializer, i8*** %elements.22
	%329 = getelementptr {i64, i8**}, {i64, i8**}* %arr.22, i32 0, i32 1
	%330 = load i8**, i8*** %329
	store i8** %330, i8*** %elements.22
	store i32 zeroinitializer, i32* %sum.22
	store i32 0, i32* %sum.22
	%331 = load i32, i32* %sum.22
	%332 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%333 = getelementptr [2 x i8], [2 x i8]* @"std::str.19", i64 0, i64 0
	%334 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %333, 1
	store {i64, i8*} %334, {i64, i8*}* %tmp.46
	%335 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.46, i32 0, i32 1
	%336 = load i8*, i8** %335
	%337 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %332, i8* %336)
	store i32 %337, i32* %tmp.47
	%338 = load i32, i32* %tmp.47
	%339 = add i32 %331, %338
	store i32 %339, i32* %sum.22
	%340 = load i64, i64* %size.22
	%341 = trunc i64 %340 to i32
	store i32 0, i32* %i.23
	br label %342
342:
	%343 = load i32, i32* %i.23
	%344 = icmp slt i32 %343, %341
	br i1 %344, label %345, label %386
345:
	%346 = load i32, i32* %sum.22
	%347 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%348 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%349 = getelementptr %"runtime::Type", %"runtime::Type"* %348, i32 0, i32 4
	%350 = load %"runtime::Type"*, %"runtime::Type"** %349
	%351 = load i8**, i8*** %elements.22
	%352 = ptrtoint i8** %351 to i64
	%353 = load i32, i32* %i.23
	%354 = zext i32 %353 to i64
	%355 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%356 = getelementptr %"runtime::Type", %"runtime::Type"* %355, i32 0, i32 4
	%357 = load %"runtime::Type"*, %"runtime::Type"** %356
	%358 = getelementptr %"runtime::Type", %"runtime::Type"* %357, i32 0, i32 5
	%359 = load i64, i64* %358
	%360 = mul i64 %354, %359
	%361 = add i64 %352, %360
	%362 = inttoptr i64 %361 to i8**
	%363 = bitcast i8** %362 to i8*
	%364 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %347, %"runtime::Type"* %350, i8* %363)
	store i32 %364, i32* %tmp.48
	%365 = load i32, i32* %tmp.48
	%366 = add i32 %346, %365
	store i32 %366, i32* %sum.22
	%367 = load i32, i32* %i.23
	%368 = load i64, i64* %size.22
	%369 = zext i32 1 to i64
	%370 = sub i64 %368, %369
	%371 = zext i32 %367 to i64
	%372 = icmp ult i64 %371, %370
	br i1 %372, label %373, label %383
373:
	%374 = load i32, i32* %sum.22
	%375 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%376 = getelementptr [3 x i8], [3 x i8]* @"std::str.20", i64 0, i64 0
	%377 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %376, 1
	store {i64, i8*} %377, {i64, i8*}* %tmp.49
	%378 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.49, i32 0, i32 1
	%379 = load i8*, i8** %378
	%380 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %375, i8* %379)
	store i32 %380, i32* %tmp.50
	%381 = load i32, i32* %tmp.50
	%382 = add i32 %374, %381
	store i32 %382, i32* %sum.22
	br label %383
383:
	br label %384
384:
	%385 = add i32 %343, 1
	store i32 %385, i32* %i.23
	br label %342
386:
	%387 = load i32, i32* %sum.22
	%388 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%389 = getelementptr [2 x i8], [2 x i8]* @"std::str.21", i64 0, i64 0
	%390 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %389, 1
	store {i64, i8*} %390, {i64, i8*}* %tmp.51
	%391 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.51, i32 0, i32 1
	%392 = load i8*, i8** %391
	%393 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %388, i8* %392)
	store i32 %393, i32* %tmp.52
	%394 = load i32, i32* %tmp.52
	%395 = add i32 %387, %394
	store i32 %395, i32* %sum.22
	%396 = load i32, i32* %sum.22
	ret i32 %396
397:
	br label %646
398:
	%399 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%400 = getelementptr %"runtime::Type", %"runtime::Type"* %399, i32 0, i32 0
	%401 = load i32, i32* %400
	%402 = icmp eq i32 %401, 6
	br i1 %402, label %403, label %473
403:
	store i64 zeroinitializer, i64* %size.25
	%404 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%405 = getelementptr %"runtime::Type", %"runtime::Type"* %404, i32 0, i32 3
	%406 = load i64, i64* %405
	store i64 %406, i64* %size.25
	store i32 zeroinitializer, i32* %sum.25
	store i32 0, i32* %sum.25
	%407 = load i32, i32* %sum.25
	%408 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%409 = getelementptr [2 x i8], [2 x i8]* @"std::str.22", i64 0, i64 0
	%410 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %409, 1
	store {i64, i8*} %410, {i64, i8*}* %tmp.53
	%411 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.53, i32 0, i32 1
	%412 = load i8*, i8** %411
	%413 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %408, i8* %412)
	store i32 %413, i32* %tmp.54
	%414 = load i32, i32* %tmp.54
	%415 = add i32 %407, %414
	store i32 %415, i32* %sum.25
	%416 = load i64, i64* %size.25
	%417 = trunc i64 %416 to i32
	store i32 0, i32* %i.26
	br label %418
418:
	%419 = load i32, i32* %i.26
	%420 = icmp slt i32 %419, %417
	br i1 %420, label %421, label %461
421:
	%422 = load i32, i32* %sum.25
	%423 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%424 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%425 = getelementptr %"runtime::Type", %"runtime::Type"* %424, i32 0, i32 4
	%426 = load %"runtime::Type"*, %"runtime::Type"** %425
	%427 = load i8*, i8** %value.0
	%428 = ptrtoint i8* %427 to i64
	%429 = load i32, i32* %i.26
	%430 = zext i32 %429 to i64
	%431 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%432 = getelementptr %"runtime::Type", %"runtime::Type"* %431, i32 0, i32 4
	%433 = load %"runtime::Type"*, %"runtime::Type"** %432
	%434 = getelementptr %"runtime::Type", %"runtime::Type"* %433, i32 0, i32 5
	%435 = load i64, i64* %434
	%436 = mul i64 %430, %435
	%437 = add i64 %428, %436
	%438 = inttoptr i64 %437 to i8*
	%439 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %423, %"runtime::Type"* %426, i8* %438)
	store i32 %439, i32* %tmp.55
	%440 = load i32, i32* %tmp.55
	%441 = add i32 %422, %440
	store i32 %441, i32* %sum.25
	%442 = load i32, i32* %i.26
	%443 = load i64, i64* %size.25
	%444 = zext i32 1 to i64
	%445 = sub i64 %443, %444
	%446 = zext i32 %442 to i64
	%447 = icmp ult i64 %446, %445
	br i1 %447, label %448, label %458
448:
	%449 = load i32, i32* %sum.25
	%450 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%451 = getelementptr [3 x i8], [3 x i8]* @"std::str.23", i64 0, i64 0
	%452 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %451, 1
	store {i64, i8*} %452, {i64, i8*}* %tmp.56
	%453 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.56, i32 0, i32 1
	%454 = load i8*, i8** %453
	%455 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %450, i8* %454)
	store i32 %455, i32* %tmp.57
	%456 = load i32, i32* %tmp.57
	%457 = add i32 %449, %456
	store i32 %457, i32* %sum.25
	br label %458
458:
	br label %459
459:
	%460 = add i32 %419, 1
	store i32 %460, i32* %i.26
	br label %418
461:
	%462 = load i32, i32* %sum.25
	%463 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%464 = getelementptr [2 x i8], [2 x i8]* @"std::str.24", i64 0, i64 0
	%465 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %464, 1
	store {i64, i8*} %465, {i64, i8*}* %tmp.58
	%466 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.58, i32 0, i32 1
	%467 = load i8*, i8** %466
	%468 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %463, i8* %467)
	store i32 %468, i32* %tmp.59
	%469 = load i32, i32* %tmp.59
	%470 = add i32 %462, %469
	store i32 %470, i32* %sum.25
	%471 = load i32, i32* %sum.25
	ret i32 %471
472:
	br label %646
473:
	%474 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%475 = getelementptr %"runtime::Type", %"runtime::Type"* %474, i32 0, i32 0
	%476 = load i32, i32* %475
	%477 = icmp eq i32 %476, 3
	br i1 %477, label %478, label %479
478:
	store i1 true, i1* %tmp.60
	br label %484
479:
	%480 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%481 = getelementptr %"runtime::Type", %"runtime::Type"* %480, i32 0, i32 0
	%482 = load i32, i32* %481
	%483 = icmp eq i32 %482, 4
	store i1 %483, i1* %tmp.60
	br label %484
484:
	%485 = load i1, i1* %tmp.60
	br i1 %485, label %486, label %572
486:
	store {i64, %"runtime::Field"*} zeroinitializer, {i64, %"runtime::Field"*}* %fields.28
	%487 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%488 = getelementptr %"runtime::Type", %"runtime::Type"* %487, i32 0, i32 7
	%489 = load {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %488
	store {i64, %"runtime::Field"*} %489, {i64, %"runtime::Field"*}* %fields.28
	store i32 zeroinitializer, i32* %sum.28
	store i32 0, i32* %sum.28
	%490 = load i32, i32* %sum.28
	%491 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%492 = getelementptr [2 x i8], [2 x i8]* @"std::str.25", i64 0, i64 0
	%493 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %492, 1
	store {i64, i8*} %493, {i64, i8*}* %tmp.61
	%494 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.61, i32 0, i32 1
	%495 = load i8*, i8** %494
	%496 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %491, i8* %495)
	store i32 %496, i32* %tmp.62
	%497 = load i32, i32* %tmp.62
	%498 = add i32 %490, %497
	store i32 %498, i32* %sum.28
	%499 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 0
	%500 = load i64, i64* %499
	%501 = trunc i64 %500 to i32
	store i32 0, i32* %i.29
	br label %502
502:
	%503 = load i32, i32* %i.29
	%504 = icmp slt i32 %503, %501
	br i1 %504, label %505, label %556
505:
	store %"runtime::Field" zeroinitializer, %"runtime::Field"* %field.29
	%506 = load i32, i32* %i.29
	%507 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 1
	%508 = load %"runtime::Field"*, %"runtime::Field"** %507
	%509 = getelementptr %"runtime::Field", %"runtime::Field"* %508, i32 %506
	%510 = load %"runtime::Field", %"runtime::Field"* %509
	store %"runtime::Field" %510, %"runtime::Field"* %field.29
	%511 = load i32, i32* %sum.28
	%512 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%513 = getelementptr [6 x i8], [6 x i8]* @"std::str.26", i64 0, i64 0
	%514 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %513, 1
	store {i64, i8*} %514, {i64, i8*}* %tmp.63
	%515 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.63, i32 0, i32 1
	%516 = load i8*, i8** %515
	%517 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 0
	%518 = getelementptr {i64, i8*}, {i64, i8*}* %517, i32 0, i32 1
	%519 = load i8*, i8** %518
	%520 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %512, i8* %516, i8* %519)
	store i32 %520, i32* %tmp.64
	%521 = load i32, i32* %tmp.64
	%522 = add i32 %511, %521
	store i32 %522, i32* %sum.28
	%523 = load i32, i32* %sum.28
	%524 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%525 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 2
	%526 = load %"runtime::Type"*, %"runtime::Type"** %525
	%527 = load i8*, i8** %value.0
	%528 = ptrtoint i8* %527 to i64
	%529 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 1
	%530 = load i64, i64* %529
	%531 = add i64 %528, %530
	%532 = inttoptr i64 %531 to i8*
	%533 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %524, %"runtime::Type"* %526, i8* %532)
	store i32 %533, i32* %tmp.65
	%534 = load i32, i32* %tmp.65
	%535 = add i32 %523, %534
	store i32 %535, i32* %sum.28
	%536 = load i32, i32* %i.29
	%537 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 0
	%538 = load i64, i64* %537
	%539 = zext i32 1 to i64
	%540 = sub i64 %538, %539
	%541 = zext i32 %536 to i64
	%542 = icmp ult i64 %541, %540
	br i1 %542, label %543, label %553
543:
	%544 = load i32, i32* %sum.28
	%545 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%546 = getelementptr [3 x i8], [3 x i8]* @"std::str.27", i64 0, i64 0
	%547 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %546, 1
	store {i64, i8*} %547, {i64, i8*}* %tmp.66
	%548 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.66, i32 0, i32 1
	%549 = load i8*, i8** %548
	%550 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %545, i8* %549)
	store i32 %550, i32* %tmp.67
	%551 = load i32, i32* %tmp.67
	%552 = add i32 %544, %551
	store i32 %552, i32* %sum.28
	br label %553
553:
	br label %554
554:
	%555 = add i32 %503, 1
	store i32 %555, i32* %i.29
	br label %502
556:
	%557 = load i32, i32* %sum.28
	%558 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%559 = getelementptr [6 x i8], [6 x i8]* @"std::str.28", i64 0, i64 0
	%560 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %559, 1
	store {i64, i8*} %560, {i64, i8*}* %tmp.68
	%561 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.68, i32 0, i32 1
	%562 = load i8*, i8** %561
	%563 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%564 = getelementptr %"runtime::Type", %"runtime::Type"* %563, i32 0, i32 1
	%565 = getelementptr {i64, i8*}, {i64, i8*}* %564, i32 0, i32 1
	%566 = load i8*, i8** %565
	%567 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %558, i8* %562, i8* %566)
	store i32 %567, i32* %tmp.69
	%568 = load i32, i32* %tmp.69
	%569 = add i32 %557, %568
	store i32 %569, i32* %sum.28
	%570 = load i32, i32* %sum.28
	ret i32 %570
571:
	br label %646
572:
	%573 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%574 = getelementptr %"runtime::Type", %"runtime::Type"* %573, i32 0, i32 0
	%575 = load i32, i32* %574
	%576 = icmp eq i32 %575, 10
	br i1 %576, label %577, label %646
577:
	store i64 zeroinitializer, i64* %v.31
	store i64 0, i64* %v.31
	%578 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%579 = getelementptr %"runtime::Type", %"runtime::Type"* %578, i32 0, i32 4
	%580 = load %"runtime::Type"*, %"runtime::Type"** %579
	%581 = getelementptr %"runtime::Type", %"runtime::Type"* %580, i32 0, i32 5
	%582 = load i64, i64* %581
	%583 = trunc i64 %582 to i32
	store i32 0, i32* %i.32
	br label %584
584:
	%585 = load i32, i32* %i.32
	%586 = icmp slt i32 %585, %583
	br i1 %586, label %587, label %605
587:
	%588 = load i64, i64* %v.31
	%589 = load i8*, i8** %value.0
	%590 = ptrtoint i8* %589 to i64
	%591 = load i32, i32* %i.32
	%592 = zext i32 %591 to i64
	%593 = add i64 %590, %592
	%594 = inttoptr i64 %593 to i8*
	%595 = bitcast i8* %594 to i8*
	%596 = load i8, i8* %595
	%597 = sext i8 %596 to i64
	%598 = load i32, i32* %i.32
	%599 = mul i32 %598, 8
	%600 = sext i32 %599 to i64
	%601 = shl i64 %597, %600
	%602 = or i64 %588, %601
	store i64 %602, i64* %v.31
	br label %603
603:
	%604 = add i32 %585, 1
	store i32 %604, i32* %i.32
	br label %584
605:
	store {i64, i8*} zeroinitializer, {i64, i8*}* %str.31
	%606 = getelementptr [10 x i8], [10 x i8]* @"std::str.29", i64 0, i64 0
	%607 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %606, 1
	store {i64, i8*} %607, {i64, i8*}* %tmp.70
	%608 = load {i64, i8*}, {i64, i8*}* %tmp.70
	store {i64, i8*} %608, {i64, i8*}* %str.31
	%609 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%610 = getelementptr %"runtime::Type", %"runtime::Type"* %609, i32 0, i32 10
	%611 = getelementptr {i64, %"runtime::EnumValue"*}, {i64, %"runtime::EnumValue"*}* %610, i32 0, i32 0
	%612 = load i64, i64* %611
	%613 = trunc i64 %612 to i32
	store i32 0, i32* %i.33
	br label %614
614:
	%615 = load i32, i32* %i.33
	%616 = icmp slt i32 %615, %613
	br i1 %616, label %617, label %635
617:
	store %"runtime::EnumValue" zeroinitializer, %"runtime::EnumValue"* %ev.33
	%618 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%619 = getelementptr %"runtime::Type", %"runtime::Type"* %618, i32 0, i32 10
	%620 = load i32, i32* %i.33
	%621 = getelementptr {i64, %"runtime::EnumValue"*}, {i64, %"runtime::EnumValue"*}* %619, i32 0, i32 1
	%622 = load %"runtime::EnumValue"*, %"runtime::EnumValue"** %621
	%623 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %622, i32 %620
	%624 = load %"runtime::EnumValue", %"runtime::EnumValue"* %623
	store %"runtime::EnumValue" %624, %"runtime::EnumValue"* %ev.33
	%625 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 1
	%626 = load i64, i64* %625
	%627 = load i64, i64* %v.31
	%628 = icmp eq i64 %626, %627
	br i1 %628, label %629, label %632
629:
	%630 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 0
	%631 = load {i64, i8*}, {i64, i8*}* %630
	store {i64, i8*} %631, {i64, i8*}* %str.31
	br label %632
632:
	br label %633
633:
	%634 = add i32 %615, 1
	store i32 %634, i32* %i.33
	br label %614
635:
	%636 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%637 = getelementptr [3 x i8], [3 x i8]* @"std::str.30", i64 0, i64 0
	%638 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %637, 1
	store {i64, i8*} %638, {i64, i8*}* %tmp.71
	%639 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.71, i32 0, i32 1
	%640 = load i8*, i8** %639
	%641 = getelementptr {i64, i8*}, {i64, i8*}* %str.31, i32 0, i32 1
	%642 = load i8*, i8** %641
	%643 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %636, i8* %640, i8* %642)
	store i32 %643, i32* %tmp.72
	%644 = load i32, i32* %tmp.72
	ret i32 %644
645:
	br label %646
646:
	ret i32 undef
}
declare void @"runtime::__finalizer__::()"()
declare void @"runtime::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare void @"linux::__finalizer__::()"()
declare void @"linux::__main__::([[char]])"({i64, {i64, i8*}*} %args.value)
declare void @"__destruct__::(*&)"({i64*, i8*, %"runtime::Type"*}*)
define void @"std::__finalizer__::()"() {
start:
	call void @"runtime::__finalizer__::()"()
	call void @"linux::__finalizer__::()"()
	ret void
}
@"stdin" = external global %"cstd::s__IO_FILE"* 
@"stdout" = external global %"cstd::s__IO_FILE"* 
@"stderr" = external global %"cstd::s__IO_FILE"* 
@"std::PATH_MAX" = external global i32 
@"std::SEEK_SET" = external global i32 
@"std::SEEK_CUR" = external global i32 
@"std::SEEK_END" = external global i32 
@"std::str.0" = private global [3 x i8] c"%p\00"
@"type::char" = external global %"runtime::Type" 
@"type::[char]" = external global %"runtime::Type" 
@"type::uint32" = external global %"runtime::Type" 
@"type::int32" = external global %"runtime::Type" 
@"type::cstd::div_t" = external global %"runtime::Type" 
@"type::*char" = external global %"runtime::Type" 
@"type::float64" = external global %"runtime::Type" 
@"type::*int32" = external global %"runtime::Type" 
@"type::uint64" = external global %"runtime::Type" 
@"type::*" = external global %"runtime::Type" 
@"type::(*, *) -> (int)" = external global %"runtime::Type" 
@"type::*(*, *) -> (int)" = external global %"runtime::Type" 
@"type::cstd::s__IO_marker" = external global %"runtime::Type" 
@"type::*cstd::s__IO_marker" = external global %"runtime::Type" 
@"type::*cstd::s__IO_FILE" = external global %"runtime::Type" 
@"type::int64" = external global %"runtime::Type" 
@"type::cstd::ldiv_t" = external global %"runtime::Type" 
@"type::[]" = external global %"runtime::Type" 
@"type::uint16" = external global %"runtime::Type" 
@"type::[3; uint16]" = external global %"runtime::Type" 
@"type::linux::s_drand48_data" = external global %"runtime::Type" 
@"type::*linux::s_drand48_data" = external global %"runtime::Type" 
@"type::*float64" = external global %"runtime::Type" 
@"type::*int64" = external global %"runtime::Type" 
@"type::cstd::s_tm" = external global %"runtime::Type" 
@"type::*cstd::s_tm" = external global %"runtime::Type" 
@"type::linux::lldiv_t" = external global %"runtime::Type" 
@"type::[1; char]" = external global %"runtime::Type" 
@"type::cstd::s__IO_codecvt" = external global %"runtime::Type" 
@"type::*cstd::s__IO_codecvt" = external global %"runtime::Type" 
@"type::cstd::s__IO_wide_data" = external global %"runtime::Type" 
@"type::*cstd::s__IO_wide_data" = external global %"runtime::Type" 
@"type::[20; char]" = external global %"runtime::Type" 
@"type::cstd::s__IO_FILE" = external global %"runtime::Type" 
@"type::__va_list_tag" = external global %"runtime::Type" 
@"type::*__va_list_tag" = external global %"runtime::Type" 
@"type::[4; char]" = external global %"runtime::Type" 
@"type::<anonymous>.0" = external global %"runtime::Type" 
@"type::cstd::__mbstate_t" = external global %"runtime::Type" 
@"type::cstd::__fpos_t" = external global %"runtime::Type" 
@"type::*cstd::__fpos_t" = external global %"runtime::Type" 
@"type::cstd::s_timespec" = external global %"runtime::Type" 
@"type::cstd::s_itimerspec" = external global %"runtime::Type" 
@"type::*cstd::s_itimerspec" = external global %"runtime::Type" 
@"type::*map::Entry" = external global %"runtime::Type" 
@"type::map::Entry" = external global %"runtime::Type" 
@"type::[*map::Entry]" = external global %"runtime::Type" 
@"type::map::Map" = external global %"runtime::Type" 
@"type::*map::Map" = external global %"runtime::Type" 
@"type::bool" = external global %"runtime::Type" 
@"type::[[char]]" = external global %"runtime::Type" 
@"type::() -> ()" = external global %"runtime::Type" 
@"type::*() -> ()" = external global %"runtime::Type" 
@"type::[*() -> ()]" = external global %"runtime::Type" 
@"type::[*]" = external global %"runtime::Type" 
@"type::**" = external global %"runtime::Type" 
@"type::linux::s_rusage" = external global %"runtime::Type" 
@"type::*linux::s_rusage" = external global %"runtime::Type" 
@"type::float128" = external global %"runtime::Type" 
@"type::*float128" = external global %"runtime::Type" 
@"type::**char" = external global %"runtime::Type" 
@"type::*uint64" = external global %"runtime::Type" 
@"type::cstd::s___locale_data" = external global %"runtime::Type" 
@"type::*cstd::s___locale_data" = external global %"runtime::Type" 
@"type::[13; *cstd::s___locale_data]" = external global %"runtime::Type" 
@"type::*uint16" = external global %"runtime::Type" 
@"type::[13; *char]" = external global %"runtime::Type" 
@"type::cstd::s___locale_struct" = external global %"runtime::Type" 
@"type::*cstd::s___locale_struct" = external global %"runtime::Type" 
@"type::float32" = external global %"runtime::Type" 
@"type::*float32" = external global %"runtime::Type" 
@"type::linux::s_timespec" = external global %"runtime::Type" 
@"type::[3; int64]" = external global %"runtime::Type" 
@"type::linux::s_stat" = external global %"runtime::Type" 
@"type::*linux::s_stat" = external global %"runtime::Type" 
@"type::linux::s_random_data" = external global %"runtime::Type" 
@"type::*linux::s_random_data" = external global %"runtime::Type" 
@"type::*cstd::s_timespec" = external global %"runtime::Type" 
@"type::cstd::u_sigval" = external global %"runtime::Type" 
@"type::cstd::sigevent_t" = external global %"runtime::Type" 
@"type::*cstd::sigevent_t" = external global %"runtime::Type" 
@"type::*linux::s_timespec" = external global %"runtime::Type" 
@"type::(int32) -> ()" = external global %"runtime::Type" 
@"type::*(int32) -> ()" = external global %"runtime::Type" 
@"type::[16; uint64]" = external global %"runtime::Type" 
@"type::linux::__sigset_t" = external global %"runtime::Type" 
@"type::*linux::__sigset_t" = external global %"runtime::Type" 
@"type::linux::siginfo_t" = external global %"runtime::Type" 
@"type::*linux::siginfo_t" = external global %"runtime::Type" 
@"type::linux::s_sigaction" = external global %"runtime::Type" 
@"type::*linux::s_sigaction" = external global %"runtime::Type" 
@"type::linux::u_sigval" = external global %"runtime::Type" 
@"type::*uint32" = external global %"runtime::Type" 
@"type::[32; char]" = external global %"runtime::Type" 
@"type::linux::s_termios" = external global %"runtime::Type" 
@"type::*linux::s_termios" = external global %"runtime::Type" 
@"type::[16; int64]" = external global %"runtime::Type" 
@"type::linux::fd_set" = external global %"runtime::Type" 
@"type::*linux::fd_set" = external global %"runtime::Type" 
@"type::linux::s_timeval" = external global %"runtime::Type" 
@"type::*linux::s_timeval" = external global %"runtime::Type" 
@"type::*[char]" = external global %"runtime::Type" 
@"std::str.1" = private global [3 x i8] c"%s\00"
@"std::str.2" = private global [3 x i8] c"%s\00"
@"std::str.3" = private global [3 x i8] c"%s\00"
@"std::str.4" = private global [4 x i8] c"%zu\00"
@"std::str.5" = private global [3 x i8] c"%c\00"
@"type::int8" = external global %"runtime::Type" 
@"std::str.6" = private global [5 x i8] c"%hhd\00"
@"type::uint8" = external global %"runtime::Type" 
@"std::str.7" = private global [5 x i8] c"%hhu\00"
@"type::int16" = external global %"runtime::Type" 
@"std::str.8" = private global [4 x i8] c"%hd\00"
@"std::str.9" = private global [4 x i8] c"%hu\00"
@"std::str.10" = private global [3 x i8] c"%d\00"
@"std::str.11" = private global [3 x i8] c"%u\00"
@"std::str.12" = private global [4 x i8] c"%ld\00"
@"std::str.13" = private global [4 x i8] c"%lu\00"
@"std::str.14" = private global [4 x i8] c"%lf\00"
@"std::str.15" = private global [3 x i8] c"%f\00"
@"std::str.16" = private global [5 x i8] c"true\00"
@"std::str.17" = private global [6 x i8] c"false\00"
@"std::str.18" = private global [3 x i8] c"%p\00"
@"std::str.19" = private global [2 x i8] c"[\00"
@"std::str.20" = private global [3 x i8] c", \00"
@"std::str.21" = private global [2 x i8] c"]\00"
@"std::str.22" = private global [2 x i8] c"[\00"
@"std::str.23" = private global [3 x i8] c", \00"
@"std::str.24" = private global [2 x i8] c"]\00"
@"std::str.25" = private global [2 x i8] c"{\00"
@"std::str.26" = private global [6 x i8] c"%s = \00"
@"std::str.27" = private global [3 x i8] c", \00"
@"std::str.28" = private global [6 x i8] c"} !%s\00"
@"std::str.29" = private global [10 x i8] c"INVALID!!\00"
@"std::str.30" = private global [3 x i8] c"%s\00"
@"std::str.31" = private global [15 x i8] c"/proc/self/exe\00"
@"type::ffi::ffi_abi" = external global %"runtime::Type" 
@"type::*ffi::ffi_type" = external global %"runtime::Type" 
@"type::**ffi::ffi_type" = external global %"runtime::Type" 
@"type::ffi::ffi_type" = external global %"runtime::Type" 
@"type::ffi::ffi_status" = external global %"runtime::Type" 
@"type::ffi::ffi_cif" = external global %"runtime::Type" 
@"type::preload::FfiFunction" = external global %"runtime::Type" 
@"type::preload::FfiGlobal" = external global %"runtime::Type" 
