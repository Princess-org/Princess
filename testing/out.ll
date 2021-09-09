; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"a::Point" = type { i32, i32 }
%"b::Rectangle" = type { %"a::Point", i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"b::T" = type { %"a::Point"* }

@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@"main::pos" = global %"a::Point" zeroinitializer
@"main::d" = global i32 0
@"main::rectangle" = global %"b::Rectangle" zeroinitializer
@"a::some_value" = global i32 0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @starts_with(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #4
  %9 = call i32 @strncmp(i8* %5, i8* %6, i64 %8) #4
  %10 = icmp eq i32 %9, 0
  ret i1 %10
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @concat(i8* %0, i8* %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) #4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 %8
  store i8* %10, i8** %3, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %16 = call i32 @vsprintf(i8* %13, i8* %14, %struct.__va_list_tag* %15) #5
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @absolute_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @realpath(i8* %8, i8* %9) #5
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realpath(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @executable_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @readlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %4, i64 4096) #5
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @readlink(i8*, i8*, i64) #3

define i32 @main(i32 %argc, i8** %argv) {
  %size = zext i32 %argc to i64
  %size.1 = mul i64 %size, 16
  %args = call i8* @malloc(i64 %size.1)
  %args.1 = bitcast i8* %args to { i64, i8* }*
  %args.2 = insertvalue { i64, { i64, i8* }* } undef, i64 %size, 0
  %args.3 = insertvalue { i64, { i64, i8* }* } %args.2, { i64, i8* }* %args.1, 1
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %loop

loop:                                             ; preds = %inner, %0
  %i.1 = load i32, i32* %i, align 4
  %cond = icmp eq i32 %argc, %i.1
  br i1 %cond, label %end, label %inner

inner:                                            ; preds = %loop
  %arg = getelementptr i8*, i8** %argv, i32 %i.1
  %arg.1 = load i8*, i8** %arg, align 8
  %arg.2 = getelementptr { i64, i8* }, { i64, i8* }* %args.1, i32 %i.1
  %arglen = call i64 @strlen(i8* %arg.1)
  %arglen.1 = add i64 %arglen, 1
  %arg.3 = insertvalue { i64, i8* } undef, i64 %arglen.1, 0
  %arg.4 = insertvalue { i64, i8* } %arg.3, i8* %arg.1, 1
  store { i64, i8* } %arg.4, { i64, i8* }* %arg.2, align 8
  %i.2 = add i32 %i.1, 1
  store i32 %i.2, i32* %i, align 4
  br label %loop

end:                                              ; preds = %loop
  call void @"_F10main::main__AAi8"({ i64, { i64, i8* }* } %args.3)
  call void @free(i8* %args)
  ret i32 0
}

declare i8* @malloc(i64)

define void @"_F10main::main__AAi8"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  store %"a::Point" { i32 10, i32 20 }, %"a::Point"* @"main::pos", align 4
  %0 = load %"a::Point", %"a::Point"* @"main::pos", align 4
  %1 = insertvalue %"b::Rectangle" { %"a::Point" undef, i32 10, i32 20 }, %"a::Point" %0, 0
  store %"b::Rectangle" %1, %"b::Rectangle"* @"main::rectangle", align 4
  call void @"_F10main::test__"()
  call void @"_F11main::test2__"()
  %2 = load i32, i32* @"a::some_value", align 4
  store i32 %2, i32* @"main::d", align 4
  %3 = alloca i32, align 4
  %4 = call i32 @"_F6a::add__i32i32"(i32 1, i32 1)
  store i32 %4, i32* %3, align 4
  %5 = alloca double, align 8
  %6 = call double @"_F6a::add__f64f64"(double 1.500000e+00, double 1.500000e+00)
  store double %6, double* %5, align 8
  ret void
}

declare void @free(i8*)

define void @"_F10main::test__"() {
start:
  %point.0 = alloca %"a::Point", align 8
  store %"a::Point" { i32 10, i32 20 }, %"a::Point"* %point.0, align 4
  ret void
}

define void @"_F11main::test2__"() {
start:
  %0 = alloca double, align 8
  %1 = call double @"_F14main::function__i32f64"(i32 1, double 1.500000e+00)
  store double %1, double* %0, align 8
  %2 = alloca double, align 8
  %3 = call double @"_F14main::function__f64i32"(double 1.500000e+00, i32 1)
  store double %3, double* %2, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @"_F14main::function__"()
  store i32 %5, i32* %4, align 4
  ret void
}

define double @"_F14main::function__i32f64"(i32 %a.0.value, double %b.0.value) {
start:
  %a.0 = alloca i32, align 4
  store i32 %a.0.value, i32* %a.0, align 4
  %b.0 = alloca double, align 8
  store double %b.0.value, double* %b.0, align 8
  %0 = load i32, i32* %a.0, align 4
  %1 = sitofp i32 %0 to double
  %2 = load double, double* %b.0, align 8
  %3 = fmul double %1, %2
  ret double %3
}

define double @"_F14main::function__f64i32"(double %b.0.value, i32 %a.0.value) {
start:
  %b.0 = alloca double, align 8
  store double %b.0.value, double* %b.0, align 8
  %a.0 = alloca i32, align 4
  store i32 %a.0.value, i32* %a.0, align 4
  %0 = load i32, i32* %a.0, align 4
  %1 = sitofp i32 %0 to double
  %2 = load double, double* %b.0, align 8
  %3 = fmul double %1, %2
  ret double %3
}

define i32 @"_F14main::function__"() {
start:
  ret i32 10
}

define void @"_F10cstd::main__AAi8"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  ret void
}

define void @"_F16a::some_function__"() {
start:
  %t.0 = alloca %"b::T", align 8
  %p.0 = alloca %"a::Point"*, align 8
  %0 = getelementptr %"b::T", %"b::T"* %t.0, i32 0, i32 0
  %1 = load %"a::Point"*, %"a::Point"** %0, align 8
  store %"a::Point"* %1, %"a::Point"** %p.0, align 8
  ret void
}

define i32 @"_F6a::add__i32i32"(i32 %a.0.value, i32 %b.0.value) {
start:
  %a.0 = alloca i32, align 4
  store i32 %a.0.value, i32* %a.0, align 4
  %b.0 = alloca i32, align 4
  store i32 %b.0.value, i32* %b.0, align 4
  %0 = load i32, i32* %a.0, align 4
  %1 = load i32, i32* %b.0, align 4
  %2 = add i32 %0, %1
  ret i32 %2
}

define void @"_F7a::main__AAi8"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  store i32 20, i32* @"a::some_value", align 4
  call void @"_F16a::some_function__"()
  ret void
}

define double @"_F6a::add__f64f64"(double %a.0.value, double %b.0.value) {
start:
  %a.0 = alloca double, align 8
  store double %a.0.value, double* %a.0, align 8
  %b.0 = alloca double, align 8
  store double %b.0.value, double* %b.0, align 8
  %0 = load double, double* %a.0, align 8
  %1 = load double, double* %b.0, align 8
  %2 = fadd double %0, %1
  ret double %2
}

define void @"_F7b::main__AAi8"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  ret void
}

define void @"_F9std::main__AAi8"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 12.0.1-++20210630032618+fed41342a82f-1~exp1~20210630133332.127"}
!1 = !{i32 1, !"wchar_size", i32 4}
