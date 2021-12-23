; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/std.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_codecvt" = type opaque
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s__IO_wide_data" = type opaque
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
define i32 @"std::print::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%tmp.1 = alloca i32
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stdout"
	%1 = load {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%2 = call i32 (%"cstd::s__IO_FILE"*, {i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %0, {i64, {i64*, i8*, %"runtime::Type"*}*} %1)
	store i32 %2, i32* %tmp.1
	%3 = load i32, i32* %tmp.1
	ret i32 %3
4:
	ret i32 undef
}
declare %"runtime::Type"* @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %a.value)
define i32 @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %file.value, {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%sum.0 = alloca i32
	%i.1 = alloca i32
	%arg.1 = alloca {i64*, i8*, %"runtime::Type"*}
	%tmp.70 = alloca %"runtime::Type"*
	%tmp.71 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	store i32 0, i32* %sum.0
	%0 = getelementptr {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0, i32 0, i32 0
	%1 = load i64, i64* %0
	%2 = trunc i64 %1 to i32
	store i32 0, i32* %i.1
	br label %3
3:
	%4 = load i32, i32* %i.1
	%5 = icmp slt i32 %4, %2
	br i1 %5, label %6, label %69
6:
	%7 = call i8* @"malloc"(i64 8)
	%8 = bitcast i8* %7 to i64*
	store i64 1, i64* %8
	%9 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 0
	store i64* %8, i64** %9
	%10 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 1
	store i8* null, i8** %10
	%11 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 2
	store %"runtime::Type"* null, %"runtime::Type"** %11
	%12 = load i32, i32* %i.1
	%13 = getelementptr {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0, i32 0, i32 1
	%14 = load {i64*, i8*, %"runtime::Type"*}*, {i64*, i8*, %"runtime::Type"*}** %13
	%15 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %14, i32 %12
	%16 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %15
	%17 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 0
	%18 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 1
	%19 = load i64*, i64** %17
	%20 = ptrtoint i64* %19 to i64
	%21 = icmp eq i64 %20, 0
	br i1 %21, label %30, label %22
22:
	%23 = load i64, i64* %19
	%24 = sub i64 %23, 1
	store i64 %24, i64* %19
	%25 = icmp eq i64 %24, 0
	br i1 %25, label %26, label %30
26:
	%27 = bitcast i64* %19 to i8*
	call void @"free"(i8* %27)
	%28 = load i8*, i8** %18
	%29 = bitcast i8* %28 to i8*
	call void @"free"(i8* %29)
	br label %30
30:
	store {i64*, i8*, %"runtime::Type"*} %16, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%31 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 0
	%32 = load i64*, i64** %31
	%33 = load i64, i64* %32
	%34 = add i64 %33, 1
	store i64 %34, i64* %32
	%35 = load i32, i32* %sum.0
	%36 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%37 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%38 = extractvalue {i64*, i8*, %"runtime::Type"*} %37, 0
	%39 = extractvalue {i64*, i8*, %"runtime::Type"*} %37, 1
	%40 = extractvalue {i64*, i8*, %"runtime::Type"*} %37, 2
	%41 = bitcast i8* %39 to i8*
	%42 = insertvalue %"runtime::Ref" undef, i64* %38, 0
	%43 = insertvalue %"runtime::Ref" %42, i8* %41, 1
	%44 = insertvalue %"runtime::Ref" %43, %"runtime::Type"* %40, 2
	%45 = call %"runtime::Type"* (%"runtime::Ref") @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %44)
	store %"runtime::Type"* %45, %"runtime::Type"** %tmp.70
	%46 = load %"runtime::Type"*, %"runtime::Type"** %tmp.70
	%47 = load {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1
	%48 = extractvalue {i64*, i8*, %"runtime::Type"*} %47, 1
	%49 = bitcast i8* %48 to i8*
	%50 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %36, %"runtime::Type"* %46, i8* %49)
	store i32 %50, i32* %tmp.71
	%51 = load i32, i32* %tmp.71
	%52 = add i32 %35, %51
	store i32 %52, i32* %sum.0
	%53 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 0
	%54 = getelementptr {i64*, i8*, %"runtime::Type"*}, {i64*, i8*, %"runtime::Type"*}* %arg.1, i32 0, i32 1
	%55 = load i64*, i64** %53
	%56 = ptrtoint i64* %55 to i64
	%57 = icmp eq i64 %56, 0
	br i1 %57, label %66, label %58
58:
	%59 = load i64, i64* %55
	%60 = sub i64 %59, 1
	store i64 %60, i64* %55
	%61 = icmp eq i64 %60, 0
	br i1 %61, label %62, label %66
62:
	%63 = bitcast i64* %55 to i8*
	call void @"free"(i8* %63)
	%64 = load i8*, i8** %54
	%65 = bitcast i8* %64 to i8*
	call void @"free"(i8* %65)
	br label %66
66:
	br label %67
67:
	%68 = add i32 %4, 1
	store i32 %68, i32* %i.1
	br label %3
69:
	%70 = load i32, i32* %sum.0
	ret i32 %70
71:
	ret i32 undef
}
declare i64 @"strlen"(i8*)
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
define void @"executable_file"(i8* %resolved.value) {
start:
	%resolved.0 = alloca i8*
	%len.0 = alloca i64
	%tmp.75 = alloca {i64, i8*}
	%tmp.76 = alloca i64
	store i8* %resolved.value, i8** %resolved.0
	%0 = getelementptr [15 x i8], [15 x i8]* @"std::str.31", i64 0, i64 0
	%1 = insertvalue {i64, i8*} {i64 15, i8* undef}, i8* %0, 1
	store {i64, i8*} %1, {i64, i8*}* %tmp.75
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.75, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = load i8*, i8** %resolved.0
	%5 = zext i32 4096 to i64
	%6 = call i64 (i8*, i8*, i64) @"readlink"(i8* %3, i8* %4, i64 %5)
	store i64 %6, i64* %tmp.76
	%7 = load i64, i64* %tmp.76
	store i64 %7, i64* %len.0
	%8 = load i64, i64* %len.0
	%9 = sub i32 0, 1
	%10 = sext i32 %9 to i64
	%11 = icmp ne i64 %8, %10
	br i1 %11, label %12, label %16
12:
	%13 = load i64, i64* %len.0
	%14 = load i8*, i8** %resolved.0
	%15 = getelementptr i8, i8* %14, i64 %13
	store i8 0, i8* %15
	br label %16
16:
	ret void
}
define i8 @"starts_with"(i8* %str.value, i8* %pre.value) {
start:
	%str.0 = alloca i8*
	%pre.0 = alloca i8*
	%tmp.72 = alloca i64
	%tmp.73 = alloca i32
	store i8* %str.value, i8** %str.0
	store i8* %pre.value, i8** %pre.0
	%0 = load i8*, i8** %pre.0
	%1 = load i8*, i8** %str.0
	%2 = load i8*, i8** %pre.0
	%3 = call i64 (i8*) @"strlen"(i8* %2)
	store i64 %3, i64* %tmp.72
	%4 = load i64, i64* %tmp.72
	%5 = call i32 (i8*, i8*, i64) @"strncmp"(i8* %0, i8* %1, i64 %4)
	store i32 %5, i32* %tmp.73
	%6 = load i32, i32* %tmp.73
	%7 = icmp eq i32 %6, 0
	%8 = zext i1 %7 to i8
	ret i8 %8
9:
	ret i8 undef
}
declare i32 @"strncmp"(i8*, i8*, i64)
declare void @"free"(i8*)
define i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %file.value, %"runtime::Type"* %tpe.value, i8* %value.value) {
start:
	%file.0 = alloca %"cstd::s__IO_FILE"*
	%tpe.0 = alloca %"runtime::Type"*
	%value.0 = alloca i8*
	%tmp.3 = alloca {i64, i8*}
	%tmp.4 = alloca i32
	%tmp.5 = alloca {i64, i8*}
	%tmp.6 = alloca i32
	%tmp.7 = alloca i1
	%tmp.8 = alloca {i64, i8*}
	%tmp.9 = alloca i32
	%tmp.10 = alloca {i64, i8*}
	%tmp.11 = alloca i32
	%tmp.12 = alloca {i64, i8*}
	%tmp.13 = alloca i32
	%tmp.14 = alloca {i64, i8*}
	%tmp.15 = alloca i32
	%tmp.16 = alloca {i64, i8*}
	%tmp.17 = alloca i32
	%tmp.18 = alloca {i64, i8*}
	%tmp.19 = alloca i32
	%tmp.20 = alloca {i64, i8*}
	%tmp.21 = alloca i32
	%tmp.22 = alloca {i64, i8*}
	%tmp.23 = alloca i32
	%tmp.24 = alloca {i64, i8*}
	%tmp.25 = alloca i32
	%tmp.26 = alloca {i64, i8*}
	%tmp.27 = alloca i32
	%tmp.28 = alloca {i64, i8*}
	%tmp.29 = alloca i32
	%tmp.30 = alloca {i64, i8*}
	%tmp.31 = alloca i32
	%tmp.32 = alloca {i64, i8*}
	%tmp.33 = alloca i32
	%tmp.34 = alloca {i64, i8*}
	%tmp.35 = alloca i32
	%tmp.36 = alloca {i64, i8*}
	%tmp.37 = alloca i32
	%tmp.38 = alloca {i64, i8*}
	%tmp.39 = alloca i32
	%tmp.40 = alloca {i64, i8*}
	%tmp.41 = alloca i32
	%v.21 = alloca %"runtime::Ref"
	%tmp.42 = alloca i32
	%arr.22 = alloca {i64, i8**}
	%size.22 = alloca i64
	%elements.22 = alloca i8**
	%sum.22 = alloca i32
	%tmp.43 = alloca {i64, i8*}
	%tmp.44 = alloca i32
	%i.23 = alloca i32
	%tmp.45 = alloca i32
	%tmp.46 = alloca {i64, i8*}
	%tmp.47 = alloca i32
	%tmp.48 = alloca {i64, i8*}
	%tmp.49 = alloca i32
	%size.25 = alloca i64
	%sum.25 = alloca i32
	%tmp.50 = alloca {i64, i8*}
	%tmp.51 = alloca i32
	%i.26 = alloca i32
	%tmp.52 = alloca i32
	%tmp.53 = alloca {i64, i8*}
	%tmp.54 = alloca i32
	%tmp.55 = alloca {i64, i8*}
	%tmp.56 = alloca i32
	%tmp.57 = alloca i1
	%fields.28 = alloca {i64, %"runtime::Field"*}
	%sum.28 = alloca i32
	%tmp.58 = alloca {i64, i8*}
	%tmp.59 = alloca i32
	%i.29 = alloca i32
	%field.29 = alloca %"runtime::Field"
	%tmp.60 = alloca {i64, i8*}
	%tmp.61 = alloca i32
	%tmp.62 = alloca i32
	%tmp.63 = alloca {i64, i8*}
	%tmp.64 = alloca i32
	%tmp.65 = alloca {i64, i8*}
	%tmp.66 = alloca i32
	%v.31 = alloca i64
	%i.32 = alloca i32
	%str.31 = alloca {i64, i8*}
	%tmp.67 = alloca {i64, i8*}
	%i.33 = alloca i32
	%ev.33 = alloca %"runtime::EnumValue"
	%tmp.68 = alloca {i64, i8*}
	%tmp.69 = alloca i32
	store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0
	store %"runtime::Type"* %tpe.value, %"runtime::Type"** %tpe.0
	store i8* %value.value, i8** %value.0
	%0 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%1 = ptrtoint %"runtime::Type"* %0 to i64
	%2 = icmp ne i64 %1, 0
	%3 = xor i1 %2, true
	br i1 %3, label %4, label %16
4:
	%5 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%6 = getelementptr [3 x i8], [3 x i8]* @"std::str.0", i64 0, i64 0
	%7 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %6, 1
	store {i64, i8*} %7, {i64, i8*}* %tmp.3
	%8 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.3, i32 0, i32 1
	%9 = load i8*, i8** %8
	%10 = load i8*, i8** %value.0
	%11 = bitcast i8* %10 to i8**
	%12 = load i8*, i8** %11
	%13 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %5, i8* %9, i8* %12)
	store i32 %13, i32* %tmp.4
	%14 = load i32, i32* %tmp.4
	ret i32 %14
15:
	br label %650
16:
	%17 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%18 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %17, %"runtime::Type"* @"type::[int8]")
	br i1 %18, label %19, label %32
19:
	%20 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%21 = getelementptr [3 x i8], [3 x i8]* @"std::str.1", i64 0, i64 0
	%22 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %21, 1
	store {i64, i8*} %22, {i64, i8*}* %tmp.5
	%23 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.5, i32 0, i32 1
	%24 = load i8*, i8** %23
	%25 = load i8*, i8** %value.0
	%26 = bitcast i8* %25 to {i64, i8*}*
	%27 = getelementptr {i64, i8*}, {i64, i8*}* %26, i32 0, i32 1
	%28 = load i8*, i8** %27
	%29 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %20, i8* %24, i8* %28)
	store i32 %29, i32* %tmp.6
	%30 = load i32, i32* %tmp.6
	ret i32 %30
31:
	br label %650
32:
	%33 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%34 = getelementptr %"runtime::Type", %"runtime::Type"* %33, i32 0, i32 0
	%35 = load i32, i32* %34
	%36 = icmp eq i32 %35, 6
	br i1 %36, label %38, label %37
37:
	store i1 false, i1* %tmp.7
	br label %43
38:
	%39 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%40 = getelementptr %"runtime::Type", %"runtime::Type"* %39, i32 0, i32 4
	%41 = load %"runtime::Type"*, %"runtime::Type"** %40
	%42 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %41, %"runtime::Type"* @"type::int8")
	store i1 %42, i1* %tmp.7
	br label %43
43:
	%44 = load i1, i1* %tmp.7
	br i1 %44, label %45, label %56
45:
	%46 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%47 = getelementptr [3 x i8], [3 x i8]* @"std::str.2", i64 0, i64 0
	%48 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %47, 1
	store {i64, i8*} %48, {i64, i8*}* %tmp.8
	%49 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.8, i32 0, i32 1
	%50 = load i8*, i8** %49
	%51 = load i8*, i8** %value.0
	%52 = bitcast i8* %51 to i8*
	%53 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %46, i8* %50, i8* %52)
	store i32 %53, i32* %tmp.9
	%54 = load i32, i32* %tmp.9
	ret i32 %54
55:
	br label %650
56:
	%57 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%58 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %57, %"runtime::Type"* @"type::*int8")
	br i1 %58, label %59, label %71
59:
	%60 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%61 = getelementptr [3 x i8], [3 x i8]* @"std::str.3", i64 0, i64 0
	%62 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %61, 1
	store {i64, i8*} %62, {i64, i8*}* %tmp.10
	%63 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.10, i32 0, i32 1
	%64 = load i8*, i8** %63
	%65 = load i8*, i8** %value.0
	%66 = bitcast i8* %65 to i8**
	%67 = load i8*, i8** %66
	%68 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %60, i8* %64, i8* %67)
	store i32 %68, i32* %tmp.11
	%69 = load i32, i32* %tmp.11
	ret i32 %69
70:
	br label %650
71:
	%72 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%73 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %72, %"runtime::Type"* @"type::uint64")
	br i1 %73, label %74, label %86
74:
	%75 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%76 = getelementptr [4 x i8], [4 x i8]* @"std::str.4", i64 0, i64 0
	%77 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %76, 1
	store {i64, i8*} %77, {i64, i8*}* %tmp.12
	%78 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.12, i32 0, i32 1
	%79 = load i8*, i8** %78
	%80 = load i8*, i8** %value.0
	%81 = bitcast i8* %80 to i64*
	%82 = load i64, i64* %81
	%83 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %75, i8* %79, i64 %82)
	store i32 %83, i32* %tmp.13
	%84 = load i32, i32* %tmp.13
	ret i32 %84
85:
	br label %650
86:
	%87 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%88 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %87, %"runtime::Type"* @"type::int8")
	br i1 %88, label %89, label %101
89:
	%90 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%91 = getelementptr [3 x i8], [3 x i8]* @"std::str.5", i64 0, i64 0
	%92 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %91, 1
	store {i64, i8*} %92, {i64, i8*}* %tmp.14
	%93 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.14, i32 0, i32 1
	%94 = load i8*, i8** %93
	%95 = load i8*, i8** %value.0
	%96 = bitcast i8* %95 to i8*
	%97 = load i8, i8* %96
	%98 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %90, i8* %94, i8 %97)
	store i32 %98, i32* %tmp.15
	%99 = load i32, i32* %tmp.15
	ret i32 %99
100:
	br label %650
101:
	%102 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%103 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %102, %"runtime::Type"* @"type::int8")
	br i1 %103, label %104, label %116
104:
	%105 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%106 = getelementptr [5 x i8], [5 x i8]* @"std::str.6", i64 0, i64 0
	%107 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %106, 1
	store {i64, i8*} %107, {i64, i8*}* %tmp.16
	%108 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.16, i32 0, i32 1
	%109 = load i8*, i8** %108
	%110 = load i8*, i8** %value.0
	%111 = bitcast i8* %110 to i8*
	%112 = load i8, i8* %111
	%113 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %105, i8* %109, i8 %112)
	store i32 %113, i32* %tmp.17
	%114 = load i32, i32* %tmp.17
	ret i32 %114
115:
	br label %650
116:
	%117 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%118 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %117, %"runtime::Type"* @"type::uint8")
	br i1 %118, label %119, label %131
119:
	%120 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%121 = getelementptr [5 x i8], [5 x i8]* @"std::str.7", i64 0, i64 0
	%122 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %121, 1
	store {i64, i8*} %122, {i64, i8*}* %tmp.18
	%123 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.18, i32 0, i32 1
	%124 = load i8*, i8** %123
	%125 = load i8*, i8** %value.0
	%126 = bitcast i8* %125 to i8*
	%127 = load i8, i8* %126
	%128 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %120, i8* %124, i8 %127)
	store i32 %128, i32* %tmp.19
	%129 = load i32, i32* %tmp.19
	ret i32 %129
130:
	br label %650
131:
	%132 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%133 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %132, %"runtime::Type"* @"type::int16")
	br i1 %133, label %134, label %146
134:
	%135 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%136 = getelementptr [4 x i8], [4 x i8]* @"std::str.8", i64 0, i64 0
	%137 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %136, 1
	store {i64, i8*} %137, {i64, i8*}* %tmp.20
	%138 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.20, i32 0, i32 1
	%139 = load i8*, i8** %138
	%140 = load i8*, i8** %value.0
	%141 = bitcast i8* %140 to i16*
	%142 = load i16, i16* %141
	%143 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %135, i8* %139, i16 %142)
	store i32 %143, i32* %tmp.21
	%144 = load i32, i32* %tmp.21
	ret i32 %144
145:
	br label %650
146:
	%147 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%148 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %147, %"runtime::Type"* @"type::uint16")
	br i1 %148, label %149, label %161
149:
	%150 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%151 = getelementptr [4 x i8], [4 x i8]* @"std::str.9", i64 0, i64 0
	%152 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %151, 1
	store {i64, i8*} %152, {i64, i8*}* %tmp.22
	%153 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.22, i32 0, i32 1
	%154 = load i8*, i8** %153
	%155 = load i8*, i8** %value.0
	%156 = bitcast i8* %155 to i16*
	%157 = load i16, i16* %156
	%158 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %150, i8* %154, i16 %157)
	store i32 %158, i32* %tmp.23
	%159 = load i32, i32* %tmp.23
	ret i32 %159
160:
	br label %650
161:
	%162 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%163 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %162, %"runtime::Type"* @"type::int32")
	br i1 %163, label %164, label %176
164:
	%165 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%166 = getelementptr [3 x i8], [3 x i8]* @"std::str.10", i64 0, i64 0
	%167 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %166, 1
	store {i64, i8*} %167, {i64, i8*}* %tmp.24
	%168 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.24, i32 0, i32 1
	%169 = load i8*, i8** %168
	%170 = load i8*, i8** %value.0
	%171 = bitcast i8* %170 to i32*
	%172 = load i32, i32* %171
	%173 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %165, i8* %169, i32 %172)
	store i32 %173, i32* %tmp.25
	%174 = load i32, i32* %tmp.25
	ret i32 %174
175:
	br label %650
176:
	%177 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%178 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %177, %"runtime::Type"* @"type::uint32")
	br i1 %178, label %179, label %191
179:
	%180 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%181 = getelementptr [3 x i8], [3 x i8]* @"std::str.11", i64 0, i64 0
	%182 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %181, 1
	store {i64, i8*} %182, {i64, i8*}* %tmp.26
	%183 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.26, i32 0, i32 1
	%184 = load i8*, i8** %183
	%185 = load i8*, i8** %value.0
	%186 = bitcast i8* %185 to i32*
	%187 = load i32, i32* %186
	%188 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %180, i8* %184, i32 %187)
	store i32 %188, i32* %tmp.27
	%189 = load i32, i32* %tmp.27
	ret i32 %189
190:
	br label %650
191:
	%192 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%193 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %192, %"runtime::Type"* @"type::int64")
	br i1 %193, label %194, label %206
194:
	%195 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%196 = getelementptr [4 x i8], [4 x i8]* @"std::str.12", i64 0, i64 0
	%197 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %196, 1
	store {i64, i8*} %197, {i64, i8*}* %tmp.28
	%198 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.28, i32 0, i32 1
	%199 = load i8*, i8** %198
	%200 = load i8*, i8** %value.0
	%201 = bitcast i8* %200 to i64*
	%202 = load i64, i64* %201
	%203 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %195, i8* %199, i64 %202)
	store i32 %203, i32* %tmp.29
	%204 = load i32, i32* %tmp.29
	ret i32 %204
205:
	br label %650
206:
	%207 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%208 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %207, %"runtime::Type"* @"type::uint64")
	br i1 %208, label %209, label %221
209:
	%210 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%211 = getelementptr [4 x i8], [4 x i8]* @"std::str.13", i64 0, i64 0
	%212 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %211, 1
	store {i64, i8*} %212, {i64, i8*}* %tmp.30
	%213 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.30, i32 0, i32 1
	%214 = load i8*, i8** %213
	%215 = load i8*, i8** %value.0
	%216 = bitcast i8* %215 to i64*
	%217 = load i64, i64* %216
	%218 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %210, i8* %214, i64 %217)
	store i32 %218, i32* %tmp.31
	%219 = load i32, i32* %tmp.31
	ret i32 %219
220:
	br label %650
221:
	%222 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%223 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %222, %"runtime::Type"* @"type::float64")
	br i1 %223, label %224, label %236
224:
	%225 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%226 = getelementptr [4 x i8], [4 x i8]* @"std::str.14", i64 0, i64 0
	%227 = insertvalue {i64, i8*} {i64 4, i8* undef}, i8* %226, 1
	store {i64, i8*} %227, {i64, i8*}* %tmp.32
	%228 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.32, i32 0, i32 1
	%229 = load i8*, i8** %228
	%230 = load i8*, i8** %value.0
	%231 = bitcast i8* %230 to double*
	%232 = load double, double* %231
	%233 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %225, i8* %229, double %232)
	store i32 %233, i32* %tmp.33
	%234 = load i32, i32* %tmp.33
	ret i32 %234
235:
	br label %650
236:
	%237 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%238 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %237, %"runtime::Type"* @"type::float32")
	br i1 %238, label %239, label %251
239:
	%240 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%241 = getelementptr [3 x i8], [3 x i8]* @"std::str.15", i64 0, i64 0
	%242 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %241, 1
	store {i64, i8*} %242, {i64, i8*}* %tmp.34
	%243 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.34, i32 0, i32 1
	%244 = load i8*, i8** %243
	%245 = load i8*, i8** %value.0
	%246 = bitcast i8* %245 to float*
	%247 = load float, float* %246
	%248 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %240, i8* %244, float %247)
	store i32 %248, i32* %tmp.35
	%249 = load i32, i32* %tmp.35
	ret i32 %249
250:
	br label %650
251:
	%252 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%253 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %252, %"runtime::Type"* @"type::bool")
	br i1 %253, label %254, label %277
254:
	%255 = load i8*, i8** %value.0
	%256 = bitcast i8* %255 to i1*
	%257 = load i1, i1* %256
	br i1 %257, label %258, label %267
258:
	%259 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%260 = getelementptr [5 x i8], [5 x i8]* @"std::str.16", i64 0, i64 0
	%261 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %260, 1
	store {i64, i8*} %261, {i64, i8*}* %tmp.36
	%262 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.36, i32 0, i32 1
	%263 = load i8*, i8** %262
	%264 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %259, i8* %263)
	store i32 %264, i32* %tmp.37
	%265 = load i32, i32* %tmp.37
	ret i32 %265
266:
	br label %276
267:
	%268 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%269 = getelementptr [6 x i8], [6 x i8]* @"std::str.17", i64 0, i64 0
	%270 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %269, 1
	store {i64, i8*} %270, {i64, i8*}* %tmp.38
	%271 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.38, i32 0, i32 1
	%272 = load i8*, i8** %271
	%273 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %268, i8* %272)
	store i32 %273, i32* %tmp.39
	%274 = load i32, i32* %tmp.39
	ret i32 %274
275:
	br label %276
276:
	br label %650
277:
	%278 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%279 = getelementptr %"runtime::Type", %"runtime::Type"* %278, i32 0, i32 0
	%280 = load i32, i32* %279
	%281 = icmp eq i32 %280, 7
	br i1 %281, label %282, label %294
282:
	%283 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%284 = getelementptr [3 x i8], [3 x i8]* @"std::str.18", i64 0, i64 0
	%285 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %284, 1
	store {i64, i8*} %285, {i64, i8*}* %tmp.40
	%286 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.40, i32 0, i32 1
	%287 = load i8*, i8** %286
	%288 = load i8*, i8** %value.0
	%289 = bitcast i8* %288 to i8**
	%290 = load i8*, i8** %289
	%291 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %283, i8* %287, i8* %290)
	store i32 %291, i32* %tmp.41
	%292 = load i32, i32* %tmp.41
	ret i32 %292
293:
	br label %650
294:
	%295 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%296 = getelementptr %"runtime::Type", %"runtime::Type"* %295, i32 0, i32 0
	%297 = load i32, i32* %296
	%298 = icmp eq i32 %297, 8
	br i1 %298, label %299, label %325
299:
	%300 = load i8*, i8** %value.0
	%301 = call i8* @"malloc"(i64 8)
	%302 = bitcast i8* %301 to i64*
	store i64 0, i64* %302
	%303 = insertvalue {i64*, i8*, %"runtime::Type"*} undef, i64* %302, 0
	%304 = call i8* @"malloc"(i64 8)
	%305 = bitcast i8* %304 to i8**
	store i8* %300, i8** %305
	%306 = bitcast i8** %305 to i8*
	%307 = insertvalue {i64*, i8*, %"runtime::Type"*} %303, i8* %306, 1
	%308 = insertvalue {i64*, i8*, %"runtime::Type"*} %307, %"runtime::Type"* @"type::*", 2
	%309 = extractvalue {i64*, i8*, %"runtime::Type"*} %308, 0
	%310 = extractvalue {i64*, i8*, %"runtime::Type"*} %308, 1
	%311 = extractvalue {i64*, i8*, %"runtime::Type"*} %308, 2
	%312 = bitcast i8* %310 to i8*
	%313 = insertvalue %"runtime::Ref" undef, i64* %309, 0
	%314 = insertvalue %"runtime::Ref" %313, i8* %312, 1
	%315 = insertvalue %"runtime::Ref" %314, %"runtime::Type"* %311, 2
	store %"runtime::Ref" %315, %"runtime::Ref"* %v.21
	%316 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%317 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%318 = getelementptr %"runtime::Type", %"runtime::Type"* %317, i32 0, i32 4
	%319 = load %"runtime::Type"*, %"runtime::Type"** %318
	%320 = getelementptr %"runtime::Ref", %"runtime::Ref"* %v.21, i32 0, i32 1
	%321 = load i8*, i8** %320
	%322 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %316, %"runtime::Type"* %319, i8* %321)
	store i32 %322, i32* %tmp.42
	%323 = load i32, i32* %tmp.42
	ret i32 %323
324:
	br label %650
325:
	%326 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%327 = getelementptr %"runtime::Type", %"runtime::Type"* %326, i32 0, i32 0
	%328 = load i32, i32* %327
	%329 = icmp eq i32 %328, 5
	br i1 %329, label %330, label %405
330:
	%331 = load i8*, i8** %value.0
	%332 = bitcast i8* %331 to {i64, i8**}*
	%333 = load {i64, i8**}, {i64, i8**}* %332
	store {i64, i8**} %333, {i64, i8**}* %arr.22
	%334 = getelementptr {i64, i8**}, {i64, i8**}* %arr.22, i32 0, i32 0
	%335 = load i64, i64* %334
	store i64 %335, i64* %size.22
	%336 = getelementptr {i64, i8**}, {i64, i8**}* %arr.22, i32 0, i32 1
	%337 = load i8**, i8*** %336
	store i8** %337, i8*** %elements.22
	store i32 0, i32* %sum.22
	%338 = load i32, i32* %sum.22
	%339 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%340 = getelementptr [2 x i8], [2 x i8]* @"std::str.19", i64 0, i64 0
	%341 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %340, 1
	store {i64, i8*} %341, {i64, i8*}* %tmp.43
	%342 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.43, i32 0, i32 1
	%343 = load i8*, i8** %342
	%344 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %339, i8* %343)
	store i32 %344, i32* %tmp.44
	%345 = load i32, i32* %tmp.44
	%346 = add i32 %338, %345
	store i32 %346, i32* %sum.22
	%347 = load i64, i64* %size.22
	%348 = trunc i64 %347 to i32
	store i32 0, i32* %i.23
	br label %349
349:
	%350 = load i32, i32* %i.23
	%351 = icmp slt i32 %350, %348
	br i1 %351, label %352, label %393
352:
	%353 = load i32, i32* %sum.22
	%354 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%355 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%356 = getelementptr %"runtime::Type", %"runtime::Type"* %355, i32 0, i32 4
	%357 = load %"runtime::Type"*, %"runtime::Type"** %356
	%358 = load i8**, i8*** %elements.22
	%359 = ptrtoint i8** %358 to i64
	%360 = load i32, i32* %i.23
	%361 = zext i32 %360 to i64
	%362 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%363 = getelementptr %"runtime::Type", %"runtime::Type"* %362, i32 0, i32 4
	%364 = load %"runtime::Type"*, %"runtime::Type"** %363
	%365 = getelementptr %"runtime::Type", %"runtime::Type"* %364, i32 0, i32 5
	%366 = load i64, i64* %365
	%367 = mul i64 %361, %366
	%368 = add i64 %359, %367
	%369 = inttoptr i64 %368 to i8**
	%370 = bitcast i8** %369 to i8*
	%371 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %354, %"runtime::Type"* %357, i8* %370)
	store i32 %371, i32* %tmp.45
	%372 = load i32, i32* %tmp.45
	%373 = add i32 %353, %372
	store i32 %373, i32* %sum.22
	%374 = load i32, i32* %i.23
	%375 = load i64, i64* %size.22
	%376 = zext i32 1 to i64
	%377 = sub i64 %375, %376
	%378 = zext i32 %374 to i64
	%379 = icmp ult i64 %378, %377
	br i1 %379, label %380, label %390
380:
	%381 = load i32, i32* %sum.22
	%382 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%383 = getelementptr [3 x i8], [3 x i8]* @"std::str.20", i64 0, i64 0
	%384 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %383, 1
	store {i64, i8*} %384, {i64, i8*}* %tmp.46
	%385 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.46, i32 0, i32 1
	%386 = load i8*, i8** %385
	%387 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %382, i8* %386)
	store i32 %387, i32* %tmp.47
	%388 = load i32, i32* %tmp.47
	%389 = add i32 %381, %388
	store i32 %389, i32* %sum.22
	br label %390
390:
	br label %391
391:
	%392 = add i32 %350, 1
	store i32 %392, i32* %i.23
	br label %349
393:
	%394 = load i32, i32* %sum.22
	%395 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%396 = getelementptr [2 x i8], [2 x i8]* @"std::str.21", i64 0, i64 0
	%397 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %396, 1
	store {i64, i8*} %397, {i64, i8*}* %tmp.48
	%398 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.48, i32 0, i32 1
	%399 = load i8*, i8** %398
	%400 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %395, i8* %399)
	store i32 %400, i32* %tmp.49
	%401 = load i32, i32* %tmp.49
	%402 = add i32 %394, %401
	store i32 %402, i32* %sum.22
	%403 = load i32, i32* %sum.22
	ret i32 %403
404:
	br label %650
405:
	%406 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%407 = getelementptr %"runtime::Type", %"runtime::Type"* %406, i32 0, i32 0
	%408 = load i32, i32* %407
	%409 = icmp eq i32 %408, 6
	br i1 %409, label %410, label %480
410:
	%411 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%412 = getelementptr %"runtime::Type", %"runtime::Type"* %411, i32 0, i32 3
	%413 = load i64, i64* %412
	store i64 %413, i64* %size.25
	store i32 0, i32* %sum.25
	%414 = load i32, i32* %sum.25
	%415 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%416 = getelementptr [2 x i8], [2 x i8]* @"std::str.22", i64 0, i64 0
	%417 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %416, 1
	store {i64, i8*} %417, {i64, i8*}* %tmp.50
	%418 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.50, i32 0, i32 1
	%419 = load i8*, i8** %418
	%420 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %415, i8* %419)
	store i32 %420, i32* %tmp.51
	%421 = load i32, i32* %tmp.51
	%422 = add i32 %414, %421
	store i32 %422, i32* %sum.25
	%423 = load i64, i64* %size.25
	%424 = trunc i64 %423 to i32
	store i32 0, i32* %i.26
	br label %425
425:
	%426 = load i32, i32* %i.26
	%427 = icmp slt i32 %426, %424
	br i1 %427, label %428, label %468
428:
	%429 = load i32, i32* %sum.25
	%430 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%431 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%432 = getelementptr %"runtime::Type", %"runtime::Type"* %431, i32 0, i32 4
	%433 = load %"runtime::Type"*, %"runtime::Type"** %432
	%434 = load i8*, i8** %value.0
	%435 = ptrtoint i8* %434 to i64
	%436 = load i32, i32* %i.26
	%437 = zext i32 %436 to i64
	%438 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%439 = getelementptr %"runtime::Type", %"runtime::Type"* %438, i32 0, i32 4
	%440 = load %"runtime::Type"*, %"runtime::Type"** %439
	%441 = getelementptr %"runtime::Type", %"runtime::Type"* %440, i32 0, i32 5
	%442 = load i64, i64* %441
	%443 = mul i64 %437, %442
	%444 = add i64 %435, %443
	%445 = inttoptr i64 %444 to i8*
	%446 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %430, %"runtime::Type"* %433, i8* %445)
	store i32 %446, i32* %tmp.52
	%447 = load i32, i32* %tmp.52
	%448 = add i32 %429, %447
	store i32 %448, i32* %sum.25
	%449 = load i32, i32* %i.26
	%450 = load i64, i64* %size.25
	%451 = zext i32 1 to i64
	%452 = sub i64 %450, %451
	%453 = zext i32 %449 to i64
	%454 = icmp ult i64 %453, %452
	br i1 %454, label %455, label %465
455:
	%456 = load i32, i32* %sum.25
	%457 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%458 = getelementptr [3 x i8], [3 x i8]* @"std::str.23", i64 0, i64 0
	%459 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %458, 1
	store {i64, i8*} %459, {i64, i8*}* %tmp.53
	%460 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.53, i32 0, i32 1
	%461 = load i8*, i8** %460
	%462 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %457, i8* %461)
	store i32 %462, i32* %tmp.54
	%463 = load i32, i32* %tmp.54
	%464 = add i32 %456, %463
	store i32 %464, i32* %sum.25
	br label %465
465:
	br label %466
466:
	%467 = add i32 %426, 1
	store i32 %467, i32* %i.26
	br label %425
468:
	%469 = load i32, i32* %sum.25
	%470 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%471 = getelementptr [2 x i8], [2 x i8]* @"std::str.24", i64 0, i64 0
	%472 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %471, 1
	store {i64, i8*} %472, {i64, i8*}* %tmp.55
	%473 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.55, i32 0, i32 1
	%474 = load i8*, i8** %473
	%475 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %470, i8* %474)
	store i32 %475, i32* %tmp.56
	%476 = load i32, i32* %tmp.56
	%477 = add i32 %469, %476
	store i32 %477, i32* %sum.25
	%478 = load i32, i32* %sum.25
	ret i32 %478
479:
	br label %650
480:
	%481 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%482 = getelementptr %"runtime::Type", %"runtime::Type"* %481, i32 0, i32 0
	%483 = load i32, i32* %482
	%484 = icmp eq i32 %483, 3
	br i1 %484, label %485, label %486
485:
	store i1 true, i1* %tmp.57
	br label %491
486:
	%487 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%488 = getelementptr %"runtime::Type", %"runtime::Type"* %487, i32 0, i32 0
	%489 = load i32, i32* %488
	%490 = icmp eq i32 %489, 4
	store i1 %490, i1* %tmp.57
	br label %491
491:
	%492 = load i1, i1* %tmp.57
	br i1 %492, label %493, label %576
493:
	%494 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%495 = getelementptr %"runtime::Type", %"runtime::Type"* %494, i32 0, i32 7
	%496 = load {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %495
	store {i64, %"runtime::Field"*} %496, {i64, %"runtime::Field"*}* %fields.28
	store i32 0, i32* %sum.28
	%497 = load i32, i32* %sum.28
	%498 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%499 = getelementptr [2 x i8], [2 x i8]* @"std::str.25", i64 0, i64 0
	%500 = insertvalue {i64, i8*} {i64 2, i8* undef}, i8* %499, 1
	store {i64, i8*} %500, {i64, i8*}* %tmp.58
	%501 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.58, i32 0, i32 1
	%502 = load i8*, i8** %501
	%503 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %498, i8* %502)
	store i32 %503, i32* %tmp.59
	%504 = load i32, i32* %tmp.59
	%505 = add i32 %497, %504
	store i32 %505, i32* %sum.28
	%506 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 0
	%507 = load i64, i64* %506
	%508 = trunc i64 %507 to i32
	store i32 0, i32* %i.29
	br label %509
509:
	%510 = load i32, i32* %i.29
	%511 = icmp slt i32 %510, %508
	br i1 %511, label %512, label %560
512:
	%513 = load i32, i32* %i.29
	%514 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 1
	%515 = load %"runtime::Field"*, %"runtime::Field"** %514
	%516 = getelementptr %"runtime::Field", %"runtime::Field"* %515, i32 %513
	%517 = load %"runtime::Field", %"runtime::Field"* %516
	store %"runtime::Field" %517, %"runtime::Field"* %field.29
	%518 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%519 = getelementptr [6 x i8], [6 x i8]* @"std::str.26", i64 0, i64 0
	%520 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %519, 1
	store {i64, i8*} %520, {i64, i8*}* %tmp.60
	%521 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.60, i32 0, i32 1
	%522 = load i8*, i8** %521
	%523 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 0
	%524 = getelementptr {i64, i8*}, {i64, i8*}* %523, i32 0, i32 1
	%525 = load i8*, i8** %524
	%526 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %518, i8* %522, i8* %525)
	store i32 %526, i32* %tmp.61
	%527 = load i32, i32* %sum.28
	%528 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%529 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 2
	%530 = load %"runtime::Type"*, %"runtime::Type"** %529
	%531 = load i8*, i8** %value.0
	%532 = ptrtoint i8* %531 to i64
	%533 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 1
	%534 = load i64, i64* %533
	%535 = add i64 %532, %534
	%536 = inttoptr i64 %535 to i8*
	%537 = call i32 (%"cstd::s__IO_FILE"*, %"runtime::Type"*, i8*) @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %528, %"runtime::Type"* %530, i8* %536)
	store i32 %537, i32* %tmp.62
	%538 = load i32, i32* %tmp.62
	%539 = add i32 %527, %538
	store i32 %539, i32* %sum.28
	%540 = load i32, i32* %i.29
	%541 = getelementptr {i64, %"runtime::Field"*}, {i64, %"runtime::Field"*}* %fields.28, i32 0, i32 0
	%542 = load i64, i64* %541
	%543 = zext i32 1 to i64
	%544 = sub i64 %542, %543
	%545 = zext i32 %540 to i64
	%546 = icmp ult i64 %545, %544
	br i1 %546, label %547, label %557
547:
	%548 = load i32, i32* %sum.28
	%549 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%550 = getelementptr [3 x i8], [3 x i8]* @"std::str.27", i64 0, i64 0
	%551 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %550, 1
	store {i64, i8*} %551, {i64, i8*}* %tmp.63
	%552 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.63, i32 0, i32 1
	%553 = load i8*, i8** %552
	%554 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %549, i8* %553)
	store i32 %554, i32* %tmp.64
	%555 = load i32, i32* %tmp.64
	%556 = add i32 %548, %555
	store i32 %556, i32* %sum.28
	br label %557
557:
	br label %558
558:
	%559 = add i32 %510, 1
	store i32 %559, i32* %i.29
	br label %509
560:
	%561 = load i32, i32* %sum.28
	%562 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%563 = getelementptr [6 x i8], [6 x i8]* @"std::str.28", i64 0, i64 0
	%564 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %563, 1
	store {i64, i8*} %564, {i64, i8*}* %tmp.65
	%565 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.65, i32 0, i32 1
	%566 = load i8*, i8** %565
	%567 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%568 = getelementptr %"runtime::Type", %"runtime::Type"* %567, i32 0, i32 1
	%569 = getelementptr {i64, i8*}, {i64, i8*}* %568, i32 0, i32 1
	%570 = load i8*, i8** %569
	%571 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %562, i8* %566, i8* %570)
	store i32 %571, i32* %tmp.66
	%572 = load i32, i32* %tmp.66
	%573 = add i32 %561, %572
	store i32 %573, i32* %sum.28
	%574 = load i32, i32* %sum.28
	ret i32 %574
575:
	br label %650
576:
	%577 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%578 = getelementptr %"runtime::Type", %"runtime::Type"* %577, i32 0, i32 0
	%579 = load i32, i32* %578
	%580 = icmp eq i32 %579, 10
	br i1 %580, label %581, label %650
581:
	store i64 0, i64* %v.31
	%582 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%583 = getelementptr %"runtime::Type", %"runtime::Type"* %582, i32 0, i32 4
	%584 = load %"runtime::Type"*, %"runtime::Type"** %583
	%585 = getelementptr %"runtime::Type", %"runtime::Type"* %584, i32 0, i32 5
	%586 = load i64, i64* %585
	%587 = trunc i64 %586 to i32
	store i32 0, i32* %i.32
	br label %588
588:
	%589 = load i32, i32* %i.32
	%590 = icmp slt i32 %589, %587
	br i1 %590, label %591, label %609
591:
	%592 = load i64, i64* %v.31
	%593 = load i8*, i8** %value.0
	%594 = ptrtoint i8* %593 to i64
	%595 = load i32, i32* %i.32
	%596 = zext i32 %595 to i64
	%597 = add i64 %594, %596
	%598 = inttoptr i64 %597 to i8*
	%599 = bitcast i8* %598 to i8*
	%600 = load i8, i8* %599
	%601 = sext i8 %600 to i64
	%602 = load i32, i32* %i.32
	%603 = mul i32 %602, 8
	%604 = sext i32 %603 to i64
	%605 = shl i64 %601, %604
	%606 = or i64 %592, %605
	store i64 %606, i64* %v.31
	br label %607
607:
	%608 = add i32 %589, 1
	store i32 %608, i32* %i.32
	br label %588
609:
	%610 = getelementptr [10 x i8], [10 x i8]* @"std::str.29", i64 0, i64 0
	%611 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %610, 1
	store {i64, i8*} %611, {i64, i8*}* %tmp.67
	%612 = load {i64, i8*}, {i64, i8*}* %tmp.67
	store {i64, i8*} %612, {i64, i8*}* %str.31
	%613 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%614 = getelementptr %"runtime::Type", %"runtime::Type"* %613, i32 0, i32 10
	%615 = getelementptr {i64, %"runtime::EnumValue"*}, {i64, %"runtime::EnumValue"*}* %614, i32 0, i32 0
	%616 = load i64, i64* %615
	%617 = trunc i64 %616 to i32
	store i32 0, i32* %i.33
	br label %618
618:
	%619 = load i32, i32* %i.33
	%620 = icmp slt i32 %619, %617
	br i1 %620, label %621, label %639
621:
	%622 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0
	%623 = getelementptr %"runtime::Type", %"runtime::Type"* %622, i32 0, i32 10
	%624 = load i32, i32* %i.33
	%625 = getelementptr {i64, %"runtime::EnumValue"*}, {i64, %"runtime::EnumValue"*}* %623, i32 0, i32 1
	%626 = load %"runtime::EnumValue"*, %"runtime::EnumValue"** %625
	%627 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %626, i32 %624
	%628 = load %"runtime::EnumValue", %"runtime::EnumValue"* %627
	store %"runtime::EnumValue" %628, %"runtime::EnumValue"* %ev.33
	%629 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 1
	%630 = load i64, i64* %629
	%631 = load i64, i64* %v.31
	%632 = icmp eq i64 %630, %631
	br i1 %632, label %633, label %636
633:
	%634 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 0
	%635 = load {i64, i8*}, {i64, i8*}* %634
	store {i64, i8*} %635, {i64, i8*}* %str.31
	br label %636
636:
	br label %637
637:
	%638 = add i32 %619, 1
	store i32 %638, i32* %i.33
	br label %618
639:
	%640 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0
	%641 = getelementptr [3 x i8], [3 x i8]* @"std::str.30", i64 0, i64 0
	%642 = insertvalue {i64, i8*} {i64 3, i8* undef}, i8* %641, 1
	store {i64, i8*} %642, {i64, i8*}* %tmp.68
	%643 = getelementptr {i64, i8*}, {i64, i8*}* %tmp.68, i32 0, i32 1
	%644 = load i8*, i8** %643
	%645 = getelementptr {i64, i8*}, {i64, i8*}* %str.31, i32 0, i32 1
	%646 = load i8*, i8** %645
	%647 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %640, i8* %644, i8* %646)
	store i32 %647, i32* %tmp.69
	%648 = load i32, i32* %tmp.69
	ret i32 %648
649:
	br label %650
650:
	ret i32 undef
}
declare i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %a.value, %"runtime::Type"* %b.value)
define i32 @"std::error::([&])"({i64, {i64*, i8*, %"runtime::Type"*}*} %args.value) {
start:
	%args.0 = alloca {i64, {i64*, i8*, %"runtime::Type"*}*}
	%tmp.2 = alloca i32
	store {i64, {i64*, i8*, %"runtime::Type"*}*} %args.value, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @"stderr"
	%1 = load {i64, {i64*, i8*, %"runtime::Type"*}*}, {i64, {i64*, i8*, %"runtime::Type"*}*}* %args.0
	%2 = call i32 (%"cstd::s__IO_FILE"*, {i64, {i64*, i8*, %"runtime::Type"*}*}) @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %0, {i64, {i64*, i8*, %"runtime::Type"*}*} %1)
	store i32 %2, i32* %tmp.2
	%3 = load i32, i32* %tmp.2
	ret i32 %3
4:
	ret i32 undef
}
define void @"absolute_path"(i8* %pathname.value, i8* %resolved.value) {
start:
	%pathname.0 = alloca i8*
	%resolved.0 = alloca i8*
	%tmp.74 = alloca i8*
	store i8* %pathname.value, i8** %pathname.0
	store i8* %resolved.value, i8** %resolved.0
	%0 = load i8*, i8** %pathname.0
	%1 = load i8*, i8** %resolved.0
	%2 = call i8* (i8*, i8*) @"realpath"(i8* %0, i8* %1)
	store i8* %2, i8** %tmp.74
	ret void
}
declare i8* @"malloc"(i64)
define {i64, i8*} @"std::make_string::(*int8)"(i8* %ptr.value) {
start:
	%ptr.0 = alloca i8*
	%s.0 = alloca {i64, i8*}
	%tmp.0 = alloca i64
	store i8* %ptr.value, i8** %ptr.0
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
declare void @"linux::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare i64 @"readlink"(i8*, i8*, i64)
define void @"std::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"linux::main::([[int8]])"({i64, {i64, i8*}*} %0)
	ret void
}
declare i8* @"realpath"(i8*, i8*)
@"type::int16" = external global %"runtime::Type" 
@"std::str.0" = private global [3 x i8] c"%p\00"
@"std::str.1" = private global [3 x i8] c"%s\00"
@"type::float64" = external global %"runtime::Type" 
@"std::str.2" = private global [3 x i8] c"%s\00"
@"std::str.3" = private global [3 x i8] c"%s\00"
@"std::str.4" = private global [4 x i8] c"%zu\00"
@"std::str.5" = private global [3 x i8] c"%c\00"
@"std::str.6" = private global [5 x i8] c"%hhd\00"
@"std::str.7" = private global [5 x i8] c"%hhu\00"
@"std::str.8" = private global [4 x i8] c"%hd\00"
@"std::str.9" = private global [4 x i8] c"%hu\00"
@"type::int8" = external global %"runtime::Type" 
@"type::int32" = external global %"runtime::Type" 
@"type::int64" = external global %"runtime::Type" 
@"type::uint16" = external global %"runtime::Type" 
@"stdout" = external global %"cstd::s__IO_FILE"* 
@"type::bool" = external global %"runtime::Type" 
@"type::uint32" = external global %"runtime::Type" 
@"type::*" = external global %"runtime::Type" 
@"type::uint64" = external global %"runtime::Type" 
@"type::[int8]" = external global %"runtime::Type" 
@"type::uint8" = external global %"runtime::Type" 
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
@"stderr" = external global %"cstd::s__IO_FILE"* 
@"type::*int8" = external global %"runtime::Type" 
@"std::str.30" = private global [3 x i8] c"%s\00"
@"std::str.31" = private global [15 x i8] c"/proc/self/exe\00"
@"type::float32" = external global %"runtime::Type" 
