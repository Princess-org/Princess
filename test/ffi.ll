; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/ffi.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}, {i64, i8*}, {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"runtime::Function" = type {{i64, i8*}, i1, {i64, i8*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}}
%"ffi::max_align_t" = type {i64, x86_fp80}
%"ffi::ffi_type" = type {i64, i16, i16, %"ffi::ffi_type"**}
%"ffi::ffi_cif" = type {i32, i32, %"ffi::ffi_type"**, %"ffi::ffi_type"*, i32, i32}
%"ffi::ffi_raw" = type {[8 x i8]}
%"ffi::ffi_closure" = type {[24 x i8], %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*}
%"ffi::ffi_raw_closure" = type {[24 x i8], %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*}
%"ffi::ffi_java_raw_closure" = type {[24 x i8], %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*}
%"ffi::ffi_go_closure" = type {i8*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*}
declare void @"ffi_raw_call"(%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)
declare void @"ffi_ptrarray_to_raw"(%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)
declare void @"ffi_raw_to_ptrarray"(%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)
declare i64 @"ffi_raw_size"(%"ffi::ffi_cif"*)
declare void @"ffi_java_raw_call"(%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)
declare void @"ffi_java_ptrarray_to_raw"(%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)
declare void @"ffi_java_raw_to_ptrarray"(%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)
declare i64 @"ffi_java_raw_size"(%"ffi::ffi_cif"*)
declare i8* @"ffi_closure_alloc"(i64, i8**)
declare void @"ffi_closure_free"(i8*)
declare i32 @"ffi_prep_closure"(%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*)
declare i32 @"ffi_prep_closure_loc"(%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)
declare i32 @"ffi_prep_raw_closure"(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)
declare i32 @"ffi_prep_raw_closure_loc"(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)
declare i32 @"ffi_prep_java_raw_closure"(%"ffi::ffi_java_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)
declare i32 @"ffi_prep_java_raw_closure_loc"(%"ffi::ffi_java_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)
declare i32 @"ffi_prep_go_closure"(%"ffi::ffi_go_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*)
declare void @"ffi_call_go"(%"ffi::ffi_cif"*, void ()*, i8*, i8**, i8*)
declare i32 @"ffi_prep_cif"(%"ffi::ffi_cif"*, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)
declare i32 @"ffi_prep_cif_var"(%"ffi::ffi_cif"*, i32, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)
declare void @"ffi_call"(%"ffi::ffi_cif"*, void ()*, i8*, i8**)
declare i32 @"ffi_get_struct_offsets"(i32, %"ffi::ffi_type"*, i64*)
define void @"ffi::__main__::([[char]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	%tmp.0 = alloca {i64, i8*}
	%tmp.1 = alloca {i64, i8*}
	%tmp.2 = alloca {i64, i8*}
	%tmp.3 = alloca {i64, i8*}
	%tmp.4 = alloca {i64, i8*}
	%tmp.5 = alloca {i64, i8*}
	%tmp.6 = alloca {i64, i8*}
	%tmp.7 = alloca {i64, i8*}
	%tmp.8 = alloca {i64, i8*}
	%tmp.9 = alloca {i64, i8*}
	%tmp.10 = alloca {i64, i8*}
	%tmp.11 = alloca {i64, i8*}
	%tmp.12 = alloca {i64, i8*}
	%tmp.13 = alloca {i64, i8*}
	%tmp.14 = alloca {i64, i8*}
	%tmp.15 = alloca {i64, i8*}
	%tmp.16 = alloca {i64, i8*}
	%tmp.17 = alloca {i64, i8*}
	%tmp.18 = alloca {i64, i8*}
	%tmp.19 = alloca {i64, i8*}
	%tmp.20 = alloca {i64, i8*}
	%tmp.21 = alloca {i64, i8*}
	%tmp.22 = alloca {i64, i8*}
	%tmp.23 = alloca {i64, i8*}
	%tmp.24 = alloca {i64, i8*}
	%tmp.25 = alloca {i64, i8*}
	%tmp.26 = alloca {i64, i8*}
	%tmp.27 = alloca {i64, i8*}
	%tmp.28 = alloca {i64, i8*}
	%tmp.29 = alloca {i64, i8*}
	%tmp.30 = alloca {i64, i8*}
	%tmp.31 = alloca {i64, i8*}
	%tmp.32 = alloca {i64, i8*}
	%tmp.33 = alloca {i64, i8*}
	%tmp.34 = alloca {i64, i8*}
	%tmp.35 = alloca {i64, i8*}
	%tmp.36 = alloca {i64, i8*}
	%tmp.37 = alloca {i64, i8*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.10", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.0
	%2 = load {i64, i8*}, {i64, i8*}* %tmp.0
	%3 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 0
	store {i64, i8*} %2, {i64, i8*}* %3
	%4 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)* @"ffi_raw_call" to void ()*
	%5 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 0
	store void ()* %4, void ()** %5
	%6 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.11", i64 0, i64 0
	%7 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %6, 1
	store {i64, i8*} %7, {i64, i8*}* %tmp.1
	%8 = load {i64, i8*}, {i64, i8*}* %tmp.1
	%9 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 1
	store {i64, i8*} %8, {i64, i8*}* %9
	%10 = bitcast void (%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)* @"ffi_ptrarray_to_raw" to void ()*
	%11 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 1
	store void ()* %10, void ()** %11
	%12 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.12", i64 0, i64 0
	%13 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %12, 1
	store {i64, i8*} %13, {i64, i8*}* %tmp.2
	%14 = load {i64, i8*}, {i64, i8*}* %tmp.2
	%15 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 2
	store {i64, i8*} %14, {i64, i8*}* %15
	%16 = bitcast void (%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)* @"ffi_raw_to_ptrarray" to void ()*
	%17 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 2
	store void ()* %16, void ()** %17
	%18 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.13", i64 0, i64 0
	%19 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %18, 1
	store {i64, i8*} %19, {i64, i8*}* %tmp.3
	%20 = load {i64, i8*}, {i64, i8*}* %tmp.3
	%21 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 3
	store {i64, i8*} %20, {i64, i8*}* %21
	%22 = bitcast i64 (%"ffi::ffi_cif"*)* @"ffi_raw_size" to void ()*
	%23 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 3
	store void ()* %22, void ()** %23
	%24 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.14", i64 0, i64 0
	%25 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %24, 1
	store {i64, i8*} %25, {i64, i8*}* %tmp.4
	%26 = load {i64, i8*}, {i64, i8*}* %tmp.4
	%27 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 4
	store {i64, i8*} %26, {i64, i8*}* %27
	%28 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)* @"ffi_java_raw_call" to void ()*
	%29 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 4
	store void ()* %28, void ()** %29
	%30 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.15", i64 0, i64 0
	%31 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %30, 1
	store {i64, i8*} %31, {i64, i8*}* %tmp.5
	%32 = load {i64, i8*}, {i64, i8*}* %tmp.5
	%33 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 5
	store {i64, i8*} %32, {i64, i8*}* %33
	%34 = bitcast void (%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)* @"ffi_java_ptrarray_to_raw" to void ()*
	%35 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 5
	store void ()* %34, void ()** %35
	%36 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.16", i64 0, i64 0
	%37 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %36, 1
	store {i64, i8*} %37, {i64, i8*}* %tmp.6
	%38 = load {i64, i8*}, {i64, i8*}* %tmp.6
	%39 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 6
	store {i64, i8*} %38, {i64, i8*}* %39
	%40 = bitcast void (%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)* @"ffi_java_raw_to_ptrarray" to void ()*
	%41 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 6
	store void ()* %40, void ()** %41
	%42 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.17", i64 0, i64 0
	%43 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %42, 1
	store {i64, i8*} %43, {i64, i8*}* %tmp.7
	%44 = load {i64, i8*}, {i64, i8*}* %tmp.7
	%45 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 7
	store {i64, i8*} %44, {i64, i8*}* %45
	%46 = bitcast i64 (%"ffi::ffi_cif"*)* @"ffi_java_raw_size" to void ()*
	%47 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 7
	store void ()* %46, void ()** %47
	%48 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.18", i64 0, i64 0
	%49 = insertvalue {i64, i8*} {i64 18, i8* undef}, i8* %48, 1
	store {i64, i8*} %49, {i64, i8*}* %tmp.8
	%50 = load {i64, i8*}, {i64, i8*}* %tmp.8
	%51 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 8
	store {i64, i8*} %50, {i64, i8*}* %51
	%52 = bitcast i8* (i64, i8**)* @"ffi_closure_alloc" to void ()*
	%53 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 8
	store void ()* %52, void ()** %53
	%54 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.19", i64 0, i64 0
	%55 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %54, 1
	store {i64, i8*} %55, {i64, i8*}* %tmp.9
	%56 = load {i64, i8*}, {i64, i8*}* %tmp.9
	%57 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 9
	store {i64, i8*} %56, {i64, i8*}* %57
	%58 = bitcast void (i8*)* @"ffi_closure_free" to void ()*
	%59 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 9
	store void ()* %58, void ()** %59
	%60 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.20", i64 0, i64 0
	%61 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %60, 1
	store {i64, i8*} %61, {i64, i8*}* %tmp.10
	%62 = load {i64, i8*}, {i64, i8*}* %tmp.10
	%63 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 10
	store {i64, i8*} %62, {i64, i8*}* %63
	%64 = bitcast i32 (%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*)* @"ffi_prep_closure" to void ()*
	%65 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 10
	store void ()* %64, void ()** %65
	%66 = getelementptr [21 x i8], [21 x i8]* @"ffi::str.21", i64 0, i64 0
	%67 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %66, 1
	store {i64, i8*} %67, {i64, i8*}* %tmp.11
	%68 = load {i64, i8*}, {i64, i8*}* %tmp.11
	%69 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 11
	store {i64, i8*} %68, {i64, i8*}* %69
	%70 = bitcast i32 (%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)* @"ffi_prep_closure_loc" to void ()*
	%71 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 11
	store void ()* %70, void ()** %71
	%72 = getelementptr [21 x i8], [21 x i8]* @"ffi::str.22", i64 0, i64 0
	%73 = insertvalue {i64, i8*} {i64 21, i8* undef}, i8* %72, 1
	store {i64, i8*} %73, {i64, i8*}* %tmp.12
	%74 = load {i64, i8*}, {i64, i8*}* %tmp.12
	%75 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 12
	store {i64, i8*} %74, {i64, i8*}* %75
	%76 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)* @"ffi_prep_raw_closure" to void ()*
	%77 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 12
	store void ()* %76, void ()** %77
	%78 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.23", i64 0, i64 0
	%79 = insertvalue {i64, i8*} {i64 25, i8* undef}, i8* %78, 1
	store {i64, i8*} %79, {i64, i8*}* %tmp.13
	%80 = load {i64, i8*}, {i64, i8*}* %tmp.13
	%81 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 13
	store {i64, i8*} %80, {i64, i8*}* %81
	%82 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)* @"ffi_prep_raw_closure_loc" to void ()*
	%83 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 13
	store void ()* %82, void ()** %83
	%84 = getelementptr [26 x i8], [26 x i8]* @"ffi::str.24", i64 0, i64 0
	%85 = insertvalue {i64, i8*} {i64 26, i8* undef}, i8* %84, 1
	store {i64, i8*} %85, {i64, i8*}* %tmp.14
	%86 = load {i64, i8*}, {i64, i8*}* %tmp.14
	%87 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 14
	store {i64, i8*} %86, {i64, i8*}* %87
	%88 = bitcast i32 (%"ffi::ffi_java_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)* @"ffi_prep_java_raw_closure" to void ()*
	%89 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 14
	store void ()* %88, void ()** %89
	%90 = getelementptr [30 x i8], [30 x i8]* @"ffi::str.25", i64 0, i64 0
	%91 = insertvalue {i64, i8*} {i64 30, i8* undef}, i8* %90, 1
	store {i64, i8*} %91, {i64, i8*}* %tmp.15
	%92 = load {i64, i8*}, {i64, i8*}* %tmp.15
	%93 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 15
	store {i64, i8*} %92, {i64, i8*}* %93
	%94 = bitcast i32 (%"ffi::ffi_java_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)* @"ffi_prep_java_raw_closure_loc" to void ()*
	%95 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 15
	store void ()* %94, void ()** %95
	%96 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.26", i64 0, i64 0
	%97 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %96, 1
	store {i64, i8*} %97, {i64, i8*}* %tmp.16
	%98 = load {i64, i8*}, {i64, i8*}* %tmp.16
	%99 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 16
	store {i64, i8*} %98, {i64, i8*}* %99
	%100 = bitcast i32 (%"ffi::ffi_go_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*)* @"ffi_prep_go_closure" to void ()*
	%101 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 16
	store void ()* %100, void ()** %101
	%102 = getelementptr [12 x i8], [12 x i8]* @"ffi::str.27", i64 0, i64 0
	%103 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %102, 1
	store {i64, i8*} %103, {i64, i8*}* %tmp.17
	%104 = load {i64, i8*}, {i64, i8*}* %tmp.17
	%105 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 17
	store {i64, i8*} %104, {i64, i8*}* %105
	%106 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, i8**, i8*)* @"ffi_call_go" to void ()*
	%107 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 17
	store void ()* %106, void ()** %107
	%108 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.28", i64 0, i64 0
	%109 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %108, 1
	store {i64, i8*} %109, {i64, i8*}* %tmp.18
	%110 = load {i64, i8*}, {i64, i8*}* %tmp.18
	%111 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 18
	store {i64, i8*} %110, {i64, i8*}* %111
	%112 = bitcast i32 (%"ffi::ffi_cif"*, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)* @"ffi_prep_cif" to void ()*
	%113 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 18
	store void ()* %112, void ()** %113
	%114 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.29", i64 0, i64 0
	%115 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %114, 1
	store {i64, i8*} %115, {i64, i8*}* %tmp.19
	%116 = load {i64, i8*}, {i64, i8*}* %tmp.19
	%117 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 19
	store {i64, i8*} %116, {i64, i8*}* %117
	%118 = bitcast i32 (%"ffi::ffi_cif"*, i32, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)* @"ffi_prep_cif_var" to void ()*
	%119 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 19
	store void ()* %118, void ()** %119
	%120 = getelementptr [9 x i8], [9 x i8]* @"ffi::str.30", i64 0, i64 0
	%121 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %120, 1
	store {i64, i8*} %121, {i64, i8*}* %tmp.20
	%122 = load {i64, i8*}, {i64, i8*}* %tmp.20
	%123 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 20
	store {i64, i8*} %122, {i64, i8*}* %123
	%124 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, i8**)* @"ffi_call" to void ()*
	%125 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 20
	store void ()* %124, void ()** %125
	%126 = getelementptr [23 x i8], [23 x i8]* @"ffi::str.31", i64 0, i64 0
	%127 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %126, 1
	store {i64, i8*} %127, {i64, i8*}* %tmp.21
	%128 = load {i64, i8*}, {i64, i8*}* %tmp.21
	%129 = getelementptr [22 x {i64, i8*}], [22 x {i64, i8*}]* @"ffi::__DEF_NAMES", i32 0, i32 21
	store {i64, i8*} %128, {i64, i8*}* %129
	%130 = bitcast i32 (i32, %"ffi::ffi_type"*, i64*)* @"ffi_get_struct_offsets" to void ()*
	%131 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 21
	store void ()* %130, void ()** %131
	%132 = getelementptr [14 x i8], [14 x i8]* @"ffi::str.32", i64 0, i64 0
	%133 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %132, 1
	store {i64, i8*} %133, {i64, i8*}* %tmp.22
	%134 = load {i64, i8*}, {i64, i8*}* %tmp.22
	%135 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 0
	store {i64, i8*} %134, {i64, i8*}* %135
	%136 = bitcast %"ffi::ffi_type"* @"ffi_type_void" to i8*
	%137 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 0
	store i8* %136, i8** %137
	%138 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.33", i64 0, i64 0
	%139 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %138, 1
	store {i64, i8*} %139, {i64, i8*}* %tmp.23
	%140 = load {i64, i8*}, {i64, i8*}* %tmp.23
	%141 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 1
	store {i64, i8*} %140, {i64, i8*}* %141
	%142 = bitcast %"ffi::ffi_type"* @"ffi_type_uint8" to i8*
	%143 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 1
	store i8* %142, i8** %143
	%144 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.34", i64 0, i64 0
	%145 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %144, 1
	store {i64, i8*} %145, {i64, i8*}* %tmp.24
	%146 = load {i64, i8*}, {i64, i8*}* %tmp.24
	%147 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 2
	store {i64, i8*} %146, {i64, i8*}* %147
	%148 = bitcast %"ffi::ffi_type"* @"ffi_type_sint8" to i8*
	%149 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 2
	store i8* %148, i8** %149
	%150 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.35", i64 0, i64 0
	%151 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %150, 1
	store {i64, i8*} %151, {i64, i8*}* %tmp.25
	%152 = load {i64, i8*}, {i64, i8*}* %tmp.25
	%153 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 3
	store {i64, i8*} %152, {i64, i8*}* %153
	%154 = bitcast %"ffi::ffi_type"* @"ffi_type_uint16" to i8*
	%155 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 3
	store i8* %154, i8** %155
	%156 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.36", i64 0, i64 0
	%157 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %156, 1
	store {i64, i8*} %157, {i64, i8*}* %tmp.26
	%158 = load {i64, i8*}, {i64, i8*}* %tmp.26
	%159 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 4
	store {i64, i8*} %158, {i64, i8*}* %159
	%160 = bitcast %"ffi::ffi_type"* @"ffi_type_sint16" to i8*
	%161 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 4
	store i8* %160, i8** %161
	%162 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.37", i64 0, i64 0
	%163 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %162, 1
	store {i64, i8*} %163, {i64, i8*}* %tmp.27
	%164 = load {i64, i8*}, {i64, i8*}* %tmp.27
	%165 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 5
	store {i64, i8*} %164, {i64, i8*}* %165
	%166 = bitcast %"ffi::ffi_type"* @"ffi_type_uint32" to i8*
	%167 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 5
	store i8* %166, i8** %167
	%168 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.38", i64 0, i64 0
	%169 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %168, 1
	store {i64, i8*} %169, {i64, i8*}* %tmp.28
	%170 = load {i64, i8*}, {i64, i8*}* %tmp.28
	%171 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 6
	store {i64, i8*} %170, {i64, i8*}* %171
	%172 = bitcast %"ffi::ffi_type"* @"ffi_type_sint32" to i8*
	%173 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 6
	store i8* %172, i8** %173
	%174 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.39", i64 0, i64 0
	%175 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %174, 1
	store {i64, i8*} %175, {i64, i8*}* %tmp.29
	%176 = load {i64, i8*}, {i64, i8*}* %tmp.29
	%177 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 7
	store {i64, i8*} %176, {i64, i8*}* %177
	%178 = bitcast %"ffi::ffi_type"* @"ffi_type_uint64" to i8*
	%179 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 7
	store i8* %178, i8** %179
	%180 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.40", i64 0, i64 0
	%181 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %180, 1
	store {i64, i8*} %181, {i64, i8*}* %tmp.30
	%182 = load {i64, i8*}, {i64, i8*}* %tmp.30
	%183 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 8
	store {i64, i8*} %182, {i64, i8*}* %183
	%184 = bitcast %"ffi::ffi_type"* @"ffi_type_sint64" to i8*
	%185 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 8
	store i8* %184, i8** %185
	%186 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.41", i64 0, i64 0
	%187 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %186, 1
	store {i64, i8*} %187, {i64, i8*}* %tmp.31
	%188 = load {i64, i8*}, {i64, i8*}* %tmp.31
	%189 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 9
	store {i64, i8*} %188, {i64, i8*}* %189
	%190 = bitcast %"ffi::ffi_type"* @"ffi_type_float" to i8*
	%191 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 9
	store i8* %190, i8** %191
	%192 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.42", i64 0, i64 0
	%193 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %192, 1
	store {i64, i8*} %193, {i64, i8*}* %tmp.32
	%194 = load {i64, i8*}, {i64, i8*}* %tmp.32
	%195 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 10
	store {i64, i8*} %194, {i64, i8*}* %195
	%196 = bitcast %"ffi::ffi_type"* @"ffi_type_double" to i8*
	%197 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 10
	store i8* %196, i8** %197
	%198 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.43", i64 0, i64 0
	%199 = insertvalue {i64, i8*} {i64 17, i8* undef}, i8* %198, 1
	store {i64, i8*} %199, {i64, i8*}* %tmp.33
	%200 = load {i64, i8*}, {i64, i8*}* %tmp.33
	%201 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 11
	store {i64, i8*} %200, {i64, i8*}* %201
	%202 = bitcast %"ffi::ffi_type"* @"ffi_type_pointer" to i8*
	%203 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 11
	store i8* %202, i8** %203
	%204 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.44", i64 0, i64 0
	%205 = insertvalue {i64, i8*} {i64 20, i8* undef}, i8* %204, 1
	store {i64, i8*} %205, {i64, i8*}* %tmp.34
	%206 = load {i64, i8*}, {i64, i8*}* %tmp.34
	%207 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 12
	store {i64, i8*} %206, {i64, i8*}* %207
	%208 = bitcast %"ffi::ffi_type"* @"ffi_type_longdouble" to i8*
	%209 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 12
	store i8* %208, i8** %209
	%210 = getelementptr [23 x i8], [23 x i8]* @"ffi::str.45", i64 0, i64 0
	%211 = insertvalue {i64, i8*} {i64 23, i8* undef}, i8* %210, 1
	store {i64, i8*} %211, {i64, i8*}* %tmp.35
	%212 = load {i64, i8*}, {i64, i8*}* %tmp.35
	%213 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 13
	store {i64, i8*} %212, {i64, i8*}* %213
	%214 = bitcast %"ffi::ffi_type"* @"ffi_type_complex_float" to i8*
	%215 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 13
	store i8* %214, i8** %215
	%216 = getelementptr [24 x i8], [24 x i8]* @"ffi::str.46", i64 0, i64 0
	%217 = insertvalue {i64, i8*} {i64 24, i8* undef}, i8* %216, 1
	store {i64, i8*} %217, {i64, i8*}* %tmp.36
	%218 = load {i64, i8*}, {i64, i8*}* %tmp.36
	%219 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 14
	store {i64, i8*} %218, {i64, i8*}* %219
	%220 = bitcast %"ffi::ffi_type"* @"ffi_type_complex_double" to i8*
	%221 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 14
	store i8* %220, i8** %221
	%222 = getelementptr [28 x i8], [28 x i8]* @"ffi::str.47", i64 0, i64 0
	%223 = insertvalue {i64, i8*} {i64 28, i8* undef}, i8* %222, 1
	store {i64, i8*} %223, {i64, i8*}* %tmp.37
	%224 = load {i64, i8*}, {i64, i8*}* %tmp.37
	%225 = getelementptr [16 x {i64, i8*}], [16 x {i64, i8*}]* @"ffi::__VAR_NAMES", i32 0, i32 15
	store {i64, i8*} %224, {i64, i8*}* %225
	%226 = bitcast %"ffi::ffi_type"* @"ffi_type_complex_longdouble" to i8*
	%227 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 15
	store i8* %226, i8** %227
	ret void
}
define {i64, i8*} @"to_string::(ffi::ffi_abi)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %15 [
		i32 1, label %0
		i32 2, label %3
		i32 3, label %6
		i32 4, label %9
		i32 5, label %12
	]
0:
	%1 = getelementptr [14 x i8], [14 x i8]* @"ffi::str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 14, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [11 x i8], [11 x i8]* @"ffi::str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [11 x i8], [11 x i8]* @"ffi::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
12:
	%13 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.4", i32 0, i32 0
	%14 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %13, 1
	ret {i64, i8*} %14
15:
	%16 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.5", i32 0, i32 0
	%17 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %16, 1
	ret {i64, i8*} %17
}
define {i64, i8*} @"to_string::(ffi::ffi_status)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %9 [
		i32 0, label %0
		i32 1, label %3
		i32 2, label %6
	]
0:
	%1 = getelementptr [7 x i8], [7 x i8]* @"ffi::str.6", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.7", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 16, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [12 x i8], [12 x i8]* @"ffi::str.8", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 12, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.9", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
}
define void @"ffi::__finalizer__::()"() {
start:
	ret void
}
@"ffi::FFI_OK" = global i32 0
@"ffi::FFI_BAD_TYPEDEF" = global i32 1
@"ffi::FFI_BAD_ABI" = global i32 2
@"ffi::__DEFS" = global [22 x void ()*] zeroinitializer
@"ffi::__DEF_NAMES" = global [22 x {i64, i8*}] zeroinitializer
@"ffi::__VARS" = global [16 x i8*] zeroinitializer
@"ffi::__VAR_NAMES" = global [16 x {i64, i8*}] zeroinitializer
@"ffi::str.0" = private global [14 x i8] c"FFI_FIRST_ABI\00"
@"ffi::str.1" = private global [11 x i8] c"FFI_UNIX64\00"
@"ffi::str.2" = private global [10 x i8] c"FFI_WIN64\00"
@"ffi::str.3" = private global [11 x i8] c"FFI_GNUW64\00"
@"ffi::str.4" = private global [13 x i8] c"FFI_LAST_ABI\00"
@"ffi::str.5" = private global [10 x i8] c"INVALID!!\00"
@"ffi::str.6" = private global [7 x i8] c"FFI_OK\00"
@"ffi::str.7" = private global [16 x i8] c"FFI_BAD_TYPEDEF\00"
@"ffi::str.8" = private global [12 x i8] c"FFI_BAD_ABI\00"
@"ffi::str.9" = private global [10 x i8] c"INVALID!!\00"
@"ffi_type_void" = external global %"ffi::ffi_type" 
@"ffi_type_uint8" = external global %"ffi::ffi_type" 
@"ffi_type_sint8" = external global %"ffi::ffi_type" 
@"ffi_type_uint16" = external global %"ffi::ffi_type" 
@"ffi_type_sint16" = external global %"ffi::ffi_type" 
@"ffi_type_uint32" = external global %"ffi::ffi_type" 
@"ffi_type_sint32" = external global %"ffi::ffi_type" 
@"ffi_type_uint64" = external global %"ffi::ffi_type" 
@"ffi_type_sint64" = external global %"ffi::ffi_type" 
@"ffi_type_float" = external global %"ffi::ffi_type" 
@"ffi_type_double" = external global %"ffi::ffi_type" 
@"ffi_type_pointer" = external global %"ffi::ffi_type" 
@"ffi_type_longdouble" = external global %"ffi::ffi_type" 
@"ffi_type_complex_float" = external global %"ffi::ffi_type" 
@"ffi_type_complex_double" = external global %"ffi::ffi_type" 
@"ffi_type_complex_longdouble" = external global %"ffi::ffi_type" 
@"ffi::str.10" = private global [13 x i8] c"ffi_raw_call\00"
@"ffi::str.11" = private global [20 x i8] c"ffi_ptrarray_to_raw\00"
@"ffi::str.12" = private global [20 x i8] c"ffi_raw_to_ptrarray\00"
@"ffi::str.13" = private global [13 x i8] c"ffi_raw_size\00"
@"ffi::str.14" = private global [18 x i8] c"ffi_java_raw_call\00"
@"ffi::str.15" = private global [25 x i8] c"ffi_java_ptrarray_to_raw\00"
@"ffi::str.16" = private global [25 x i8] c"ffi_java_raw_to_ptrarray\00"
@"ffi::str.17" = private global [18 x i8] c"ffi_java_raw_size\00"
@"ffi::str.18" = private global [18 x i8] c"ffi_closure_alloc\00"
@"ffi::str.19" = private global [17 x i8] c"ffi_closure_free\00"
@"ffi::str.20" = private global [17 x i8] c"ffi_prep_closure\00"
@"ffi::str.21" = private global [21 x i8] c"ffi_prep_closure_loc\00"
@"ffi::str.22" = private global [21 x i8] c"ffi_prep_raw_closure\00"
@"ffi::str.23" = private global [25 x i8] c"ffi_prep_raw_closure_loc\00"
@"ffi::str.24" = private global [26 x i8] c"ffi_prep_java_raw_closure\00"
@"ffi::str.25" = private global [30 x i8] c"ffi_prep_java_raw_closure_loc\00"
@"ffi::str.26" = private global [20 x i8] c"ffi_prep_go_closure\00"
@"ffi::str.27" = private global [12 x i8] c"ffi_call_go\00"
@"ffi::str.28" = private global [13 x i8] c"ffi_prep_cif\00"
@"ffi::str.29" = private global [17 x i8] c"ffi_prep_cif_var\00"
@"ffi::str.30" = private global [9 x i8] c"ffi_call\00"
@"ffi::str.31" = private global [23 x i8] c"ffi_get_struct_offsets\00"
@"ffi::str.32" = private global [14 x i8] c"ffi_type_void\00"
@"ffi::str.33" = private global [15 x i8] c"ffi_type_uint8\00"
@"ffi::str.34" = private global [15 x i8] c"ffi_type_sint8\00"
@"ffi::str.35" = private global [16 x i8] c"ffi_type_uint16\00"
@"ffi::str.36" = private global [16 x i8] c"ffi_type_sint16\00"
@"ffi::str.37" = private global [16 x i8] c"ffi_type_uint32\00"
@"ffi::str.38" = private global [16 x i8] c"ffi_type_sint32\00"
@"ffi::str.39" = private global [16 x i8] c"ffi_type_uint64\00"
@"ffi::str.40" = private global [16 x i8] c"ffi_type_sint64\00"
@"ffi::str.41" = private global [15 x i8] c"ffi_type_float\00"
@"ffi::str.42" = private global [16 x i8] c"ffi_type_double\00"
@"ffi::str.43" = private global [17 x i8] c"ffi_type_pointer\00"
@"ffi::str.44" = private global [20 x i8] c"ffi_type_longdouble\00"
@"ffi::str.45" = private global [23 x i8] c"ffi_type_complex_float\00"
@"ffi::str.46" = private global [24 x i8] c"ffi_type_complex_double\00"
@"ffi::str.47" = private global [28 x i8] c"ffi_type_complex_longdouble\00"
