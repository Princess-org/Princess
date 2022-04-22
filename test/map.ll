; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/map.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}, {i64, i8*}, {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"runtime::Function" = type {{i64, i8*}, i1, {i64, i8*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}}
%"map::Entry" = type {{i64, i8*}, i8*, %"map::Entry"*, %"map::Entry"*, %"map::Entry"*}
%"map::Map" = type {i64, {i64, %"map::Entry"**}, %"map::Entry"*, %"map::Entry"*}
%"cstd::s__IO_FILE" = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8]}
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_codecvt" = type opaque
%"cstd::s__IO_wide_data" = type opaque
define %"map::Map"* @"map::make_size::(uint64)"(i64 %size.value) {
start:
	%size.0 = alloca i64
	%map.0 = alloca %"map::Map"*
	%tmp.2 = alloca %"map::Map"*
	%tmp.3 = alloca {i64, %"map::Entry"**}
	store i64 %size.value, i64* %size.0
	store %"map::Map"* zeroinitializer, %"map::Map"** %map.0
	%0 = call %"map::Map"* @"std::allocate::(type<map::Map>)"()
	store %"map::Map"* %0, %"map::Map"** %tmp.2
	%1 = load %"map::Map"*, %"map::Map"** %tmp.2
	store %"map::Map"* %1, %"map::Map"** %map.0
	%2 = load i64, i64* %size.0
	%3 = call {i64, %"map::Entry"**} (i64) @"std::zero_allocate::(type<*map::Entry>, uint64)"(i64 %2)
	store {i64, %"map::Entry"**} %3, {i64, %"map::Entry"**}* %tmp.3
	%4 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %tmp.3
	%5 = insertvalue %"map::Map" {i64 0, {i64, %"map::Entry"**} undef, %"map::Entry"* zeroinitializer, %"map::Entry"* zeroinitializer}, {i64, %"map::Entry"**} %4, 1
	%6 = load %"map::Map"*, %"map::Map"** %map.0
	store %"map::Map" %5, %"map::Map"* %6
	%7 = load %"map::Map"*, %"map::Map"** %map.0
	ret %"map::Map"* %7
8:
	ret %"map::Map"* undef
}
define %"map::Map"* @"map::make::()"() {
start:
	%tmp.4 = alloca %"map::Map"*
	%0 = zext i32 16 to i64
	%1 = call %"map::Map"* (i64) @"map::make_size::(uint64)"(i64 %0)
	store %"map::Map"* %1, %"map::Map"** %tmp.4
	%2 = load %"map::Map"*, %"map::Map"** %tmp.4
	ret %"map::Map"* %2
3:
	ret %"map::Map"* undef
}
define i8* @"map::get::(*map::Map, [char])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%h.0 = alloca i32
	%tmp.5 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i32 zeroinitializer, i32* %h.0
	%0 = load {i64, i8*}, {i64, i8*}* %key.0
	%1 = call i32 ({i64, i8*}) @"map::hash::([char])"({i64, i8*} %0)
	store i32 %1, i32* %tmp.5
	%2 = load i32, i32* %tmp.5
	store i32 %2, i32* %h.0
	store i64 zeroinitializer, i64* %index.0
	%3 = load i32, i32* %h.0
	%4 = zext i32 %3 to i64
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
	%7 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %6, i32 0, i32 0
	%8 = load i64, i64* %7
	%9 = urem i64 %4, %8
	store i64 %9, i64* %index.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
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
define i1 @"map::contains::(*map::Map, [char])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	%tmp.6 = alloca i8*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i8* zeroinitializer, i8** %value.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = load {i64, i8*}, {i64, i8*}* %key.0
	%2 = call i8* (%"map::Map"*, {i64, i8*}) @"map::get::(*map::Map, [char])"(%"map::Map"* %0, {i64, i8*} %1)
	store i8* %2, i8** %tmp.6
	%3 = load i8*, i8** %tmp.6
	store i8* %3, i8** %value.0
	%4 = load i8*, i8** %value.0
	%5 = ptrtoint i8* %4 to i64
	%6 = icmp ne i64 %5, 0
	ret i1 %6
7:
	ret i1 undef
}
define void @"map::put::(*map::Map, [char], *)"(%"map::Map"* %map.value, {i64, i8*} %key.value, i8* %value.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i8* %value.value, i8** %value.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	call void (%"map::Map"*) @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %0)
	%1 = load %"map::Map"*, %"map::Map"** %map.0
	%2 = load {i64, i8*}, {i64, i8*}* %key.0
	%3 = load i8*, i8** %value.0
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::do_put::(*map::Map, [char], *)"(%"map::Map"* %1, {i64, i8*} %2, i8* %3)
	ret void
}
define void @"map::remove::(*map::Map, [char])"(%"map::Map"* %map.value, {i64, i8*} %key.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%h.0 = alloca i32
	%tmp.11 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	%entry2.7 = alloca %"map::Entry"*
	%entry3.8 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i32 zeroinitializer, i32* %h.0
	%0 = load {i64, i8*}, {i64, i8*}* %key.0
	%1 = call i32 ({i64, i8*}) @"map::hash::([char])"({i64, i8*} %0)
	store i32 %1, i32* %tmp.11
	%2 = load i32, i32* %tmp.11
	store i32 %2, i32* %h.0
	store i64 zeroinitializer, i64* %index.0
	%3 = load i32, i32* %h.0
	%4 = zext i32 %3 to i64
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
	%7 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %6, i32 0, i32 0
	%8 = load i64, i64* %7
	%9 = urem i64 %4, %8
	store i64 %9, i64* %index.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
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
	br i1 %19, label %20, label %196
20:
	%21 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 0
	%23 = load {i64, i8*}, {i64, i8*}* %22
	%24 = load {i64, i8*}, {i64, i8*}* %key.0
	%25 = extractvalue {i64, i8*} %23, 1
	%26 = extractvalue {i64, i8*} %24, 1
	%27 = call i32 @"strcmp"(i8* %25, i8* %26)
	%28 = icmp eq i32 %27, 0
	br i1 %28, label %29, label %102
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
	%40 = load %"map::Map"*, %"map::Map"** %map.0
	%41 = getelementptr %"map::Map", %"map::Map"* %40, i32 0, i32 1
	%42 = load i64, i64* %index.0
	%43 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %41, i32 0, i32 1
	%44 = load %"map::Entry"**, %"map::Entry"*** %43
	%45 = getelementptr %"map::Entry"*, %"map::Entry"** %44, i64 %42
	store %"map::Entry"* %39, %"map::Entry"** %45
	%46 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%47 = getelementptr %"map::Entry", %"map::Entry"* %46, i32 0, i32 3
	%48 = load %"map::Entry"*, %"map::Entry"** %47
	%49 = ptrtoint %"map::Entry"* %48 to i64
	%50 = icmp ne i64 %49, 0
	br i1 %50, label %51, label %59
51:
	%52 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%53 = getelementptr %"map::Entry", %"map::Entry"* %52, i32 0, i32 4
	%54 = load %"map::Entry"*, %"map::Entry"** %53
	%55 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%56 = getelementptr %"map::Entry", %"map::Entry"* %55, i32 0, i32 3
	%57 = load %"map::Entry"*, %"map::Entry"** %56
	%58 = getelementptr %"map::Entry", %"map::Entry"* %57, i32 0, i32 4
	store %"map::Entry"* %54, %"map::Entry"** %58
	br label %59
59:
	%60 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%61 = getelementptr %"map::Entry", %"map::Entry"* %60, i32 0, i32 4
	%62 = load %"map::Entry"*, %"map::Entry"** %61
	%63 = ptrtoint %"map::Entry"* %62 to i64
	%64 = icmp ne i64 %63, 0
	br i1 %64, label %65, label %73
65:
	%66 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%67 = getelementptr %"map::Entry", %"map::Entry"* %66, i32 0, i32 3
	%68 = load %"map::Entry"*, %"map::Entry"** %67
	%69 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%70 = getelementptr %"map::Entry", %"map::Entry"* %69, i32 0, i32 4
	%71 = load %"map::Entry"*, %"map::Entry"** %70
	%72 = getelementptr %"map::Entry", %"map::Entry"* %71, i32 0, i32 3
	store %"map::Entry"* %68, %"map::Entry"** %72
	br label %73
73:
	%74 = load %"map::Map"*, %"map::Map"** %map.0
	%75 = getelementptr %"map::Map", %"map::Map"* %74, i32 0, i32 3
	%76 = load %"map::Entry"*, %"map::Entry"** %75
	%77 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%78 = ptrtoint %"map::Entry"* %76 to i64
	%79 = ptrtoint %"map::Entry"* %77 to i64
	%80 = icmp eq i64 %78, %79
	br i1 %80, label %81, label %87
81:
	%82 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%83 = getelementptr %"map::Entry", %"map::Entry"* %82, i32 0, i32 4
	%84 = load %"map::Entry"*, %"map::Entry"** %83
	%85 = load %"map::Map"*, %"map::Map"** %map.0
	%86 = getelementptr %"map::Map", %"map::Map"* %85, i32 0, i32 3
	store %"map::Entry"* %84, %"map::Entry"** %86
	br label %87
87:
	%88 = load %"map::Map"*, %"map::Map"** %map.0
	%89 = getelementptr %"map::Map", %"map::Map"* %88, i32 0, i32 2
	%90 = load %"map::Entry"*, %"map::Entry"** %89
	%91 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%92 = ptrtoint %"map::Entry"* %90 to i64
	%93 = ptrtoint %"map::Entry"* %91 to i64
	%94 = icmp eq i64 %92, %93
	br i1 %94, label %95, label %101
95:
	%96 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%97 = getelementptr %"map::Entry", %"map::Entry"* %96, i32 0, i32 3
	%98 = load %"map::Entry"*, %"map::Entry"** %97
	%99 = load %"map::Map"*, %"map::Map"** %map.0
	%100 = getelementptr %"map::Map", %"map::Map"* %99, i32 0, i32 2
	store %"map::Entry"* %98, %"map::Entry"** %100
	br label %101
101:
	br label %195
102:
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry2.7
	%103 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%104 = getelementptr %"map::Entry", %"map::Entry"* %103, i32 0, i32 2
	%105 = load %"map::Entry"*, %"map::Entry"** %104
	store %"map::Entry"* %105, %"map::Entry"** %entry2.7
	br label %106
106:
	%107 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%108 = ptrtoint %"map::Entry"* %107 to i64
	%109 = icmp ne i64 %108, 0
	br i1 %109, label %110, label %194
110:
	%111 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%112 = getelementptr %"map::Entry", %"map::Entry"* %111, i32 0, i32 0
	%113 = load {i64, i8*}, {i64, i8*}* %112
	%114 = load {i64, i8*}, {i64, i8*}* %key.0
	%115 = extractvalue {i64, i8*} %113, 1
	%116 = extractvalue {i64, i8*} %114, 1
	%117 = call i32 @"strcmp"(i8* %115, i8* %116)
	%118 = icmp eq i32 %117, 0
	br i1 %118, label %119, label %188
119:
	%120 = load %"map::Map"*, %"map::Map"** %map.0
	%121 = getelementptr %"map::Map", %"map::Map"* %120, i32 0, i32 0
	%122 = load i64, i64* %121
	%123 = zext i32 1 to i64
	%124 = sub i64 %122, %123
	%125 = load %"map::Map"*, %"map::Map"** %map.0
	%126 = getelementptr %"map::Map", %"map::Map"* %125, i32 0, i32 0
	store i64 %124, i64* %126
	%127 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%128 = getelementptr %"map::Entry", %"map::Entry"* %127, i32 0, i32 2
	%129 = load %"map::Entry"*, %"map::Entry"** %128
	%130 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%131 = getelementptr %"map::Entry", %"map::Entry"* %130, i32 0, i32 2
	store %"map::Entry"* %129, %"map::Entry"** %131
	%132 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%133 = getelementptr %"map::Entry", %"map::Entry"* %132, i32 0, i32 3
	%134 = load %"map::Entry"*, %"map::Entry"** %133
	%135 = ptrtoint %"map::Entry"* %134 to i64
	%136 = icmp ne i64 %135, 0
	br i1 %136, label %137, label %145
137:
	%138 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%139 = getelementptr %"map::Entry", %"map::Entry"* %138, i32 0, i32 4
	%140 = load %"map::Entry"*, %"map::Entry"** %139
	%141 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%142 = getelementptr %"map::Entry", %"map::Entry"* %141, i32 0, i32 3
	%143 = load %"map::Entry"*, %"map::Entry"** %142
	%144 = getelementptr %"map::Entry", %"map::Entry"* %143, i32 0, i32 4
	store %"map::Entry"* %140, %"map::Entry"** %144
	br label %145
145:
	%146 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%147 = getelementptr %"map::Entry", %"map::Entry"* %146, i32 0, i32 4
	%148 = load %"map::Entry"*, %"map::Entry"** %147
	%149 = ptrtoint %"map::Entry"* %148 to i64
	%150 = icmp ne i64 %149, 0
	br i1 %150, label %151, label %159
151:
	%152 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%153 = getelementptr %"map::Entry", %"map::Entry"* %152, i32 0, i32 3
	%154 = load %"map::Entry"*, %"map::Entry"** %153
	%155 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%156 = getelementptr %"map::Entry", %"map::Entry"* %155, i32 0, i32 4
	%157 = load %"map::Entry"*, %"map::Entry"** %156
	%158 = getelementptr %"map::Entry", %"map::Entry"* %157, i32 0, i32 3
	store %"map::Entry"* %154, %"map::Entry"** %158
	br label %159
159:
	%160 = load %"map::Map"*, %"map::Map"** %map.0
	%161 = getelementptr %"map::Map", %"map::Map"* %160, i32 0, i32 3
	%162 = load %"map::Entry"*, %"map::Entry"** %161
	%163 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%164 = ptrtoint %"map::Entry"* %162 to i64
	%165 = ptrtoint %"map::Entry"* %163 to i64
	%166 = icmp eq i64 %164, %165
	br i1 %166, label %167, label %173
167:
	%168 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%169 = getelementptr %"map::Entry", %"map::Entry"* %168, i32 0, i32 4
	%170 = load %"map::Entry"*, %"map::Entry"** %169
	%171 = load %"map::Map"*, %"map::Map"** %map.0
	%172 = getelementptr %"map::Map", %"map::Map"* %171, i32 0, i32 3
	store %"map::Entry"* %170, %"map::Entry"** %172
	br label %173
173:
	%174 = load %"map::Map"*, %"map::Map"** %map.0
	%175 = getelementptr %"map::Map", %"map::Map"* %174, i32 0, i32 2
	%176 = load %"map::Entry"*, %"map::Entry"** %175
	%177 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%178 = ptrtoint %"map::Entry"* %176 to i64
	%179 = ptrtoint %"map::Entry"* %177 to i64
	%180 = icmp eq i64 %178, %179
	br i1 %180, label %181, label %187
181:
	%182 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	%183 = getelementptr %"map::Entry", %"map::Entry"* %182, i32 0, i32 3
	%184 = load %"map::Entry"*, %"map::Entry"** %183
	%185 = load %"map::Map"*, %"map::Map"** %map.0
	%186 = getelementptr %"map::Map", %"map::Map"* %185, i32 0, i32 2
	store %"map::Entry"* %184, %"map::Entry"** %186
	br label %187
187:
	br label %188
188:
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry3.8
	%189 = load %"map::Entry"*, %"map::Entry"** %entry.0
	store %"map::Entry"* %189, %"map::Entry"** %entry3.8
	%190 = load %"map::Entry"*, %"map::Entry"** %entry2.7
	store %"map::Entry"* %190, %"map::Entry"** %entry.0
	%191 = load %"map::Entry"*, %"map::Entry"** %entry3.8
	%192 = getelementptr %"map::Entry", %"map::Entry"* %191, i32 0, i32 2
	%193 = load %"map::Entry"*, %"map::Entry"** %192
	store %"map::Entry"* %193, %"map::Entry"** %entry2.7
	br label %106
194:
	br label %195
195:
	br label %196
196:
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
define {i64, {i64, i8*}*} @"map::keys::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%keys.0 = alloca {i64, {i64, i8*}*}
	%tmp.12 = alloca i64
	%tmp.13 = alloca {i64, {i64, i8*}*}
	%index.0 = alloca i32
	%entry.0 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, {i64, i8*}*} zeroinitializer, {i64, {i64, i8*}*}* %keys.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = call i64 (%"map::Map"*) @"map::size::(*map::Map)"(%"map::Map"* %0)
	store i64 %1, i64* %tmp.12
	%2 = load i64, i64* %tmp.12
	%3 = call {i64, {i64, i8*}*} (i64) @"std::allocate::(type<[char]>, uint64)"(i64 %2)
	store {i64, {i64, i8*}*} %3, {i64, {i64, i8*}*}* %tmp.13
	%4 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %tmp.13
	store {i64, {i64, i8*}*} %4, {i64, {i64, i8*}*}* %keys.0
	store i32 zeroinitializer, i32* %index.0
	store i32 0, i32* %index.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 3
	%7 = load %"map::Entry"*, %"map::Entry"** %6
	store %"map::Entry"* %7, %"map::Entry"** %entry.0
	br label %8
8:
	%9 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%10 = ptrtoint %"map::Entry"* %9 to i64
	%11 = icmp ne i64 %10, 0
	br i1 %11, label %12, label %25
12:
	%13 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%14 = getelementptr %"map::Entry", %"map::Entry"* %13, i32 0, i32 0
	%15 = load {i64, i8*}, {i64, i8*}* %14
	%16 = load i32, i32* %index.0
	%17 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0, i32 0, i32 1
	%18 = load {i64, i8*}*, {i64, i8*}** %17
	%19 = getelementptr {i64, i8*}, {i64, i8*}* %18, i32 %16
	store {i64, i8*} %15, {i64, i8*}* %19
	%20 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%21 = getelementptr %"map::Entry", %"map::Entry"* %20, i32 0, i32 4
	%22 = load %"map::Entry"*, %"map::Entry"** %21
	store %"map::Entry"* %22, %"map::Entry"** %entry.0
	%23 = load i32, i32* %index.0
	%24 = add i32 %23, 1
	store i32 %24, i32* %index.0
	br label %8
25:
	%26 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0
	ret {i64, {i64, i8*}*} %26
27:
	ret {i64, {i64, i8*}*} undef
}
define {i64, {i64, i8*}*} @"map::reverse_keys::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%keys.0 = alloca {i64, {i64, i8*}*}
	%tmp.14 = alloca i64
	%tmp.15 = alloca {i64, {i64, i8*}*}
	%index.0 = alloca i32
	%entry.0 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, {i64, i8*}*} zeroinitializer, {i64, {i64, i8*}*}* %keys.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = call i64 (%"map::Map"*) @"map::size::(*map::Map)"(%"map::Map"* %0)
	store i64 %1, i64* %tmp.14
	%2 = load i64, i64* %tmp.14
	%3 = call {i64, {i64, i8*}*} (i64) @"std::allocate::(type<[char]>, uint64)"(i64 %2)
	store {i64, {i64, i8*}*} %3, {i64, {i64, i8*}*}* %tmp.15
	%4 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %tmp.15
	store {i64, {i64, i8*}*} %4, {i64, {i64, i8*}*}* %keys.0
	store i32 zeroinitializer, i32* %index.0
	store i32 0, i32* %index.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
	%5 = load %"map::Map"*, %"map::Map"** %map.0
	%6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 2
	%7 = load %"map::Entry"*, %"map::Entry"** %6
	store %"map::Entry"* %7, %"map::Entry"** %entry.0
	br label %8
8:
	%9 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%10 = ptrtoint %"map::Entry"* %9 to i64
	%11 = icmp ne i64 %10, 0
	br i1 %11, label %12, label %25
12:
	%13 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%14 = getelementptr %"map::Entry", %"map::Entry"* %13, i32 0, i32 0
	%15 = load {i64, i8*}, {i64, i8*}* %14
	%16 = load i32, i32* %index.0
	%17 = getelementptr {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0, i32 0, i32 1
	%18 = load {i64, i8*}*, {i64, i8*}** %17
	%19 = getelementptr {i64, i8*}, {i64, i8*}* %18, i32 %16
	store {i64, i8*} %15, {i64, i8*}* %19
	%20 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%21 = getelementptr %"map::Entry", %"map::Entry"* %20, i32 0, i32 3
	%22 = load %"map::Entry"*, %"map::Entry"** %21
	store %"map::Entry"* %22, %"map::Entry"** %entry.0
	%23 = load i32, i32* %index.0
	%24 = add i32 %23, 1
	store i32 %24, i32* %index.0
	br label %8
25:
	%26 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %keys.0
	ret {i64, {i64, i8*}*} %26
27:
	ret {i64, {i64, i8*}*} undef
}
define void @"map::clear::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%tmp.16 = alloca {i64, %"map::Entry"**}
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 0
	%2 = load i64, i64* %1
	%3 = zext i32 0 to i64
	%4 = icmp eq i64 %2, %3
	br i1 %4, label %5, label %7
5:
	ret void
6:
	br label %7
7:
	%8 = load %"map::Map"*, %"map::Map"** %map.0
	%9 = getelementptr %"map::Map", %"map::Map"* %8, i32 0, i32 0
	store i64 0, i64* %9
	%10 = load %"map::Map"*, %"map::Map"** %map.0
	%11 = getelementptr %"map::Map", %"map::Map"* %10, i32 0, i32 1
	%12 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %11, i32 0, i32 1
	%13 = load %"map::Entry"**, %"map::Entry"*** %12
	%14 = bitcast %"map::Entry"** %13 to i8*
	call void (i8*) @"free"(i8* %14)
	%15 = load %"map::Map"*, %"map::Map"** %map.0
	%16 = getelementptr %"map::Map", %"map::Map"* %15, i32 0, i32 3
	store %"map::Entry"* null, %"map::Entry"** %16
	%17 = load %"map::Map"*, %"map::Map"** %map.0
	%18 = getelementptr %"map::Map", %"map::Map"* %17, i32 0, i32 2
	store %"map::Entry"* null, %"map::Entry"** %18
	%19 = zext i32 16 to i64
	%20 = call {i64, %"map::Entry"**} (i64) @"std::zero_allocate::(type<*map::Entry>, uint64)"(i64 %19)
	store {i64, %"map::Entry"**} %20, {i64, %"map::Entry"**}* %tmp.16
	%21 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %tmp.16
	%22 = load %"map::Map"*, %"map::Map"** %map.0
	%23 = getelementptr %"map::Map", %"map::Map"* %22, i32 0, i32 1
	store {i64, %"map::Entry"**} %21, {i64, %"map::Entry"**}* %23
	ret void
}
declare void @"free"(i8*)
declare void @"abort"()
declare i32 @"fprintf"(%"cstd::s__IO_FILE"*, i8*, ...)
declare i32 @"strcmp"(i8*, i8*)
declare %"cstd::s__IO_FILE"* @"std::stderr::()"()
declare i64 @"std::length::([char])"({i64, i8*} %s.value)
declare %"map::Entry"* @"std::allocate::(type<map::Entry>)"()
declare %"map::Map"* @"std::allocate::(type<map::Map>)"()
declare {i64, {i64, i8*}*} @"std::allocate::(type<[char]>, uint64)"(i64 %size.value)
declare {i64, %"map::Entry"**} @"std::zero_allocate::(type<*map::Entry>, uint64)"(i64 %size.value)
declare void @"std::free::([*map::Entry])"({i64, %"map::Entry"**} %value.value)
define void @"map::__main__::([[char]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = inttoptr i32 1 to i8*
	store i8* %0, i8** @"map::sentinel"
	ret void
}
define i32 @"map::hash::([char])"({i64, i8*} %str.value) {
start:
	%str.0 = alloca {i64, i8*}
	%r.0 = alloca i32
	%tmp.0 = alloca i64
	%i.1 = alloca i32
	store {i64, i8*} %str.value, {i64, i8*}* %str.0
	store i32 zeroinitializer, i32* %r.0
	store i32 7, i32* %r.0
	%0 = load {i64, i8*}, {i64, i8*}* %str.0
	%1 = call i64 ({i64, i8*}) @"std::length::([char])"({i64, i8*} %0)
	store i64 %1, i64* %tmp.0
	%2 = load i64, i64* %tmp.0
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
define void @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %map.value) {
start:
	%map.0 = alloca %"map::Map"*
	%allocated.0 = alloca i64
	%new_map.0 = alloca %"map::Map"
	%tmp.1 = alloca {i64, %"map::Entry"**}
	%entry.0 = alloca %"map::Entry"*
	%next.2 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store i64 zeroinitializer, i64* %allocated.0
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
	store %"map::Map" zeroinitializer, %"map::Map"* %new_map.0
	%15 = load i64, i64* %allocated.0
	%16 = zext i32 2 to i64
	%17 = mul i64 %15, %16
	%18 = call {i64, %"map::Entry"**} (i64) @"std::zero_allocate::(type<*map::Entry>, uint64)"(i64 %17)
	store {i64, %"map::Entry"**} %18, {i64, %"map::Entry"**}* %tmp.1
	%19 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %tmp.1
	%20 = insertvalue %"map::Map" {i64 zeroinitializer, {i64, %"map::Entry"**} undef, %"map::Entry"* zeroinitializer, %"map::Entry"* zeroinitializer}, {i64, %"map::Entry"**} %19, 1
	store %"map::Map" %20, %"map::Map"* %new_map.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
	%21 = load %"map::Map"*, %"map::Map"** %map.0
	%22 = getelementptr %"map::Map", %"map::Map"* %21, i32 0, i32 3
	%23 = load %"map::Entry"*, %"map::Entry"** %22
	store %"map::Entry"* %23, %"map::Entry"** %entry.0
	br label %24
24:
	%25 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%26 = ptrtoint %"map::Entry"* %25 to i64
	%27 = icmp ne i64 %26, 0
	br i1 %27, label %28, label %39
28:
	%29 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%30 = getelementptr %"map::Entry", %"map::Entry"* %29, i32 0, i32 0
	%31 = load {i64, i8*}, {i64, i8*}* %30
	%32 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%33 = getelementptr %"map::Entry", %"map::Entry"* %32, i32 0, i32 1
	%34 = load i8*, i8** %33
	call void (%"map::Map"*, {i64, i8*}, i8*) @"map::do_put::(*map::Map, [char], *)"(%"map::Map"* %new_map.0, {i64, i8*} %31, i8* %34)
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %next.2
	%35 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%36 = getelementptr %"map::Entry", %"map::Entry"* %35, i32 0, i32 4
	%37 = load %"map::Entry"*, %"map::Entry"** %36
	store %"map::Entry"* %37, %"map::Entry"** %next.2
	%38 = load %"map::Entry"*, %"map::Entry"** %next.2
	store %"map::Entry"* %38, %"map::Entry"** %entry.0
	br label %24
39:
	%40 = load %"map::Map"*, %"map::Map"** %map.0
	%41 = getelementptr %"map::Map", %"map::Map"* %40, i32 0, i32 1
	%42 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %41
	call void ({i64, %"map::Entry"**}) @"std::free::([*map::Entry])"({i64, %"map::Entry"**} %42)
	%43 = getelementptr %"map::Map", %"map::Map"* %new_map.0, i32 0, i32 0
	%44 = load i64, i64* %43
	%45 = load %"map::Map"*, %"map::Map"** %map.0
	%46 = getelementptr %"map::Map", %"map::Map"* %45, i32 0, i32 0
	%47 = load i64, i64* %46
	%48 = icmp eq i64 %44, %47
	br i1 %48, label %56, label %49
49:
	%50 = getelementptr [26 x i8], [26 x i8]* @"map::str.0", i32 0, i32 0
	%51 = call %"cstd::s__IO_FILE"* @"std::stderr::()"()
	%52 = getelementptr [32 x i8], [32 x i8]* @"map::str.1", i32 0, i32 0
	%53 = getelementptr [72 x i8], [72 x i8]* @"map::str.2", i32 0, i32 0
	%54 = getelementptr [13 x i8], [13 x i8]* @"map::str.3", i32 0, i32 0
	%55 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @"fprintf"(%"cstd::s__IO_FILE"* %51, i8* %52, i8* %53, i32 46, i8* %54, i8* %50)
	call void @"abort"()
	unreachable
56:
	%57 = load %"map::Map", %"map::Map"* %new_map.0
	%58 = load %"map::Map"*, %"map::Map"** %map.0
	store %"map::Map" %57, %"map::Map"* %58
	ret void
}
define void @"map::do_put::(*map::Map, [char], *)"(%"map::Map"* %map.value, {i64, i8*} %key.value, i8* %value.value) {
start:
	%map.0 = alloca %"map::Map"*
	%key.0 = alloca {i64, i8*}
	%value.0 = alloca i8*
	%entries.0 = alloca {i64, %"map::Entry"**}
	%h.0 = alloca i32
	%tmp.7 = alloca i32
	%index.0 = alloca i64
	%entry.0 = alloca %"map::Entry"*
	%tmp.8 = alloca i1
	%entry2.1 = alloca %"map::Entry"*
	%tmp.9 = alloca %"map::Entry"*
	%tmp.10 = alloca %"map::Entry"*
	store %"map::Map"* %map.value, %"map::Map"** %map.0
	store {i64, i8*} %key.value, {i64, i8*}* %key.0
	store i8* %value.value, i8** %value.0
	store {i64, %"map::Entry"**} zeroinitializer, {i64, %"map::Entry"**}* %entries.0
	%0 = load %"map::Map"*, %"map::Map"** %map.0
	%1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 1
	%2 = load {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %1
	store {i64, %"map::Entry"**} %2, {i64, %"map::Entry"**}* %entries.0
	store i32 zeroinitializer, i32* %h.0
	%3 = load {i64, i8*}, {i64, i8*}* %key.0
	%4 = call i32 ({i64, i8*}) @"map::hash::([char])"({i64, i8*} %3)
	store i32 %4, i32* %tmp.7
	%5 = load i32, i32* %tmp.7
	store i32 %5, i32* %h.0
	store i64 zeroinitializer, i64* %index.0
	%6 = load i32, i32* %h.0
	%7 = zext i32 %6 to i64
	%8 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 0
	%9 = load i64, i64* %8
	%10 = urem i64 %7, %9
	store i64 %10, i64* %index.0
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry.0
	%11 = load i64, i64* %index.0
	%12 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 1
	%13 = load %"map::Entry"**, %"map::Entry"*** %12
	%14 = getelementptr %"map::Entry"*, %"map::Entry"** %13, i64 %11
	%15 = load %"map::Entry"*, %"map::Entry"** %14
	store %"map::Entry"* %15, %"map::Entry"** %entry.0
	%16 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%17 = ptrtoint %"map::Entry"* %16 to i64
	%18 = icmp ne i64 %17, 0
	br i1 %18, label %19, label %152
19:
	br label %20
20:
	%21 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 2
	%23 = load %"map::Entry"*, %"map::Entry"** %22
	%24 = ptrtoint %"map::Entry"* %23 to i64
	%25 = icmp ne i64 %24, 0
	br i1 %25, label %27, label %26
26:
	store i1 false, i1* %tmp.8
	br label %36
27:
	%28 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%29 = getelementptr %"map::Entry", %"map::Entry"* %28, i32 0, i32 0
	%30 = load {i64, i8*}, {i64, i8*}* %29
	%31 = load {i64, i8*}, {i64, i8*}* %key.0
	%32 = extractvalue {i64, i8*} %30, 1
	%33 = extractvalue {i64, i8*} %31, 1
	%34 = call i32 @"strcmp"(i8* %32, i8* %33)
	%35 = icmp ne i32 %34, 0
	store i1 %35, i1* %tmp.8
	br label %36
36:
	%37 = load i1, i1* %tmp.8
	br i1 %37, label %38, label %42
38:
	%39 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%40 = getelementptr %"map::Entry", %"map::Entry"* %39, i32 0, i32 2
	%41 = load %"map::Entry"*, %"map::Entry"** %40
	store %"map::Entry"* %41, %"map::Entry"** %entry.0
	br label %20
42:
	%43 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%44 = getelementptr %"map::Entry", %"map::Entry"* %43, i32 0, i32 0
	%45 = load {i64, i8*}, {i64, i8*}* %44
	%46 = load {i64, i8*}, {i64, i8*}* %key.0
	%47 = extractvalue {i64, i8*} %45, 1
	%48 = extractvalue {i64, i8*} %46, 1
	%49 = call i32 @"strcmp"(i8* %47, i8* %48)
	%50 = icmp eq i32 %49, 0
	br i1 %50, label %51, label %122
51:
	%52 = load i8*, i8** %value.0
	%53 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%54 = getelementptr %"map::Entry", %"map::Entry"* %53, i32 0, i32 1
	store i8* %52, i8** %54
	%55 = load %"map::Map"*, %"map::Map"** %map.0
	%56 = getelementptr %"map::Map", %"map::Map"* %55, i32 0, i32 2
	%57 = load %"map::Entry"*, %"map::Entry"** %56
	%58 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%59 = ptrtoint %"map::Entry"* %57 to i64
	%60 = ptrtoint %"map::Entry"* %58 to i64
	%61 = icmp eq i64 %59, %60
	br i1 %61, label %62, label %64
62:
	ret void
63:
	br label %64
64:
	%65 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%66 = getelementptr %"map::Entry", %"map::Entry"* %65, i32 0, i32 3
	%67 = load %"map::Entry"*, %"map::Entry"** %66
	%68 = ptrtoint %"map::Entry"* %67 to i64
	%69 = icmp ne i64 %68, 0
	br i1 %69, label %70, label %78
70:
	%71 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%72 = getelementptr %"map::Entry", %"map::Entry"* %71, i32 0, i32 4
	%73 = load %"map::Entry"*, %"map::Entry"** %72
	%74 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%75 = getelementptr %"map::Entry", %"map::Entry"* %74, i32 0, i32 3
	%76 = load %"map::Entry"*, %"map::Entry"** %75
	%77 = getelementptr %"map::Entry", %"map::Entry"* %76, i32 0, i32 4
	store %"map::Entry"* %73, %"map::Entry"** %77
	br label %84
78:
	%79 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%80 = getelementptr %"map::Entry", %"map::Entry"* %79, i32 0, i32 4
	%81 = load %"map::Entry"*, %"map::Entry"** %80
	%82 = load %"map::Map"*, %"map::Map"** %map.0
	%83 = getelementptr %"map::Map", %"map::Map"* %82, i32 0, i32 3
	store %"map::Entry"* %81, %"map::Entry"** %83
	br label %84
84:
	%85 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%86 = getelementptr %"map::Entry", %"map::Entry"* %85, i32 0, i32 4
	%87 = load %"map::Entry"*, %"map::Entry"** %86
	%88 = ptrtoint %"map::Entry"* %87 to i64
	%89 = icmp ne i64 %88, 0
	br i1 %89, label %90, label %98
90:
	%91 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%92 = getelementptr %"map::Entry", %"map::Entry"* %91, i32 0, i32 3
	%93 = load %"map::Entry"*, %"map::Entry"** %92
	%94 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%95 = getelementptr %"map::Entry", %"map::Entry"* %94, i32 0, i32 4
	%96 = load %"map::Entry"*, %"map::Entry"** %95
	%97 = getelementptr %"map::Entry", %"map::Entry"* %96, i32 0, i32 3
	store %"map::Entry"* %93, %"map::Entry"** %97
	br label %98
98:
	%99 = load %"map::Map"*, %"map::Map"** %map.0
	%100 = getelementptr %"map::Map", %"map::Map"* %99, i32 0, i32 2
	%101 = load %"map::Entry"*, %"map::Entry"** %100
	%102 = ptrtoint %"map::Entry"* %101 to i64
	%103 = icmp ne i64 %102, 0
	br i1 %103, label %104, label %110
104:
	%105 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%106 = load %"map::Map"*, %"map::Map"** %map.0
	%107 = getelementptr %"map::Map", %"map::Map"* %106, i32 0, i32 2
	%108 = load %"map::Entry"*, %"map::Entry"** %107
	%109 = getelementptr %"map::Entry", %"map::Entry"* %108, i32 0, i32 4
	store %"map::Entry"* %105, %"map::Entry"** %109
	br label %110
110:
	%111 = load %"map::Map"*, %"map::Map"** %map.0
	%112 = getelementptr %"map::Map", %"map::Map"* %111, i32 0, i32 2
	%113 = load %"map::Entry"*, %"map::Entry"** %112
	%114 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%115 = getelementptr %"map::Entry", %"map::Entry"* %114, i32 0, i32 3
	store %"map::Entry"* %113, %"map::Entry"** %115
	%116 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%117 = getelementptr %"map::Entry", %"map::Entry"* %116, i32 0, i32 4
	store %"map::Entry"* null, %"map::Entry"** %117
	%118 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%119 = load %"map::Map"*, %"map::Map"** %map.0
	%120 = getelementptr %"map::Map", %"map::Map"* %119, i32 0, i32 2
	store %"map::Entry"* %118, %"map::Entry"** %120
	ret void
121:
	br label %122
122:
	store %"map::Entry"* zeroinitializer, %"map::Entry"** %entry2.1
	%123 = call %"map::Entry"* @"std::allocate::(type<map::Entry>)"()
	store %"map::Entry"* %123, %"map::Entry"** %tmp.9
	%124 = load %"map::Entry"*, %"map::Entry"** %tmp.9
	store %"map::Entry"* %124, %"map::Entry"** %entry2.1
	%125 = load {i64, i8*}, {i64, i8*}* %key.0
	%126 = load i8*, i8** %value.0
	%127 = load %"map::Map"*, %"map::Map"** %map.0
	%128 = getelementptr %"map::Map", %"map::Map"* %127, i32 0, i32 2
	%129 = load %"map::Entry"*, %"map::Entry"** %128
	%130 = insertvalue %"map::Entry" {{i64, i8*} undef, i8* undef, %"map::Entry"* zeroinitializer, %"map::Entry"* undef, %"map::Entry"* zeroinitializer}, {i64, i8*} %125, 0
	%131 = insertvalue %"map::Entry" %130, i8* %126, 1
	%132 = insertvalue %"map::Entry" %131, %"map::Entry"* %129, 3
	%133 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	store %"map::Entry" %132, %"map::Entry"* %133
	%134 = load %"map::Map"*, %"map::Map"** %map.0
	%135 = getelementptr %"map::Map", %"map::Map"* %134, i32 0, i32 2
	%136 = load %"map::Entry"*, %"map::Entry"** %135
	%137 = ptrtoint %"map::Entry"* %136 to i64
	%138 = icmp ne i64 %137, 0
	br i1 %138, label %139, label %145
139:
	%140 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%141 = load %"map::Map"*, %"map::Map"** %map.0
	%142 = getelementptr %"map::Map", %"map::Map"* %141, i32 0, i32 2
	%143 = load %"map::Entry"*, %"map::Entry"** %142
	%144 = getelementptr %"map::Entry", %"map::Entry"* %143, i32 0, i32 4
	store %"map::Entry"* %140, %"map::Entry"** %144
	br label %145
145:
	%146 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%147 = load %"map::Map"*, %"map::Map"** %map.0
	%148 = getelementptr %"map::Map", %"map::Map"* %147, i32 0, i32 2
	store %"map::Entry"* %146, %"map::Entry"** %148
	%149 = load %"map::Entry"*, %"map::Entry"** %entry2.1
	%150 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%151 = getelementptr %"map::Entry", %"map::Entry"* %150, i32 0, i32 2
	store %"map::Entry"* %149, %"map::Entry"** %151
	br label %195
152:
	%153 = call %"map::Entry"* @"std::allocate::(type<map::Entry>)"()
	store %"map::Entry"* %153, %"map::Entry"** %tmp.10
	%154 = load %"map::Entry"*, %"map::Entry"** %tmp.10
	store %"map::Entry"* %154, %"map::Entry"** %entry.0
	%155 = load {i64, i8*}, {i64, i8*}* %key.0
	%156 = load i8*, i8** %value.0
	%157 = load %"map::Map"*, %"map::Map"** %map.0
	%158 = getelementptr %"map::Map", %"map::Map"* %157, i32 0, i32 2
	%159 = load %"map::Entry"*, %"map::Entry"** %158
	%160 = insertvalue %"map::Entry" {{i64, i8*} undef, i8* undef, %"map::Entry"* zeroinitializer, %"map::Entry"* undef, %"map::Entry"* zeroinitializer}, {i64, i8*} %155, 0
	%161 = insertvalue %"map::Entry" %160, i8* %156, 1
	%162 = insertvalue %"map::Entry" %161, %"map::Entry"* %159, 3
	%163 = load %"map::Entry"*, %"map::Entry"** %entry.0
	store %"map::Entry" %162, %"map::Entry"* %163
	%164 = load %"map::Map"*, %"map::Map"** %map.0
	%165 = getelementptr %"map::Map", %"map::Map"* %164, i32 0, i32 3
	%166 = load %"map::Entry"*, %"map::Entry"** %165
	%167 = ptrtoint %"map::Entry"* %166 to i64
	%168 = icmp ne i64 %167, 0
	%169 = xor i1 %168, true
	br i1 %169, label %170, label %174
170:
	%171 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%172 = load %"map::Map"*, %"map::Map"** %map.0
	%173 = getelementptr %"map::Map", %"map::Map"* %172, i32 0, i32 3
	store %"map::Entry"* %171, %"map::Entry"** %173
	br label %174
174:
	%175 = load %"map::Map"*, %"map::Map"** %map.0
	%176 = getelementptr %"map::Map", %"map::Map"* %175, i32 0, i32 2
	%177 = load %"map::Entry"*, %"map::Entry"** %176
	%178 = ptrtoint %"map::Entry"* %177 to i64
	%179 = icmp ne i64 %178, 0
	br i1 %179, label %180, label %186
180:
	%181 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%182 = load %"map::Map"*, %"map::Map"** %map.0
	%183 = getelementptr %"map::Map", %"map::Map"* %182, i32 0, i32 2
	%184 = load %"map::Entry"*, %"map::Entry"** %183
	%185 = getelementptr %"map::Entry", %"map::Entry"* %184, i32 0, i32 4
	store %"map::Entry"* %181, %"map::Entry"** %185
	br label %186
186:
	%187 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%188 = load %"map::Map"*, %"map::Map"** %map.0
	%189 = getelementptr %"map::Map", %"map::Map"* %188, i32 0, i32 2
	store %"map::Entry"* %187, %"map::Entry"** %189
	%190 = load %"map::Entry"*, %"map::Entry"** %entry.0
	%191 = load i64, i64* %index.0
	%192 = getelementptr {i64, %"map::Entry"**}, {i64, %"map::Entry"**}* %entries.0, i32 0, i32 1
	%193 = load %"map::Entry"**, %"map::Entry"*** %192
	%194 = getelementptr %"map::Entry"*, %"map::Entry"** %193, i64 %191
	store %"map::Entry"* %190, %"map::Entry"** %194
	br label %195
195:
	%196 = load %"map::Map"*, %"map::Map"** %map.0
	%197 = getelementptr %"map::Map", %"map::Map"* %196, i32 0, i32 0
	%198 = load i64, i64* %197
	%199 = zext i32 1 to i64
	%200 = add i64 %198, %199
	%201 = load %"map::Map"*, %"map::Map"** %map.0
	%202 = getelementptr %"map::Map", %"map::Map"* %201, i32 0, i32 0
	store i64 %200, i64* %202
	ret void
}
define void @"map::__finalizer__::()"() {
start:
	ret void
}
@"map::INITIAL_SIZE" = global i32 16
@"map::sentinel" = global i8* zeroinitializer
@"map::str.0" = private global [26 x i8] c"new_map.size == map.size\00\00"
@"map::str.1" = private global [32 x i8] c"%s:%d:%s: Assertion %s failed!\0A\00"
@"map::str.2" = private global [72 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../std/map.pr\00"
@"map::str.3" = private global [13 x i8] c"maybe_rehash\00"
