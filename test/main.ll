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
	call void @"main::main::([[int8]])"({i64, {i64, i8*}*} %args.3)
	call void @free(i8* %args)
	ret i32 0
}
%"runtime::Parameter" = type {{i64, i8*}, %"runtime::Type"*}
%"runtime::Field" = type {{i64, i8*}, i32, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Parameter"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
define void @"main::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	%0 = call i8* @"malloc"(i64 8)
	%1 = bitcast i8* %0 to i64*
	store i64 1, i64* %1
	%2 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 0
	store i64* %1, i64** %2
	%3 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 1
	store i32* null, i32** %3
	%4 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 2
	store %"runtime::Type"* @"type::int32", %"runtime::Type"** %4
	%5 = call i8* @"malloc"(i64 8)
	%6 = bitcast i8* %5 to i64*
	store i64 1, i64* %6
	%7 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 0
	store i64* %6, i64** %7
	%8 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 1
	store i32* null, i32** %8
	%9 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 2
	store %"runtime::Type"* @"type::int32", %"runtime::Type"** %9
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%10 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"runtime::main::([[int8]])"({i64, {i64, i8*}*} %10)
	%11 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"preload::main::([[int8]])"({i64, {i64, i8*}*} %11)
	%12 = call i8* @"malloc"(i64 8)
	%13 = bitcast i8* %12 to i64*
	store i64 1, i64* %13
	%14 = insertvalue {i64*, i32*, %"runtime::Type"*} undef, i64* %13, 0
	%15 = call i8* @"malloc"(i64 8)
	%16 = bitcast i8* %15 to i32*
	store i32 20, i32* %16
	%17 = insertvalue {i64*, i32*, %"runtime::Type"*} %14, i32* %16, 1
	%18 = insertvalue {i64*, i32*, %"runtime::Type"*} %17, %"runtime::Type"* @"type::int32", 2
	%19 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 0
	%20 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 1
	%21 = load i64*, i64** %19
	%22 = ptrtoint i64* %21 to i64
	%23 = icmp eq i64 %22, 0
	br i1 %23, label %24, label %32
24:
	%25 = load i64, i64* %21
	%26 = sub i64 %25, 1
	%27 = icmp eq i64 %26, 0
	br i1 %27, label %28, label %32
28:
	%29 = bitcast i64* %21 to i8*
	call void @"free"(i8* %29)
	%30 = load i32*, i32** %20
	%31 = bitcast i32* %30 to i8*
	call void @"free"(i8* %31)
	br label %32
32:
	store {i64*, i32*, %"runtime::Type"*} %18, {i64*, i32*, %"runtime::Type"*}* @"main::r"
	%33 = call i8* @"malloc"(i64 8)
	%34 = bitcast i8* %33 to i64*
	store i64 1, i64* %34
	%35 = insertvalue {i64*, i32*, %"runtime::Type"*} undef, i64* %34, 0
	%36 = call i8* @"malloc"(i64 8)
	%37 = insertvalue {i64*, i32*, %"runtime::Type"*} %35, i32* null, 1
	%38 = insertvalue {i64*, i32*, %"runtime::Type"*} %37, %"runtime::Type"* @"type::int32", 2
	%39 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 0
	%40 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 1
	%41 = load i64*, i64** %39
	%42 = ptrtoint i64* %41 to i64
	%43 = icmp eq i64 %42, 0
	br i1 %43, label %44, label %52
44:
	%45 = load i64, i64* %41
	%46 = sub i64 %45, 1
	%47 = icmp eq i64 %46, 0
	br i1 %47, label %48, label %52
48:
	%49 = bitcast i64* %41 to i8*
	call void @"free"(i8* %49)
	%50 = load i32*, i32** %40
	%51 = bitcast i32* %50 to i8*
	call void @"free"(i8* %51)
	br label %52
52:
	store {i64*, i32*, %"runtime::Type"*} %38, {i64*, i32*, %"runtime::Type"*}* @"main::s"
	%53 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 0
	%54 = load i64*, i64** %53
	%55 = load i64, i64* %54
	%56 = add i64 %55, 1
	store i64 %56, i64* %54
	%57 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 0
	%58 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 1
	%59 = load i64*, i64** %57
	%60 = ptrtoint i64* %59 to i64
	%61 = icmp eq i64 %60, 0
	br i1 %61, label %62, label %70
62:
	%63 = load i64, i64* %59
	%64 = sub i64 %63, 1
	%65 = icmp eq i64 %64, 0
	br i1 %65, label %66, label %70
66:
	%67 = bitcast i64* %59 to i8*
	call void @"free"(i8* %67)
	%68 = load i32*, i32** %58
	%69 = bitcast i32* %68 to i8*
	call void @"free"(i8* %69)
	br label %70
70:
	%71 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 0
	%72 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 1
	%73 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 2
	%74 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 1
	%75 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 2
	%76 = load i32*, i32** %74
	%77 = load %"runtime::Type"*, %"runtime::Type"** %75
	store i64* %54, i64** %71
	store i32* %76, i32** %72
	store %"runtime::Type"* %77, %"runtime::Type"** %73
	%78 = load {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s"
	%79 = extractvalue {i64*, i32*, %"runtime::Type"*} %78, 1
	%80 = load i32, i32* %79
	%81 = getelementptr [3 x i8], [3 x i8]* @"main::str.0", i32 0, i32 0
	%82 = call i32 (i8*, ...) @"printf"(i8* %81, i32 %80)
	%83 = add i32 0, %82
	%84 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 0
	%85 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::r", i32 0, i32 1
	%86 = load i64*, i64** %84
	%87 = ptrtoint i64* %86 to i64
	%88 = icmp eq i64 %87, 0
	br i1 %88, label %89, label %97
89:
	%90 = load i64, i64* %86
	%91 = sub i64 %90, 1
	%92 = icmp eq i64 %91, 0
	br i1 %92, label %93, label %97
93:
	%94 = bitcast i64* %86 to i8*
	call void @"free"(i8* %94)
	%95 = load i32*, i32** %85
	%96 = bitcast i32* %95 to i8*
	call void @"free"(i8* %96)
	br label %97
97:
	%98 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 0
	%99 = getelementptr {i64*, i32*, %"runtime::Type"*}, {i64*, i32*, %"runtime::Type"*}* @"main::s", i32 0, i32 1
	%100 = load i64*, i64** %98
	%101 = ptrtoint i64* %100 to i64
	%102 = icmp eq i64 %101, 0
	br i1 %102, label %103, label %111
103:
	%104 = load i64, i64* %100
	%105 = sub i64 %104, 1
	%106 = icmp eq i64 %105, 0
	br i1 %106, label %107, label %111
107:
	%108 = bitcast i64* %100 to i8*
	call void @"free"(i8* %108)
	%109 = load i32*, i32** %99
	%110 = bitcast i32* %109 to i8*
	call void @"free"(i8* %110)
	br label %111
111:
	ret void
}
declare i64 @"strlen"(i8*)
declare void @"preload::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare void @"runtime::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
declare i8* @"malloc"(i64)
declare i32 @"printf"(i8*, ...)
declare void @"free"(i8*)
@"type::int32" = external global %"runtime::Type" 
@"main::r" = global {i64*, i32*, %"runtime::Type"*} zeroinitializer
@"main::s" = global {i64*, i32*, %"runtime::Type"*} zeroinitializer
@"main::str.0" = private global [3 x i8] c"%d\00"
