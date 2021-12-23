; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "(null)"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
define void @"type::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%0 = getelementptr [9 x i8], [9 x i8]* @"type::str.0", i32 0, i32 0
	%1 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Map", i32 0, i32 1, i32 1
	store i8* %0, i8** %1
	%2 = getelementptr [5 x i8], [5 x i8]* @"type::str.2", i32 0, i32 0
	%3 = insertvalue %"runtime::Field" {{i64, i8*} {i64 5, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %2, 0, 1
	%4 = getelementptr [7 x i8], [7 x i8]* @"type::str.3", i32 0, i32 0
	%5 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint64", i32 0, i32 1, i32 1
	store i8* %4, i8** %5
	%6 = insertvalue %"runtime::Field" %3, %"runtime::Type"* @"type::uint64", 2
	%7 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 0
	store %"runtime::Field" %6, %"runtime::Field"* %7
	%8 = getelementptr [8 x i8], [8 x i8]* @"type::str.4", i32 0, i32 0
	%9 = insertvalue %"runtime::Field" {{i64, i8*} {i64 8, i8* undef}, i64 8, %"runtime::Type"* undef}, i8* %8, 0, 1
	%10 = getelementptr [14 x i8], [14 x i8]* @"type::str.5", i32 0, i32 0
	%11 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[*map::Entry]", i32 0, i32 1, i32 1
	store i8* %10, i8** %11
	%12 = getelementptr [12 x i8], [12 x i8]* @"type::str.6", i32 0, i32 0
	%13 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*map::Entry", i32 0, i32 1, i32 1
	store i8* %12, i8** %13
	%14 = getelementptr [11 x i8], [11 x i8]* @"type::str.7", i32 0, i32 0
	%15 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Entry", i32 0, i32 1, i32 1
	store i8* %14, i8** %15
	%16 = getelementptr [4 x i8], [4 x i8]* @"type::str.9", i32 0, i32 0
	%17 = insertvalue %"runtime::Field" {{i64, i8*} {i64 4, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %16, 0, 1
	%18 = getelementptr [7 x i8], [7 x i8]* @"type::str.10", i32 0, i32 0
	%19 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[int8]", i32 0, i32 1, i32 1
	store i8* %18, i8** %19
	%20 = getelementptr [5 x i8], [5 x i8]* @"type::str.11", i32 0, i32 0
	%21 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int8", i32 0, i32 1, i32 1
	store i8* %20, i8** %21
	%22 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[int8]", i32 0, i32 4
	store %"runtime::Type"* @"type::int8", %"runtime::Type"** %22
	%23 = insertvalue %"runtime::Field" %17, %"runtime::Type"* @"type::[int8]", 2
	%24 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 0
	store %"runtime::Field" %23, %"runtime::Field"* %24
	%25 = getelementptr [6 x i8], [6 x i8]* @"type::str.12", i32 0, i32 0
	%26 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 16, %"runtime::Type"* undef}, i8* %25, 0, 1
	%27 = getelementptr [2 x i8], [2 x i8]* @"type::str.13", i32 0, i32 0
	%28 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*", i32 0, i32 1, i32 1
	store i8* %27, i8** %28
	%29 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*", i32 0, i32 4
	store %"runtime::Type"* null, %"runtime::Type"** %29
	%30 = insertvalue %"runtime::Field" %26, %"runtime::Type"* @"type::*", 2
	%31 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 1
	store %"runtime::Field" %30, %"runtime::Field"* %31
	%32 = getelementptr [5 x i8], [5 x i8]* @"type::str.14", i32 0, i32 0
	%33 = insertvalue %"runtime::Field" {{i64, i8*} {i64 5, i8* undef}, i64 24, %"runtime::Type"* undef}, i8* %32, 0, 1
	%34 = insertvalue %"runtime::Field" %33, %"runtime::Type"* @"type::*map::Entry", 2
	%35 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 2
	store %"runtime::Field" %34, %"runtime::Field"* %35
	%36 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 0
	%37 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Entry", i32 0, i32 7, i32 1
	store %"runtime::Field"* %36, %"runtime::Field"** %37
	%38 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*map::Entry", i32 0, i32 4
	store %"runtime::Type"* @"type::map::Entry", %"runtime::Type"** %38
	%39 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[*map::Entry]", i32 0, i32 4
	store %"runtime::Type"* @"type::*map::Entry", %"runtime::Type"** %39
	%40 = insertvalue %"runtime::Field" %9, %"runtime::Type"* @"type::[*map::Entry]", 2
	%41 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 1
	store %"runtime::Field" %40, %"runtime::Field"* %41
	%42 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 0
	%43 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Map", i32 0, i32 7, i32 1
	store %"runtime::Field"* %42, %"runtime::Field"** %43
	%44 = getelementptr [21 x i8], [21 x i8]* @"type::str.15", i32 0, i32 0
	%45 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiFunction", i32 0, i32 1, i32 1
	store i8* %44, i8** %45
	%46 = getelementptr [5 x i8], [5 x i8]* @"type::str.17", i32 0, i32 0
	%47 = insertvalue %"runtime::Field" {{i64, i8*} {i64 5, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %46, 0, 1
	%48 = insertvalue %"runtime::Field" %47, %"runtime::Type"* @"type::[int8]", 2
	%49 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 0
	store %"runtime::Field" %48, %"runtime::Field"* %49
	%50 = getelementptr [4 x i8], [4 x i8]* @"type::str.18", i32 0, i32 0
	%51 = insertvalue %"runtime::Field" {{i64, i8*} {i64 4, i8* undef}, i64 16, %"runtime::Type"* undef}, i8* %50, 0, 1
	%52 = getelementptr [10 x i8], [10 x i8]* @"type::str.19", i32 0, i32 0
	%53 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*() -> ()", i32 0, i32 1, i32 1
	store i8* %52, i8** %53
	%54 = getelementptr [9 x i8], [9 x i8]* @"type::str.20", i32 0, i32 0
	%55 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::() -> ()", i32 0, i32 1, i32 1
	store i8* %54, i8** %55
	%56 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*() -> ()", i32 0, i32 4
	store %"runtime::Type"* @"type::() -> ()", %"runtime::Type"** %56
	%57 = insertvalue %"runtime::Field" %51, %"runtime::Type"* @"type::*() -> ()", 2
	%58 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 1
	store %"runtime::Field" %57, %"runtime::Field"* %58
	%59 = getelementptr [12 x i8], [12 x i8]* @"type::str.21", i32 0, i32 0
	%60 = insertvalue %"runtime::Field" {{i64, i8*} {i64 12, i8* undef}, i64 24, %"runtime::Type"* undef}, i8* %59, 0, 1
	%61 = getelementptr [5 x i8], [5 x i8]* @"type::str.22", i32 0, i32 0
	%62 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::bool", i32 0, i32 1, i32 1
	store i8* %61, i8** %62
	%63 = insertvalue %"runtime::Field" %60, %"runtime::Type"* @"type::bool", 2
	%64 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 2
	store %"runtime::Field" %63, %"runtime::Field"* %64
	%65 = getelementptr [8 x i8], [8 x i8]* @"type::str.23", i32 0, i32 0
	%66 = insertvalue %"runtime::Field" {{i64, i8*} {i64 8, i8* undef}, i64 32, %"runtime::Type"* undef}, i8* %65, 0, 1
	%67 = getelementptr [13 x i8], [13 x i8]* @"type::str.24", i32 0, i32 0
	%68 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_cif", i32 0, i32 1, i32 1
	store i8* %67, i8** %68
	%69 = getelementptr [4 x i8], [4 x i8]* @"type::str.26", i32 0, i32 0
	%70 = insertvalue %"runtime::Field" {{i64, i8*} {i64 4, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %69, 0, 1
	%71 = getelementptr [13 x i8], [13 x i8]* @"type::str.27", i32 0, i32 0
	%72 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 1, i32 1
	store i8* %71, i8** %72
	%73 = getelementptr [6 x i8], [6 x i8]* @"type::str.28", i32 0, i32 0
	%74 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int32", i32 0, i32 1, i32 1
	store i8* %73, i8** %74
	%75 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 4
	store %"runtime::Type"* @"type::int32", %"runtime::Type"** %75
	%76 = getelementptr [11 x i8], [11 x i8]* @"type::str.30", i32 0, i32 0
	%77 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 11, i8* undef}, i64 2}, i8* %76, 0, 1
	%78 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 0
	store %"runtime::EnumValue" %77, %"runtime::EnumValue"* %78
	%79 = getelementptr [11 x i8], [11 x i8]* @"type::str.31", i32 0, i32 0
	%80 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 11, i8* undef}, i64 4}, i8* %79, 0, 1
	%81 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 1
	store %"runtime::EnumValue" %80, %"runtime::EnumValue"* %81
	%82 = getelementptr [10 x i8], [10 x i8]* @"type::str.32", i32 0, i32 0
	%83 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 10, i8* undef}, i64 3}, i8* %82, 0, 1
	%84 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 2
	store %"runtime::EnumValue" %83, %"runtime::EnumValue"* %84
	%85 = getelementptr [14 x i8], [14 x i8]* @"type::str.33", i32 0, i32 0
	%86 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 14, i8* undef}, i64 1}, i8* %85, 0, 1
	%87 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 3
	store %"runtime::EnumValue" %86, %"runtime::EnumValue"* %87
	%88 = getelementptr [13 x i8], [13 x i8]* @"type::str.34", i32 0, i32 0
	%89 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 13, i8* undef}, i64 5}, i8* %88, 0, 1
	%90 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 4
	store %"runtime::EnumValue" %89, %"runtime::EnumValue"* %90
	%91 = getelementptr [10 x i8], [10 x i8]* @"type::str.35", i32 0, i32 0
	%92 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 10, i8* undef}, i64 3}, i8* %91, 0, 1
	%93 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 5
	store %"runtime::EnumValue" %92, %"runtime::EnumValue"* %93
	%94 = getelementptr [16 x i8], [16 x i8]* @"type::str.36", i32 0, i32 0
	%95 = insertvalue %"runtime::EnumValue" {{i64, i8*} {i64 16, i8* undef}, i64 2}, i8* %94, 0, 1
	%96 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 6
	store %"runtime::EnumValue" %95, %"runtime::EnumValue"* %96
	%97 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 0
	%98 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 10, i32 1
	store %"runtime::EnumValue"* %97, %"runtime::EnumValue"** %98
	%99 = insertvalue %"runtime::Field" %70, %"runtime::Type"* @"type::ffi::ffi_abi", 2
	%100 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 0
	store %"runtime::Field" %99, %"runtime::Field"* %100
	%101 = getelementptr [6 x i8], [6 x i8]* @"type::str.37", i32 0, i32 0
	%102 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 4, %"runtime::Type"* undef}, i8* %101, 0, 1
	%103 = getelementptr [7 x i8], [7 x i8]* @"type::str.38", i32 0, i32 0
	%104 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint32", i32 0, i32 1, i32 1
	store i8* %103, i8** %104
	%105 = insertvalue %"runtime::Field" %102, %"runtime::Type"* @"type::uint32", 2
	%106 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 1
	store %"runtime::Field" %105, %"runtime::Field"* %106
	%107 = getelementptr [10 x i8], [10 x i8]* @"type::str.39", i32 0, i32 0
	%108 = insertvalue %"runtime::Field" {{i64, i8*} {i64 10, i8* undef}, i64 8, %"runtime::Type"* undef}, i8* %107, 0, 1
	%109 = getelementptr [16 x i8], [16 x i8]* @"type::str.40", i32 0, i32 0
	%110 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::**ffi::ffi_type", i32 0, i32 1, i32 1
	store i8* %109, i8** %110
	%111 = getelementptr [15 x i8], [15 x i8]* @"type::str.41", i32 0, i32 0
	%112 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*ffi::ffi_type", i32 0, i32 1, i32 1
	store i8* %111, i8** %112
	%113 = getelementptr [14 x i8], [14 x i8]* @"type::str.42", i32 0, i32 0
	%114 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_type", i32 0, i32 1, i32 1
	store i8* %113, i8** %114
	%115 = getelementptr [5 x i8], [5 x i8]* @"type::str.44", i32 0, i32 0
	%116 = insertvalue %"runtime::Field" {{i64, i8*} {i64 5, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %115, 0, 1
	%117 = insertvalue %"runtime::Field" %116, %"runtime::Type"* @"type::uint64", 2
	%118 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 0
	store %"runtime::Field" %117, %"runtime::Field"* %118
	%119 = getelementptr [10 x i8], [10 x i8]* @"type::str.45", i32 0, i32 0
	%120 = insertvalue %"runtime::Field" {{i64, i8*} {i64 10, i8* undef}, i64 8, %"runtime::Type"* undef}, i8* %119, 0, 1
	%121 = getelementptr [7 x i8], [7 x i8]* @"type::str.46", i32 0, i32 0
	%122 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint16", i32 0, i32 1, i32 1
	store i8* %121, i8** %122
	%123 = insertvalue %"runtime::Field" %120, %"runtime::Type"* @"type::uint16", 2
	%124 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 1
	store %"runtime::Field" %123, %"runtime::Field"* %124
	%125 = getelementptr [6 x i8], [6 x i8]* @"type::str.47", i32 0, i32 0
	%126 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 10, %"runtime::Type"* undef}, i8* %125, 0, 1
	%127 = insertvalue %"runtime::Field" %126, %"runtime::Type"* @"type::uint16", 2
	%128 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 2
	store %"runtime::Field" %127, %"runtime::Field"* %128
	%129 = getelementptr [9 x i8], [9 x i8]* @"type::str.48", i32 0, i32 0
	%130 = insertvalue %"runtime::Field" {{i64, i8*} {i64 9, i8* undef}, i64 16, %"runtime::Type"* undef}, i8* %129, 0, 1
	%131 = insertvalue %"runtime::Field" %130, %"runtime::Type"* @"type::**ffi::ffi_type", 2
	%132 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 3
	store %"runtime::Field" %131, %"runtime::Field"* %132
	%133 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 0
	%134 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_type", i32 0, i32 7, i32 1
	store %"runtime::Field"* %133, %"runtime::Field"** %134
	%135 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*ffi::ffi_type", i32 0, i32 4
	store %"runtime::Type"* @"type::ffi::ffi_type", %"runtime::Type"** %135
	%136 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::**ffi::ffi_type", i32 0, i32 4
	store %"runtime::Type"* @"type::*ffi::ffi_type", %"runtime::Type"** %136
	%137 = insertvalue %"runtime::Field" %108, %"runtime::Type"* @"type::**ffi::ffi_type", 2
	%138 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 2
	store %"runtime::Field" %137, %"runtime::Field"* %138
	%139 = getelementptr [6 x i8], [6 x i8]* @"type::str.49", i32 0, i32 0
	%140 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 16, %"runtime::Type"* undef}, i8* %139, 0, 1
	%141 = insertvalue %"runtime::Field" %140, %"runtime::Type"* @"type::*ffi::ffi_type", 2
	%142 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 3
	store %"runtime::Field" %141, %"runtime::Field"* %142
	%143 = getelementptr [6 x i8], [6 x i8]* @"type::str.50", i32 0, i32 0
	%144 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 24, %"runtime::Type"* undef}, i8* %143, 0, 1
	%145 = insertvalue %"runtime::Field" %144, %"runtime::Type"* @"type::uint32", 2
	%146 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 4
	store %"runtime::Field" %145, %"runtime::Field"* %146
	%147 = getelementptr [6 x i8], [6 x i8]* @"type::str.51", i32 0, i32 0
	%148 = insertvalue %"runtime::Field" {{i64, i8*} {i64 6, i8* undef}, i64 28, %"runtime::Type"* undef}, i8* %147, 0, 1
	%149 = insertvalue %"runtime::Field" %148, %"runtime::Type"* @"type::uint32", 2
	%150 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 5
	store %"runtime::Field" %149, %"runtime::Field"* %150
	%151 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 0
	%152 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_cif", i32 0, i32 7, i32 1
	store %"runtime::Field"* %151, %"runtime::Field"** %152
	%153 = insertvalue %"runtime::Field" %66, %"runtime::Type"* @"type::ffi::ffi_cif", 2
	%154 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 3
	store %"runtime::Field" %153, %"runtime::Field"* %154
	%155 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 0
	%156 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiFunction", i32 0, i32 7, i32 1
	store %"runtime::Field"* %155, %"runtime::Field"** %156
	%157 = getelementptr [19 x i8], [19 x i8]* @"type::str.52", i32 0, i32 0
	%158 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiGlobal", i32 0, i32 1, i32 1
	store i8* %157, i8** %158
	%159 = getelementptr [5 x i8], [5 x i8]* @"type::str.54", i32 0, i32 0
	%160 = insertvalue %"runtime::Field" {{i64, i8*} {i64 5, i8* undef}, i64 0, %"runtime::Type"* undef}, i8* %159, 0, 1
	%161 = insertvalue %"runtime::Field" %160, %"runtime::Type"* @"type::[int8]", 2
	%162 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 0
	store %"runtime::Field" %161, %"runtime::Field"* %162
	%163 = getelementptr [4 x i8], [4 x i8]* @"type::str.55", i32 0, i32 0
	%164 = insertvalue %"runtime::Field" {{i64, i8*} {i64 4, i8* undef}, i64 16, %"runtime::Type"* undef}, i8* %163, 0, 1
	%165 = insertvalue %"runtime::Field" %164, %"runtime::Type"* @"type::*", 2
	%166 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 1
	store %"runtime::Field" %165, %"runtime::Field"* %166
	%167 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 0
	%168 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiGlobal", i32 0, i32 7, i32 1
	store %"runtime::Field"* %167, %"runtime::Field"** %168
	%169 = getelementptr [6 x i8], [6 x i8]* @"type::str.56", i32 0, i32 0
	%170 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*int8", i32 0, i32 1, i32 1
	store i8* %169, i8** %170
	%171 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*int8", i32 0, i32 4
	store %"runtime::Type"* @"type::int8", %"runtime::Type"** %171
	%172 = getelementptr [6 x i8], [6 x i8]* @"type::str.57", i32 0, i32 0
	%173 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint8", i32 0, i32 1, i32 1
	store i8* %172, i8** %173
	%174 = getelementptr [6 x i8], [6 x i8]* @"type::str.58", i32 0, i32 0
	%175 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int16", i32 0, i32 1, i32 1
	store i8* %174, i8** %175
	%176 = getelementptr [6 x i8], [6 x i8]* @"type::str.59", i32 0, i32 0
	%177 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int64", i32 0, i32 1, i32 1
	store i8* %176, i8** %177
	%178 = getelementptr [8 x i8], [8 x i8]* @"type::str.60", i32 0, i32 0
	%179 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::float64", i32 0, i32 1, i32 1
	store i8* %178, i8** %179
	%180 = getelementptr [8 x i8], [8 x i8]* @"type::str.61", i32 0, i32 0
	%181 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::float32", i32 0, i32 1, i32 1
	store i8* %180, i8** %181
	ret void
}
@"type::str.13" = private global [2 x i8] c"*\00"
@"type::uint16" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 7, i8* undef}, i1 1, i64 undef, %"runtime::Type"* undef, i64 2, i64 2, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.57" = private global [6 x i8] c"uint8\00"
@"type::str.14" = private global [5 x i8] c"next\00"
@"type::str.58" = private global [6 x i8] c"int16\00"
@"type::str.15" = private global [21 x i8] c"preload::FfiFunction\00"
@"type::str.59" = private global [6 x i8] c"int64\00"
@"type::fields.8" = private global [3 x %"runtime::Field"] zeroinitializer
@"type::str.17" = private global [5 x i8] c"name\00"
@"type::str.18" = private global [4 x i8] c"ptr\00"
@"type::str.19" = private global [10 x i8] c"*() -> ()\00"
@"type::*" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 2, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.0" = private global [9 x i8] c"map::Map\00"
@"type::str.2" = private global [5 x i8] c"size\00"
@"type::str.3" = private global [7 x i8] c"uint64\00"
@"type::str.4" = private global [8 x i8] c"entries\00"
@"type::str.5" = private global [14 x i8] c"[*map::Entry]\00"
@"type::str.6" = private global [12 x i8] c"*map::Entry\00"
@"type::ffi::ffi_type" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 14, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, {i64, %"runtime::Field"*} {i64 4, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::**ffi::ffi_type" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 16, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.60" = private global [8 x i8] c"float64\00"
@"type::uint64" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 7, i8* undef}, i1 1, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.7" = private global [11 x i8] c"map::Entry\00"
@"type::preload::FfiFunction" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 21, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 64, i64 8, {i64, %"runtime::Field"*} {i64 4, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.61" = private global [8 x i8] c"float32\00"
@"type::str.9" = private global [4 x i8] c"key\00"
@"type::str.20" = private global [9 x i8] c"() -> ()\00"
@"type::str.21" = private global [12 x i8] c"initialized\00"
@"type::str.22" = private global [5 x i8] c"bool\00"
@"type::str.23" = private global [8 x i8] c"ffi_cif\00"
@"type::str.24" = private global [13 x i8] c"ffi::ffi_cif\00"
@"type::str.26" = private global [4 x i8] c"abi\00"
@"type::ffi::ffi_cif" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 13, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 32, i64 8, {i64, %"runtime::Field"*} {i64 6, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.27" = private global [13 x i8] c"ffi::ffi_abi\00"
@"type::str.28" = private global [6 x i8] c"int32\00"
@"type::preload::FfiGlobal" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 19, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, {i64, %"runtime::Field"*} {i64 2, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::bool" = global %"runtime::Type" {i32 0, {i64, i8*} {i64 5, i8* undef}, i1 1, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::() -> ()" = global %"runtime::Type" {i32 9, {i64, i8*} {i64 9, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::*int8" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 6, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::fields.43" = private global [4 x %"runtime::Field"] zeroinitializer
@"type::int16" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 6, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 2, i64 2, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::map::Entry" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 11, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 32, i64 8, {i64, %"runtime::Field"*} {i64 3, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::[*map::Entry]" = global %"runtime::Type" {i32 5, {i64, i8*} {i64 14, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 16, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::float64" = global %"runtime::Type" {i32 2, {i64, i8*} {i64 8, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::uint32" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 7, i8* undef}, i1 1, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.30" = private global [11 x i8] c"FFI_UNIX64\00"
@"type::str.31" = private global [11 x i8] c"FFI_GNUW64\00"
@"type::str.32" = private global [10 x i8] c"FFI_EFI64\00"
@"type::str.33" = private global [14 x i8] c"FFI_FIRST_ABI\00"
@"type::str.34" = private global [13 x i8] c"FFI_LAST_ABI\00"
@"type::str.35" = private global [10 x i8] c"FFI_WIN64\00"
@"type::str.36" = private global [16 x i8] c"FFI_DEFAULT_ABI\00"
@"type::str.37" = private global [6 x i8] c"nargs\00"
@"type::str.38" = private global [7 x i8] c"uint32\00"
@"type::str.39" = private global [10 x i8] c"arg_types\00"
@"type::ffi::ffi_abi" = global %"runtime::Type" {i32 10, {i64, i8*} {i64 13, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} {i64 7, %"runtime::EnumValue"* undef}}
@"type::int64" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 6, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::*ffi::ffi_type" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 15, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::fields.53" = private global [2 x %"runtime::Field"] zeroinitializer
@"type::fields.16" = private global [4 x %"runtime::Field"] zeroinitializer
@"type::[int8]" = global %"runtime::Type" {i32 5, {i64, i8*} {i64 7, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 16, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.40" = private global [16 x i8] c"**ffi::ffi_type\00"
@"type::float32" = global %"runtime::Type" {i32 2, {i64, i8*} {i64 8, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.41" = private global [15 x i8] c"*ffi::ffi_type\00"
@"type::str.42" = private global [14 x i8] c"ffi::ffi_type\00"
@"type::str.44" = private global [5 x i8] c"size\00"
@"type::str.45" = private global [10 x i8] c"alignment\00"
@"type::str.46" = private global [7 x i8] c"uint16\00"
@"type::map::Map" = global %"runtime::Type" {i32 3, {i64, i8*} {i64 9, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, {i64, %"runtime::Field"*} {i64 2, %"runtime::Field"* undef}, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.47" = private global [6 x i8] c"type_\00"
@"type::str.48" = private global [9 x i8] c"elements\00"
@"type::str.49" = private global [6 x i8] c"rtype\00"
@"type::int8" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 5, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::int32" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 6, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::values.29" = private global [7 x %"runtime::EnumValue"] zeroinitializer
@"type::fields.25" = private global [6 x %"runtime::Field"] zeroinitializer
@"type::str.50" = private global [6 x i8] c"bytes\00"
@"type::*() -> ()" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 10, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.51" = private global [6 x i8] c"flags\00"
@"type::str.52" = private global [19 x i8] c"preload::FfiGlobal\00"
@"type::fields.1" = private global [2 x %"runtime::Field"] zeroinitializer
@"type::str.10" = private global [7 x i8] c"[int8]\00"
@"type::str.54" = private global [5 x i8] c"name\00"
@"type::uint8" = global %"runtime::Type" {i32 1, {i64, i8*} {i64 6, i8* undef}, i1 1, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.11" = private global [5 x i8] c"int8\00"
@"type::str.55" = private global [4 x i8] c"ptr\00"
@"type::str.12" = private global [6 x i8] c"value\00"
@"type::*map::Entry" = global %"runtime::Type" {i32 7, {i64, i8*} {i64 12, i8* undef}, i1 0, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, {i64, %"runtime::Field"*} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::Type"**} undef, {i64, %"runtime::EnumValue"*} undef}
@"type::str.56" = private global [6 x i8] c"*int8\00"
