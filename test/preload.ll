; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"ffi::ffi_type" = type {i64, i16, i16, %"ffi::ffi_type"**}
%"map::Map" = type {i64, {i64, %"map::Entry"**}}
%"runtime::Parameter" = type {{i64, i8*}, %"runtime::Type"*}
%"ffi::ffi_cif" = type {i32, i32, %"ffi::ffi_type"**, %"ffi::ffi_type"*, i32, i32}
%"runtime::Field" = type {{i64, i8*}, i32, %"runtime::Type"*}
%"preload::FfiGlobal" = type {{i64, i8*}, i8*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Parameter"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"map::Entry" = type {{i64, i8*}, i8*, %"map::Entry"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"preload::FfiFunction" = type {{i64, i8*}, void ()*, i1, %"ffi::ffi_cif"}
declare %"map::Map"* @"map::make::()"()
declare void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %map.value, {i64, i8*} %key.value, i8* %value.value)
declare void @"map::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare void @"__assert_fail"(i8*, i8*, i32, i8*)
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
	br i1 %20, label %25, label %21
21:
	%22 = getelementptr [40 x i8], [40 x i8]* @"preload::str.0", i32 0, i32 0
	%23 = getelementptr [80 x i8], [80 x i8]* @"preload::str.1", i32 0, i32 0
	%24 = getelementptr [9 x i8], [9 x i8]* @"preload::str.2", i32 0, i32 0
	call void @"__assert_fail"(i8* %22, i8* %23, i32 30, i8* %24)
	unreachable
25:
	%26 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %def_names.0, i32 0, i32 0
	%27 = load i64, i64* %26
	%28 = trunc i64 %27 to i32
	store i32 0, i32* %i.3
	br label %29
29:
	%30 = load i32, i32* %i.3
	%31 = icmp slt i32 %30, %28
	br i1 %31, label %32, label %68
32:
	%33 = load i32, i32* %i.3
	%34 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %def_names.0, i32 0, i32 1
	%35 = load {i64, i8*}*, {i64, i8*}** %34
	%36 = getelementptr {i64, i8*}, {i64, i8*}* %35, i32 %33
	%37 = load {i64, i8*}, {i64, i8*}* %36
	store {i64, i8*} %37, {i64, i8*}* %name.3
	%38 = load i32, i32* %i.3
	%39 = getelementptr {i64, void ()**}, {i64, void ()**}* %defs.0, i32 0, i32 1
	%40 = load void ()**, void ()*** %39
	%41 = getelementptr void ()*, void ()** %40, i32 %38
	%42 = load void ()*, void ()** %41
	store void ()* %42, void ()** %value.3
	%43 = call i8* @"malloc"(i64 64)
	%44 = bitcast i8* %43 to %"preload::FfiFunction"*
	store %"preload::FfiFunction"* %44, %"preload::FfiFunction"** %ffi_function.3
	%45 = load {i64, i8*}, {i64, i8*}* %name.3
	%46 = load void ()*, void ()** %value.3
	%47 = insertvalue %"preload::FfiFunction" {{i64, i8*} undef, void ()* undef, i1 false, %"ffi::ffi_cif" zeroinitializer}, {i64, i8*} %45, 0
	%48 = insertvalue %"preload::FfiFunction" %47, void ()* %46, 1
	%49 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3
	store %"preload::FfiFunction" %48, %"preload::FfiFunction"* %49
	%50 = load %"map::Map"*, %"map::Map"** @"preload::FFI_FUNCTIONS"
	%51 = load {i64, i8*}, {i64, i8*}* %name.3
	%52 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3
	%53 = bitcast %"preload::FfiFunction"* %52 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %50, {i64, i8*} %51, i8* %53)
	%54 = call i8* @"malloc"(i64 24)
	%55 = bitcast i8* %54 to %"preload::FfiGlobal"*
	store %"preload::FfiGlobal"* %55, %"preload::FfiGlobal"** %ffi_global.3
	%56 = load {i64, i8*}, {i64, i8*}* %name.3
	%57 = load void ()*, void ()** %value.3
	%58 = bitcast void ()* %57 to i8*
	%59 = insertvalue %"preload::FfiGlobal" {{i64, i8*} undef, i8* undef}, {i64, i8*} %56, 0
	%60 = insertvalue %"preload::FfiGlobal" %59, i8* %58, 1
	%61 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3
	store %"preload::FfiGlobal" %60, %"preload::FfiGlobal"* %61
	%62 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS"
	%63 = load {i64, i8*}, {i64, i8*}* %name.3
	%64 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3
	%65 = bitcast %"preload::FfiGlobal"* %64 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %62, {i64, i8*} %63, i8* %65)
	br label %66
66:
	%67 = add i32 %30, 1
	store i32 %67, i32* %i.3
	br label %29
68:
	%69 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 0
	%70 = load i64, i64* %69
	%71 = getelementptr {i64, i8**}, {i64, i8**}* %vars.0, i32 0, i32 0
	%72 = load i64, i64* %71
	%73 = icmp eq i64 %70, %72
	br i1 %73, label %78, label %74
74:
	%75 = getelementptr [40 x i8], [40 x i8]* @"preload::str.3", i32 0, i32 0
	%76 = getelementptr [80 x i8], [80 x i8]* @"preload::str.4", i32 0, i32 0
	%77 = getelementptr [9 x i8], [9 x i8]* @"preload::str.5", i32 0, i32 0
	call void @"__assert_fail"(i8* %75, i8* %76, i32 50, i8* %77)
	unreachable
78:
	%79 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 0
	%80 = load i64, i64* %79
	%81 = trunc i64 %80 to i32
	store i32 0, i32* %i.4
	br label %82
82:
	%83 = load i32, i32* %i.4
	%84 = icmp slt i32 %83, %81
	br i1 %84, label %85, label %109
85:
	%86 = load i32, i32* %i.4
	%87 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %var_names.0, i32 0, i32 1
	%88 = load {i64, i8*}*, {i64, i8*}** %87
	%89 = getelementptr {i64, i8*}, {i64, i8*}* %88, i32 %86
	%90 = load {i64, i8*}, {i64, i8*}* %89
	store {i64, i8*} %90, {i64, i8*}* %name.4
	%91 = load i32, i32* %i.4
	%92 = getelementptr {i64, i8**}, {i64, i8**}* %vars.0, i32 0, i32 1
	%93 = load i8**, i8*** %92
	%94 = getelementptr i8*, i8** %93, i32 %91
	%95 = load i8*, i8** %94
	store i8* %95, i8** %value.4
	%96 = call i8* @"malloc"(i64 24)
	%97 = bitcast i8* %96 to %"preload::FfiGlobal"*
	store %"preload::FfiGlobal"* %97, %"preload::FfiGlobal"** %ffi_global.4
	%98 = load {i64, i8*}, {i64, i8*}* %name.4
	%99 = load i8*, i8** %value.4
	%100 = insertvalue %"preload::FfiGlobal" {{i64, i8*} undef, i8* undef}, {i64, i8*} %98, 0
	%101 = insertvalue %"preload::FfiGlobal" %100, i8* %99, 1
	%102 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4
	store %"preload::FfiGlobal" %101, %"preload::FfiGlobal"* %102
	%103 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS"
	%104 = load {i64, i8*}, {i64, i8*}* %name.4
	%105 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4
	%106 = bitcast %"preload::FfiGlobal"* %105 to i8*
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %103, {i64, i8*} %104, i8* %106)
	br label %107
107:
	%108 = add i32 %83, 1
	store i32 %108, i32* %i.4
	br label %82
109:
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
@"preload::str.0" = private global [40 x i8] c"    assert(def_names.size == defs.size)\00"
@"preload::str.1" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.2" = private global [9 x i8] c"load_ffi\00"
@"preload::str.3" = private global [40 x i8] c"    assert(var_names.size == vars.size)\00"
@"preload::str.4" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.5" = private global [9 x i8] c"load_ffi\00"
@"preload::FFI_GLOBALS" = global %"map::Map"* zeroinitializer
@"type::*() -> ()" = external global %"runtime::Type" 
@"preload::FFI_FUNCTIONS" = global %"map::Map"* zeroinitializer
@"type::*ffi::ffi_type" = external global %"runtime::Type" 
@"linux::__DEF_NAMES" = external global [258 x {i64, i8*}] 
@"cstd::__DEF_NAMES" = external global [478 x {i64, i8*}] 
@"type::ffi::ffi_abi" = external global %"runtime::Type" 
@"type::**ffi::ffi_type" = external global %"runtime::Type" 
@"type::ffi::ffi_cif" = external global %"runtime::Type" 
@"type::() -> ()" = external global %"runtime::Type" 
