; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "runtime.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}, {i64, i8*}, {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
%"runtime::Function" = type {{i64, i8*}, i1, {i64, i8*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}}
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
define i1 @"runtime::implements::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %A.value, %"runtime::Type"* %B.value) {
start:
	%A.0 = alloca %"runtime::Type"*
	%B.0 = alloca %"runtime::Type"*
	%i.2 = alloca i32
	%member.2 = alloca %"runtime::Function"
	%found.2 = alloca i1
	%j.3 = alloca i32
	%type_member.3 = alloca %"runtime::Function"
	%tmp.4 = alloca i1
	%name.3 = alloca {i64, i8*}
	%tmp.5 = alloca {i64, i8*}
	%mismatch.3 = alloca i1
	%i.7 = alloca i32
	%left.7 = alloca %"runtime::Type"*
	%right.7 = alloca %"runtime::Type"*
	%tmp.6 = alloca i1
	%i.11 = alloca i32
	%left.11 = alloca %"runtime::Type"*
	%right.11 = alloca %"runtime::Type"*
	%tmp.7 = alloca i1
	store %"runtime::Type"* %A.value, %"runtime::Type"** %A.0
	store %"runtime::Type"* %B.value, %"runtime::Type"** %B.0
	%0 = load %"runtime::Type"*, %"runtime::Type"** %B.0
	%1 = getelementptr %"runtime::Type", %"runtime::Type"* %0, i32 0, i32 0
	%2 = load i32, i32* %1
	%3 = icmp ne i32 %2, 12
	br i1 %3, label %4, label %5
4:
	call void @"abort"()
	br label %5
5:
	%6 = load %"runtime::Type"*, %"runtime::Type"** %B.0
	%7 = getelementptr %"runtime::Type", %"runtime::Type"* %6, i32 0, i32 12
	%8 = getelementptr {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}* %7, i32 0, i32 0
	%9 = load i64, i64* %8
	%10 = trunc i64 %9 to i32
	store i32 0, i32* %i.2
	br label %11
11:
	%12 = load i32, i32* %i.2
	%13 = icmp slt i32 %12, %10
	br i1 %13, label %14, label %178
14:
	store %"runtime::Function" zeroinitializer, %"runtime::Function"* %member.2
	%15 = load %"runtime::Type"*, %"runtime::Type"** %B.0
	%16 = getelementptr %"runtime::Type", %"runtime::Type"* %15, i32 0, i32 12
	%17 = load i32, i32* %i.2
	%18 = getelementptr {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}* %16, i32 0, i32 1
	%19 = load %"runtime::Function"*, %"runtime::Function"** %18
	%20 = getelementptr %"runtime::Function", %"runtime::Function"* %19, i32 %17
	%21 = load %"runtime::Function", %"runtime::Function"* %20
	store %"runtime::Function" %21, %"runtime::Function"* %member.2
	store i1 zeroinitializer, i1* %found.2
	store i1 false, i1* %found.2
	%22 = load %"runtime::Type"*, %"runtime::Type"** %A.0
	%23 = getelementptr %"runtime::Type", %"runtime::Type"* %22, i32 0, i32 13
	%24 = getelementptr {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}* %23, i32 0, i32 0
	%25 = load i64, i64* %24
	%26 = trunc i64 %25 to i32
	store i32 0, i32* %j.3
	br label %27
27:
	%28 = load i32, i32* %j.3
	%29 = icmp slt i32 %28, %26
	br i1 %29, label %30, label %170
30:
	store %"runtime::Function" zeroinitializer, %"runtime::Function"* %type_member.3
	%31 = load %"runtime::Type"*, %"runtime::Type"** %A.0
	%32 = getelementptr %"runtime::Type", %"runtime::Type"* %31, i32 0, i32 13
	%33 = load i32, i32* %j.3
	%34 = getelementptr {i64, %"runtime::Function"*}, {i64, %"runtime::Function"*}* %32, i32 0, i32 1
	%35 = load %"runtime::Function"*, %"runtime::Function"** %34
	%36 = getelementptr %"runtime::Function", %"runtime::Function"* %35, i32 %33
	%37 = load %"runtime::Function", %"runtime::Function"* %36
	store %"runtime::Function" %37, %"runtime::Function"* %type_member.3
	%38 = load %"runtime::Type"*, %"runtime::Type"** %A.0
	%39 = getelementptr %"runtime::Type", %"runtime::Type"* %38, i32 0, i32 11
	%40 = load {i64, i8*}, {i64, i8*}* %39
	%41 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 2
	%42 = load {i64, i8*}, {i64, i8*}* %41
	%43 = extractvalue {i64, i8*} %40, 1
	%44 = extractvalue {i64, i8*} %42, 1
	%45 = call i32 @"strcmp"(i8* %43, i8* %44)
	%46 = icmp ne i32 %45, 0
	br i1 %46, label %48, label %47
47:
	store i1 false, i1* %tmp.4
	br label %52
48:
	%49 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 1
	%50 = load i1, i1* %49
	%51 = xor i1 %50, true
	store i1 %51, i1* %tmp.4
	br label %52
52:
	%53 = load i1, i1* %tmp.4
	br i1 %53, label %54, label %56
54:
	br label %168
55:
	br label %56
56:
	store {i64, i8*} zeroinitializer, {i64, i8*}* %name.3
	%57 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 0
	%58 = load {i64, i8*}, {i64, i8*}* %57
	%59 = call {i64, i8*} ({i64, i8*}) @"runtime::cut_name::([char])"({i64, i8*} %58)
	store {i64, i8*} %59, {i64, i8*}* %tmp.5
	%60 = load {i64, i8*}, {i64, i8*}* %tmp.5
	store {i64, i8*} %60, {i64, i8*}* %name.3
	%61 = load {i64, i8*}, {i64, i8*}* %name.3
	%62 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 0
	%63 = load {i64, i8*}, {i64, i8*}* %62
	%64 = extractvalue {i64, i8*} %61, 1
	%65 = extractvalue {i64, i8*} %63, 1
	%66 = call i32 @"strcmp"(i8* %64, i8* %65)
	%67 = icmp ne i32 %66, 0
	br i1 %67, label %68, label %70
68:
	br label %168
69:
	br label %70
70:
	%71 = getelementptr {i64, i8*}, {i64, i8*}* %name.3, i32 0, i32 1
	%72 = load i8*, i8** %71
	%73 = bitcast i8* %72 to i8*
	call void (i8*) @"free"(i8* %73)
	%74 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 3
	%75 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %74, i32 0, i32 0
	%76 = load i64, i64* %75
	%77 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 3
	%78 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %77, i32 0, i32 0
	%79 = load i64, i64* %78
	%80 = zext i32 1 to i64
	%81 = add i64 %79, %80
	%82 = icmp ne i64 %76, %81
	br i1 %82, label %83, label %85
83:
	br label %168
84:
	br label %85
85:
	store i1 zeroinitializer, i1* %mismatch.3
	store i1 false, i1* %mismatch.3
	%86 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 3
	%87 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %86, i32 0, i32 0
	%88 = load i64, i64* %87
	%89 = trunc i64 %88 to i32
	store i32 0, i32* %i.7
	br label %90
90:
	%91 = load i32, i32* %i.7
	%92 = icmp slt i32 %91, %89
	br i1 %92, label %93, label %117
93:
	store %"runtime::Type"* zeroinitializer, %"runtime::Type"** %left.7
	%94 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 3
	%95 = load i32, i32* %i.7
	%96 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %94, i32 0, i32 1
	%97 = load %"runtime::Type"**, %"runtime::Type"*** %96
	%98 = getelementptr %"runtime::Type"*, %"runtime::Type"** %97, i32 %95
	%99 = load %"runtime::Type"*, %"runtime::Type"** %98
	store %"runtime::Type"* %99, %"runtime::Type"** %left.7
	store %"runtime::Type"* zeroinitializer, %"runtime::Type"** %right.7
	%100 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 3
	%101 = load i32, i32* %i.7
	%102 = add i32 %101, 1
	%103 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %100, i32 0, i32 1
	%104 = load %"runtime::Type"**, %"runtime::Type"*** %103
	%105 = getelementptr %"runtime::Type"*, %"runtime::Type"** %104, i32 %102
	%106 = load %"runtime::Type"*, %"runtime::Type"** %105
	store %"runtime::Type"* %106, %"runtime::Type"** %right.7
	%107 = load %"runtime::Type"*, %"runtime::Type"** %left.7
	%108 = load %"runtime::Type"*, %"runtime::Type"** %right.7
	%109 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %107, %"runtime::Type"* %108)
	store i1 %109, i1* %tmp.6
	%110 = load i1, i1* %tmp.6
	%111 = xor i1 %110, true
	br i1 %111, label %112, label %114
112:
	store i1 true, i1* %mismatch.3
	br label %117
113:
	br label %114
114:
	br label %115
115:
	%116 = add i32 %91, 1
	store i32 %116, i32* %i.7
	br label %90
117:
	%118 = load i1, i1* %mismatch.3
	br i1 %118, label %119, label %121
119:
	br label %168
120:
	br label %121
121:
	%122 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 4
	%123 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %122, i32 0, i32 0
	%124 = load i64, i64* %123
	%125 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 4
	%126 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %125, i32 0, i32 0
	%127 = load i64, i64* %126
	%128 = icmp ne i64 %124, %127
	br i1 %128, label %129, label %131
129:
	br label %168
130:
	br label %131
131:
	%132 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 4
	%133 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %132, i32 0, i32 0
	%134 = load i64, i64* %133
	%135 = trunc i64 %134 to i32
	store i32 0, i32* %i.11
	br label %136
136:
	%137 = load i32, i32* %i.11
	%138 = icmp slt i32 %137, %135
	br i1 %138, label %139, label %162
139:
	store %"runtime::Type"* zeroinitializer, %"runtime::Type"** %left.11
	%140 = getelementptr %"runtime::Function", %"runtime::Function"* %member.2, i32 0, i32 4
	%141 = load i32, i32* %i.11
	%142 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %140, i32 0, i32 1
	%143 = load %"runtime::Type"**, %"runtime::Type"*** %142
	%144 = getelementptr %"runtime::Type"*, %"runtime::Type"** %143, i32 %141
	%145 = load %"runtime::Type"*, %"runtime::Type"** %144
	store %"runtime::Type"* %145, %"runtime::Type"** %left.11
	store %"runtime::Type"* zeroinitializer, %"runtime::Type"** %right.11
	%146 = getelementptr %"runtime::Function", %"runtime::Function"* %type_member.3, i32 0, i32 4
	%147 = load i32, i32* %i.11
	%148 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %146, i32 0, i32 1
	%149 = load %"runtime::Type"**, %"runtime::Type"*** %148
	%150 = getelementptr %"runtime::Type"*, %"runtime::Type"** %149, i32 %147
	%151 = load %"runtime::Type"*, %"runtime::Type"** %150
	store %"runtime::Type"* %151, %"runtime::Type"** %right.11
	%152 = load %"runtime::Type"*, %"runtime::Type"** %left.11
	%153 = load %"runtime::Type"*, %"runtime::Type"** %right.11
	%154 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %152, %"runtime::Type"* %153)
	store i1 %154, i1* %tmp.7
	%155 = load i1, i1* %tmp.7
	%156 = xor i1 %155, true
	br i1 %156, label %157, label %159
157:
	store i1 true, i1* %mismatch.3
	br label %162
158:
	br label %159
159:
	br label %160
160:
	%161 = add i32 %137, 1
	store i32 %161, i32* %i.11
	br label %136
162:
	%163 = load i1, i1* %mismatch.3
	br i1 %163, label %164, label %166
164:
	br label %168
165:
	br label %166
166:
	store i1 true, i1* %found.2
	br label %170
167:
	br label %168
168:
	%169 = add i32 %28, 1
	store i32 %169, i32* %j.3
	br label %27
170:
	%171 = load i1, i1* %found.2
	%172 = xor i1 %171, true
	br i1 %172, label %173, label %175
173:
	ret i1 false
174:
	br label %175
175:
	br label %176
176:
	%177 = add i32 %12, 1
	store i32 %177, i32* %i.2
	br label %11
178:
	ret i1 true
179:
	ret i1 undef
}
define %"runtime::Type"* @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %a.value) {
start:
	%a.0 = alloca %"runtime::Ref"
	store %"runtime::Ref" %a.value, %"runtime::Ref"* %a.0
	%0 = getelementptr %"runtime::Ref", %"runtime::Ref"* %a.0, i32 0, i32 2
	%1 = load %"runtime::Type"*, %"runtime::Type"** %0
	ret %"runtime::Type"* %1
2:
	ret %"runtime::Type"* undef
}
define i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %a.value, %"runtime::Type"* %b.value) {
start:
	%a.0 = alloca %"runtime::Type"*
	%b.0 = alloca %"runtime::Type"*
	%tmp.8 = alloca i1
	%tmp.9 = alloca i1
	%tmp.10 = alloca i1
	%tmp.11 = alloca i1
	%tmp.12 = alloca i1
	%tmp.13 = alloca i1
	%tmp.14 = alloca i1
	%tmp.15 = alloca i1
	%i.12 = alloca i32
	%tmp.16 = alloca i1
	%i.14 = alloca i32
	%tmp.17 = alloca i1
	store %"runtime::Type"* %a.value, %"runtime::Type"** %a.0
	store %"runtime::Type"* %b.value, %"runtime::Type"** %b.0
	%0 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%1 = bitcast %"runtime::Type"* %0 to i8*
	%2 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%3 = bitcast %"runtime::Type"* %2 to i8*
	%4 = ptrtoint i8* %1 to i64
	%5 = ptrtoint i8* %3 to i64
	%6 = icmp eq i64 %4, %5
	br i1 %6, label %7, label %9
7:
	ret i1 true
8:
	br label %9
9:
	%10 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%11 = ptrtoint %"runtime::Type"* %10 to i64
	%12 = icmp ne i64 %11, 0
	%13 = xor i1 %12, true
	br i1 %13, label %14, label %15
14:
	store i1 true, i1* %tmp.8
	br label %20
15:
	%16 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%17 = ptrtoint %"runtime::Type"* %16 to i64
	%18 = icmp ne i64 %17, 0
	%19 = xor i1 %18, true
	store i1 %19, i1* %tmp.8
	br label %20
20:
	%21 = load i1, i1* %tmp.8
	br i1 %21, label %22, label %24
22:
	ret i1 false
23:
	br label %24
24:
	%25 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%26 = getelementptr %"runtime::Type", %"runtime::Type"* %25, i32 0, i32 0
	%27 = load i32, i32* %26
	%28 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%29 = getelementptr %"runtime::Type", %"runtime::Type"* %28, i32 0, i32 0
	%30 = load i32, i32* %29
	%31 = icmp ne i32 %27, %30
	br i1 %31, label %32, label %34
32:
	ret i1 false
33:
	br label %34
34:
	%35 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%36 = getelementptr %"runtime::Type", %"runtime::Type"* %35, i32 0, i32 0
	%37 = load i32, i32* %36
	%38 = icmp eq i32 %37, 0
	br i1 %38, label %39, label %40
39:
	store i1 true, i1* %tmp.9
	br label %45
40:
	%41 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%42 = getelementptr %"runtime::Type", %"runtime::Type"* %41, i32 0, i32 0
	%43 = load i32, i32* %42
	%44 = icmp eq i32 %43, 11
	store i1 %44, i1* %tmp.9
	br label %45
45:
	%46 = load i1, i1* %tmp.9
	br i1 %46, label %47, label %49
47:
	ret i1 true
48:
	br label %49
49:
	%50 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%51 = getelementptr %"runtime::Type", %"runtime::Type"* %50, i32 0, i32 0
	%52 = load i32, i32* %51
	%53 = icmp eq i32 %52, 1
	br i1 %53, label %54, label %74
54:
	%55 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%56 = getelementptr %"runtime::Type", %"runtime::Type"* %55, i32 0, i32 5
	%57 = load i64, i64* %56
	%58 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%59 = getelementptr %"runtime::Type", %"runtime::Type"* %58, i32 0, i32 5
	%60 = load i64, i64* %59
	%61 = icmp eq i64 %57, %60
	br i1 %61, label %63, label %62
62:
	store i1 false, i1* %tmp.10
	br label %71
63:
	%64 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%65 = getelementptr %"runtime::Type", %"runtime::Type"* %64, i32 0, i32 2
	%66 = load i1, i1* %65
	%67 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%68 = getelementptr %"runtime::Type", %"runtime::Type"* %67, i32 0, i32 2
	%69 = load i1, i1* %68
	%70 = icmp eq i1 %66, %69
	store i1 %70, i1* %tmp.10
	br label %71
71:
	%72 = load i1, i1* %tmp.10
	ret i1 %72
73:
	br label %74
74:
	%75 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%76 = getelementptr %"runtime::Type", %"runtime::Type"* %75, i32 0, i32 0
	%77 = load i32, i32* %76
	%78 = icmp eq i32 %77, 2
	br i1 %78, label %79, label %88
79:
	%80 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%81 = getelementptr %"runtime::Type", %"runtime::Type"* %80, i32 0, i32 5
	%82 = load i64, i64* %81
	%83 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%84 = getelementptr %"runtime::Type", %"runtime::Type"* %83, i32 0, i32 5
	%85 = load i64, i64* %84
	%86 = icmp eq i64 %82, %85
	ret i1 %86
87:
	br label %88
88:
	%89 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%90 = getelementptr %"runtime::Type", %"runtime::Type"* %89, i32 0, i32 0
	%91 = load i32, i32* %90
	%92 = icmp eq i32 %91, 6
	br i1 %92, label %93, label %114
93:
	%94 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%95 = getelementptr %"runtime::Type", %"runtime::Type"* %94, i32 0, i32 3
	%96 = load i64, i64* %95
	%97 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%98 = getelementptr %"runtime::Type", %"runtime::Type"* %97, i32 0, i32 3
	%99 = load i64, i64* %98
	%100 = icmp eq i64 %96, %99
	br i1 %100, label %102, label %101
101:
	store i1 false, i1* %tmp.11
	br label %111
102:
	%103 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%104 = getelementptr %"runtime::Type", %"runtime::Type"* %103, i32 0, i32 4
	%105 = load %"runtime::Type"*, %"runtime::Type"** %104
	%106 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%107 = getelementptr %"runtime::Type", %"runtime::Type"* %106, i32 0, i32 4
	%108 = load %"runtime::Type"*, %"runtime::Type"** %107
	%109 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %105, %"runtime::Type"* %108)
	store i1 %109, i1* %tmp.12
	%110 = load i1, i1* %tmp.12
	store i1 %110, i1* %tmp.11
	br label %111
111:
	%112 = load i1, i1* %tmp.11
	ret i1 %112
113:
	br label %114
114:
	%115 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%116 = getelementptr %"runtime::Type", %"runtime::Type"* %115, i32 0, i32 0
	%117 = load i32, i32* %116
	%118 = icmp eq i32 %117, 5
	br i1 %118, label %119, label %120
119:
	store i1 true, i1* %tmp.13
	br label %125
120:
	%121 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%122 = getelementptr %"runtime::Type", %"runtime::Type"* %121, i32 0, i32 0
	%123 = load i32, i32* %122
	%124 = icmp eq i32 %123, 7
	store i1 %124, i1* %tmp.13
	br label %125
125:
	%126 = load i1, i1* %tmp.13
	br i1 %126, label %127, label %128
127:
	store i1 true, i1* %tmp.14
	br label %133
128:
	%129 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%130 = getelementptr %"runtime::Type", %"runtime::Type"* %129, i32 0, i32 0
	%131 = load i32, i32* %130
	%132 = icmp eq i32 %131, 8
	store i1 %132, i1* %tmp.14
	br label %133
133:
	%134 = load i1, i1* %tmp.14
	br i1 %134, label %135, label %145
135:
	%136 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%137 = getelementptr %"runtime::Type", %"runtime::Type"* %136, i32 0, i32 4
	%138 = load %"runtime::Type"*, %"runtime::Type"** %137
	%139 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%140 = getelementptr %"runtime::Type", %"runtime::Type"* %139, i32 0, i32 4
	%141 = load %"runtime::Type"*, %"runtime::Type"** %140
	%142 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %138, %"runtime::Type"* %141)
	store i1 %142, i1* %tmp.15
	%143 = load i1, i1* %tmp.15
	ret i1 %143
144:
	br label %145
145:
	%146 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%147 = getelementptr %"runtime::Type", %"runtime::Type"* %146, i32 0, i32 0
	%148 = load i32, i32* %147
	%149 = icmp eq i32 %148, 9
	br i1 %149, label %150, label %243
150:
	%151 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%152 = getelementptr %"runtime::Type", %"runtime::Type"* %151, i32 0, i32 8
	%153 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %152, i32 0, i32 0
	%154 = load i64, i64* %153
	%155 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%156 = getelementptr %"runtime::Type", %"runtime::Type"* %155, i32 0, i32 8
	%157 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %156, i32 0, i32 0
	%158 = load i64, i64* %157
	%159 = icmp ne i64 %154, %158
	br i1 %159, label %160, label %162
160:
	ret i1 false
161:
	br label %162
162:
	%163 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%164 = getelementptr %"runtime::Type", %"runtime::Type"* %163, i32 0, i32 9
	%165 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %164, i32 0, i32 0
	%166 = load i64, i64* %165
	%167 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%168 = getelementptr %"runtime::Type", %"runtime::Type"* %167, i32 0, i32 9
	%169 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %168, i32 0, i32 0
	%170 = load i64, i64* %169
	%171 = icmp ne i64 %166, %170
	br i1 %171, label %172, label %174
172:
	ret i1 false
173:
	br label %174
174:
	%175 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%176 = getelementptr %"runtime::Type", %"runtime::Type"* %175, i32 0, i32 8
	%177 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %176, i32 0, i32 0
	%178 = load i64, i64* %177
	%179 = trunc i64 %178 to i32
	store i32 0, i32* %i.12
	br label %180
180:
	%181 = load i32, i32* %i.12
	%182 = icmp slt i32 %181, %179
	br i1 %182, label %183, label %210
183:
	%184 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%185 = getelementptr %"runtime::Type", %"runtime::Type"* %184, i32 0, i32 8
	%186 = load i32, i32* %i.12
	%187 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %185, i32 0, i32 1
	%188 = load %"runtime::Type"**, %"runtime::Type"*** %187
	%189 = getelementptr %"runtime::Type"*, %"runtime::Type"** %188, i32 %186
	%190 = load %"runtime::Type"*, %"runtime::Type"** %189
	%191 = getelementptr %"runtime::Type", %"runtime::Type"* %190, i32 0, i32 4
	%192 = load %"runtime::Type"*, %"runtime::Type"** %191
	%193 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%194 = getelementptr %"runtime::Type", %"runtime::Type"* %193, i32 0, i32 8
	%195 = load i32, i32* %i.12
	%196 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %194, i32 0, i32 1
	%197 = load %"runtime::Type"**, %"runtime::Type"*** %196
	%198 = getelementptr %"runtime::Type"*, %"runtime::Type"** %197, i32 %195
	%199 = load %"runtime::Type"*, %"runtime::Type"** %198
	%200 = getelementptr %"runtime::Type", %"runtime::Type"* %199, i32 0, i32 4
	%201 = load %"runtime::Type"*, %"runtime::Type"** %200
	%202 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %192, %"runtime::Type"* %201)
	store i1 %202, i1* %tmp.16
	%203 = load i1, i1* %tmp.16
	%204 = xor i1 %203, true
	br i1 %204, label %205, label %207
205:
	ret i1 false
206:
	br label %207
207:
	br label %208
208:
	%209 = add i32 %181, 1
	store i32 %209, i32* %i.12
	br label %180
210:
	%211 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%212 = getelementptr %"runtime::Type", %"runtime::Type"* %211, i32 0, i32 9
	%213 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %212, i32 0, i32 0
	%214 = load i64, i64* %213
	%215 = trunc i64 %214 to i32
	store i32 0, i32* %i.14
	br label %216
216:
	%217 = load i32, i32* %i.14
	%218 = icmp slt i32 %217, %215
	br i1 %218, label %219, label %242
219:
	%220 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%221 = getelementptr %"runtime::Type", %"runtime::Type"* %220, i32 0, i32 9
	%222 = load i32, i32* %i.14
	%223 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %221, i32 0, i32 1
	%224 = load %"runtime::Type"**, %"runtime::Type"*** %223
	%225 = getelementptr %"runtime::Type"*, %"runtime::Type"** %224, i32 %222
	%226 = load %"runtime::Type"*, %"runtime::Type"** %225
	%227 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%228 = getelementptr %"runtime::Type", %"runtime::Type"* %227, i32 0, i32 9
	%229 = load i32, i32* %i.14
	%230 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %228, i32 0, i32 1
	%231 = load %"runtime::Type"**, %"runtime::Type"*** %230
	%232 = getelementptr %"runtime::Type"*, %"runtime::Type"** %231, i32 %229
	%233 = load %"runtime::Type"*, %"runtime::Type"** %232
	%234 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %226, %"runtime::Type"* %233)
	store i1 %234, i1* %tmp.17
	%235 = load i1, i1* %tmp.17
	%236 = xor i1 %235, true
	br i1 %236, label %237, label %239
237:
	ret i1 false
238:
	br label %239
239:
	br label %240
240:
	%241 = add i32 %217, 1
	store i32 %241, i32* %i.14
	br label %216
242:
	br label %243
243:
	%244 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%245 = getelementptr %"runtime::Type", %"runtime::Type"* %244, i32 0, i32 1
	%246 = load {i64, i8*}, {i64, i8*}* %245
	%247 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%248 = getelementptr %"runtime::Type", %"runtime::Type"* %247, i32 0, i32 1
	%249 = load {i64, i8*}, {i64, i8*}* %248
	%250 = extractvalue {i64, i8*} %246, 1
	%251 = extractvalue {i64, i8*} %249, 1
	%252 = call i32 @"strcmp"(i8* %250, i8* %251)
	%253 = icmp eq i32 %252, 0
	ret i1 %253
254:
	ret i1 undef
}
declare i8* @"malloc"(i64)
declare void @"free"(i8*)
declare void @"abort"()
declare i8* @"memcpy"(i8*, i8*, i64)
declare i32 @"strcmp"(i8*, i8*)
define void @"runtime::__main__::([[char]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	ret void
}
define {i64, i8*} @"runtime::cut_name::([char])"({i64, i8*} %s.value) {
start:
	%s.0 = alloca {i64, i8*}
	%end.0 = alloca i32
	%tmp.0 = alloca i1
	%start.0 = alloca i32
	%tmp.1 = alloca i1
	%size.0 = alloca i32
	%ret.0 = alloca {i64, i8*}
	%tmp.2 = alloca i8*
	%tmp.3 = alloca i8*
	store {i64, i8*} %s.value, {i64, i8*}* %s.0
	store i32 zeroinitializer, i32* %end.0
	store i32 0, i32* %end.0
	br label %0
0:
	%1 = load i32, i32* %end.0
	%2 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	%3 = load i8*, i8** %2
	%4 = getelementptr i8, i8* %3, i32 %1
	%5 = load i8, i8* %4
	%6 = icmp ne i8 %5, 40
	br i1 %6, label %8, label %7
7:
	store i1 false, i1* %tmp.0
	br label %16
8:
	%9 = load i32, i32* %end.0
	%10 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 0
	%11 = load i64, i64* %10
	%12 = zext i32 1 to i64
	%13 = sub i64 %11, %12
	%14 = zext i32 %9 to i64
	%15 = icmp ult i64 %14, %13
	store i1 %15, i1* %tmp.0
	br label %16
16:
	%17 = load i1, i1* %tmp.0
	br i1 %17, label %18, label %21
18:
	%19 = load i32, i32* %end.0
	%20 = add i32 %19, 1
	store i32 %20, i32* %end.0
	br label %0
21:
	%22 = load i32, i32* %end.0
	%23 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	%24 = load i8*, i8** %23
	%25 = getelementptr i8, i8* %24, i32 %22
	%26 = load i8, i8* %25
	%27 = icmp eq i8 %26, 40
	br i1 %27, label %28, label %31
28:
	%29 = load i32, i32* %end.0
	%30 = sub i32 %29, 2
	store i32 %30, i32* %end.0
	br label %31
31:
	store i32 zeroinitializer, i32* %start.0
	%32 = load i32, i32* %end.0
	%33 = sub i32 %32, 1
	store i32 %33, i32* %start.0
	br label %34
34:
	%35 = load i32, i32* %start.0
	%36 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	%37 = load i8*, i8** %36
	%38 = getelementptr i8, i8* %37, i32 %35
	%39 = load i8, i8* %38
	%40 = icmp ne i8 %39, 58
	br i1 %40, label %42, label %41
41:
	store i1 false, i1* %tmp.1
	br label %45
42:
	%43 = load i32, i32* %start.0
	%44 = icmp sgt i32 %43, 0
	store i1 %44, i1* %tmp.1
	br label %45
45:
	%46 = load i1, i1* %tmp.1
	br i1 %46, label %47, label %50
47:
	%48 = load i32, i32* %start.0
	%49 = sub i32 %48, 1
	store i32 %49, i32* %start.0
	br label %34
50:
	%51 = load i32, i32* %start.0
	%52 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	%53 = load i8*, i8** %52
	%54 = getelementptr i8, i8* %53, i32 %51
	%55 = load i8, i8* %54
	%56 = icmp eq i8 %55, 58
	br i1 %56, label %57, label %60
57:
	%58 = load i32, i32* %start.0
	%59 = add i32 %58, 1
	store i32 %59, i32* %start.0
	br label %60
60:
	store i32 zeroinitializer, i32* %size.0
	%61 = load i32, i32* %end.0
	%62 = load i32, i32* %start.0
	%63 = sub i32 %61, %62
	store i32 %63, i32* %size.0
	store {i64, i8*} zeroinitializer, {i64, i8*}* %ret.0
	%64 = load i32, i32* %size.0
	%65 = add i32 %64, 1
	%66 = zext i32 %65 to i64
	%67 = mul i64 %66, 1
	%68 = call i8* (i64) @"malloc"(i64 %67)
	store i8* %68, i8** %tmp.2
	%69 = load i8*, i8** %tmp.2
	%70 = bitcast i8* %69 to i8*
	%71 = getelementptr {i64, i8*}, {i64, i8*}* %ret.0, i32 0, i32 1
	store i8* %70, i8** %71
	%72 = getelementptr {i64, i8*}, {i64, i8*}* %ret.0, i32 0, i32 1
	%73 = load i8*, i8** %72
	%74 = bitcast i8* %73 to i8*
	%75 = getelementptr {i64, i8*}, {i64, i8*}* %s.0, i32 0, i32 1
	%76 = load i8*, i8** %75
	%77 = ptrtoint i8* %76 to i64
	%78 = load i32, i32* %start.0
	%79 = zext i32 %78 to i64
	%80 = add i64 %77, %79
	%81 = inttoptr i64 %80 to i8*
	%82 = bitcast i8* %81 to i8*
	%83 = load i32, i32* %size.0
	%84 = zext i32 %83 to i64
	%85 = call i8* (i8*, i8*, i64) @"memcpy"(i8* %74, i8* %82, i64 %84)
	store i8* %85, i8** %tmp.3
	%86 = getelementptr {i64, i8*}, {i64, i8*}* %ret.0, i32 0, i32 1
	%87 = load i32, i32* %size.0
	%88 = load i8*, i8** %86
	%89 = getelementptr i8, i8* %88, i32 %87
	store i8 0, i8* %89
	%90 = load i32, i32* %size.0
	%91 = add i32 %90, 1
	%92 = getelementptr {i64, i8*}, {i64, i8*}* %ret.0, i32 0, i32 0
	%93 = zext i32 %91 to i64
	store i64 %93, i64* %92
	%94 = load {i64, i8*}, {i64, i8*}* %ret.0
	ret {i64, i8*} %94
95:
	ret {i64, i8*} undef
}
define {i64, i8*} @"to_string::(runtime::TypeKind)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %42 [
		i32 0, label %0
		i32 1, label %3
		i32 2, label %6
		i32 3, label %9
		i32 4, label %12
		i32 5, label %15
		i32 6, label %18
		i32 7, label %21
		i32 8, label %24
		i32 9, label %27
		i32 10, label %30
		i32 11, label %33
		i32 12, label %36
		i32 13, label %39
	]
0:
	%1 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.0", i32 0, i32 0
	%2 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %1, 1
	ret {i64, i8*} %2
3:
	%4 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.1", i32 0, i32 0
	%5 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %4, 1
	ret {i64, i8*} %5
6:
	%7 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.2", i32 0, i32 0
	%8 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %7, 1
	ret {i64, i8*} %8
9:
	%10 = getelementptr [7 x i8], [7 x i8]* @"runtime::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
12:
	%13 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.4", i32 0, i32 0
	%14 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %13, 1
	ret {i64, i8*} %14
15:
	%16 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.5", i32 0, i32 0
	%17 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %16, 1
	ret {i64, i8*} %17
18:
	%19 = getelementptr [13 x i8], [13 x i8]* @"runtime::str.6", i32 0, i32 0
	%20 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %19, 1
	ret {i64, i8*} %20
21:
	%22 = getelementptr [8 x i8], [8 x i8]* @"runtime::str.7", i32 0, i32 0
	%23 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %22, 1
	ret {i64, i8*} %23
24:
	%25 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.8", i32 0, i32 0
	%26 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %25, 1
	ret {i64, i8*} %26
27:
	%28 = getelementptr [9 x i8], [9 x i8]* @"runtime::str.9", i32 0, i32 0
	%29 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %28, 1
	ret {i64, i8*} %29
30:
	%31 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.10", i32 0, i32 0
	%32 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %31, 1
	ret {i64, i8*} %32
33:
	%34 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.11", i32 0, i32 0
	%35 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %34, 1
	ret {i64, i8*} %35
36:
	%37 = getelementptr [11 x i8], [11 x i8]* @"runtime::str.12", i32 0, i32 0
	%38 = insertvalue {i64, i8*} {i64 11, i8* undef}, i8* %37, 1
	ret {i64, i8*} %38
39:
	%40 = getelementptr [7 x i8], [7 x i8]* @"runtime::str.13", i32 0, i32 0
	%41 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %40, 1
	ret {i64, i8*} %41
42:
	%43 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.14", i32 0, i32 0
	%44 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %43, 1
	ret {i64, i8*} %44
}
define void @"runtime::__finalizer__::()"() {
start:
	ret void
}
@"runtime::str.0" = private global [5 x i8] c"BOOL\00"
@"runtime::str.1" = private global [5 x i8] c"WORD\00"
@"runtime::str.2" = private global [6 x i8] c"FLOAT\00"
@"runtime::str.3" = private global [7 x i8] c"STRUCT\00"
@"runtime::str.4" = private global [6 x i8] c"UNION\00"
@"runtime::str.5" = private global [6 x i8] c"ARRAY\00"
@"runtime::str.6" = private global [13 x i8] c"STATIC_ARRAY\00"
@"runtime::str.7" = private global [8 x i8] c"POINTER\00"
@"runtime::str.8" = private global [10 x i8] c"REFERENCE\00"
@"runtime::str.9" = private global [9 x i8] c"FUNCTION\00"
@"runtime::str.10" = private global [5 x i8] c"ENUM\00"
@"runtime::str.11" = private global [5 x i8] c"CHAR\00"
@"runtime::str.12" = private global [11 x i8] c"STRUCTURAL\00"
@"runtime::str.13" = private global [7 x i8] c"OPAQUE\00"
@"runtime::str.14" = private global [10 x i8] c"INVALID!!\00"
