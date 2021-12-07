; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "runtime.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
%"runtime::Parameter" = type {{i64, i8*}, %"runtime::Type"*}
%"runtime::Field" = type {{i64, i8*}, i32, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Parameter"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
%"runtime::EnumValue" = type {{i64, i8*}, i64}
declare i32 @"strcmp"(i8*, i8*)
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
declare void @"cstd::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
define void @"runtime::main::([[int8]])"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	%0 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"cstd::main::([[int8]])"({i64, {i64, i8*}*} %0)
	%1 = load {i64, {i64, i8*}*}, {i64, {i64, i8*}*}* %args
	call void ({i64, {i64, i8*}*}) @"std::main::([[int8]])"({i64, {i64, i8*}*} %1)
	ret void
}
define i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %a.value, %"runtime::Type"* %b.value) {
start:
	%a.0 = alloca %"runtime::Type"*
	%b.0 = alloca %"runtime::Type"*
	%tmp.0 = alloca i1
	%tmp.1 = alloca i1
	%tmp.2 = alloca i1
	%tmp.3 = alloca i1
	%tmp.4 = alloca i1
	%tmp.5 = alloca i1
	%i.11 = alloca i32
	%tmp.6 = alloca i1
	%i.13 = alloca i32
	%tmp.7 = alloca i1
	store %"runtime::Type"* %a.value, %"runtime::Type"** %a.0
	store %"runtime::Type"* %b.value, %"runtime::Type"** %b.0
	%0 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%1 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%2 = ptrtoint %"runtime::Type"* %0 to i64
	%3 = ptrtoint %"runtime::Type"* %1 to i64
	%4 = icmp eq i64 %2, %3
	br i1 %4, label %5, label %7
5:
	ret i1 true
6:
	br label %7
7:
	%8 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%9 = getelementptr %"runtime::Type", %"runtime::Type"* %8, i32 0, i32 0
	%10 = load i32, i32* %9
	%11 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%12 = getelementptr %"runtime::Type", %"runtime::Type"* %11, i32 0, i32 0
	%13 = load i32, i32* %12
	%14 = icmp ne i32 %10, %13
	br i1 %14, label %15, label %17
15:
	ret i1 false
16:
	br label %17
17:
	%18 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%19 = getelementptr %"runtime::Type", %"runtime::Type"* %18, i32 0, i32 0
	%20 = load i32, i32* %19
	%21 = icmp eq i32 %20, 0
	br i1 %21, label %22, label %24
22:
	ret i1 true
23:
	br label %24
24:
	%25 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%26 = getelementptr %"runtime::Type", %"runtime::Type"* %25, i32 0, i32 0
	%27 = load i32, i32* %26
	%28 = icmp eq i32 %27, 1
	br i1 %28, label %29, label %49
29:
	%30 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%31 = getelementptr %"runtime::Type", %"runtime::Type"* %30, i32 0, i32 5
	%32 = load i64, i64* %31
	%33 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%34 = getelementptr %"runtime::Type", %"runtime::Type"* %33, i32 0, i32 5
	%35 = load i64, i64* %34
	%36 = icmp eq i64 %32, %35
	br i1 %36, label %38, label %37
37:
	store i1 false, i1* %tmp.0
	br label %46
38:
	%39 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%40 = getelementptr %"runtime::Type", %"runtime::Type"* %39, i32 0, i32 2
	%41 = load i1, i1* %40
	%42 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%43 = getelementptr %"runtime::Type", %"runtime::Type"* %42, i32 0, i32 2
	%44 = load i1, i1* %43
	%45 = icmp eq i1 %41, %44
	store i1 %45, i1* %tmp.0
	br label %46
46:
	%47 = load i1, i1* %tmp.0
	ret i1 %47
48:
	br label %49
49:
	%50 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%51 = getelementptr %"runtime::Type", %"runtime::Type"* %50, i32 0, i32 0
	%52 = load i32, i32* %51
	%53 = icmp eq i32 %52, 2
	br i1 %53, label %54, label %63
54:
	%55 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%56 = getelementptr %"runtime::Type", %"runtime::Type"* %55, i32 0, i32 5
	%57 = load i64, i64* %56
	%58 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%59 = getelementptr %"runtime::Type", %"runtime::Type"* %58, i32 0, i32 5
	%60 = load i64, i64* %59
	%61 = icmp eq i64 %57, %60
	ret i1 %61
62:
	br label %63
63:
	%64 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%65 = getelementptr %"runtime::Type", %"runtime::Type"* %64, i32 0, i32 0
	%66 = load i32, i32* %65
	%67 = icmp eq i32 %66, 6
	br i1 %67, label %68, label %89
68:
	%69 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%70 = getelementptr %"runtime::Type", %"runtime::Type"* %69, i32 0, i32 3
	%71 = load i64, i64* %70
	%72 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%73 = getelementptr %"runtime::Type", %"runtime::Type"* %72, i32 0, i32 3
	%74 = load i64, i64* %73
	%75 = icmp eq i64 %71, %74
	br i1 %75, label %77, label %76
76:
	store i1 false, i1* %tmp.1
	br label %86
77:
	%78 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%79 = getelementptr %"runtime::Type", %"runtime::Type"* %78, i32 0, i32 4
	%80 = load %"runtime::Type"*, %"runtime::Type"** %79
	%81 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%82 = getelementptr %"runtime::Type", %"runtime::Type"* %81, i32 0, i32 4
	%83 = load %"runtime::Type"*, %"runtime::Type"** %82
	%84 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %80, %"runtime::Type"* %83)
	store i1 %84, i1* %tmp.2
	%85 = load i1, i1* %tmp.2
	store i1 %85, i1* %tmp.1
	br label %86
86:
	%87 = load i1, i1* %tmp.1
	ret i1 %87
88:
	br label %89
89:
	%90 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%91 = getelementptr %"runtime::Type", %"runtime::Type"* %90, i32 0, i32 0
	%92 = load i32, i32* %91
	%93 = icmp eq i32 %92, 5
	br i1 %93, label %94, label %95
94:
	store i1 true, i1* %tmp.3
	br label %100
95:
	%96 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%97 = getelementptr %"runtime::Type", %"runtime::Type"* %96, i32 0, i32 0
	%98 = load i32, i32* %97
	%99 = icmp eq i32 %98, 7
	store i1 %99, i1* %tmp.3
	br label %100
100:
	%101 = load i1, i1* %tmp.3
	br i1 %101, label %102, label %103
102:
	store i1 true, i1* %tmp.4
	br label %108
103:
	%104 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%105 = getelementptr %"runtime::Type", %"runtime::Type"* %104, i32 0, i32 0
	%106 = load i32, i32* %105
	%107 = icmp eq i32 %106, 8
	store i1 %107, i1* %tmp.4
	br label %108
108:
	%109 = load i1, i1* %tmp.4
	br i1 %109, label %110, label %120
110:
	%111 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%112 = getelementptr %"runtime::Type", %"runtime::Type"* %111, i32 0, i32 4
	%113 = load %"runtime::Type"*, %"runtime::Type"** %112
	%114 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%115 = getelementptr %"runtime::Type", %"runtime::Type"* %114, i32 0, i32 4
	%116 = load %"runtime::Type"*, %"runtime::Type"** %115
	%117 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %113, %"runtime::Type"* %116)
	store i1 %117, i1* %tmp.5
	%118 = load i1, i1* %tmp.5
	ret i1 %118
119:
	br label %120
120:
	%121 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%122 = getelementptr %"runtime::Type", %"runtime::Type"* %121, i32 0, i32 0
	%123 = load i32, i32* %122
	%124 = icmp eq i32 %123, 9
	br i1 %124, label %125, label %216
125:
	%126 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%127 = getelementptr %"runtime::Type", %"runtime::Type"* %126, i32 0, i32 8
	%128 = getelementptr {i64, %"runtime::Parameter"*}, {i64, %"runtime::Parameter"*}* %127, i32 0, i32 0
	%129 = load i64, i64* %128
	%130 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%131 = getelementptr %"runtime::Type", %"runtime::Type"* %130, i32 0, i32 8
	%132 = getelementptr {i64, %"runtime::Parameter"*}, {i64, %"runtime::Parameter"*}* %131, i32 0, i32 0
	%133 = load i64, i64* %132
	%134 = icmp ne i64 %129, %133
	br i1 %134, label %135, label %137
135:
	ret i1 false
136:
	br label %137
137:
	%138 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%139 = getelementptr %"runtime::Type", %"runtime::Type"* %138, i32 0, i32 9
	%140 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %139, i32 0, i32 0
	%141 = load i64, i64* %140
	%142 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%143 = getelementptr %"runtime::Type", %"runtime::Type"* %142, i32 0, i32 9
	%144 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %143, i32 0, i32 0
	%145 = load i64, i64* %144
	%146 = icmp ne i64 %141, %145
	br i1 %146, label %147, label %149
147:
	ret i1 false
148:
	br label %149
149:
	%150 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%151 = getelementptr %"runtime::Type", %"runtime::Type"* %150, i32 0, i32 8
	%152 = getelementptr {i64, %"runtime::Parameter"*}, {i64, %"runtime::Parameter"*}* %151, i32 0, i32 0
	%153 = load i64, i64* %152
	%154 = trunc i64 %153 to i32
	store i32 0, i32* %i.11
	br label %155
155:
	%156 = load i32, i32* %i.11
	%157 = icmp slt i32 %156, %154
	br i1 %157, label %158, label %183
158:
	%159 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%160 = getelementptr %"runtime::Type", %"runtime::Type"* %159, i32 0, i32 8
	%161 = load i32, i32* %i.11
	%162 = getelementptr {i64, %"runtime::Parameter"*}, {i64, %"runtime::Parameter"*}* %160, i32 0, i32 1
	%163 = load %"runtime::Parameter"*, %"runtime::Parameter"** %162
	%164 = getelementptr %"runtime::Parameter", %"runtime::Parameter"* %163, i32 %161
	%165 = getelementptr %"runtime::Parameter", %"runtime::Parameter"* %164, i32 0, i32 1
	%166 = load %"runtime::Type"*, %"runtime::Type"** %165
	%167 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%168 = getelementptr %"runtime::Type", %"runtime::Type"* %167, i32 0, i32 8
	%169 = load i32, i32* %i.11
	%170 = getelementptr {i64, %"runtime::Parameter"*}, {i64, %"runtime::Parameter"*}* %168, i32 0, i32 1
	%171 = load %"runtime::Parameter"*, %"runtime::Parameter"** %170
	%172 = getelementptr %"runtime::Parameter", %"runtime::Parameter"* %171, i32 %169
	%173 = getelementptr %"runtime::Parameter", %"runtime::Parameter"* %172, i32 0, i32 1
	%174 = load %"runtime::Type"*, %"runtime::Type"** %173
	%175 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %166, %"runtime::Type"* %174)
	store i1 %175, i1* %tmp.6
	%176 = load i1, i1* %tmp.6
	%177 = xor i1 %176, true
	br i1 %177, label %178, label %180
178:
	ret i1 false
179:
	br label %180
180:
	br label %181
181:
	%182 = add i32 %156, 1
	store i32 %182, i32* %i.11
	br label %155
183:
	%184 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%185 = getelementptr %"runtime::Type", %"runtime::Type"* %184, i32 0, i32 9
	%186 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %185, i32 0, i32 0
	%187 = load i64, i64* %186
	%188 = trunc i64 %187 to i32
	store i32 0, i32* %i.13
	br label %189
189:
	%190 = load i32, i32* %i.13
	%191 = icmp slt i32 %190, %188
	br i1 %191, label %192, label %215
192:
	%193 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%194 = getelementptr %"runtime::Type", %"runtime::Type"* %193, i32 0, i32 9
	%195 = load i32, i32* %i.13
	%196 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %194, i32 0, i32 1
	%197 = load %"runtime::Type"**, %"runtime::Type"*** %196
	%198 = getelementptr %"runtime::Type"*, %"runtime::Type"** %197, i32 %195
	%199 = load %"runtime::Type"*, %"runtime::Type"** %198
	%200 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%201 = getelementptr %"runtime::Type", %"runtime::Type"* %200, i32 0, i32 9
	%202 = load i32, i32* %i.13
	%203 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %201, i32 0, i32 1
	%204 = load %"runtime::Type"**, %"runtime::Type"*** %203
	%205 = getelementptr %"runtime::Type"*, %"runtime::Type"** %204, i32 %202
	%206 = load %"runtime::Type"*, %"runtime::Type"** %205
	%207 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %199, %"runtime::Type"* %206)
	store i1 %207, i1* %tmp.7
	%208 = load i1, i1* %tmp.7
	%209 = xor i1 %208, true
	br i1 %209, label %210, label %212
210:
	ret i1 false
211:
	br label %212
212:
	br label %213
213:
	%214 = add i32 %190, 1
	store i32 %214, i32* %i.13
	br label %189
215:
	br label %216
216:
	%217 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%218 = getelementptr %"runtime::Type", %"runtime::Type"* %217, i32 0, i32 1
	%219 = load {i64, i8*}, {i64, i8*}* %218
	%220 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%221 = getelementptr %"runtime::Type", %"runtime::Type"* %220, i32 0, i32 1
	%222 = load {i64, i8*}, {i64, i8*}* %221
	%223 = extractvalue {i64, i8*} %219, 1
	%224 = extractvalue {i64, i8*} %222, 1
	%225 = call i32 @"strcmp"(i8* %223, i8* %224)
	%226 = icmp eq i32 %225, 0
	ret i1 %226
227:
	ret i1 undef
}
define {i64, i8*} @"to_string::(runtime::TypeKind)"(i32 %enum.value) {
start:
	switch i32 %enum.value, label %33 [
		i32 0, label %0
		i32 1, label %3
		i32 5, label %6
		i32 8, label %9
		i32 2, label %12
		i32 7, label %15
		i32 4, label %18
		i32 10, label %21
		i32 3, label %24
		i32 6, label %27
		i32 9, label %30
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
	%10 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.3", i32 0, i32 0
	%11 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %10, 1
	ret {i64, i8*} %11
12:
	%13 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.4", i32 0, i32 0
	%14 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %13, 1
	ret {i64, i8*} %14
15:
	%16 = getelementptr [8 x i8], [8 x i8]* @"runtime::str.5", i32 0, i32 0
	%17 = insertvalue {i64, i8*} {i64 8, i8* undef}, i8* %16, 1
	ret {i64, i8*} %17
18:
	%19 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.6", i32 0, i32 0
	%20 = insertvalue {i64, i8*} {i64 6, i8* undef}, i8* %19, 1
	ret {i64, i8*} %20
21:
	%22 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.7", i32 0, i32 0
	%23 = insertvalue {i64, i8*} {i64 5, i8* undef}, i8* %22, 1
	ret {i64, i8*} %23
24:
	%25 = getelementptr [7 x i8], [7 x i8]* @"runtime::str.8", i32 0, i32 0
	%26 = insertvalue {i64, i8*} {i64 7, i8* undef}, i8* %25, 1
	ret {i64, i8*} %26
27:
	%28 = getelementptr [13 x i8], [13 x i8]* @"runtime::str.9", i32 0, i32 0
	%29 = insertvalue {i64, i8*} {i64 13, i8* undef}, i8* %28, 1
	ret {i64, i8*} %29
30:
	%31 = getelementptr [9 x i8], [9 x i8]* @"runtime::str.10", i32 0, i32 0
	%32 = insertvalue {i64, i8*} {i64 9, i8* undef}, i8* %31, 1
	ret {i64, i8*} %32
33:
	%34 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.11", i32 0, i32 0
	%35 = insertvalue {i64, i8*} {i64 10, i8* undef}, i8* %34, 1
	ret {i64, i8*} %35
}
declare void @"std::main::([[int8]])"({i64, {i64, i8*}*} %args.value)
@"runtime::str.0" = private global [5 x i8] c"BOOL\00"
@"runtime::str.1" = private global [5 x i8] c"WORD\00"
@"runtime::str.2" = private global [6 x i8] c"ARRAY\00"
@"runtime::str.3" = private global [10 x i8] c"REFERENCE\00"
@"runtime::str.4" = private global [6 x i8] c"FLOAT\00"
@"runtime::str.5" = private global [8 x i8] c"POINTER\00"
@"runtime::str.6" = private global [6 x i8] c"UNION\00"
@"runtime::str.7" = private global [5 x i8] c"ENUM\00"
@"runtime::str.8" = private global [7 x i8] c"STRUCT\00"
@"runtime::str.9" = private global [13 x i8] c"STATIC_ARRAY\00"
@"runtime::str.10" = private global [9 x i8] c"FUNCTION\00"
@"runtime::str.11" = private global [10 x i8] c"INVALID!!\00"
