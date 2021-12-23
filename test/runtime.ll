; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "runtime.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Ref" = type {i64*, i8*, %"runtime::Type"*}
%"runtime::Field" = type {{i64, i8*}, i64, %"runtime::Type"*}
%"runtime::Type" = type {i32, {i64, i8*}, i1, i64, %"runtime::Type"*, i64, i64, {i64, %"runtime::Field"*}, {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}, {i64, %"runtime::EnumValue"*}}
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
	%tmp.6 = alloca i1
	%i.12 = alloca i32
	%tmp.7 = alloca i1
	%i.14 = alloca i32
	%tmp.8 = alloca i1
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
	%9 = ptrtoint %"runtime::Type"* %8 to i64
	%10 = icmp ne i64 %9, 0
	%11 = xor i1 %10, true
	br i1 %11, label %12, label %13
12:
	store i1 true, i1* %tmp.0
	br label %18
13:
	%14 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%15 = ptrtoint %"runtime::Type"* %14 to i64
	%16 = icmp ne i64 %15, 0
	%17 = xor i1 %16, true
	store i1 %17, i1* %tmp.0
	br label %18
18:
	%19 = load i1, i1* %tmp.0
	br i1 %19, label %20, label %22
20:
	ret i1 false
21:
	br label %22
22:
	%23 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%24 = getelementptr %"runtime::Type", %"runtime::Type"* %23, i32 0, i32 0
	%25 = load i32, i32* %24
	%26 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%27 = getelementptr %"runtime::Type", %"runtime::Type"* %26, i32 0, i32 0
	%28 = load i32, i32* %27
	%29 = icmp ne i32 %25, %28
	br i1 %29, label %30, label %32
30:
	ret i1 false
31:
	br label %32
32:
	%33 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%34 = getelementptr %"runtime::Type", %"runtime::Type"* %33, i32 0, i32 0
	%35 = load i32, i32* %34
	%36 = icmp eq i32 %35, 0
	br i1 %36, label %37, label %39
37:
	ret i1 true
38:
	br label %39
39:
	%40 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%41 = getelementptr %"runtime::Type", %"runtime::Type"* %40, i32 0, i32 0
	%42 = load i32, i32* %41
	%43 = icmp eq i32 %42, 1
	br i1 %43, label %44, label %64
44:
	%45 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%46 = getelementptr %"runtime::Type", %"runtime::Type"* %45, i32 0, i32 5
	%47 = load i64, i64* %46
	%48 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%49 = getelementptr %"runtime::Type", %"runtime::Type"* %48, i32 0, i32 5
	%50 = load i64, i64* %49
	%51 = icmp eq i64 %47, %50
	br i1 %51, label %53, label %52
52:
	store i1 false, i1* %tmp.1
	br label %61
53:
	%54 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%55 = getelementptr %"runtime::Type", %"runtime::Type"* %54, i32 0, i32 2
	%56 = load i1, i1* %55
	%57 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%58 = getelementptr %"runtime::Type", %"runtime::Type"* %57, i32 0, i32 2
	%59 = load i1, i1* %58
	%60 = icmp eq i1 %56, %59
	store i1 %60, i1* %tmp.1
	br label %61
61:
	%62 = load i1, i1* %tmp.1
	ret i1 %62
63:
	br label %64
64:
	%65 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%66 = getelementptr %"runtime::Type", %"runtime::Type"* %65, i32 0, i32 0
	%67 = load i32, i32* %66
	%68 = icmp eq i32 %67, 2
	br i1 %68, label %69, label %78
69:
	%70 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%71 = getelementptr %"runtime::Type", %"runtime::Type"* %70, i32 0, i32 5
	%72 = load i64, i64* %71
	%73 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%74 = getelementptr %"runtime::Type", %"runtime::Type"* %73, i32 0, i32 5
	%75 = load i64, i64* %74
	%76 = icmp eq i64 %72, %75
	ret i1 %76
77:
	br label %78
78:
	%79 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%80 = getelementptr %"runtime::Type", %"runtime::Type"* %79, i32 0, i32 0
	%81 = load i32, i32* %80
	%82 = icmp eq i32 %81, 6
	br i1 %82, label %83, label %104
83:
	%84 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%85 = getelementptr %"runtime::Type", %"runtime::Type"* %84, i32 0, i32 3
	%86 = load i64, i64* %85
	%87 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%88 = getelementptr %"runtime::Type", %"runtime::Type"* %87, i32 0, i32 3
	%89 = load i64, i64* %88
	%90 = icmp eq i64 %86, %89
	br i1 %90, label %92, label %91
91:
	store i1 false, i1* %tmp.2
	br label %101
92:
	%93 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%94 = getelementptr %"runtime::Type", %"runtime::Type"* %93, i32 0, i32 4
	%95 = load %"runtime::Type"*, %"runtime::Type"** %94
	%96 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%97 = getelementptr %"runtime::Type", %"runtime::Type"* %96, i32 0, i32 4
	%98 = load %"runtime::Type"*, %"runtime::Type"** %97
	%99 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %95, %"runtime::Type"* %98)
	store i1 %99, i1* %tmp.3
	%100 = load i1, i1* %tmp.3
	store i1 %100, i1* %tmp.2
	br label %101
101:
	%102 = load i1, i1* %tmp.2
	ret i1 %102
103:
	br label %104
104:
	%105 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%106 = getelementptr %"runtime::Type", %"runtime::Type"* %105, i32 0, i32 0
	%107 = load i32, i32* %106
	%108 = icmp eq i32 %107, 5
	br i1 %108, label %109, label %110
109:
	store i1 true, i1* %tmp.4
	br label %115
110:
	%111 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%112 = getelementptr %"runtime::Type", %"runtime::Type"* %111, i32 0, i32 0
	%113 = load i32, i32* %112
	%114 = icmp eq i32 %113, 7
	store i1 %114, i1* %tmp.4
	br label %115
115:
	%116 = load i1, i1* %tmp.4
	br i1 %116, label %117, label %118
117:
	store i1 true, i1* %tmp.5
	br label %123
118:
	%119 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%120 = getelementptr %"runtime::Type", %"runtime::Type"* %119, i32 0, i32 0
	%121 = load i32, i32* %120
	%122 = icmp eq i32 %121, 8
	store i1 %122, i1* %tmp.5
	br label %123
123:
	%124 = load i1, i1* %tmp.5
	br i1 %124, label %125, label %135
125:
	%126 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%127 = getelementptr %"runtime::Type", %"runtime::Type"* %126, i32 0, i32 4
	%128 = load %"runtime::Type"*, %"runtime::Type"** %127
	%129 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%130 = getelementptr %"runtime::Type", %"runtime::Type"* %129, i32 0, i32 4
	%131 = load %"runtime::Type"*, %"runtime::Type"** %130
	%132 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %128, %"runtime::Type"* %131)
	store i1 %132, i1* %tmp.6
	%133 = load i1, i1* %tmp.6
	ret i1 %133
134:
	br label %135
135:
	%136 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%137 = getelementptr %"runtime::Type", %"runtime::Type"* %136, i32 0, i32 0
	%138 = load i32, i32* %137
	%139 = icmp eq i32 %138, 9
	br i1 %139, label %140, label %233
140:
	%141 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%142 = getelementptr %"runtime::Type", %"runtime::Type"* %141, i32 0, i32 8
	%143 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %142, i32 0, i32 0
	%144 = load i64, i64* %143
	%145 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%146 = getelementptr %"runtime::Type", %"runtime::Type"* %145, i32 0, i32 8
	%147 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %146, i32 0, i32 0
	%148 = load i64, i64* %147
	%149 = icmp ne i64 %144, %148
	br i1 %149, label %150, label %152
150:
	ret i1 false
151:
	br label %152
152:
	%153 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%154 = getelementptr %"runtime::Type", %"runtime::Type"* %153, i32 0, i32 9
	%155 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %154, i32 0, i32 0
	%156 = load i64, i64* %155
	%157 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%158 = getelementptr %"runtime::Type", %"runtime::Type"* %157, i32 0, i32 9
	%159 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %158, i32 0, i32 0
	%160 = load i64, i64* %159
	%161 = icmp ne i64 %156, %160
	br i1 %161, label %162, label %164
162:
	ret i1 false
163:
	br label %164
164:
	%165 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%166 = getelementptr %"runtime::Type", %"runtime::Type"* %165, i32 0, i32 8
	%167 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %166, i32 0, i32 0
	%168 = load i64, i64* %167
	%169 = trunc i64 %168 to i32
	store i32 0, i32* %i.12
	br label %170
170:
	%171 = load i32, i32* %i.12
	%172 = icmp slt i32 %171, %169
	br i1 %172, label %173, label %200
173:
	%174 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%175 = getelementptr %"runtime::Type", %"runtime::Type"* %174, i32 0, i32 8
	%176 = load i32, i32* %i.12
	%177 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %175, i32 0, i32 1
	%178 = load %"runtime::Type"**, %"runtime::Type"*** %177
	%179 = getelementptr %"runtime::Type"*, %"runtime::Type"** %178, i32 %176
	%180 = load %"runtime::Type"*, %"runtime::Type"** %179
	%181 = getelementptr %"runtime::Type", %"runtime::Type"* %180, i32 0, i32 4
	%182 = load %"runtime::Type"*, %"runtime::Type"** %181
	%183 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%184 = getelementptr %"runtime::Type", %"runtime::Type"* %183, i32 0, i32 8
	%185 = load i32, i32* %i.12
	%186 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %184, i32 0, i32 1
	%187 = load %"runtime::Type"**, %"runtime::Type"*** %186
	%188 = getelementptr %"runtime::Type"*, %"runtime::Type"** %187, i32 %185
	%189 = load %"runtime::Type"*, %"runtime::Type"** %188
	%190 = getelementptr %"runtime::Type", %"runtime::Type"* %189, i32 0, i32 4
	%191 = load %"runtime::Type"*, %"runtime::Type"** %190
	%192 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %182, %"runtime::Type"* %191)
	store i1 %192, i1* %tmp.7
	%193 = load i1, i1* %tmp.7
	%194 = xor i1 %193, true
	br i1 %194, label %195, label %197
195:
	ret i1 false
196:
	br label %197
197:
	br label %198
198:
	%199 = add i32 %171, 1
	store i32 %199, i32* %i.12
	br label %170
200:
	%201 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%202 = getelementptr %"runtime::Type", %"runtime::Type"* %201, i32 0, i32 9
	%203 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %202, i32 0, i32 0
	%204 = load i64, i64* %203
	%205 = trunc i64 %204 to i32
	store i32 0, i32* %i.14
	br label %206
206:
	%207 = load i32, i32* %i.14
	%208 = icmp slt i32 %207, %205
	br i1 %208, label %209, label %232
209:
	%210 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%211 = getelementptr %"runtime::Type", %"runtime::Type"* %210, i32 0, i32 9
	%212 = load i32, i32* %i.14
	%213 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %211, i32 0, i32 1
	%214 = load %"runtime::Type"**, %"runtime::Type"*** %213
	%215 = getelementptr %"runtime::Type"*, %"runtime::Type"** %214, i32 %212
	%216 = load %"runtime::Type"*, %"runtime::Type"** %215
	%217 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%218 = getelementptr %"runtime::Type", %"runtime::Type"* %217, i32 0, i32 9
	%219 = load i32, i32* %i.14
	%220 = getelementptr {i64, %"runtime::Type"**}, {i64, %"runtime::Type"**}* %218, i32 0, i32 1
	%221 = load %"runtime::Type"**, %"runtime::Type"*** %220
	%222 = getelementptr %"runtime::Type"*, %"runtime::Type"** %221, i32 %219
	%223 = load %"runtime::Type"*, %"runtime::Type"** %222
	%224 = call i1 (%"runtime::Type"*, %"runtime::Type"*) @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %216, %"runtime::Type"* %223)
	store i1 %224, i1* %tmp.8
	%225 = load i1, i1* %tmp.8
	%226 = xor i1 %225, true
	br i1 %226, label %227, label %229
227:
	ret i1 false
228:
	br label %229
229:
	br label %230
230:
	%231 = add i32 %207, 1
	store i32 %231, i32* %i.14
	br label %206
232:
	br label %233
233:
	%234 = load %"runtime::Type"*, %"runtime::Type"** %a.0
	%235 = getelementptr %"runtime::Type", %"runtime::Type"* %234, i32 0, i32 1
	%236 = load {i64, i8*}, {i64, i8*}* %235
	%237 = load %"runtime::Type"*, %"runtime::Type"** %b.0
	%238 = getelementptr %"runtime::Type", %"runtime::Type"* %237, i32 0, i32 1
	%239 = load {i64, i8*}, {i64, i8*}* %238
	%240 = extractvalue {i64, i8*} %236, 1
	%241 = extractvalue {i64, i8*} %239, 1
	%242 = call i32 @"strcmp"(i8* %240, i8* %241)
	%243 = icmp eq i32 %242, 0
	ret i1 %243
244:
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
