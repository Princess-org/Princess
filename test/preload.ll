; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"map::Map" = type {i64, {i64, %"map::Entry"**}}
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_codecvt" = type opaque
%"ffi::ffi_cif" = type {i32, i32, %"ffi::ffi_type"**, %"ffi::ffi_type"*, i32, i32}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s__IO_wide_data" = type opaque
%"preload::FfiGlobal" = type {{i64, i8*}, i8*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"ffi::ffi_type" = type {i64, i16, i16, %"ffi::ffi_type"**}
%"map::Entry" = type {{i64, i8*}, i8*, %"map::Entry"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"preload::FfiFunction" = type {{i64, i8*}, void ()*, i1, %"ffi::ffi_cif"}
declare %"map::Map"* @"map::make::()"()
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %map.value, {i64, i8*} %key.value, i8* %value.value)
declare void @"map::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
define void @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({i64, {i64, i8*}*} %def_names.value, {i64, void ()**} %defs.value, {i64, {i64, i8*}*} %var_names.value, {i64, i8**} %vars.value) {
start:
	%def_names.0 = alloca {i64, {i64, i8*}*}
	%defs.0 = alloca {i64, void ()**}
	%var_names.0 = alloca {i64, {i64, i8*}*}
	%vars.0 = alloca {i64, i8**}
	%tmp.0 = alloca %"map::Map"*
	%tmp.1 = alloca %"map::Map"*
	%i.3 = alloca i32
	%name.3 = alloca {i64, i8*}
	%value.3 = alloca void ()*
	%ffi_function.3 = alloca %"preload::FfiFunction"*
	%ffi_global.3 = alloca %"preload::FfiGlobal"*
	%i.4 = alloca i32
	%name.4 = alloca {i64, i8*}
	%value.4 = alloca i8*
	%ffi_global.4 = alloca %"preload::FfiGlobal"*
	store {i64, {i64, i8*}*} %def_names.value, {i64, {i64, i8*}*}* %def_names.0
	store {i64, void ()**} %defs.value, {i64, void ()**}* %defs.0
	store {i64, {i64, i8*}*} %var_names.value, {i64, {i64, i8*}*}* %var_names.0
	store {i64, i8**} %vars.value, {i64, i8**}* %vars.0
	%0 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS"
	%1 = ptrtoint %"map::Map"* %0 to i64
	%2 = icmp ne i64 %1, 0
	%3 = xor i1 %2, true
	br i1 %3, label %4, label %7
4:
	%5 = call %"map::Map"* @"map::make::()"()
	store %"map::Map"* %5, %"map::Map"** %tmp.0
	%6 = load %"map::Map"*, %"map::Map"** %tmp.0
	store %"map::Map"* %6, %"map::Map"** @"preload::FFI_GLOBALS"
	br label %7
7:
	%8 = load %"map::Map"*, %"map::Map"** @"preload::FFI_FUNCTIONS"
	%9 = ptrtoint %"map::Map"* %8 to i64
	%10 = icmp ne i64 %9, 0
	%11 = xor i1 %10, true
	br i1 %11, label %12, label %15
12:
	%13 = call %"map::Map"* @"map::make::()"()
	store %"map::Map"* %13, %"map::Map"** %tmp.1
	%14 = load %"map::Map"*, %"map::Map"** %tmp.1
	store %"map::Map"* %14, %"map::Map"** @"preload::FFI_FUNCTIONS"
	br label %15
15:
	%16 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %def_names.0, i32 0, i32 0
	%17 = load i64, i64* %16
	%18 = getelementptr {i64, void ()**}, {i64, void ()**}* %defs.0, i32 0, i32 0
	%19 = load i64, i64* %18
	%20 = icmp eq i64 %17, %19
	br i1 %20, label %28, label %21
21:
	%22 = getelementptr [29 x i8], [29 x i8]* @"preload::str.0", i32 0, i32 0
	%23 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stderr"
	%24 = getelementptr [32 x i8], [32 x i8]* @"preload::str.1", i32 0, i32 0
	%25 = getelementptr [80 x i8], [80 x i8]* @"preload::str.2", i32 0, i32 0
	%26 = getelementptr [9 x i8], [9 x i8]* @"preload::str.3", i32 0, i32 0
	%27 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %23, i8* %24, i8* %25, i32 31, i8* %26, i8* %22)
	call void @"abort"()
	unreachable
28:
	%29 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %def_names.0, i32 0, i32 0
	%30 = load i64, i64* %29
	%31 = trunc i64 %30 to i32
	store i32 0, i32* %i.3
	br label %32
32:
	%33 = load i32, i32* %i.3
	%34 = icmp slt i32 %33, %31
	br i1 %34, label %35, label %71
35:
	%36 = load i32, i32* %i.3
	%37 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %def_names.0, i32 0, i32 1
	%38 = load {i64, i8*}*, {i64, i8*}** %37
	%39 = getelementptr {i64, i8*}, {i64, i8*}* %38, i32 %36
	%40 = load {i64, i8*}, {i64, i8*}* %39
	store {i64, i8*} %40, {i64, i8*}* %name.3
	%41 = load i32, i32* %i.3
	%42 = getelementptr {i64, void ()**}, {i64, void ()**}* %defs.0, i32 0, i32 1
	%43 = load void ()**, void ()*** %42
	%44 = getelementptr void ()*, void ()** %43, i32 %41
	%45 = load void ()*, void ()** %44
	store void ()* %45, void ()** %value.3
	%46 = call i8* @"malloc"(i64 64)
	%47 = bitcast i8* %46 to %"preload::FfiFunction"*
	store %"preload::FfiFunction"* %47, %"preload::FfiFunction"** %ffi_function.3
	%48 = load {i64, i8*}, {i64, i8*}* %name.3
	%49 = load void ()*, void ()** %value.3
	%50 = insertvalue %"preload::FfiFunction" {{i64, i8*} undef, void ()* undef, i1 false, %"ffi::ffi_cif" zeroinitializer}, {i64, i8*} %48, 0
	%51 = insertvalue %"preload::FfiFunction" %50, void ()* %49, 1
	%52 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3
	store %"preload::FfiFunction" %51, %"preload::FfiFunction"* %52
	%53 = load %"map::Map"*, %"map::Map"** @"preload::FFI_FUNCTIONS"
	%54 = load {i64, i8*}, {i64, i8*}* %name.3
	%55 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3
	%56 = bitcast %"preload::FfiFunction"* %55 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %53, {i64, i8*} %54, i8* %56)
	%57 = call i8* @"malloc"(i64 24)
	%58 = bitcast i8* %57 to %"preload::FfiGlobal"*
	store %"preload::FfiGlobal"* %58, %"preload::FfiGlobal"** %ffi_global.3
	%59 = load {i64, i8*}, {i64, i8*}* %name.3
	%60 = load void ()*, void ()** %value.3
	%61 = bitcast void ()* %60 to i8*
	%62 = insertvalue %"preload::FfiGlobal" {{i64, i8*} undef, i8* undef}, {i64, i8*} %59, 0
	%63 = insertvalue %"preload::FfiGlobal" %62, i8* %61, 1
	%64 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3
	store %"preload::FfiGlobal" %63, %"preload::FfiGlobal"* %64
	%65 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS"
	%66 = load {i64, i8*}, {i64, i8*}* %name.3
	%67 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3
	%68 = bitcast %"preload::FfiGlobal"* %67 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %65, {i64, i8*} %66, i8* %68)
	br label %69
69:
	%70 = add i32 %33, 1
	store i32 %70, i32* %i.3
	br label %32
71:
	%72 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 0
	%73 = load i64, i64* %72
	%74 = getelementptr {i64, i8**}, {i64, i8**}* %vars.0, i32 0, i32 0
	%75 = load i64, i64* %74
	%76 = icmp eq i64 %73, %75
	br i1 %76, label %84, label %77
77:
	%78 = getelementptr [29 x i8], [29 x i8]* @"preload::str.4", i32 0, i32 0
	%79 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stderr"
	%80 = getelementptr [32 x i8], [32 x i8]* @"preload::str.5", i32 0, i32 0
	%81 = getelementptr [80 x i8], [80 x i8]* @"preload::str.6", i32 0, i32 0
	%82 = getelementptr [9 x i8], [9 x i8]* @"preload::str.7", i32 0, i32 0
	%83 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %79, i8* %80, i8* %81, i32 51, i8* %82, i8* %78)
	call void @"abort"()
	unreachable
84:
	%85 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 0
	%86 = load i64, i64* %85
	%87 = trunc i64 %86 to i32
	store i32 0, i32* %i.4
	br label %88
88:
	%89 = load i32, i32* %i.4
	%90 = icmp slt i32 %89, %87
	br i1 %90, label %91, label %115
91:
	%92 = load i32, i32* %i.4
	%93 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 1
	%94 = load {i64, i8*}*, {i64, i8*}** %93
	%95 = getelementptr {i64, i8*}, {i64, i8*}* %94, i32 %92
	%96 = load {i64, i8*}, {i64, i8*}* %95
	store {i64, i8*} %96, {i64, i8*}* %name.4
	%97 = load i32, i32* %i.4
	%98 = getelementptr {i64, i8**}, {i64, i8**}* %vars.0, i32 0, i32 1
	%99 = load i8**, i8*** %98
	%100 = getelementptr i8*, i8** %99, i32 %97
	%101 = load i8*, i8** %100
	store i8* %101, i8** %value.4
	%102 = call i8* @"malloc"(i64 24)
	%103 = bitcast i8* %102 to %"preload::FfiGlobal"*
	store %"preload::FfiGlobal"* %103, %"preload::FfiGlobal"** %ffi_global.4
	%104 = load {i64, i8*}, {i64, i8*}* %name.4
	%105 = load i8*, i8** %value.4
	%106 = insertvalue %"preload::FfiGlobal" {{i64, i8*} undef, i8* undef}, {i64, i8*} %104, 0
	%107 = insertvalue %"preload::FfiGlobal" %106, i8* %105, 1
	%108 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4
	store %"preload::FfiGlobal" %107, %"preload::FfiGlobal"* %108
	%109 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS"
	%110 = load {i64, i8*}, {i64, i8*}* %name.4
	%111 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4
	%112 = bitcast %"preload::FfiGlobal"* %111 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %109, {i64, i8*} %110, i8* %112)
	br label %113
113:
	%114 = add i32 %89, 1
	store i32 %114, i32* %i.4
	br label %88
115:
	ret void
}
define void @"preload::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"map::main::([[int8]])"({i64, {i64, i8*}*} %0)
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"ffi::main::([[int8]])"({i64, {i64, i8*}*} %1)
	%2 = load [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES"
	%3 = getelementptr [478 x {i64, i8*}], [478 x {i64, i8*}]* @"cstd::__DEF_NAMES", i64 0, i64 0
	%4 = insertvalue {i64, {i64, i8*}*} {i64 478, {i64, i8*}* undef}, {i64, i8*}* %3, 1
	%5 = load [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS"
	%6 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i64 0, i64 0
	%7 = insertvalue {i64, void ()**} {i64 478, void ()** undef}, void ()** %6, 1
	%8 = load [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES"
	%9 = getelementptr [10 x {i64, i8*}], [10 x {i64, i8*}]* @"cstd::__VAR_NAMES", i64 0, i64 0
	%10 = insertvalue {i64, {i64, i8*}*} {i64 10, {i64, i8*}* undef}, {i64, i8*}* %9, 1
	%11 = load [10 x i8*], [10 x i8*]* @"cstd::__VARS"
	%12 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i64 0, i64 0
	%13 = insertvalue {i64, i8**} {i64 10, i8** undef}, i8** %12, 1
	call void ({i64, {i64, i8*}*}, {i64, void ()**}, {i64, {i64, i8*}*}, {i64, i8**}) @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({i64, {i64, i8*}*} %4, {i64, void ()**} %7, {i64, {i64, i8*}*} %10, {i64, i8**} %13)
	%14 = load [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES"
	%15 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i64 0, i64 0
	%16 = insertvalue {i64, {i64, i8*}*} {i64 22, {i64, i8*}* undef}, {i64, i8*}* %15, 1
	%17 = load [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS"
	%18 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i64 0, i64 0
	%19 = insertvalue {i64, void ()**} {i64 22, void ()** undef}, void ()** %18, 1
	%20 = load [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES"
	%21 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i64 0, i64 0
	%22 = insertvalue {i64, {i64, i8*}*} {i64 16, {i64, i8*}* undef}, {i64, i8*}* %21, 1
	%23 = load [16 x i8*], [16 x i8*]* @"ffi::__VARS"
	%24 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i64 0, i64 0
	%25 = insertvalue {i64, i8**} {i64 16, i8** undef}, i8** %24, 1
	call void ({i64, {i64, i8*}*}, {i64, void ()**}, {i64, {i64, i8*}*}, {i64, i8**}) @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({i64, {i64, i8*}*} %16, {i64, void ()**} %19, {i64, {i64, i8*}*} %22, {i64, i8**} %25)
	%26 = load [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES"
	%27 = getelementptr [258 x {i64, i8*}], [258 x {i64, i8*}]* @"linux::__DEF_NAMES", i64 0, i64 0
	%28 = insertvalue {i64, {i64, i8*}*} {i64 258, {i64, i8*}* undef}, {i64, i8*}* %27, 1
	%29 = load [258 x void ()*], [258 x void ()*]* @"linux::__DEFS"
	%30 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i64 0, i64 0
	%31 = insertvalue {i64, void ()**} {i64 258, void ()** undef}, void ()** %30, 1
	%32 = load [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES"
	%33 = getelementptr [7 x {i64, i8*}], [7 x {i64, i8*}]* @"linux::__VAR_NAMES", i64 0, i64 0
	%34 = insertvalue {i64, {i64, i8*}*} {i64 7, {i64, i8*}* undef}, {i64, i8*}* %33, 1
	%35 = load [7 x i8*], [7 x i8*]* @"linux::__VARS"
	%36 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i64 0, i64 0
	%37 = insertvalue {i64, i8**} {i64 7, i8** undef}, i8** %36, 1
	call void ({i64, {i64, i8*}*}, {i64, void ()**}, {i64, {i64, i8*}*}, {i64, i8**}) @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({i64, {i64, i8*}*} %28, {i64, void ()**} %31, {i64, {i64, i8*}*} %34, {i64, i8**} %37)
	ret void
}
declare i8* @"malloc"(i64)
declare void @"abort"()
declare void @"ffi::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
@"type::preload::FfiFunction" = external global %"runtime::Type" 
@"type::preload::FfiGlobal" = external global %"runtime::Type" 
@"ffi::__DEF_NAMES" = external global [22 x {i64, i8*}] 
@"type::int32" = external global %"runtime::Type" 
@"ffi::__DEFS" = external global [22 x void ()*] 
@"linux::__DEFS" = external global [258 x void ()*] 
@"cstd::__DEFS" = external global [478 x void ()*] 
@"type::ffi::ffi_type" = external global %"runtime::Type" 
@"linux::__VAR_NAMES" = external global [7 x {i64, i8*}] 
@"cstd::__VAR_NAMES" = external global [10 x {i64, i8*}] 
@"type::uint16" = external global %"runtime::Type" 
@"type::bool" = external global %"runtime::Type" 
@"type::uint32" = external global %"runtime::Type" 
@"type::*" = external global %"runtime::Type" 
@"ffi::__VARS" = external global [16 x i8*] 
@"linux::__VARS" = external global [7 x i8*] 
@"type::uint64" = external global %"runtime::Type" 
@"cstd::__VARS" = external global [10 x i8*] 
@"ffi::__VAR_NAMES" = external global [16 x {i64, i8*}] 
@"type::[int8]" = external global %"runtime::Type" 
@"preload::str.0" = private global [29 x i8] c"def_names.size == defs.size\00\00"
@"preload::str.1" = private global [32 x i8] c"%s:%d:%s: Assertion %s failed!\0A\00"
@"preload::str.2" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.3" = private global [9 x i8] c"load_ffi\00"
@"preload::str.4" = private global [29 x i8] c"var_names.size == vars.size\00\00"
@"preload::str.5" = private global [32 x i8] c"%s:%d:%s: Assertion %s failed!\0A\00"
@"preload::str.6" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.7" = private global [9 x i8] c"load_ffi\00"
@"preload::FFI_GLOBALS" = global %"map::Map"* zeroinitializer
@"type::*() -> ()" = external global %"runtime::Type" 
@"preload::FFI_FUNCTIONS" = global %"map::Map"* zeroinitializer
@"type::*ffi::ffi_type" = external global %"runtime::Type" 
@"linux::__DEF_NAMES" = external global [258 x {i64, i8*}] 
@"cstd::__DEF_NAMES" = external global [478 x {i64, i8*}] 
@"stderr" = external global %"cstd::s__IO_FILE"* 
@"type::ffi::ffi_abi" = external global %"runtime::Type" 
@"type::**ffi::ffi_type" = external global %"runtime::Type" 
@"type::ffi::ffi_cif" = external global %"runtime::Type" 
@"type::() -> ()" = external global %"runtime::Type" 
