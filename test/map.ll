; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/map.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"map::Map" = type {i64, {i64, %"map::Entry"**}}
%"runtime::Parameter" = type {{i64, i8*}, %"runtime::Type"*}
%"runtime::Field" = type {{i64, i8*}, i32, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Parameter"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"map::Entry" = type {{i64, i8*}, i8*, %"map::Entry"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
define %"map::Map"* @"map::make::()"() {
start:
	%tmp.2 = alloca %"map::Map"*
	%0 = zext i32 16 to i64
	%1 = call %"map::Map"* (i64) @"map::make_size::(uint64)"(i64 %0)
	store %"map::Map"* %1, %"map::Map"** %tmp.2
	%2 = load %"map::Map"*, %"map::Map"** %tmp.2
	ret %"map::Map"* %2
3:
	ret %"map::Map"* undef
}
declare i32 @"strcmp"(i8*, i8*)
define void @"map::remove::(*map::Map, [int8])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%h.0 = alloca i32
	%tmp.7 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	%entry2.5 = alloca %"map::Entry"*
	%entry3.6 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	%0 = load {i64, i8*}, {i64, i8*}* %key.0
	%1 = call i32 ({i64, i8*}) @"map::hash::([int8])"({i64, i8*} %0)
	store i32 %1, i32* %tmp.7
	%2 = load i32, i32* %tmp.7
	store i32 %2, i32* %h.0
	%3 = load i32, i32* %h.0
	%4 = zext i32 %3 to i64
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
	%7 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %6, i32 0, i32 0
	%8 = load i64, i64* %7
	%9 = urem i64 %4, %8
	store i64 %9, i64* %index.0
	%10 = load %"map::Map"*, %"map::Map"** %map.0
	%11 = getelementptr %"map::Map", %"map::Map"* %10, i32 0, i32 1
	%12 = load i64, i64* %index.0
	%13 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %11, i32 0, i32 1
	%14 = load %"map::Entry"**, %"map::Entry"*** %13
	%15 = getelementptr %"map::Entry"*, %"map::Entry"** %14, i64 %12
	%16 = load %"map::Entry"*, %"map::Entry"** %15
	store %"map::Entry"* %16, %"map::Entry"** %entry.0
	%17 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%18 = ptrtoint %"map::Entry"* %17 to i64
	%19 = icmp ne i64 %18, 0
	br i1 %19, label %20, label %108
20:
	%21 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 0
	%23 = load {i64, i8*}, {i64, i8*}* %22
	%24 = load {i64, i8*}, {i64, i8*}* %key.0
	%25 = extractvalue {i64, i8*} %23, 1
	%26 = extractvalue {i64, i8*} %24, 1
	%27 = call i32 @"strcmp"(i8* %25, i8* %26)
	%28 = icmp eq i32 %27, 0
	br i1 %28, label %29, label %60
29:
	%30 = load %"map::Map"*, %"map::Map"** %map.0
	%31 = getelementptr %"map::Map", %"map::Map"* %30, i32 0, i32 0
	%32 = load i64, i64* %31
	%33 = zext i32 1 to i64
	%34 = sub i64 %32, %33
	%35 = load %"map::Map"*, %"map::Map"** %map.0
	%36 = getelementptr %"map::Map", %"map::Map"* %35, i32 0, i32 0
	store i64 %34, i64* %36
	%37 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%38 = getelementptr %"map::Entry", %"map::Entry"* %37, i32 0, i32 2
	%39 = load %"map::Entry"*, %"map::Entry"** %38
	%40 = ptrtoint %"map::Entry"* %39 to i64
	%41 = icmp ne i64 %40, 0
	br i1 %41, label %42, label %52
42:
	%43 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%44 = getelementptr %"map::Entry", %"map::Entry"* %43, i32 0, i32 2
	%45 = load %"map::Entry"*, %"map::Entry"** %44
	%46 = load %"map::Map"*, %"map::Map"** %map.0
	%47 = getelementptr %"map::Map", %"map::Map"* %46, i32 0, i32 1
	%48 = load i64, i64* %index.0
	%49 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %47, i32 0, i32 1
	%50 = load %"map::Entry"**, %"map::Entry"*** %49
	%51 = getelementptr %"map::Entry"*, %"map::Entry"** %50, i64 %48
	store %"map::Entry"* %45, %"map::Entry"** %51
	br label %59
52:
	%53 = load %"map::Map"*, %"map::Map"** %map.0
	%54 = getelementptr %"map::Map", %"map::Map"* %53, i32 0, i32 1
	%55 = load i64, i64* %index.0
	%56 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %54, i32 0, i32 1
	%57 = load %"map::Entry"**, %"map::Entry"*** %56
	%58 = getelementptr %"map::Entry"*, %"map::Entry"** %57, i64 %55
	store %"map::Entry"* null, %"map::Entry"** %58
	br label %59
59:
	br label %107
60:
	%61 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%62 = getelementptr %"map::Entry", %"map::Entry"* %61, i32 0, i32 2
	%63 = load %"map::Entry"*, %"map::Entry"** %62
	store %"map::Entry"* %63, %"map::Entry"** %entry2.5
	br label %64
64:
	%65 = load %"map::Entry"*, %"map::Entry"** %entry2.5
	%66 = ptrtoint %"map::Entry"* %65 to i64
	%67 = icmp ne i64 %66, 0
	br i1 %67, label %68, label %106
68:
	%69 = load %"map::Entry"*, %"map::Entry"** %entry2.5
	%70 = getelementptr %"map::Entry", %"map::Entry"* %69, i32 0, i32 0
	%71 = load {i64, i8*}, {i64, i8*}* %70
	%72 = load {i64, i8*}, {i64, i8*}* %key.0
	%73 = extractvalue {i64, i8*} %71, 1
	%74 = extractvalue {i64, i8*} %72, 1
	%75 = call i32 @"strcmp"(i8* %73, i8* %74)
	%76 = icmp eq i32 %75, 0
	br i1 %76, label %77, label %100
77:
	%78 = load %"map::Map"*, %"map::Map"** %map.0
	%79 = getelementptr %"map::Map", %"map::Map"* %78, i32 0, i32 0
	%80 = load i64, i64* %79
	%81 = zext i32 1 to i64
	%82 = sub i64 %80, %81
	%83 = load %"map::Map"*, %"map::Map"** %map.0
	%84 = getelementptr %"map::Map", %"map::Map"* %83, i32 0, i32 0
	store i64 %82, i64* %84
	%85 = load %"map::Entry"*, %"map::Entry"** %entry2.5
	%86 = getelementptr %"map::Entry", %"map::Entry"* %85, i32 0, i32 2
	%87 = load %"map::Entry"*, %"map::Entry"** %86
	%88 = ptrtoint %"map::Entry"* %87 to i64
	%89 = icmp ne i64 %88, 0
	br i1 %89, label %90, label %96
90:
	%91 = load %"map::Entry"*, %"map::Entry"** %entry2.5
	%92 = getelementptr %"map::Entry", %"map::Entry"* %91, i32 0, i32 2
	%93 = load %"map::Entry"*, %"map::Entry"** %92
	%94 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%95 = getelementptr %"map::Entry", %"map::Entry"* %94, i32 0, i32 2
	store %"map::Entry"* %93, %"map::Entry"** %95
	br label %99
96:
	%97 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%98 = getelementptr %"map::Entry", %"map::Entry"* %97, i32 0, i32 2
	store %"map::Entry"* null, %"map::Entry"** %98
	br label %99
99:
	br label %100
100:
	%101 = load %"map::Entry"*, %"map::Entry"** %entry.0
	store %"map::Entry"* %101, %"map::Entry"** %entry3.6
	%102 = load %"map::Entry"*, %"map::Entry"** %entry2.5
	store %"map::Entry"* %102, %"map::Entry"** %entry.0
	%103 = load %"map::Entry"*, %"map::Entry"** %entry3.6
	%104 = getelementptr %"map::Entry", %"map::Entry"* %103, i32 0, i32 2
	%105 = load %"map::Entry"*, %"map::Entry"** %104
	store %"map::Entry"* %105, %"map::Entry"** %entry2.5
	br label %64
106:
	br label %107
107:
	br label %108
108:
	ret void
}
define i64 @"map::size::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 0
	%2 = load i64, i64* %1
	ret i64 %2
3:
	ret i64 undef
}
define void @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%allocated.0 = alloca i64
	%entries.0 = alloca {i64, %"map::Entry"**}
	%new_entries.0 = alloca {i64, %"map::Entry"**}
	%i.2 = alloca i32
	%entry.2 = alloca %"map::Entry"*
	%tmp.0 = alloca i1
	%entry2.4 = alloca %"map::Entry"*
	%entry3.5 = alloca %"map::Entry"*
	%tmp.1 = alloca i1
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 1
	%2 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %1, i32 0, i32 0
	%3 = load i64, i64* %2
	store i64 %3, i64* %allocated.0
	%4 = load %"map::Map"*, %"map::Map"** %map.0
	%5 = getelementptr %"map::Map", %"map::Map"* %4, i32 0, i32 0
	%6 = load i64, i64* %5
	%7 = uitofp i64 %6 to double
	%8 = load i64, i64* %allocated.0
	%9 = uitofp i64 %8 to double
	%10 = fdiv double %7, %9
	%11 = fcmp ult double %10, 0x3FE6666666666667
	br i1 %11, label %12, label %14
12:
	ret void
13:
	br label %14
14:
	%15 = load %"map::Map"*, %"map::Map"** %map.0
	%16 = getelementptr %"map::Map", %"map::Map"* %15, i32 0, i32 1
	%17 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %16
	store {i64, %"map::Entry"**} %17, {i64, %"map::Entry"**}* %entries.0
	%18 = load i64, i64* %allocated.0
	%19 = zext i32 2 to i64
	%20 = mul i64 %18, %19
	%21 = call i8* @"calloc"(i64 %20, i64 8)
	%22 = bitcast i8* %21 to %"map::Entry"**
	%23 = insertvalue {i64, %"map::Entry"**} undef, %"map::Entry"** %22, 1
	%24 = insertvalue {i64, %"map::Entry"**} %23, i64 %20, 0
	store {i64, %"map::Entry"**} %24, {i64, %"map::Entry"**}* %new_entries.0
	%25 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 0
	%26 = load i64, i64* %25
	%27 = trunc i64 %26 to i32
	store i32 0, i32* %i.2
	br label %28
28:
	%29 = load i32, i32* %i.2
	%30 = icmp slt i32 %29, %27
	br i1 %30, label %31, label %85
31:
	%32 = load i32, i32* %i.2
	%33 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 1
	%34 = load %"map::Entry"**, %"map::Entry"*** %33
	%35 = getelementptr %"map::Entry"*, %"map::Entry"** %34, i32 %32
	%36 = load %"map::Entry"*, %"map::Entry"** %35
	store %"map::Entry"* %36, %"map::Entry"** %entry.2
	%37 = load %"map::Entry"*, %"map::Entry"** %entry.2
	%38 = ptrtoint %"map::Entry"* %37 to i64
	%39 = icmp ne i64 %38, 0
	br i1 %39, label %40, label %82
40:
	%41 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %new_entries.0
	%42 = load %"map::Entry"*, %"map::Entry"** %entry.2
	%43 = getelementptr %"map::Entry", %"map::Entry"* %42, i32 0, i32 0
	%44 = load {i64, i8*}, {i64, i8*}* %43
	%45 = load %"map::Entry"*, %"map::Entry"** %entry.2
	%46 = getelementptr %"map::Entry", %"map::Entry"* %45, i32 0, i32 1
	%47 = load i8*, i8** %46
	%48 = call i1 ({i64, %"map::Entry"**}, {i64, i8*}, i8*) @"map::do_put::([*map::Entry], [int8], *)"({i64, %"map::Entry"**} %41, {i64, i8*} %44, i8* %47)
	store i1 %48, i1* %tmp.0
	%49 = load %"map::Entry"*, %"map::Entry"** %entry.2
	%50 = getelementptr %"map::Entry", %"map::Entry"* %49, i32 0, i32 2
	%51 = load %"map::Entry"*, %"map::Entry"** %50
	%52 = ptrtoint %"map::Entry"* %51 to i64
	%53 = icmp ne i64 %52, 0
	br i1 %53, label %54, label %78
54:
	%55 = load %"map::Entry"*, %"map::Entry"** %entry.2
	store %"map::Entry"* %55, %"map::Entry"** %entry2.4
	br label %56
56:
	%57 = load %"map::Entry"*, %"map::Entry"** %entry2.4
	%58 = getelementptr %"map::Entry", %"map::Entry"* %57, i32 0, i32 2
	%59 = load %"map::Entry"*, %"map::Entry"** %58
	%60 = ptrtoint %"map::Entry"* %59 to i64
	%61 = icmp ne i64 %60, 0
	br i1 %61, label %62, label %77
62:
	%63 = load %"map::Entry"*, %"map::Entry"** %entry2.4
	store %"map::Entry"* %63, %"map::Entry"** %entry3.5
	%64 = load %"map::Entry"*, %"map::Entry"** %entry2.4
	%65 = getelementptr %"map::Entry", %"map::Entry"* %64, i32 0, i32 2
	%66 = load %"map::Entry"*, %"map::Entry"** %65
	store %"map::Entry"* %66, %"map::Entry"** %entry2.4
	%67 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %new_entries.0
	%68 = load %"map::Entry"*, %"map::Entry"** %entry2.4
	%69 = getelementptr %"map::Entry", %"map::Entry"* %68, i32 0, i32 0
	%70 = load {i64, i8*}, {i64, i8*}* %69
	%71 = load %"map::Entry"*, %"map::Entry"** %entry2.4
	%72 = getelementptr %"map::Entry", %"map::Entry"* %71, i32 0, i32 1
	%73 = load i8*, i8** %72
	%74 = call i1 ({i64, %"map::Entry"**}, {i64, i8*}, i8*) @"map::do_put::([*map::Entry], [int8], *)"({i64, %"map::Entry"**} %67, {i64, i8*} %70, i8* %73)
	store i1 %74, i1* %tmp.1
	%75 = load %"map::Entry"*, %"map::Entry"** %entry3.5
	%76 = bitcast %"map::Entry"* %75 to i8*
	call void (i8*) @"free"(i8* %76)
	br label %56
77:
	br label %81
78:
	%79 = load %"map::Entry"*, %"map::Entry"** %entry.2
	%80 = bitcast %"map::Entry"* %79 to i8*
	call void (i8*) @"free"(i8* %80)
	br label %81
81:
	br label %82
82:
	br label %83
83:
	%84 = add i32 %29, 1
	store i32 %84, i32* %i.2
	br label %28
85:
	%86 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0
	%87 = extractvalue {i64, %"map::Entry"**} %86, 0
	%88 = extractvalue {i64, %"map::Entry"**} %86, 1
	%89 = bitcast %"map::Entry"** %88 to i8*
	%90 = insertvalue {i64, i8*} undef, i64 %87, 0
	%91 = insertvalue {i64, i8*} %90, i8* %89, 1
	%92 = extractvalue {i64, i8*} %91, 1
	call void @"free"(i8* %92)
	%93 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %new_entries.0
	%94 = load %"map::Map"*, %"map::Map"** %map.0
	%95 = getelementptr %"map::Map", %"map::Map"* %94, i32 0, i32 1
	store {i64, %"map::Entry"**} %93, {i64, %"map::Entry"**}* %95
	ret void
}
define {i64, {i64, i8*}*} @"map::keys::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%keys.0 = alloca {i64, {i64, i8*}*}
	%tmp.8 = alloca i64
	%index.0 = alloca i32
	%i.1 = alloca i32
	%entry.1 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = call i64 (%"map::Map"*) @"map::size::(*map::Map)"(%"map::Map"* %0)
	store i64 %1, i64* %tmp.8
	%2 = load i64, i64* %tmp.8
	%3 = mul i64 %2, 16
	%4 = call i8* @"malloc"(i64 %3)
	%5 = bitcast i8* %4 to {i64, i8*}*
	%6 = insertvalue {i64, {i64, i8*}*} undef, {i64, i8*}* %5, 1
	%7 = insertvalue {i64, {i64, i8*}*} %6, i64 %2, 0
	store {i64, {i64, i8*}*} %7, {i64, {i64, i8*}*}* %keys.0
	store i32 0, i32* %index.0
	%8 = load %"map::Map"*, %"map::Map"** %map.0
	%9 = getelementptr %"map::Map", %"map::Map"* %8, i32 0, i32 1
	%10 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %9, i32 0, i32 0
	%11 = load i64, i64* %10
	%12 = trunc i64 %11 to i32
	store i32 0, i32* %i.1
	br label %13
13:
	%14 = load i32, i32* %i.1
	%15 = icmp slt i32 %14, %12
	br i1 %15, label %16, label %62
16:
	%17 = load %"map::Map"*, %"map::Map"** %map.0
	%18 = getelementptr %"map::Map", %"map::Map"* %17, i32 0, i32 1
	%19 = load i32, i32* %i.1
	%20 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %18, i32 0, i32 1
	%21 = load %"map::Entry"**, %"map::Entry"*** %20
	%22 = getelementptr %"map::Entry"*, %"map::Entry"** %21, i32 %19
	%23 = load %"map::Entry"*, %"map::Entry"** %22
	store %"map::Entry"* %23, %"map::Entry"** %entry.1
	%24 = load %"map::Entry"*, %"map::Entry"** %entry.1
	%25 = ptrtoint %"map::Entry"* %24 to i64
	%26 = icmp ne i64 %25, 0
	br i1 %26, label %27, label %59
27:
	%28 = load %"map::Entry"*, %"map::Entry"** %entry.1
	%29 = getelementptr %"map::Entry", %"map::Entry"* %28, i32 0, i32 0
	%30 = load {i64, i8*}, {i64, i8*}* %29
	%31 = load i32, i32* %index.0
	%32 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0, i32 0, i32 1
	%33 = load {i64, i8*}*, {i64, i8*}** %32
	%34 = getelementptr {i64, i8*}, {i64, i8*}* %33, i32 %31
	store {i64, i8*} %30, {i64, i8*}* %34
	%35 = load i32, i32* %index.0
	%36 = add i32 %35, 1
	store i32 %36, i32* %index.0
	br label %37
37:
	%38 = load %"map::Entry"*, %"map::Entry"** %entry.1
	%39 = getelementptr %"map::Entry", %"map::Entry"* %38, i32 0, i32 2
	%40 = load %"map::Entry"*, %"map::Entry"** %39
	%41 = ptrtoint %"map::Entry"* %40 to i64
	%42 = icmp ne i64 %41, 0
	br i1 %42, label %43, label %58
43:
	%44 = load %"map::Entry"*, %"map::Entry"** %entry.1
	%45 = getelementptr %"map::Entry", %"map::Entry"* %44, i32 0, i32 2
	%46 = load %"map::Entry"*, %"map::Entry"** %45
	%47 = getelementptr %"map::Entry", %"map::Entry"* %46, i32 0, i32 0
	%48 = load {i64, i8*}, {i64, i8*}* %47
	%49 = load i32, i32* %index.0
	%50 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0, i32 0, i32 1
	%51 = load {i64, i8*}*, {i64, i8*}** %50
	%52 = getelementptr {i64, i8*}, {i64, i8*}* %51, i32 %49
	store {i64, i8*} %48, {i64, i8*}* %52
	%53 = load i32, i32* %index.0
	%54 = add i32 %53, 1
	store i32 %54, i32* %index.0
	%55 = load %"map::Entry"*, %"map::Entry"** %entry.1
	%56 = getelementptr %"map::Entry", %"map::Entry"* %55, i32 0, i32 2
	%57 = load %"map::Entry"*, %"map::Entry"** %56
	store %"map::Entry"* %57, %"map::Entry"** %entry.1
	br label %37
58:
	br label %59
59:
	br label %60
60:
	%61 = add i32 %14, 1
	store i32 %61, i32* %i.1
	br label %13
62:
	%63 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0
	ret {i64, {i64, i8*}*} %63
64:
	ret {i64, {i64, i8*}*} undef
}
define i1 @"map::do_put::([*map::Entry], [int8], *)"({i64, %"map::Entry"**} %entries.value, {i64, i8*} %key.value, i8* %value.value) {
start:
	%entries.0 = alloca {i64, %"map::Entry"**}
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	%h.0 = alloca i32
	%tmp.5 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	%entry2.1 = alloca %"map::Entry"*
	store {i64, %"map::Entry"**} %entries.value, {i64, %"map::Entry"**}* %entries.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i8* %value.value, i8** %value.0
	%0 = load {i64, i8*}, {i64, i8*}* %key.0
	%1 = call i32 ({i64, i8*}) @"map::hash::([int8])"({i64, i8*} %0)
	store i32 %1, i32* %tmp.5
	%2 = load i32, i32* %tmp.5
	store i32 %2, i32* %h.0
	%3 = load i32, i32* %h.0
	%4 = zext i32 %3 to i64
	%5 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 0
	%6 = load i64, i64* %5
	%7 = urem i64 %4, %6
	store i64 %7, i64* %index.0
	%8 = load i64, i64* %index.0
	%9 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 1
	%10 = load %"map::Entry"**, %"map::Entry"*** %9
	%11 = getelementptr %"map::Entry"*, %"map::Entry"** %10, i64 %8
	%12 = load %"map::Entry"*, %"map::Entry"** %11
	store %"map::Entry"* %12, %"map::Entry"** %entry.0
	%13 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%14 = ptrtoint %"map::Entry"* %13 to i64
	%15 = icmp ne i64 %14, 0
	br i1 %15, label %16, label %69
16:
	%17 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%18 = getelementptr %"map::Entry", %"map::Entry"* %17, i32 0, i32 0
	%19 = load {i64, i8*}, {i64, i8*}* %18
	%20 = load {i64, i8*}, {i64, i8*}* %key.0
	%21 = extractvalue {i64, i8*} %19, 1
	%22 = extractvalue {i64, i8*} %20, 1
	%23 = call i32 @"strcmp"(i8* %21, i8* %22)
	%24 = icmp eq i32 %23, 0
	br i1 %24, label %25, label %30
25:
	%26 = load i8*, i8** %value.0
	%27 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%28 = getelementptr %"map::Entry", %"map::Entry"* %27, i32 0, i32 1
	store i8* %26, i8** %28
	ret i1 false
29:
	br label %30
30:
	br label %31
31:
	%32 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%33 = getelementptr %"map::Entry", %"map::Entry"* %32, i32 0, i32 2
	%34 = load %"map::Entry"*, %"map::Entry"** %33
	%35 = ptrtoint %"map::Entry"* %34 to i64
	%36 = icmp ne i64 %35, 0
	br i1 %36, label %37, label %55
37:
	%38 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%39 = getelementptr %"map::Entry", %"map::Entry"* %38, i32 0, i32 2
	%40 = load %"map::Entry"*, %"map::Entry"** %39
	store %"map::Entry"* %40, %"map::Entry"** %entry.0
	%41 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%42 = getelementptr %"map::Entry", %"map::Entry"* %41, i32 0, i32 0
	%43 = load {i64, i8*}, {i64, i8*}* %42
	%44 = load {i64, i8*}, {i64, i8*}* %key.0
	%45 = extractvalue {i64, i8*} %43, 1
	%46 = extractvalue {i64, i8*} %44, 1
	%47 = call i32 @"strcmp"(i8* %45, i8* %46)
	%48 = icmp eq i32 %47, 0
	br i1 %48, label %49, label %54
49:
	%50 = load i8*, i8** %value.0
	%51 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%52 = getelementptr %"map::Entry", %"map::Entry"* %51, i32 0, i32 1
	store i8* %50, i8** %52
	ret i1 false
53:
	br label %54
54:
	br label %31
55:
	%56 = call i8* @"malloc"(i64 32)
	%57 = bitcast i8* %56 to %"map::Entry"*
	store %"map::Entry"* %57, %"map::Entry"** %entry2.1
	%58 = load {i64, i8*}, {i64, i8*}* %key.0
	%59 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%60 = getelementptr %"map::Entry", %"map::Entry"* %59, i32 0, i32 0
	store {i64, i8*} %58, {i64, i8*}* %60
	%61 = load i8*, i8** %value.0
	%62 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%63 = getelementptr %"map::Entry", %"map::Entry"* %62, i32 0, i32 1
	store i8* %61, i8** %63
	%64 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%65 = getelementptr %"map::Entry", %"map::Entry"* %64, i32 0, i32 2
	store %"map::Entry"* null, %"map::Entry"** %65
	%66 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%67 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%68 = getelementptr %"map::Entry", %"map::Entry"* %67, i32 0, i32 2
	store %"map::Entry"* %66, %"map::Entry"** %68
	br label %85
69:
	%70 = call i8* @"malloc"(i64 32)
	%71 = bitcast i8* %70 to %"map::Entry"*
	store %"map::Entry"* %71, %"map::Entry"** %entry.0
	%72 = load {i64, i8*}, {i64, i8*}* %key.0
	%73 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%74 = getelementptr %"map::Entry", %"map::Entry"* %73, i32 0, i32 0
	store {i64, i8*} %72, {i64, i8*}* %74
	%75 = load i8*, i8** %value.0
	%76 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%77 = getelementptr %"map::Entry", %"map::Entry"* %76, i32 0, i32 1
	store i8* %75, i8** %77
	%78 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%79 = getelementptr %"map::Entry", %"map::Entry"* %78, i32 0, i32 2
	store %"map::Entry"* null, %"map::Entry"** %79
	%80 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%81 = load i64, i64* %index.0
	%82 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 1
	%83 = load %"map::Entry"**, %"map::Entry"*** %82
	%84 = getelementptr %"map::Entry"*, %"map::Entry"** %83, i64 %81
	store %"map::Entry"* %80, %"map::Entry"** %84
	br label %85
85:
	ret i1 true
86:
	ret i1 undef
}
declare i8* @"malloc"(i64)
define void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %map.value, {i64, i8*} %key.value, i8* %value.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	%tmp.6 = alloca i1
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i8* %value.value, i8** %value.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	call void (%"map::Map"*) @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %0)
	%1 = load %"map::Map"*, %"map::Map"** %map.0
	%2 = getelementptr %"map::Map", %"map::Map"* %1, i32 0, i32 1
	%3 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %2
	%4 = load {i64, i8*}, {i64, i8*}* %key.0
	%5 = load i8*, i8** %value.0
	%6 = call i1 ({i64, %"map::Entry"**}, {i64, i8*}, i8*) @"map::do_put::([*map::Entry], [int8], *)"({i64, %"map::Entry"**} %3, {i64, i8*} %4, i8* %5)
	store i1 %6, i1* %tmp.6
	%7 = load i1, i1* %tmp.6
	br i1 %7, label %8, label %16
8:
	%9 = load %"map::Map"*, %"map::Map"** %map.0
	%10 = getelementptr %"map::Map", %"map::Map"* %9, i32 0, i32 0
	%11 = load i64, i64* %10
	%12 = zext i32 1 to i64
	%13 = add i64 %11, %12
	%14 = load %"map::Map"*, %"map::Map"** %map.0
	%15 = getelementptr %"map::Map", %"map::Map"* %14, i32 0, i32 0
	store i64 %13, i64* %15
	br label %16
16:
	ret void
}
define i32 @"map::hash::([int8])"({i64, i8*} %str.value) {
start:
	%str.0 = alloca {i64, i8*}
	%r.0 = alloca i32
	%i.1 = alloca i32
	store {i64, i8*} %str.value, {i64, i8*}* %str.0
	store i32 7, i32* %r.0
	%0 = load {i64, i8*}, {i64, i8*}* %str.0
	%1 = extractvalue {i64, i8*} %0, 0
	%2 = sub i64 %1, 1
	%3 = trunc i64 %2 to i32
	store i32 0, i32* %i.1
	br label %4
4:
	%5 = load i32, i32* %i.1
	%6 = icmp slt i32 %5, %3
	br i1 %6, label %7, label %19
7:
	%8 = load i32, i32* %r.0
	%9 = mul i32 %8, 31
	%10 = load i32, i32* %i.1
	%11 = getelementptr {i64, i8*}, {i64, i8*}* %str.0, i32 0, i32 1
	%12 = load i8*, i8** %11
	%13 = getelementptr i8, i8* %12, i32 %10
	%14 = load i8, i8* %13
	%15 = zext i8 %14 to i32
	%16 = add i32 %9, %15
	store i32 %16, i32* %r.0
	br label %17
17:
	%18 = add i32 %5, 1
	store i32 %18, i32* %i.1
	br label %4
19:
	%20 = load i32, i32* %r.0
	ret i32 %20
21:
	ret i32 undef
}
define void @"map::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = inttoptr i32 1 to i8*
	store i8* %0, i8** @"map::sentinel"
	ret void
}
define i8* @"map::get::(*map::Map, [int8])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%h.0 = alloca i32
	%tmp.3 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	%0 = load {i64, i8*}, {i64, i8*}* %key.0
	%1 = call i32 ({i64, i8*}) @"map::hash::([int8])"({i64, i8*} %0)
	store i32 %1, i32* %tmp.3
	%2 = load i32, i32* %tmp.3
	store i32 %2, i32* %h.0
	%3 = load i32, i32* %h.0
	%4 = zext i32 %3 to i64
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
	%7 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %6, i32 0, i32 0
	%8 = load i64, i64* %7
	%9 = urem i64 %4, %8
	store i64 %9, i64* %index.0
	%10 = load %"map::Map"*, %"map::Map"** %map.0
	%11 = getelementptr %"map::Map", %"map::Map"* %10, i32 0, i32 1
	%12 = load i64, i64* %index.0
	%13 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %11, i32 0, i32 1
	%14 = load %"map::Entry"**, %"map::Entry"*** %13
	%15 = getelementptr %"map::Entry"*, %"map::Entry"** %14, i64 %12
	%16 = load %"map::Entry"*, %"map::Entry"** %15
	store %"map::Entry"* %16, %"map::Entry"** %entry.0
	%17 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%18 = ptrtoint %"map::Entry"* %17 to i64
	%19 = icmp ne i64 %18, 0
	br i1 %19, label %20, label %61
20:
	%21 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 0
	%23 = load {i64, i8*}, {i64, i8*}* %22
	%24 = load {i64, i8*}, {i64, i8*}* %key.0
	%25 = extractvalue {i64, i8*} %23, 1
	%26 = extractvalue {i64, i8*} %24, 1
	%27 = call i32 @"strcmp"(i8* %25, i8* %26)
	%28 = icmp eq i32 %27, 0
	br i1 %28, label %29, label %34
29:
	%30 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%31 = getelementptr %"map::Entry", %"map::Entry"* %30, i32 0, i32 1
	%32 = load i8*, i8** %31
	ret i8* %32
33:
	br label %34
34:
	br label %35
35:
	%36 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%37 = getelementptr %"map::Entry", %"map::Entry"* %36, i32 0, i32 2
	%38 = load %"map::Entry"*, %"map::Entry"** %37
	%39 = ptrtoint %"map::Entry"* %38 to i64
	%40 = icmp ne i64 %39, 0
	br i1 %40, label %41, label %59
41:
	%42 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%43 = getelementptr %"map::Entry", %"map::Entry"* %42, i32 0, i32 2
	%44 = load %"map::Entry"*, %"map::Entry"** %43
	store %"map::Entry"* %44, %"map::Entry"** %entry.0
	%45 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%46 = getelementptr %"map::Entry", %"map::Entry"* %45, i32 0, i32 0
	%47 = load {i64, i8*}, {i64, i8*}* %46
	%48 = load {i64, i8*}, {i64, i8*}* %key.0
	%49 = extractvalue {i64, i8*} %47, 1
	%50 = extractvalue {i64, i8*} %48, 1
	%51 = call i32 @"strcmp"(i8* %49, i8* %50)
	%52 = icmp eq i32 %51, 0
	br i1 %52, label %53, label %58
53:
	%54 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%55 = getelementptr %"map::Entry", %"map::Entry"* %54, i32 0, i32 1
	%56 = load i8*, i8** %55
	ret i8* %56
57:
	br label %58
58:
	br label %35
59:
	ret i8* null
60:
	br label %63
61:
	ret i8* null
62:
	br label %63
63:
	ret i8* undef
}
define %"map::Map"* @"map::make_size::(uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%map.0 = alloca %"map::Map"*
	store i64 %size.value, i64* %size.0
	%0 = call i8* @"malloc"(i64 24)
	%1 = bitcast i8* %0 to %"map::Map"*
	store %"map::Map"* %1, %"map::Map"** %map.0
	%2 = load i64, i64* %size.0
	%3 = call i8* @"calloc"(i64 %2, i64 8)
	%4 = bitcast i8* %3 to %"map::Entry"**
	%5 = insertvalue {i64, %"map::Entry"**} undef, %"map::Entry"** %4, 1
	%6 = insertvalue {i64, %"map::Entry"**} %5, i64 %2, 0
	%7 = load %"map::Map"*, %"map::Map"** %map.0
	%8 = getelementptr %"map::Map", %"map::Map"* %7, i32 0, i32 1
	store {i64, %"map::Entry"**} %6, {i64, %"map::Entry"**}* %8
	%9 = load %"map::Map"*, %"map::Map"** %map.0
	%10 = getelementptr %"map::Map", %"map::Map"* %9, i32 0, i32 0
	store i64 0, i64* %10
	%11 = load %"map::Map"*, %"map::Map"** %map.0
	ret %"map::Map"* %11
12:
	ret %"map::Map"* undef
}
define i1 @"map::contains::(*map::Map, [int8])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	%tmp.4 = alloca i8*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = load {i64, i8*}, {i64, i8*}* %key.0
	%2 = call i8* (%"map::Map"*, {i64, i8*}) @"map::get::(*map::Map, [int8])"(%"map::Map"* %0, {i64, i8*} %1)
	store i8* %2, i8** %tmp.4
	%3 = load i8*, i8** %tmp.4
	store i8* %3, i8** %value.0
	%4 = load i8*, i8** %value.0
	%5 = ptrtoint i8* %4 to i64
	%6 = icmp ne i64 %5, 0
	ret i1 %6
7:
	ret i1 undef
}
declare void @"free"(i8*)
declare i8* @"calloc"(i64, i64)
@"type::*" = external global %"runtime::Type" 
@"type::uint64" = external global %"runtime::Type" 
@"map::sentinel" = global i8* zeroinitializer
@"type::[int8]" = external global %"runtime::Type" 
@"type::map::Map" = external global %"runtime::Type" 
@"type::int8" = external global %"runtime::Type" 
@"map::INITIAL_SIZE" = global i32 16
@"type::map::Entry" = external global %"runtime::Type" 
@"type::[*map::Entry]" = external global %"runtime::Type" 
@"type::*map::Entry" = external global %"runtime::Type" 
