declare void @free(i8*)
declare i32 @system(i8*)
@stdin = external global %struct._IO_FILE*
%struct._IO_FILE = type {i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8]}
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
@stdout = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
declare i32 @fclose(%struct._IO_FILE*)
declare %struct._IO_FILE* @fopen(i8*, i8*)
declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)
declare i32 @strcmp(i8*, i8*)
declare void @__assert_fail(i8*, i8*, i32, i8*)
