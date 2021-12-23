; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"runtime::Type" = type { i32, { i64, i8* }, i1, i64, %"runtime::Type"*, i64, i64, { i64, %"runtime::Field"* }, { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }, { i64, %"runtime::EnumValue"* } }
%"runtime::Field" = type { { i64, i8* }, i64, %"runtime::Type"* }
%"runtime::EnumValue" = type { { i64, i8* }, i64 }
%"map::Map" = type { i64, { i64, %"map::Entry"** } }
%"map::Entry" = type { { i64, i8* }, i8*, %"map::Entry"* }
%"cstd::s__IO_FILE" = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"cstd::s__IO_marker"*, %"cstd::s__IO_FILE"*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %"cstd::s__IO_codecvt"*, %"cstd::s__IO_wide_data"*, %"cstd::s__IO_FILE"*, i8*, i64, i32, [20 x i8] }
%"cstd::s__IO_marker" = type opaque
%"cstd::s__IO_codecvt" = type opaque
%"cstd::s__IO_wide_data" = type opaque
%"ffi::ffi_type" = type { i64, i16, i16, %"ffi::ffi_type"** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%"runtime::Ref" = type { i64*, i8*, %"runtime::Type"* }
%"preload::FfiFunction" = type { { i64, i8* }, void ()*, i1, %"ffi::ffi_cif" }
%"ffi::ffi_cif" = type { i32, i32, %"ffi::ffi_type"**, %"ffi::ffi_type"*, i32, i32 }
%"preload::FfiGlobal" = type { { i64, i8* }, i8* }
%"ffi::ffi_raw" = type { [8 x i8] }
%"ffi::ffi_closure" = type { [24 x i8], %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8* }
%"ffi::ffi_raw_closure" = type { [24 x i8], %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8* }
%"ffi::ffi_go_closure" = type { i8*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)* }
%"cstd::div_t" = type { i32, i32 }
%"cstd::ldiv_t" = type { i64, i64 }
%"cstd::__fpos_t" = type { i64, %"cstd::__mbstate_t" }
%"cstd::__mbstate_t" = type { i32, %"ffi::ffi_raw" }
%"cstd::s___locale_struct" = type { [13 x %"cstd::s___locale_data"*], i16*, i32*, i32*, [13 x i8*] }
%"cstd::s___locale_data" = type opaque
%"cstd::s_tm" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%"cstd::sigevent_t" = type { %"ffi::ffi_raw", i32, i32, %"ffi::ffi_raw" }
%"cstd::s_itimerspec" = type { %"cstd::ldiv_t", %"cstd::ldiv_t" }
%"cstd::s_lconv" = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"cstd::s___jmp_buf_tag" = type { [8 x i64], i32, %"cstd::__sigset_t" }
%"cstd::__sigset_t" = type { [16 x i64] }
%"linux::s_stat" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %"cstd::ldiv_t", %"cstd::ldiv_t", %"cstd::ldiv_t", [3 x i64] }
%"linux::siginfo_t" = type { i32, i32, i32, i32, %"<anonymous>.1" }
%"<anonymous>.1" = type { [112 x i8] }
%"linux::s_sigaction" = type { %"<anonymous>.1", %"cstd::__sigset_t", i32, void ()* }
%"linux::stack_t" = type { i8*, i32, i64 }
%"linux::s_rusage" = type opaque
%"linux::s_termios" = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%"linux::s_random_data" = type { i32*, i32*, i32*, i32, i32, i32, i32* }
%"linux::s_drand48_data" = type { [3 x i16], [3 x i16], i16, i16, i64 }

@"main::e" = global i1 false
@"main::str.0" = private global [4 x i8] c"BAZ\00"
@"main::str.1" = private global [4 x i8] c"BAR\00"
@"main::str.2" = private global [4 x i8] c"FOO\00"
@"main::str.3" = private global [10 x i8] c"INVALID!!\00"
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
@"type::uint16" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 7, i8* undef }, i1 true, i64 undef, %"runtime::Type"* undef, i64 2, i64 2, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::*" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 2, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::ffi::ffi_type" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 14, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, { i64, %"runtime::Field"* } { i64 4, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::**ffi::ffi_type" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 16, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::uint64" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 7, i8* undef }, i1 true, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::preload::FfiFunction" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 21, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 64, i64 8, { i64, %"runtime::Field"* } { i64 4, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::ffi::ffi_cif" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 13, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 32, i64 8, { i64, %"runtime::Field"* } { i64 6, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::preload::FfiGlobal" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 19, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, { i64, %"runtime::Field"* } { i64 2, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::bool" = global %"runtime::Type" { i32 0, { i64, i8* } { i64 5, i8* undef }, i1 true, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::() -> ()" = global %"runtime::Type" { i32 9, { i64, i8* } { i64 9, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::*int8" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 6, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::int16" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 6, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 2, i64 2, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::map::Entry" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 11, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 32, i64 8, { i64, %"runtime::Field"* } { i64 3, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::[*map::Entry]" = global %"runtime::Type" { i32 5, { i64, i8* } { i64 14, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 16, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::float64" = global %"runtime::Type" { i32 2, { i64, i8* } { i64 8, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::uint32" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 7, i8* undef }, i1 true, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::ffi::ffi_abi" = global %"runtime::Type" { i32 10, { i64, i8* } { i64 13, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } { i64 7, %"runtime::EnumValue"* undef } }
@"type::int64" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 6, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::*ffi::ffi_type" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 15, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::[int8]" = global %"runtime::Type" { i32 5, { i64, i8* } { i64 7, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 16, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::float32" = global %"runtime::Type" { i32 2, { i64, i8* } { i64 8, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::map::Map" = global %"runtime::Type" { i32 3, { i64, i8* } { i64 9, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 24, i64 8, { i64, %"runtime::Field"* } { i64 2, %"runtime::Field"* undef }, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::int8" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 5, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::int32" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 6, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 4, i64 4, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::*() -> ()" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 10, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::uint8" = global %"runtime::Type" { i32 1, { i64, i8* } { i64 6, i8* undef }, i1 true, i64 undef, %"runtime::Type"* undef, i64 1, i64 1, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::*map::Entry" = global %"runtime::Type" { i32 7, { i64, i8* } { i64 12, i8* undef }, i1 false, i64 undef, %"runtime::Type"* undef, i64 8, i64 8, { i64, %"runtime::Field"* } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::Type"** } undef, { i64, %"runtime::EnumValue"* } undef }
@"type::str.0" = private global [9 x i8] c"map::Map\00"
@"type::str.2" = private global [5 x i8] c"size\00"
@"type::str.3" = private global [7 x i8] c"uint64\00"
@"type::fields.1" = private global [2 x %"runtime::Field"] zeroinitializer
@"type::str.4" = private global [8 x i8] c"entries\00"
@"type::str.5" = private global [14 x i8] c"[*map::Entry]\00"
@"type::str.6" = private global [12 x i8] c"*map::Entry\00"
@"type::str.7" = private global [11 x i8] c"map::Entry\00"
@"type::str.9" = private global [4 x i8] c"key\00"
@"type::str.10" = private global [7 x i8] c"[int8]\00"
@"type::str.11" = private global [5 x i8] c"int8\00"
@"type::fields.8" = private global [3 x %"runtime::Field"] zeroinitializer
@"type::str.12" = private global [6 x i8] c"value\00"
@"type::str.13" = private global [2 x i8] c"*\00"
@"type::str.14" = private global [5 x i8] c"next\00"
@"type::str.15" = private global [21 x i8] c"preload::FfiFunction\00"
@"type::str.17" = private global [5 x i8] c"name\00"
@"type::fields.16" = private global [4 x %"runtime::Field"] zeroinitializer
@"type::str.18" = private global [4 x i8] c"ptr\00"
@"type::str.19" = private global [10 x i8] c"*() -> ()\00"
@"type::str.20" = private global [9 x i8] c"() -> ()\00"
@"type::str.21" = private global [12 x i8] c"initialized\00"
@"type::str.22" = private global [5 x i8] c"bool\00"
@"type::str.23" = private global [8 x i8] c"ffi_cif\00"
@"type::str.24" = private global [13 x i8] c"ffi::ffi_cif\00"
@"type::str.26" = private global [4 x i8] c"abi\00"
@"type::str.27" = private global [13 x i8] c"ffi::ffi_abi\00"
@"type::str.28" = private global [6 x i8] c"int32\00"
@"type::str.30" = private global [11 x i8] c"FFI_UNIX64\00"
@"type::values.29" = private global [7 x %"runtime::EnumValue"] zeroinitializer
@"type::str.31" = private global [11 x i8] c"FFI_GNUW64\00"
@"type::str.32" = private global [10 x i8] c"FFI_EFI64\00"
@"type::str.33" = private global [14 x i8] c"FFI_FIRST_ABI\00"
@"type::str.34" = private global [13 x i8] c"FFI_LAST_ABI\00"
@"type::str.35" = private global [10 x i8] c"FFI_WIN64\00"
@"type::str.36" = private global [16 x i8] c"FFI_DEFAULT_ABI\00"
@"type::fields.25" = private global [6 x %"runtime::Field"] zeroinitializer
@"type::str.37" = private global [6 x i8] c"nargs\00"
@"type::str.38" = private global [7 x i8] c"uint32\00"
@"type::str.39" = private global [10 x i8] c"arg_types\00"
@"type::str.40" = private global [16 x i8] c"**ffi::ffi_type\00"
@"type::str.41" = private global [15 x i8] c"*ffi::ffi_type\00"
@"type::str.42" = private global [14 x i8] c"ffi::ffi_type\00"
@"type::str.44" = private global [5 x i8] c"size\00"
@"type::fields.43" = private global [4 x %"runtime::Field"] zeroinitializer
@"type::str.45" = private global [10 x i8] c"alignment\00"
@"type::str.46" = private global [7 x i8] c"uint16\00"
@"type::str.47" = private global [6 x i8] c"type_\00"
@"type::str.48" = private global [9 x i8] c"elements\00"
@"type::str.49" = private global [6 x i8] c"rtype\00"
@"type::str.50" = private global [6 x i8] c"bytes\00"
@"type::str.51" = private global [6 x i8] c"flags\00"
@"type::str.52" = private global [19 x i8] c"preload::FfiGlobal\00"
@"type::str.54" = private global [5 x i8] c"name\00"
@"type::fields.53" = private global [2 x %"runtime::Field"] zeroinitializer
@"type::str.55" = private global [4 x i8] c"ptr\00"
@"type::str.56" = private global [6 x i8] c"*int8\00"
@"type::str.57" = private global [6 x i8] c"uint8\00"
@"type::str.58" = private global [6 x i8] c"int16\00"
@"type::str.59" = private global [6 x i8] c"int64\00"
@"type::str.60" = private global [8 x i8] c"float64\00"
@"type::str.61" = private global [8 x i8] c"float32\00"
@"preload::FFI_GLOBALS" = global %"map::Map"* null
@"preload::FFI_FUNCTIONS" = global %"map::Map"* null
@"preload::str.0" = private global [29 x i8] c"def_names.size == defs.size\00\00"
@stderr = external global %"cstd::s__IO_FILE"*
@"preload::str.1" = private global [32 x i8] c"%s:%d:%s: Assertion %s failed!\0A\00"
@"preload::str.2" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.3" = private global [9 x i8] c"load_ffi\00"
@"preload::str.4" = private global [29 x i8] c"var_names.size == vars.size\00\00"
@"preload::str.5" = private global [32 x i8] c"%s:%d:%s: Assertion %s failed!\0A\00"
@"preload::str.6" = private global [80 x i8] c"/mnt/B0823A62823A2CEA/Documents/Programming/Princess/bin//../include/preload.pr\00"
@"preload::str.7" = private global [9 x i8] c"load_ffi\00"
@"ffi::__VARS" = global [16 x i8*] zeroinitializer
@"ffi::FFI_BAD_TYPEDEF" = global i32 1
@"ffi::__DEF_NAMES" = global [22 x { i64, i8* }] zeroinitializer
@"ffi::__VAR_NAMES" = global [16 x { i64, i8* }] zeroinitializer
@"ffi::FFI_OK" = global i32 0
@"ffi::__DEFS" = global [22 x void ()*] zeroinitializer
@"ffi::FFI_BAD_ABI" = global i32 2
@"ffi::str.0" = private global [11 x i8] c"FFI_UNIX64\00"
@"ffi::str.1" = private global [11 x i8] c"FFI_GNUW64\00"
@"ffi::str.2" = private global [10 x i8] c"FFI_EFI64\00"
@"ffi::str.3" = private global [14 x i8] c"FFI_FIRST_ABI\00"
@"ffi::str.4" = private global [13 x i8] c"FFI_LAST_ABI\00"
@"ffi::str.5" = private global [10 x i8] c"INVALID!!\00"
@"ffi::str.6" = private global [12 x i8] c"FFI_BAD_ABI\00"
@"ffi::str.7" = private global [16 x i8] c"FFI_BAD_TYPEDEF\00"
@"ffi::str.8" = private global [7 x i8] c"FFI_OK\00"
@"ffi::str.9" = private global [10 x i8] c"INVALID!!\00"
@"ffi::str.10" = private global [13 x i8] c"ffi_raw_call\00"
@"ffi::str.11" = private global [20 x i8] c"ffi_ptrarray_to_raw\00"
@"ffi::str.12" = private global [20 x i8] c"ffi_raw_to_ptrarray\00"
@"ffi::str.13" = private global [13 x i8] c"ffi_raw_size\00"
@"ffi::str.14" = private global [18 x i8] c"ffi_java_raw_call\00"
@"ffi::str.15" = private global [25 x i8] c"ffi_java_ptrarray_to_raw\00"
@"ffi::str.16" = private global [25 x i8] c"ffi_java_raw_to_ptrarray\00"
@"ffi::str.17" = private global [18 x i8] c"ffi_java_raw_size\00"
@"ffi::str.18" = private global [18 x i8] c"ffi_closure_alloc\00"
@"ffi::str.19" = private global [17 x i8] c"ffi_closure_free\00"
@"ffi::str.20" = private global [17 x i8] c"ffi_prep_closure\00"
@"ffi::str.21" = private global [21 x i8] c"ffi_prep_closure_loc\00"
@"ffi::str.22" = private global [21 x i8] c"ffi_prep_raw_closure\00"
@"ffi::str.23" = private global [25 x i8] c"ffi_prep_raw_closure_loc\00"
@"ffi::str.24" = private global [26 x i8] c"ffi_prep_java_raw_closure\00"
@"ffi::str.25" = private global [30 x i8] c"ffi_prep_java_raw_closure_loc\00"
@"ffi::str.26" = private global [20 x i8] c"ffi_prep_go_closure\00"
@"ffi::str.27" = private global [12 x i8] c"ffi_call_go\00"
@"ffi::str.28" = private global [13 x i8] c"ffi_prep_cif\00"
@"ffi::str.29" = private global [17 x i8] c"ffi_prep_cif_var\00"
@"ffi::str.30" = private global [9 x i8] c"ffi_call\00"
@"ffi::str.31" = private global [23 x i8] c"ffi_get_struct_offsets\00"
@"ffi::str.32" = private global [14 x i8] c"ffi_type_void\00"
@ffi_type_void = external global %"ffi::ffi_type"
@"ffi::str.33" = private global [15 x i8] c"ffi_type_uint8\00"
@ffi_type_uint8 = external global %"ffi::ffi_type"
@"ffi::str.34" = private global [15 x i8] c"ffi_type_sint8\00"
@ffi_type_sint8 = external global %"ffi::ffi_type"
@"ffi::str.35" = private global [16 x i8] c"ffi_type_uint16\00"
@ffi_type_uint16 = external global %"ffi::ffi_type"
@"ffi::str.36" = private global [16 x i8] c"ffi_type_sint16\00"
@ffi_type_sint16 = external global %"ffi::ffi_type"
@"ffi::str.37" = private global [16 x i8] c"ffi_type_uint32\00"
@ffi_type_uint32 = external global %"ffi::ffi_type"
@"ffi::str.38" = private global [16 x i8] c"ffi_type_sint32\00"
@ffi_type_sint32 = external global %"ffi::ffi_type"
@"ffi::str.39" = private global [16 x i8] c"ffi_type_uint64\00"
@ffi_type_uint64 = external global %"ffi::ffi_type"
@"ffi::str.40" = private global [16 x i8] c"ffi_type_sint64\00"
@ffi_type_sint64 = external global %"ffi::ffi_type"
@"ffi::str.41" = private global [15 x i8] c"ffi_type_float\00"
@ffi_type_float = external global %"ffi::ffi_type"
@"ffi::str.42" = private global [16 x i8] c"ffi_type_double\00"
@ffi_type_double = external global %"ffi::ffi_type"
@"ffi::str.43" = private global [17 x i8] c"ffi_type_pointer\00"
@ffi_type_pointer = external global %"ffi::ffi_type"
@"ffi::str.44" = private global [20 x i8] c"ffi_type_longdouble\00"
@ffi_type_longdouble = external global %"ffi::ffi_type"
@"ffi::str.45" = private global [23 x i8] c"ffi_type_complex_float\00"
@ffi_type_complex_float = external global %"ffi::ffi_type"
@"ffi::str.46" = private global [24 x i8] c"ffi_type_complex_double\00"
@ffi_type_complex_double = external global %"ffi::ffi_type"
@"ffi::str.47" = private global [28 x i8] c"ffi_type_complex_longdouble\00"
@ffi_type_complex_longdouble = external global %"ffi::ffi_type"
@"map::sentinel" = global i8* null
@"map::INITIAL_SIZE" = global i32 16
@"cstd::FP_SUBNORMAL" = global i32 3
@"cstd::_ISprint" = global i32 16384
@"cstd::__DEFS" = global [478 x void ()*] zeroinitializer
@"cstd::_ISlower" = global i32 512
@"cstd::__VAR_NAMES" = global [10 x { i64, i8* }] zeroinitializer
@"cstd::FP_NORMAL" = global i32 4
@"cstd::_ISalnum" = global i32 8
@"cstd::__VARS" = global [10 x i8*] zeroinitializer
@"cstd::_ISxdigit" = global i32 4096
@"cstd::FP_ZERO" = global i32 2
@"cstd::_ISupper" = global i32 256
@"cstd::FP_INFINITE" = global i32 1
@"cstd::_ISspace" = global i32 8192
@"cstd::_ISdigit" = global i32 2048
@"cstd::_ISpunct" = global i32 4
@"cstd::_ISgraph" = global i32 32768
@"cstd::_ISblank" = global i32 1
@"cstd::_ISalpha" = global i32 1024
@"cstd::_IScntrl" = global i32 2
@"cstd::__DEF_NAMES" = global [478 x { i64, i8* }] zeroinitializer
@"cstd::FP_NAN" = global i32 0
@"cstd::str.4" = private global [5 x i8] c"atof\00"
@"cstd::str.5" = private global [5 x i8] c"atoi\00"
@"cstd::str.6" = private global [5 x i8] c"atol\00"
@"cstd::str.7" = private global [7 x i8] c"strtod\00"
@"cstd::str.8" = private global [7 x i8] c"strtol\00"
@"cstd::str.9" = private global [8 x i8] c"strtoul\00"
@"cstd::str.10" = private global [5 x i8] c"rand\00"
@"cstd::str.11" = private global [6 x i8] c"srand\00"
@"cstd::str.12" = private global [7 x i8] c"malloc\00"
@"cstd::str.13" = private global [7 x i8] c"calloc\00"
@"cstd::str.14" = private global [8 x i8] c"realloc\00"
@"cstd::str.15" = private global [5 x i8] c"free\00"
@"cstd::str.16" = private global [6 x i8] c"abort\00"
@"cstd::str.17" = private global [7 x i8] c"atexit\00"
@"cstd::str.18" = private global [5 x i8] c"exit\00"
@"cstd::str.19" = private global [7 x i8] c"getenv\00"
@"cstd::str.20" = private global [7 x i8] c"system\00"
@"cstd::str.21" = private global [8 x i8] c"bsearch\00"
@"cstd::str.22" = private global [6 x i8] c"qsort\00"
@"cstd::str.23" = private global [4 x i8] c"abs\00"
@"cstd::str.24" = private global [5 x i8] c"labs\00"
@"cstd::str.25" = private global [4 x i8] c"div\00"
@"cstd::str.26" = private global [5 x i8] c"ldiv\00"
@"cstd::str.27" = private global [6 x i8] c"mblen\00"
@"cstd::str.28" = private global [7 x i8] c"mbtowc\00"
@"cstd::str.29" = private global [7 x i8] c"wctomb\00"
@"cstd::str.30" = private global [9 x i8] c"mbstowcs\00"
@"cstd::str.31" = private global [9 x i8] c"wcstombs\00"
@"cstd::str.32" = private global [7 x i8] c"remove\00"
@"cstd::str.33" = private global [7 x i8] c"rename\00"
@"cstd::str.34" = private global [9 x i8] c"renameat\00"
@"cstd::str.35" = private global [8 x i8] c"tmpfile\00"
@"cstd::str.36" = private global [7 x i8] c"fclose\00"
@"cstd::str.37" = private global [7 x i8] c"fflush\00"
@"cstd::str.38" = private global [16 x i8] c"fflush_unlocked\00"
@"cstd::str.39" = private global [6 x i8] c"fopen\00"
@"cstd::str.40" = private global [8 x i8] c"freopen\00"
@"cstd::str.41" = private global [7 x i8] c"fdopen\00"
@"cstd::str.42" = private global [9 x i8] c"fmemopen\00"
@"cstd::str.43" = private global [15 x i8] c"open_memstream\00"
@"cstd::str.44" = private global [7 x i8] c"setbuf\00"
@"cstd::str.45" = private global [8 x i8] c"setvbuf\00"
@"cstd::str.46" = private global [10 x i8] c"setbuffer\00"
@"cstd::str.47" = private global [11 x i8] c"setlinebuf\00"
@"cstd::str.48" = private global [8 x i8] c"fprintf\00"
@"cstd::str.49" = private global [7 x i8] c"printf\00"
@"cstd::str.50" = private global [8 x i8] c"sprintf\00"
@"cstd::str.51" = private global [9 x i8] c"vfprintf\00"
@"cstd::str.52" = private global [8 x i8] c"vprintf\00"
@"cstd::str.53" = private global [9 x i8] c"vsprintf\00"
@"cstd::str.54" = private global [9 x i8] c"snprintf\00"
@"cstd::str.55" = private global [10 x i8] c"vsnprintf\00"
@"cstd::str.56" = private global [9 x i8] c"vdprintf\00"
@"cstd::str.57" = private global [8 x i8] c"dprintf\00"
@"cstd::str.58" = private global [7 x i8] c"fscanf\00"
@"cstd::str.59" = private global [6 x i8] c"scanf\00"
@"cstd::str.60" = private global [7 x i8] c"sscanf\00"
@"cstd::str.61" = private global [8 x i8] c"vfscanf\00"
@"cstd::str.62" = private global [7 x i8] c"vscanf\00"
@"cstd::str.63" = private global [8 x i8] c"vsscanf\00"
@"cstd::str.64" = private global [6 x i8] c"fgetc\00"
@"cstd::str.65" = private global [5 x i8] c"getc\00"
@"cstd::str.66" = private global [8 x i8] c"getchar\00"
@"cstd::str.67" = private global [14 x i8] c"getc_unlocked\00"
@"cstd::str.68" = private global [17 x i8] c"getchar_unlocked\00"
@"cstd::str.69" = private global [15 x i8] c"fgetc_unlocked\00"
@"cstd::str.70" = private global [6 x i8] c"fputc\00"
@"cstd::str.71" = private global [5 x i8] c"putc\00"
@"cstd::str.72" = private global [8 x i8] c"putchar\00"
@"cstd::str.73" = private global [15 x i8] c"fputc_unlocked\00"
@"cstd::str.74" = private global [14 x i8] c"putc_unlocked\00"
@"cstd::str.75" = private global [17 x i8] c"putchar_unlocked\00"
@"cstd::str.76" = private global [5 x i8] c"getw\00"
@"cstd::str.77" = private global [5 x i8] c"putw\00"
@"cstd::str.78" = private global [6 x i8] c"fgets\00"
@"cstd::str.79" = private global [11 x i8] c"__getdelim\00"
@"cstd::str.80" = private global [9 x i8] c"getdelim\00"
@"cstd::str.81" = private global [8 x i8] c"getline\00"
@"cstd::str.82" = private global [6 x i8] c"fputs\00"
@"cstd::str.83" = private global [5 x i8] c"puts\00"
@"cstd::str.84" = private global [7 x i8] c"ungetc\00"
@"cstd::str.85" = private global [6 x i8] c"fread\00"
@"cstd::str.86" = private global [7 x i8] c"fwrite\00"
@"cstd::str.87" = private global [15 x i8] c"fread_unlocked\00"
@"cstd::str.88" = private global [16 x i8] c"fwrite_unlocked\00"
@"cstd::str.89" = private global [6 x i8] c"fseek\00"
@"cstd::str.90" = private global [6 x i8] c"ftell\00"
@"cstd::str.91" = private global [7 x i8] c"rewind\00"
@"cstd::str.92" = private global [7 x i8] c"fseeko\00"
@"cstd::str.93" = private global [7 x i8] c"ftello\00"
@"cstd::str.94" = private global [8 x i8] c"fgetpos\00"
@"cstd::str.95" = private global [8 x i8] c"fsetpos\00"
@"cstd::str.96" = private global [9 x i8] c"clearerr\00"
@"cstd::str.97" = private global [5 x i8] c"feof\00"
@"cstd::str.98" = private global [7 x i8] c"ferror\00"
@"cstd::str.99" = private global [18 x i8] c"clearerr_unlocked\00"
@"cstd::str.100" = private global [14 x i8] c"feof_unlocked\00"
@"cstd::str.101" = private global [16 x i8] c"ferror_unlocked\00"
@"cstd::str.102" = private global [7 x i8] c"perror\00"
@"cstd::str.103" = private global [7 x i8] c"fileno\00"
@"cstd::str.104" = private global [16 x i8] c"fileno_unlocked\00"
@"cstd::str.105" = private global [6 x i8] c"popen\00"
@"cstd::str.106" = private global [7 x i8] c"pclose\00"
@"cstd::str.107" = private global [8 x i8] c"ctermid\00"
@"cstd::str.108" = private global [10 x i8] c"flockfile\00"
@"cstd::str.109" = private global [13 x i8] c"ftrylockfile\00"
@"cstd::str.110" = private global [12 x i8] c"funlockfile\00"
@"cstd::str.111" = private global [8 x i8] c"__uflow\00"
@"cstd::str.112" = private global [11 x i8] c"__overflow\00"
@"cstd::str.113" = private global [7 x i8] c"memcpy\00"
@"cstd::str.114" = private global [8 x i8] c"memmove\00"
@"cstd::str.115" = private global [8 x i8] c"memccpy\00"
@"cstd::str.116" = private global [7 x i8] c"memset\00"
@"cstd::str.117" = private global [7 x i8] c"memcmp\00"
@"cstd::str.118" = private global [7 x i8] c"memchr\00"
@"cstd::str.119" = private global [7 x i8] c"strcpy\00"
@"cstd::str.120" = private global [8 x i8] c"strncpy\00"
@"cstd::str.121" = private global [7 x i8] c"strcat\00"
@"cstd::str.122" = private global [8 x i8] c"strncat\00"
@"cstd::str.123" = private global [7 x i8] c"strcmp\00"
@"cstd::str.124" = private global [8 x i8] c"strncmp\00"
@"cstd::str.125" = private global [8 x i8] c"strcoll\00"
@"cstd::str.126" = private global [8 x i8] c"strxfrm\00"
@"cstd::str.127" = private global [10 x i8] c"strcoll_l\00"
@"cstd::str.128" = private global [10 x i8] c"strxfrm_l\00"
@"cstd::str.129" = private global [7 x i8] c"strdup\00"
@"cstd::str.130" = private global [8 x i8] c"strndup\00"
@"cstd::str.131" = private global [7 x i8] c"strchr\00"
@"cstd::str.132" = private global [8 x i8] c"strrchr\00"
@"cstd::str.133" = private global [8 x i8] c"strcspn\00"
@"cstd::str.134" = private global [7 x i8] c"strspn\00"
@"cstd::str.135" = private global [8 x i8] c"strpbrk\00"
@"cstd::str.136" = private global [7 x i8] c"strstr\00"
@"cstd::str.137" = private global [7 x i8] c"strtok\00"
@"cstd::str.138" = private global [11 x i8] c"__strtok_r\00"
@"cstd::str.139" = private global [9 x i8] c"strtok_r\00"
@"cstd::str.140" = private global [7 x i8] c"strlen\00"
@"cstd::str.141" = private global [8 x i8] c"strnlen\00"
@"cstd::str.142" = private global [9 x i8] c"strerror\00"
@"cstd::str.143" = private global [11 x i8] c"strerror_r\00"
@"cstd::str.144" = private global [11 x i8] c"strerror_l\00"
@"cstd::str.145" = private global [5 x i8] c"bcmp\00"
@"cstd::str.146" = private global [6 x i8] c"bcopy\00"
@"cstd::str.147" = private global [6 x i8] c"bzero\00"
@"cstd::str.148" = private global [6 x i8] c"index\00"
@"cstd::str.149" = private global [7 x i8] c"rindex\00"
@"cstd::str.150" = private global [4 x i8] c"ffs\00"
@"cstd::str.151" = private global [5 x i8] c"ffsl\00"
@"cstd::str.152" = private global [6 x i8] c"ffsll\00"
@"cstd::str.153" = private global [11 x i8] c"strcasecmp\00"
@"cstd::str.154" = private global [12 x i8] c"strncasecmp\00"
@"cstd::str.155" = private global [13 x i8] c"strcasecmp_l\00"
@"cstd::str.156" = private global [14 x i8] c"strncasecmp_l\00"
@"cstd::str.157" = private global [15 x i8] c"explicit_bzero\00"
@"cstd::str.158" = private global [7 x i8] c"strsep\00"
@"cstd::str.159" = private global [10 x i8] c"strsignal\00"
@"cstd::str.160" = private global [9 x i8] c"__stpcpy\00"
@"cstd::str.161" = private global [7 x i8] c"stpcpy\00"
@"cstd::str.162" = private global [10 x i8] c"__stpncpy\00"
@"cstd::str.163" = private global [8 x i8] c"stpncpy\00"
@"cstd::str.164" = private global [6 x i8] c"clock\00"
@"cstd::str.165" = private global [5 x i8] c"time\00"
@"cstd::str.166" = private global [9 x i8] c"difftime\00"
@"cstd::str.167" = private global [7 x i8] c"mktime\00"
@"cstd::str.168" = private global [9 x i8] c"strftime\00"
@"cstd::str.169" = private global [11 x i8] c"strftime_l\00"
@"cstd::str.170" = private global [7 x i8] c"gmtime\00"
@"cstd::str.171" = private global [10 x i8] c"localtime\00"
@"cstd::str.172" = private global [9 x i8] c"gmtime_r\00"
@"cstd::str.173" = private global [12 x i8] c"localtime_r\00"
@"cstd::str.174" = private global [8 x i8] c"asctime\00"
@"cstd::str.175" = private global [6 x i8] c"ctime\00"
@"cstd::str.176" = private global [10 x i8] c"asctime_r\00"
@"cstd::str.177" = private global [8 x i8] c"ctime_r\00"
@"cstd::str.178" = private global [6 x i8] c"tzset\00"
@"cstd::str.179" = private global [7 x i8] c"timegm\00"
@"cstd::str.180" = private global [10 x i8] c"timelocal\00"
@"cstd::str.181" = private global [7 x i8] c"dysize\00"
@"cstd::str.182" = private global [10 x i8] c"nanosleep\00"
@"cstd::str.183" = private global [13 x i8] c"clock_getres\00"
@"cstd::str.184" = private global [14 x i8] c"clock_gettime\00"
@"cstd::str.185" = private global [14 x i8] c"clock_settime\00"
@"cstd::str.186" = private global [16 x i8] c"clock_nanosleep\00"
@"cstd::str.187" = private global [20 x i8] c"clock_getcpuclockid\00"
@"cstd::str.188" = private global [13 x i8] c"timer_create\00"
@"cstd::str.189" = private global [13 x i8] c"timer_delete\00"
@"cstd::str.190" = private global [14 x i8] c"timer_settime\00"
@"cstd::str.191" = private global [14 x i8] c"timer_gettime\00"
@"cstd::str.192" = private global [17 x i8] c"timer_getoverrun\00"
@"cstd::str.193" = private global [13 x i8] c"timespec_get\00"
@"cstd::str.194" = private global [13 x i8] c"__fpclassify\00"
@"cstd::str.195" = private global [10 x i8] c"__signbit\00"
@"cstd::str.196" = private global [8 x i8] c"__isinf\00"
@"cstd::str.197" = private global [9 x i8] c"__finite\00"
@"cstd::str.198" = private global [8 x i8] c"__isnan\00"
@"cstd::str.199" = private global [10 x i8] c"__iseqsig\00"
@"cstd::str.200" = private global [14 x i8] c"__issignaling\00"
@"cstd::str.201" = private global [5 x i8] c"acos\00"
@"cstd::str.202" = private global [5 x i8] c"asin\00"
@"cstd::str.203" = private global [5 x i8] c"atan\00"
@"cstd::str.204" = private global [6 x i8] c"atan2\00"
@"cstd::str.205" = private global [4 x i8] c"cos\00"
@"cstd::str.206" = private global [4 x i8] c"sin\00"
@"cstd::str.207" = private global [4 x i8] c"tan\00"
@"cstd::str.208" = private global [5 x i8] c"cosh\00"
@"cstd::str.209" = private global [5 x i8] c"sinh\00"
@"cstd::str.210" = private global [5 x i8] c"tanh\00"
@"cstd::str.211" = private global [6 x i8] c"acosh\00"
@"cstd::str.212" = private global [6 x i8] c"asinh\00"
@"cstd::str.213" = private global [6 x i8] c"atanh\00"
@"cstd::str.214" = private global [4 x i8] c"exp\00"
@"cstd::str.215" = private global [6 x i8] c"frexp\00"
@"cstd::str.216" = private global [6 x i8] c"ldexp\00"
@"cstd::str.217" = private global [4 x i8] c"log\00"
@"cstd::str.218" = private global [6 x i8] c"log10\00"
@"cstd::str.219" = private global [5 x i8] c"modf\00"
@"cstd::str.220" = private global [6 x i8] c"expm1\00"
@"cstd::str.221" = private global [6 x i8] c"log1p\00"
@"cstd::str.222" = private global [5 x i8] c"logb\00"
@"cstd::str.223" = private global [5 x i8] c"exp2\00"
@"cstd::str.224" = private global [5 x i8] c"log2\00"
@"cstd::str.225" = private global [4 x i8] c"pow\00"
@"cstd::str.226" = private global [5 x i8] c"sqrt\00"
@"cstd::str.227" = private global [6 x i8] c"hypot\00"
@"cstd::str.228" = private global [5 x i8] c"cbrt\00"
@"cstd::str.229" = private global [5 x i8] c"ceil\00"
@"cstd::str.230" = private global [5 x i8] c"fabs\00"
@"cstd::str.231" = private global [6 x i8] c"floor\00"
@"cstd::str.232" = private global [5 x i8] c"fmod\00"
@"cstd::str.233" = private global [6 x i8] c"isinf\00"
@"cstd::str.234" = private global [7 x i8] c"finite\00"
@"cstd::str.235" = private global [5 x i8] c"drem\00"
@"cstd::str.236" = private global [12 x i8] c"significand\00"
@"cstd::str.237" = private global [9 x i8] c"copysign\00"
@"cstd::str.238" = private global [4 x i8] c"nan\00"
@"cstd::str.239" = private global [6 x i8] c"isnan\00"
@"cstd::str.240" = private global [3 x i8] c"j0\00"
@"cstd::str.241" = private global [3 x i8] c"j1\00"
@"cstd::str.242" = private global [3 x i8] c"jn\00"
@"cstd::str.243" = private global [3 x i8] c"y0\00"
@"cstd::str.244" = private global [3 x i8] c"y1\00"
@"cstd::str.245" = private global [3 x i8] c"yn\00"
@"cstd::str.246" = private global [4 x i8] c"erf\00"
@"cstd::str.247" = private global [5 x i8] c"erfc\00"
@"cstd::str.248" = private global [7 x i8] c"lgamma\00"
@"cstd::str.249" = private global [7 x i8] c"tgamma\00"
@"cstd::str.250" = private global [6 x i8] c"gamma\00"
@"cstd::str.251" = private global [9 x i8] c"lgamma_r\00"
@"cstd::str.252" = private global [5 x i8] c"rint\00"
@"cstd::str.253" = private global [10 x i8] c"nextafter\00"
@"cstd::str.254" = private global [11 x i8] c"nexttoward\00"
@"cstd::str.255" = private global [10 x i8] c"remainder\00"
@"cstd::str.256" = private global [7 x i8] c"scalbn\00"
@"cstd::str.257" = private global [6 x i8] c"ilogb\00"
@"cstd::str.258" = private global [8 x i8] c"scalbln\00"
@"cstd::str.259" = private global [10 x i8] c"nearbyint\00"
@"cstd::str.260" = private global [6 x i8] c"round\00"
@"cstd::str.261" = private global [6 x i8] c"trunc\00"
@"cstd::str.262" = private global [7 x i8] c"remquo\00"
@"cstd::str.263" = private global [6 x i8] c"lrint\00"
@"cstd::str.264" = private global [7 x i8] c"llrint\00"
@"cstd::str.265" = private global [7 x i8] c"lround\00"
@"cstd::str.266" = private global [8 x i8] c"llround\00"
@"cstd::str.267" = private global [5 x i8] c"fdim\00"
@"cstd::str.268" = private global [5 x i8] c"fmax\00"
@"cstd::str.269" = private global [5 x i8] c"fmin\00"
@"cstd::str.270" = private global [4 x i8] c"fma\00"
@"cstd::str.271" = private global [6 x i8] c"scalb\00"
@"cstd::str.272" = private global [14 x i8] c"__fpclassifyf\00"
@"cstd::str.273" = private global [11 x i8] c"__signbitf\00"
@"cstd::str.274" = private global [9 x i8] c"__isinff\00"
@"cstd::str.275" = private global [10 x i8] c"__finitef\00"
@"cstd::str.276" = private global [9 x i8] c"__isnanf\00"
@"cstd::str.277" = private global [11 x i8] c"__iseqsigf\00"
@"cstd::str.278" = private global [15 x i8] c"__issignalingf\00"
@"cstd::str.279" = private global [6 x i8] c"acosf\00"
@"cstd::str.280" = private global [6 x i8] c"asinf\00"
@"cstd::str.281" = private global [6 x i8] c"atanf\00"
@"cstd::str.282" = private global [7 x i8] c"atan2f\00"
@"cstd::str.283" = private global [5 x i8] c"cosf\00"
@"cstd::str.284" = private global [5 x i8] c"sinf\00"
@"cstd::str.285" = private global [5 x i8] c"tanf\00"
@"cstd::str.286" = private global [6 x i8] c"coshf\00"
@"cstd::str.287" = private global [6 x i8] c"sinhf\00"
@"cstd::str.288" = private global [6 x i8] c"tanhf\00"
@"cstd::str.289" = private global [7 x i8] c"acoshf\00"
@"cstd::str.290" = private global [7 x i8] c"asinhf\00"
@"cstd::str.291" = private global [7 x i8] c"atanhf\00"
@"cstd::str.292" = private global [5 x i8] c"expf\00"
@"cstd::str.293" = private global [7 x i8] c"frexpf\00"
@"cstd::str.294" = private global [7 x i8] c"ldexpf\00"
@"cstd::str.295" = private global [5 x i8] c"logf\00"
@"cstd::str.296" = private global [7 x i8] c"log10f\00"
@"cstd::str.297" = private global [6 x i8] c"modff\00"
@"cstd::str.298" = private global [7 x i8] c"expm1f\00"
@"cstd::str.299" = private global [7 x i8] c"log1pf\00"
@"cstd::str.300" = private global [6 x i8] c"logbf\00"
@"cstd::str.301" = private global [6 x i8] c"exp2f\00"
@"cstd::str.302" = private global [6 x i8] c"log2f\00"
@"cstd::str.303" = private global [5 x i8] c"powf\00"
@"cstd::str.304" = private global [6 x i8] c"sqrtf\00"
@"cstd::str.305" = private global [7 x i8] c"hypotf\00"
@"cstd::str.306" = private global [6 x i8] c"cbrtf\00"
@"cstd::str.307" = private global [6 x i8] c"ceilf\00"
@"cstd::str.308" = private global [6 x i8] c"fabsf\00"
@"cstd::str.309" = private global [7 x i8] c"floorf\00"
@"cstd::str.310" = private global [6 x i8] c"fmodf\00"
@"cstd::str.311" = private global [7 x i8] c"isinff\00"
@"cstd::str.312" = private global [8 x i8] c"finitef\00"
@"cstd::str.313" = private global [6 x i8] c"dremf\00"
@"cstd::str.314" = private global [13 x i8] c"significandf\00"
@"cstd::str.315" = private global [10 x i8] c"copysignf\00"
@"cstd::str.316" = private global [5 x i8] c"nanf\00"
@"cstd::str.317" = private global [7 x i8] c"isnanf\00"
@"cstd::str.318" = private global [4 x i8] c"j0f\00"
@"cstd::str.319" = private global [4 x i8] c"j1f\00"
@"cstd::str.320" = private global [4 x i8] c"jnf\00"
@"cstd::str.321" = private global [4 x i8] c"y0f\00"
@"cstd::str.322" = private global [4 x i8] c"y1f\00"
@"cstd::str.323" = private global [4 x i8] c"ynf\00"
@"cstd::str.324" = private global [5 x i8] c"erff\00"
@"cstd::str.325" = private global [6 x i8] c"erfcf\00"
@"cstd::str.326" = private global [8 x i8] c"lgammaf\00"
@"cstd::str.327" = private global [8 x i8] c"tgammaf\00"
@"cstd::str.328" = private global [7 x i8] c"gammaf\00"
@"cstd::str.329" = private global [10 x i8] c"lgammaf_r\00"
@"cstd::str.330" = private global [6 x i8] c"rintf\00"
@"cstd::str.331" = private global [11 x i8] c"nextafterf\00"
@"cstd::str.332" = private global [12 x i8] c"nexttowardf\00"
@"cstd::str.333" = private global [11 x i8] c"remainderf\00"
@"cstd::str.334" = private global [8 x i8] c"scalbnf\00"
@"cstd::str.335" = private global [7 x i8] c"ilogbf\00"
@"cstd::str.336" = private global [9 x i8] c"scalblnf\00"
@"cstd::str.337" = private global [11 x i8] c"nearbyintf\00"
@"cstd::str.338" = private global [7 x i8] c"roundf\00"
@"cstd::str.339" = private global [7 x i8] c"truncf\00"
@"cstd::str.340" = private global [8 x i8] c"remquof\00"
@"cstd::str.341" = private global [7 x i8] c"lrintf\00"
@"cstd::str.342" = private global [8 x i8] c"llrintf\00"
@"cstd::str.343" = private global [8 x i8] c"lroundf\00"
@"cstd::str.344" = private global [9 x i8] c"llroundf\00"
@"cstd::str.345" = private global [6 x i8] c"fdimf\00"
@"cstd::str.346" = private global [6 x i8] c"fmaxf\00"
@"cstd::str.347" = private global [6 x i8] c"fminf\00"
@"cstd::str.348" = private global [5 x i8] c"fmaf\00"
@"cstd::str.349" = private global [7 x i8] c"scalbf\00"
@"cstd::str.350" = private global [14 x i8] c"__fpclassifyl\00"
@"cstd::str.351" = private global [11 x i8] c"__signbitl\00"
@"cstd::str.352" = private global [9 x i8] c"__isinfl\00"
@"cstd::str.353" = private global [10 x i8] c"__finitel\00"
@"cstd::str.354" = private global [9 x i8] c"__isnanl\00"
@"cstd::str.355" = private global [11 x i8] c"__iseqsigl\00"
@"cstd::str.356" = private global [15 x i8] c"__issignalingl\00"
@"cstd::str.357" = private global [6 x i8] c"acosl\00"
@"cstd::str.358" = private global [6 x i8] c"asinl\00"
@"cstd::str.359" = private global [6 x i8] c"atanl\00"
@"cstd::str.360" = private global [7 x i8] c"atan2l\00"
@"cstd::str.361" = private global [5 x i8] c"cosl\00"
@"cstd::str.362" = private global [5 x i8] c"sinl\00"
@"cstd::str.363" = private global [5 x i8] c"tanl\00"
@"cstd::str.364" = private global [6 x i8] c"coshl\00"
@"cstd::str.365" = private global [6 x i8] c"sinhl\00"
@"cstd::str.366" = private global [6 x i8] c"tanhl\00"
@"cstd::str.367" = private global [7 x i8] c"acoshl\00"
@"cstd::str.368" = private global [7 x i8] c"asinhl\00"
@"cstd::str.369" = private global [7 x i8] c"atanhl\00"
@"cstd::str.370" = private global [5 x i8] c"expl\00"
@"cstd::str.371" = private global [7 x i8] c"frexpl\00"
@"cstd::str.372" = private global [7 x i8] c"ldexpl\00"
@"cstd::str.373" = private global [5 x i8] c"logl\00"
@"cstd::str.374" = private global [7 x i8] c"log10l\00"
@"cstd::str.375" = private global [6 x i8] c"modfl\00"
@"cstd::str.376" = private global [7 x i8] c"expm1l\00"
@"cstd::str.377" = private global [7 x i8] c"log1pl\00"
@"cstd::str.378" = private global [6 x i8] c"logbl\00"
@"cstd::str.379" = private global [6 x i8] c"exp2l\00"
@"cstd::str.380" = private global [6 x i8] c"log2l\00"
@"cstd::str.381" = private global [5 x i8] c"powl\00"
@"cstd::str.382" = private global [6 x i8] c"sqrtl\00"
@"cstd::str.383" = private global [7 x i8] c"hypotl\00"
@"cstd::str.384" = private global [6 x i8] c"cbrtl\00"
@"cstd::str.385" = private global [6 x i8] c"ceill\00"
@"cstd::str.386" = private global [6 x i8] c"fabsl\00"
@"cstd::str.387" = private global [7 x i8] c"floorl\00"
@"cstd::str.388" = private global [6 x i8] c"fmodl\00"
@"cstd::str.389" = private global [7 x i8] c"isinfl\00"
@"cstd::str.390" = private global [8 x i8] c"finitel\00"
@"cstd::str.391" = private global [6 x i8] c"dreml\00"
@"cstd::str.392" = private global [13 x i8] c"significandl\00"
@"cstd::str.393" = private global [10 x i8] c"copysignl\00"
@"cstd::str.394" = private global [5 x i8] c"nanl\00"
@"cstd::str.395" = private global [7 x i8] c"isnanl\00"
@"cstd::str.396" = private global [4 x i8] c"j0l\00"
@"cstd::str.397" = private global [4 x i8] c"j1l\00"
@"cstd::str.398" = private global [4 x i8] c"jnl\00"
@"cstd::str.399" = private global [4 x i8] c"y0l\00"
@"cstd::str.400" = private global [4 x i8] c"y1l\00"
@"cstd::str.401" = private global [4 x i8] c"ynl\00"
@"cstd::str.402" = private global [5 x i8] c"erfl\00"
@"cstd::str.403" = private global [6 x i8] c"erfcl\00"
@"cstd::str.404" = private global [8 x i8] c"lgammal\00"
@"cstd::str.405" = private global [8 x i8] c"tgammal\00"
@"cstd::str.406" = private global [7 x i8] c"gammal\00"
@"cstd::str.407" = private global [10 x i8] c"lgammal_r\00"
@"cstd::str.408" = private global [6 x i8] c"rintl\00"
@"cstd::str.409" = private global [11 x i8] c"nextafterl\00"
@"cstd::str.410" = private global [12 x i8] c"nexttowardl\00"
@"cstd::str.411" = private global [11 x i8] c"remainderl\00"
@"cstd::str.412" = private global [8 x i8] c"scalbnl\00"
@"cstd::str.413" = private global [7 x i8] c"ilogbl\00"
@"cstd::str.414" = private global [9 x i8] c"scalblnl\00"
@"cstd::str.415" = private global [11 x i8] c"nearbyintl\00"
@"cstd::str.416" = private global [7 x i8] c"roundl\00"
@"cstd::str.417" = private global [7 x i8] c"truncl\00"
@"cstd::str.418" = private global [8 x i8] c"remquol\00"
@"cstd::str.419" = private global [7 x i8] c"lrintl\00"
@"cstd::str.420" = private global [8 x i8] c"llrintl\00"
@"cstd::str.421" = private global [8 x i8] c"lroundl\00"
@"cstd::str.422" = private global [9 x i8] c"llroundl\00"
@"cstd::str.423" = private global [6 x i8] c"fdiml\00"
@"cstd::str.424" = private global [6 x i8] c"fmaxl\00"
@"cstd::str.425" = private global [6 x i8] c"fminl\00"
@"cstd::str.426" = private global [5 x i8] c"fmal\00"
@"cstd::str.427" = private global [7 x i8] c"scalbl\00"
@"cstd::str.428" = private global [14 x i8] c"__assert_fail\00"
@"cstd::str.429" = private global [21 x i8] c"__assert_perror_fail\00"
@"cstd::str.430" = private global [9 x i8] c"__assert\00"
@"cstd::str.431" = private global [14 x i8] c"__ctype_b_loc\00"
@"cstd::str.432" = private global [20 x i8] c"__ctype_tolower_loc\00"
@"cstd::str.433" = private global [20 x i8] c"__ctype_toupper_loc\00"
@"cstd::str.434" = private global [8 x i8] c"isalnum\00"
@"cstd::str.435" = private global [8 x i8] c"isalpha\00"
@"cstd::str.436" = private global [8 x i8] c"iscntrl\00"
@"cstd::str.437" = private global [8 x i8] c"isdigit\00"
@"cstd::str.438" = private global [8 x i8] c"islower\00"
@"cstd::str.439" = private global [8 x i8] c"isgraph\00"
@"cstd::str.440" = private global [8 x i8] c"isprint\00"
@"cstd::str.441" = private global [8 x i8] c"ispunct\00"
@"cstd::str.442" = private global [8 x i8] c"isspace\00"
@"cstd::str.443" = private global [8 x i8] c"isupper\00"
@"cstd::str.444" = private global [9 x i8] c"isxdigit\00"
@"cstd::str.445" = private global [8 x i8] c"tolower\00"
@"cstd::str.446" = private global [8 x i8] c"toupper\00"
@"cstd::str.447" = private global [8 x i8] c"isblank\00"
@"cstd::str.448" = private global [8 x i8] c"isascii\00"
@"cstd::str.449" = private global [8 x i8] c"toascii\00"
@"cstd::str.450" = private global [9 x i8] c"_toupper\00"
@"cstd::str.451" = private global [9 x i8] c"_tolower\00"
@"cstd::str.452" = private global [10 x i8] c"isalnum_l\00"
@"cstd::str.453" = private global [10 x i8] c"isalpha_l\00"
@"cstd::str.454" = private global [10 x i8] c"iscntrl_l\00"
@"cstd::str.455" = private global [10 x i8] c"isdigit_l\00"
@"cstd::str.456" = private global [10 x i8] c"islower_l\00"
@"cstd::str.457" = private global [10 x i8] c"isgraph_l\00"
@"cstd::str.458" = private global [10 x i8] c"isprint_l\00"
@"cstd::str.459" = private global [10 x i8] c"ispunct_l\00"
@"cstd::str.460" = private global [10 x i8] c"isspace_l\00"
@"cstd::str.461" = private global [10 x i8] c"isupper_l\00"
@"cstd::str.462" = private global [11 x i8] c"isxdigit_l\00"
@"cstd::str.463" = private global [10 x i8] c"isblank_l\00"
@"cstd::str.464" = private global [12 x i8] c"__tolower_l\00"
@"cstd::str.465" = private global [10 x i8] c"tolower_l\00"
@"cstd::str.466" = private global [12 x i8] c"__toupper_l\00"
@"cstd::str.467" = private global [10 x i8] c"toupper_l\00"
@"cstd::str.468" = private global [10 x i8] c"setlocale\00"
@"cstd::str.469" = private global [11 x i8] c"localeconv\00"
@"cstd::str.470" = private global [10 x i8] c"newlocale\00"
@"cstd::str.471" = private global [10 x i8] c"duplocale\00"
@"cstd::str.472" = private global [11 x i8] c"freelocale\00"
@"cstd::str.473" = private global [10 x i8] c"uselocale\00"
@"cstd::str.474" = private global [7 x i8] c"setjmp\00"
@"cstd::str.475" = private global [12 x i8] c"__sigsetjmp\00"
@"cstd::str.476" = private global [8 x i8] c"_setjmp\00"
@"cstd::str.477" = private global [8 x i8] c"longjmp\00"
@"cstd::str.478" = private global [9 x i8] c"_longjmp\00"
@"cstd::str.479" = private global [11 x i8] c"siglongjmp\00"
@"cstd::str.480" = private global [17 x i8] c"__errno_location\00"
@"cstd::str.481" = private global [7 x i8] c"concat\00"
@"cstd::str.482" = private global [6 x i8] c"stdin\00"
@stdin = external global %"cstd::s__IO_FILE"*
@"cstd::str.483" = private global [7 x i8] c"stdout\00"
@stdout = external global %"cstd::s__IO_FILE"*
@"cstd::str.484" = private global [7 x i8] c"stderr\00"
@"cstd::str.485" = private global [9 x i8] c"__tzname\00"
@__tzname = external global [2 x i8*]
@"cstd::str.486" = private global [11 x i8] c"__daylight\00"
@__daylight = external global i32
@"cstd::str.487" = private global [11 x i8] c"__timezone\00"
@__timezone = external global i64
@"cstd::str.488" = private global [7 x i8] c"tzname\00"
@tzname = external global [2 x i8*]
@"cstd::str.489" = private global [9 x i8] c"daylight\00"
@daylight = external global i32
@"cstd::str.490" = private global [9 x i8] c"timezone\00"
@timezone = external global i64
@"cstd::str.491" = private global [8 x i8] c"signgam\00"
@signgam = external global i32
@"cstd::str.0" = private global [6 x i8] c"P_PID\00"
@"cstd::str.1" = private global [7 x i8] c"P_PGID\00"
@"cstd::str.2" = private global [6 x i8] c"P_ALL\00"
@"cstd::str.3" = private global [10 x i8] c"INVALID!!\00"
@"std::str.0" = private global [3 x i8] c"%p\00"
@"std::str.1" = private global [3 x i8] c"%s\00"
@"std::str.2" = private global [3 x i8] c"%s\00"
@"std::str.3" = private global [3 x i8] c"%s\00"
@"std::str.4" = private global [4 x i8] c"%zu\00"
@"std::str.5" = private global [3 x i8] c"%c\00"
@"std::str.6" = private global [5 x i8] c"%hhd\00"
@"std::str.7" = private global [5 x i8] c"%hhu\00"
@"std::str.8" = private global [4 x i8] c"%hd\00"
@"std::str.9" = private global [4 x i8] c"%hu\00"
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
@"std::str.30" = private global [3 x i8] c"%s\00"
@"std::str.31" = private global [15 x i8] c"/proc/self/exe\00"
@"linux::_SC_THREAD_STACK_MIN" = global i32 75
@"linux::_CS_POSIX_V6_ILP32_OFF32_LDFLAGS" = global i32 1117
@"linux::_PC_SYMLINK_MAX" = global i32 19
@"linux::_SC_FILE_SYSTEM" = global i32 148
@"linux::_SC_STREAMS" = global i32 174
@"linux::_SC_INT_MAX" = global i32 104
@"linux::_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS" = global i32 1135
@"linux::FPE_FLTSUB" = global i32 8
@"linux::_SC_SPIN_LOCKS" = global i32 154
@"linux::_SC_XBS5_LPBIG_OFFBIG" = global i32 128
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS" = global i32 1129
@"linux::_SC_PAGESIZE" = global i32 30
@"linux::_SC_2_VERSION" = global i32 46
@"linux::_SC_PII_INTERNET_STREAM" = global i32 61
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LIBS" = global i32 1130
@"linux::_SC_C_LANG_SUPPORT" = global i32 135
@"linux::_PC_ALLOC_SIZE_MIN" = global i32 18
@"linux::_SC_THREAD_ROBUST_PRIO_INHERIT" = global i32 247
@"linux::_SC_MONOTONIC_CLOCK" = global i32 149
@"linux::_SC_FILE_ATTRIBUTES" = global i32 146
@"linux::_SC_2_FORT_RUN" = global i32 50
@"linux::_SC_LEVEL2_CACHE_ASSOC" = global i32 192
@"linux::ILL_COPROC" = global i32 7
@"linux::_CS_XBS5_LP64_OFF64_LIBS" = global i32 1110
@"linux::SI_TIMER" = global i32 -2
@"linux::_SC_SEM_NSEMS_MAX" = global i32 32
@"linux::BUS_MCEERR_AO" = global i32 5
@"linux::_CS_POSIX_V6_LP64_OFF64_CFLAGS" = global i32 1124
@"linux::BUS_MCEERR_AR" = global i32 4
@"linux::_SC_TIMEOUTS" = global i32 164
@"linux::_PC_SOCK_MAXBUF" = global i32 12
@"linux::SEGV_ACCADI" = global i32 5
@"linux::_CS_POSIX_V7_ILP32_OFF32_LIBS" = global i32 1134
@"linux::_PC_LINK_MAX" = global i32 0
@"linux::_SC_MEMORY_PROTECTION" = global i32 19
@"linux::_SC_XBS5_ILP32_OFFBIG" = global i32 126
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS" = global i32 1121
@"linux::_SC_JOB_CONTROL" = global i32 7
@"linux::_SC_PII_OSI_M" = global i32 65
@"linux::_SC_FIFO" = global i32 144
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS" = global i32 1128
@"linux::_CS_V7_ENV" = global i32 1149
@"linux::_SC_SYNCHRONIZED_IO" = global i32 14
@"linux::__DEFS" = global [258 x void ()*] zeroinitializer
@"linux::_SC_2_C_BIND" = global i32 47
@"linux::_SC_SPORADIC_SERVER" = global i32 160
@"linux::_SC_SEMAPHORES" = global i32 21
@"linux::_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS" = global i32 1115
@"linux::_SC_LEVEL4_CACHE_SIZE" = global i32 197
@"linux::_SC_NPROCESSORS_CONF" = global i32 83
@"linux::_SC_TRACE_SYS_MAX" = global i32 244
@"linux::SEGV_BNDERR" = global i32 3
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS" = global i32 1147
@"linux::__VAR_NAMES" = global [7 x { i64, i8* }] zeroinitializer
@"linux::SI_ASYNCIO" = global i32 -4
@"linux::_CS_LFS_CFLAGS" = global i32 1000
@"linux::POLL_HUP" = global i32 6
@"linux::_SC_SCHAR_MAX" = global i32 111
@"linux::_SC_LEVEL1_ICACHE_SIZE" = global i32 185
@"linux::_SC_SINGLE_PROCESS" = global i32 151
@"linux::ILL_BADIADDR" = global i32 9
@"linux::_SC_BARRIERS" = global i32 133
@"linux::_SC_2_PBS_ACCOUNTING" = global i32 169
@"linux::_CS_XBS5_ILP32_OFFBIG_LINTFLAGS" = global i32 1107
@"linux::_SC_ASYNCHRONOUS_IO" = global i32 12
@"linux::_SC_PII_XTI" = global i32 54
@"linux::_CS_LFS_LINTFLAGS" = global i32 1003
@"linux::_SC_TRACE_INHERIT" = global i32 183
@"linux::_SC_XBS5_LP64_OFF64" = global i32 127
@"linux::_CS_POSIX_V6_LP64_OFF64_LDFLAGS" = global i32 1125
@"linux::_SC_AVPHYS_PAGES" = global i32 86
@"linux::_SC_BC_DIM_MAX" = global i32 37
@"linux::_SC_BC_SCALE_MAX" = global i32 38
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS" = global i32 1139
@"linux::_SC_NETWORKING" = global i32 152
@"linux::_SC_SHARED_MEMORY_OBJECTS" = global i32 22
@"linux::_SC_V6_ILP32_OFF32" = global i32 176
@"linux::BUS_OBJERR" = global i32 3
@"linux::ILL_ILLOPC" = global i32 1
@"linux::ILL_ILLOPN" = global i32 2
@"linux::_SC_NGROUPS_MAX" = global i32 3
@"linux::_CS_V6_ENV" = global i32 1148
@"linux::_SC_NL_LANGMAX" = global i32 120
@"linux::SS_DISABLE" = global i32 2
@"linux::_SC_INT_MIN" = global i32 105
@"linux::_CS_XBS5_ILP32_OFF32_LIBS" = global i32 1102
@"linux::SI_MESGQ" = global i32 -3
@"linux::_SC_NPROCESSORS_ONLN" = global i32 84
@"linux::POLL_ERR" = global i32 4
@"linux::_SC_V6_LP64_OFF64" = global i32 178
@"linux::SEGV_ACCERR" = global i32 2
@"linux::_CS_POSIX_V6_LP64_OFF64_LIBS" = global i32 1126
@"linux::_PC_2_SYMLINKS" = global i32 20
@"linux::SEGV_PKUERR" = global i32 4
@"linux::_PC_PIPE_BUF" = global i32 5
@"linux::_SC_THREAD_PRIO_INHERIT" = global i32 80
@"linux::_SC_XOPEN_VERSION" = global i32 89
@"linux::_SC_LOGIN_NAME_MAX" = global i32 71
@"linux::_SC_LEVEL3_CACHE_LINESIZE" = global i32 196
@"linux::_SC_TRACE" = global i32 181
@"linux::_SC_MQ_PRIO_MAX" = global i32 28
@"linux::_SC_THREAD_PROCESS_SHARED" = global i32 82
@"linux::_SC_MB_LEN_MAX" = global i32 108
@"linux::_CS_POSIX_V6_ILP32_OFF32_CFLAGS" = global i32 1116
@"linux::_PC_SYNC_IO" = global i32 9
@"linux::_SC_PASS_MAX" = global i32 88
@"linux::_CS_XBS5_ILP32_OFFBIG_LIBS" = global i32 1106
@"linux::_SC_SS_REPL_MAX" = global i32 241
@"linux::_SC_EQUIV_CLASS_MAX" = global i32 41
@"linux::_SC_THREAD_PRIORITY_SCHEDULING" = global i32 79
@"linux::_SC_XOPEN_STREAMS" = global i32 246
@"linux::_PC_MAX_CANON" = global i32 1
@"linux::SI_ASYNCNL" = global i32 -60
@"linux::_SC_DEVICE_SPECIFIC" = global i32 141
@"linux::_SC_2_LOCALEDEF" = global i32 52
@"linux::FPE_FLTOVF" = global i32 4
@"linux::SIGEV_NONE" = global i32 1
@"linux::_SC_LEVEL4_CACHE_ASSOC" = global i32 198
@"linux::_SC_PIPE" = global i32 145
@"linux::CLD_KILLED" = global i32 2
@"linux::_CS_V5_WIDTH_RESTRICTED_ENVS" = global i32 4
@"linux::_PC_CHOWN_RESTRICTED" = global i32 6
@"linux::_SC_NL_TEXTMAX" = global i32 124
@"linux::_SC_SELECT" = global i32 59
@"linux::_SC_2_SW_DEV" = global i32 51
@"linux::_SC_THREAD_DESTRUCTOR_ITERATIONS" = global i32 73
@"linux::_SC_LEVEL1_ICACHE_ASSOC" = global i32 186
@"linux::_SC_REGEXP" = global i32 155
@"linux::_CS_XBS5_ILP32_OFFBIG_CFLAGS" = global i32 1104
@"linux::_CS_LFS64_LDFLAGS" = global i32 1005
@"linux::_SC_AIO_MAX" = global i32 24
@"linux::_SC_V6_LPBIG_OFFBIG" = global i32 179
@"linux::_SC_ADVISORY_INFO" = global i32 132
@"linux::_SC_SHRT_MAX" = global i32 113
@"linux::_SC_2_PBS_LOCATE" = global i32 170
@"linux::_SC_MEMLOCK_RANGE" = global i32 18
@"linux::_CS_POSIX_V7_ILP32_OFF32_LDFLAGS" = global i32 1133
@"linux::_SC_PII_OSI_COTS" = global i32 63
@"linux::_SC_DEVICE_SPECIFIC_R" = global i32 142
@"linux::_SC_FILE_LOCKING" = global i32 147
@"linux::SIGEV_THREAD" = global i32 2
@"linux::__VARS" = global [7 x i8*] zeroinitializer
@"linux::_SC_SCHAR_MIN" = global i32 112
@"linux::_SC_CHAR_BIT" = global i32 101
@"linux::_CS_PATH" = global i32 0
@"linux::_SC_REGEX_VERSION" = global i32 156
@"linux::_SC_IPV6" = global i32 235
@"linux::_SC_V6_ILP32_OFFBIG" = global i32 177
@"linux::_SC_PII_INTERNET_DGRAM" = global i32 62
@"linux::_SC_XOPEN_XCU_VERSION" = global i32 90
@"linux::_SC_2_CHAR_TERM" = global i32 95
@"linux::_SC_TRACE_EVENT_NAME_MAX" = global i32 242
@"linux::_SC_ATEXIT_MAX" = global i32 87
@"linux::_SC_THREAD_THREADS_MAX" = global i32 76
@"linux::_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS" = global i32 1131
@"linux::_SC_XOPEN_REALTIME" = global i32 130
@"linux::_SC_LONG_BIT" = global i32 106
@"linux::_SC_2_FORT_DEV" = global i32 49
@"linux::_SC_GETGR_R_SIZE_MAX" = global i32 69
@"linux::_SC_SYSTEM_DATABASE" = global i32 162
@"linux::_SC_PRIORITY_SCHEDULING" = global i32 10
@"linux::_SC_LEVEL2_CACHE_SIZE" = global i32 191
@"linux::FPE_FLTINV" = global i32 7
@"linux::_PC_FILESIZEBITS" = global i32 13
@"linux::_SC_STREAM_MAX" = global i32 5
@"linux::_SC_NL_SETMAX" = global i32 123
@"linux::_SC_TYPED_MEMORY_OBJECTS" = global i32 165
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS" = global i32 1144
@"linux::_SC_SIGNALS" = global i32 158
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS" = global i32 1123
@"linux::ILL_PRVOPC" = global i32 5
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LIBS" = global i32 1146
@"linux::_SC_XOPEN_ENH_I18N" = global i32 93
@"linux::_SC_CHAR_MAX" = global i32 102
@"linux::_CS_POSIX_V7_LP64_OFF64_LINTFLAGS" = global i32 1143
@"linux::_SC_MESSAGE_PASSING" = global i32 20
@"linux::_SC_SIGQUEUE_MAX" = global i32 34
@"linux::_PC_PRIO_IO" = global i32 11
@"linux::_SC_2_PBS_TRACK" = global i32 172
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_LIBS" = global i32 1122
@"linux::_SC_CHILD_MAX" = global i32 1
@"linux::_CS_XBS5_ILP32_OFF32_LINTFLAGS" = global i32 1103
@"linux::CLD_CONTINUED" = global i32 6
@"linux::_SC_T_IOV_MAX" = global i32 66
@"linux::_SC_THREAD_ROBUST_PRIO_PROTECT" = global i32 248
@"linux::_CS_POSIX_V7_LP64_OFF64_CFLAGS" = global i32 1140
@"linux::_SC_SHELL" = global i32 157
@"linux::_SC_PHYS_PAGES" = global i32 85
@"linux::SI_QUEUE" = global i32 -1
@"linux::SS_ONSTACK" = global i32 1
@"linux::FPE_CONDTRAP" = global i32 15
@"linux::FPE_INTOVF" = global i32 2
@"linux::_SC_THREAD_SAFE_FUNCTIONS" = global i32 68
@"linux::_SC_SYSTEM_DATABASE_R" = global i32 163
@"linux::BUS_ADRERR" = global i32 2
@"linux::_SC_LEVEL1_ICACHE_LINESIZE" = global i32 187
@"linux::SI_DETHREAD" = global i32 -7
@"linux::SI_USER" = global i32 0
@"linux::_SC_TIMERS" = global i32 11
@"linux::_CS_XBS5_LP64_OFF64_LINTFLAGS" = global i32 1111
@"linux::_SC_MULTI_PROCESS" = global i32 150
@"linux::SIGEV_SIGNAL" = global i32 0
@"linux::_SC_DEVICE_IO" = global i32 140
@"linux::_SC_PII" = global i32 53
@"linux::_SC_USHRT_MAX" = global i32 118
@"linux::_CS_POSIX_V6_ILP32_OFF32_LIBS" = global i32 1118
@"linux::_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS" = global i32 1120
@"linux::_SC_AIO_PRIO_DELTA_MAX" = global i32 25
@"linux::_SC_AIO_LISTIO_MAX" = global i32 23
@"linux::_SC_CLK_TCK" = global i32 2
@"linux::_CS_GNU_LIBC_VERSION" = global i32 2
@"linux::_PC_REC_XFER_ALIGN" = global i32 17
@"linux::_SC_CHARCLASS_NAME_MAX" = global i32 45
@"linux::_SC_C_LANG_SUPPORT_R" = global i32 136
@"linux::_SC_PII_OSI_CLTS" = global i32 64
@"linux::POLL_PRI" = global i32 5
@"linux::SEGV_ADIDERR" = global i32 6
@"linux::SEGV_MAPERR" = global i32 1
@"linux::BUS_ADRALN" = global i32 1
@"linux::_SC_THREAD_ATTR_STACKADDR" = global i32 77
@"linux::CLD_DUMPED" = global i32 3
@"linux::_SC_SHRT_MIN" = global i32 114
@"linux::_SC_NL_MSGMAX" = global i32 121
@"linux::_PC_NO_TRUNC" = global i32 7
@"linux::_PC_NAME_MAX" = global i32 3
@"linux::_SC_THREAD_SPORADIC_SERVER" = global i32 161
@"linux::_SC_BASE" = global i32 134
@"linux::_SC_V7_LP64_OFF64" = global i32 239
@"linux::_SC_THREAD_ATTR_STACKSIZE" = global i32 78
@"linux::FPE_FLTDIV" = global i32 3
@"linux::_SC_READER_WRITER_LOCKS" = global i32 153
@"linux::_SC_THREAD_CPUTIME" = global i32 139
@"linux::_SC_TRACE_USER_EVENT_MAX" = global i32 245
@"linux::FPE_FLTRES" = global i32 6
@"linux::_SC_DELAYTIMER_MAX" = global i32 26
@"linux::ILL_BADSTK" = global i32 8
@"linux::_SC_LEVEL1_DCACHE_ASSOC" = global i32 189
@"linux::_SC_USER_GROUPS" = global i32 166
@"linux::_PC_VDISABLE" = global i32 8
@"linux::_SC_UIO_MAXIOV" = global i32 60
@"linux::_CS_V6_WIDTH_RESTRICTED_ENVS" = global i32 1
@"linux::_SC_SYMLOOP_MAX" = global i32 173
@"linux::_SC_TRACE_EVENT_FILTER" = global i32 182
@"linux::_CS_GNU_LIBPTHREAD_VERSION" = global i32 3
@"linux::_SC_PRIORITIZED_IO" = global i32 13
@"linux::_SC_CLOCK_SELECTION" = global i32 137
@"linux::_SC_XOPEN_LEGACY" = global i32 129
@"linux::_PC_REC_MIN_XFER_SIZE" = global i32 16
@"linux::_SC_2_C_VERSION" = global i32 96
@"linux::_SC_UCHAR_MAX" = global i32 115
@"linux::_SC_RE_DUP_MAX" = global i32 44
@"linux::_SC_RTSIG_MAX" = global i32 31
@"linux::SI_SIGIO" = global i32 -5
@"linux::_SC_2_PBS_MESSAGE" = global i32 171
@"linux::_PC_ASYNC_IO" = global i32 10
@"linux::_SC_LEVEL3_CACHE_ASSOC" = global i32 195
@"linux::_SC_TRACE_NAME_MAX" = global i32 243
@"linux::_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS" = global i32 1145
@"linux::SEGV_ADIPERR" = global i32 7
@"linux::_SC_THREADS" = global i32 67
@"linux::FPE_FLTUND" = global i32 5
@"linux::FPE_FLTUNK" = global i32 14
@"linux::SI_TKILL" = global i32 -6
@"linux::_SC_BC_BASE_MAX" = global i32 36
@"linux::_SC_PII_OSI" = global i32 57
@"linux::_SC_ULONG_MAX" = global i32 117
@"linux::_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS" = global i32 1119
@"linux::_SC_LEVEL1_DCACHE_LINESIZE" = global i32 190
@"linux::_SC_XOPEN_UNIX" = global i32 91
@"linux::_SC_FD_MGMT" = global i32 143
@"linux::_SC_CHAR_MIN" = global i32 103
@"linux::ILL_ILLADR" = global i32 3
@"linux::_SC_EXPR_NEST_MAX" = global i32 42
@"linux::_SC_OPEN_MAX" = global i32 4
@"linux::_SC_LEVEL1_DCACHE_SIZE" = global i32 188
@"linux::_SC_2_C_DEV" = global i32 48
@"linux::_SC_THREAD_PRIO_PROTECT" = global i32 81
@"linux::_CS_LFS64_LIBS" = global i32 1006
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS" = global i32 1137
@"linux::_CS_XBS5_LPBIG_OFFBIG_LDFLAGS" = global i32 1113
@"linux::POLL_OUT" = global i32 2
@"linux::CLD_STOPPED" = global i32 5
@"linux::_SC_ARG_MAX" = global i32 0
@"linux::_SC_PII_SOCKET" = global i32 55
@"linux::_CS_LFS64_LINTFLAGS" = global i32 1007
@"linux::__DEF_NAMES" = global [258 x { i64, i8* }] zeroinitializer
@"linux::_PC_PATH_MAX" = global i32 4
@"linux::_SC_LEVEL4_CACHE_LINESIZE" = global i32 199
@"linux::CLD_EXITED" = global i32 1
@"linux::_SC_XOPEN_REALTIME_THREADS" = global i32 131
@"linux::_SC_V7_LPBIG_OFFBIG" = global i32 240
@"linux::_SC_2_PBS" = global i32 168
@"linux::_CS_POSIX_V7_LP64_OFF64_LIBS" = global i32 1142
@"linux::_SC_XOPEN_XPG2" = global i32 98
@"linux::_SC_XOPEN_XPG3" = global i32 99
@"linux::_SC_XOPEN_XPG4" = global i32 100
@"linux::_CS_POSIX_V7_LP64_OFF64_LDFLAGS" = global i32 1141
@"linux::_CS_LFS64_CFLAGS" = global i32 1004
@"linux::_SC_COLL_WEIGHTS_MAX" = global i32 40
@"linux::_CS_XBS5_ILP32_OFFBIG_LDFLAGS" = global i32 1105
@"linux::POLL_MSG" = global i32 3
@"linux::_SC_LEVEL3_CACHE_SIZE" = global i32 194
@"linux::_SC_GETPW_R_SIZE_MAX" = global i32 70
@"linux::_SC_XOPEN_CRYPT" = global i32 92
@"linux::_CS_XBS5_ILP32_OFF32_LDFLAGS" = global i32 1101
@"linux::_PC_REC_MAX_XFER_SIZE" = global i32 15
@"linux::_SC_SAVED_IDS" = global i32 8
@"linux::_SC_V7_ILP32_OFFBIG" = global i32 238
@"linux::_SC_LEVEL2_CACHE_LINESIZE" = global i32 193
@"linux::_SC_HOST_NAME_MAX" = global i32 180
@"linux::_SC_THREAD_KEYS_MAX" = global i32 74
@"linux::FPE_INTDIV" = global i32 1
@"linux::_PC_MAX_INPUT" = global i32 2
@"linux::_SC_SEM_VALUE_MAX" = global i32 33
@"linux::_SC_WORD_BIT" = global i32 107
@"linux::_SC_NL_NMAX" = global i32 122
@"linux::_SC_V7_ILP32_OFF32" = global i32 237
@"linux::_CS_POSIX_V6_LP64_OFF64_LINTFLAGS" = global i32 1127
@"linux::_SC_POLL" = global i32 58
@"linux::_SC_SPAWN" = global i32 159
@"linux::_CS_XBS5_LPBIG_OFFBIG_LIBS" = global i32 1114
@"linux::P_PGID" = global i32 2
@"linux::_SC_NL_ARGMAX" = global i32 119
@"linux::_CS_XBS5_LP64_OFF64_CFLAGS" = global i32 1108
@"linux::_SC_2_UPE" = global i32 97
@"linux::_PC_REC_INCR_XFER_SIZE" = global i32 14
@"linux::_SC_TRACE_LOG" = global i32 184
@"linux::_CS_POSIX_V7_ILP32_OFF32_CFLAGS" = global i32 1132
@"linux::_SC_LINE_MAX" = global i32 43
@"linux::_CS_XBS5_LP64_OFF64_LDFLAGS" = global i32 1109
@"linux::_SC_CPUTIME" = global i32 138
@"linux::SI_KERNEL" = global i32 128
@"linux::_CS_XBS5_LPBIG_OFFBIG_CFLAGS" = global i32 1112
@"linux::_SC_USER_GROUPS_R" = global i32 167
@"linux::_SC_MEMLOCK" = global i32 17
@"linux::_SC_XBS5_ILP32_OFF32" = global i32 125
@"linux::SIGEV_THREAD_ID" = global i32 4
@"linux::_CS_LFS_LDFLAGS" = global i32 1001
@"linux::_SC_TIMER_MAX" = global i32 35
@"linux::_SC_2_PBS_CHECKPOINT" = global i32 175
@"linux::POLL_IN" = global i32 1
@"linux::_SC_IOV_MAX" = global i32 60
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS" = global i32 1136
@"linux::_CS_POSIX_V7_ILP32_OFFBIG_LIBS" = global i32 1138
@"linux::_SC_RAW_SOCKETS" = global i32 236
@"linux::_SC_MQ_OPEN_MAX" = global i32 27
@"linux::_SC_PII_INTERNET" = global i32 56
@"linux::P_PID" = global i32 1
@"linux::_CS_V7_WIDTH_RESTRICTED_ENVS" = global i32 5
@"linux::_SC_TTY_NAME_MAX" = global i32 72
@"linux::_SC_BC_STRING_MAX" = global i32 39
@"linux::_SC_SSIZE_MAX" = global i32 110
@"linux::ILL_PRVREG" = global i32 6
@"linux::_SC_FSYNC" = global i32 15
@"linux::P_ALL" = global i32 0
@"linux::_SC_MAPPED_FILES" = global i32 16
@"linux::ILL_ILLTRP" = global i32 4
@"linux::CLD_TRAPPED" = global i32 4
@"linux::_CS_LFS_LIBS" = global i32 1002
@"linux::_SC_TZNAME_MAX" = global i32 6
@"linux::_SC_REALTIME_SIGNALS" = global i32 9
@"linux::_SC_NZERO" = global i32 109
@"linux::_SC_VERSION" = global i32 29
@"linux::_SC_UINT_MAX" = global i32 116
@"linux::_SC_XOPEN_SHM" = global i32 94
@"linux::_CS_XBS5_ILP32_OFF32_CFLAGS" = global i32 1100
@"linux::str.0" = private global [6 x i8] c"P_PID\00"
@"linux::str.1" = private global [7 x i8] c"P_PGID\00"
@"linux::str.2" = private global [6 x i8] c"P_ALL\00"
@"linux::str.3" = private global [10 x i8] c"INVALID!!\00"
@"linux::str.4" = private global [5 x i8] c"stat\00"
@"linux::str.5" = private global [6 x i8] c"fstat\00"
@"linux::str.6" = private global [8 x i8] c"fstatat\00"
@"linux::str.7" = private global [6 x i8] c"lstat\00"
@"linux::str.8" = private global [6 x i8] c"chmod\00"
@"linux::str.9" = private global [7 x i8] c"fchmod\00"
@"linux::str.10" = private global [9 x i8] c"fchmodat\00"
@"linux::str.11" = private global [6 x i8] c"umask\00"
@"linux::str.12" = private global [6 x i8] c"mkdir\00"
@"linux::str.13" = private global [8 x i8] c"mkdirat\00"
@"linux::str.14" = private global [6 x i8] c"mknod\00"
@"linux::str.15" = private global [8 x i8] c"mknodat\00"
@"linux::str.16" = private global [7 x i8] c"mkfifo\00"
@"linux::str.17" = private global [9 x i8] c"mkfifoat\00"
@"linux::str.18" = private global [10 x i8] c"utimensat\00"
@"linux::str.19" = private global [9 x i8] c"futimens\00"
@"linux::str.20" = private global [9 x i8] c"__fxstat\00"
@"linux::str.21" = private global [8 x i8] c"__xstat\00"
@"linux::str.22" = private global [9 x i8] c"__lxstat\00"
@"linux::str.23" = private global [11 x i8] c"__fxstatat\00"
@"linux::str.24" = private global [9 x i8] c"__xmknod\00"
@"linux::str.25" = private global [11 x i8] c"__xmknodat\00"
@"linux::str.26" = private global [6 x i8] c"ioctl\00"
@"linux::str.27" = private global [14 x i8] c"__sysv_signal\00"
@"linux::str.28" = private global [7 x i8] c"signal\00"
@"linux::str.29" = private global [5 x i8] c"kill\00"
@"linux::str.30" = private global [7 x i8] c"killpg\00"
@"linux::str.31" = private global [6 x i8] c"raise\00"
@"linux::str.32" = private global [8 x i8] c"ssignal\00"
@"linux::str.33" = private global [8 x i8] c"gsignal\00"
@"linux::str.34" = private global [8 x i8] c"psignal\00"
@"linux::str.35" = private global [9 x i8] c"psiginfo\00"
@"linux::str.36" = private global [9 x i8] c"sigblock\00"
@"linux::str.37" = private global [11 x i8] c"sigsetmask\00"
@"linux::str.38" = private global [12 x i8] c"sigemptyset\00"
@"linux::str.39" = private global [11 x i8] c"sigfillset\00"
@"linux::str.40" = private global [10 x i8] c"sigaddset\00"
@"linux::str.41" = private global [10 x i8] c"sigdelset\00"
@"linux::str.42" = private global [12 x i8] c"sigismember\00"
@"linux::str.43" = private global [12 x i8] c"sigprocmask\00"
@"linux::str.44" = private global [11 x i8] c"sigsuspend\00"
@"linux::str.45" = private global [10 x i8] c"sigaction\00"
@"linux::str.46" = private global [11 x i8] c"sigpending\00"
@"linux::str.47" = private global [8 x i8] c"sigwait\00"
@"linux::str.48" = private global [12 x i8] c"sigwaitinfo\00"
@"linux::str.49" = private global [13 x i8] c"sigtimedwait\00"
@"linux::str.50" = private global [9 x i8] c"sigqueue\00"
@"linux::str.51" = private global [13 x i8] c"siginterrupt\00"
@"linux::str.52" = private global [12 x i8] c"sigaltstack\00"
@"linux::str.53" = private global [16 x i8] c"pthread_sigmask\00"
@"linux::str.54" = private global [13 x i8] c"pthread_kill\00"
@"linux::str.55" = private global [24 x i8] c"__libc_current_sigrtmin\00"
@"linux::str.56" = private global [24 x i8] c"__libc_current_sigrtmax\00"
@"linux::str.57" = private global [5 x i8] c"wait\00"
@"linux::str.58" = private global [8 x i8] c"waitpid\00"
@"linux::str.59" = private global [7 x i8] c"waitid\00"
@"linux::str.60" = private global [6 x i8] c"wait3\00"
@"linux::str.61" = private global [6 x i8] c"wait4\00"
@"linux::str.62" = private global [5 x i8] c"mmap\00"
@"linux::str.63" = private global [7 x i8] c"munmap\00"
@"linux::str.64" = private global [9 x i8] c"mprotect\00"
@"linux::str.65" = private global [6 x i8] c"msync\00"
@"linux::str.66" = private global [8 x i8] c"madvise\00"
@"linux::str.67" = private global [14 x i8] c"posix_madvise\00"
@"linux::str.68" = private global [6 x i8] c"mlock\00"
@"linux::str.69" = private global [8 x i8] c"munlock\00"
@"linux::str.70" = private global [9 x i8] c"mlockall\00"
@"linux::str.71" = private global [11 x i8] c"munlockall\00"
@"linux::str.72" = private global [8 x i8] c"mincore\00"
@"linux::str.73" = private global [9 x i8] c"shm_open\00"
@"linux::str.74" = private global [11 x i8] c"shm_unlink\00"
@"linux::str.75" = private global [7 x i8] c"access\00"
@"linux::str.76" = private global [10 x i8] c"faccessat\00"
@"linux::str.77" = private global [6 x i8] c"lseek\00"
@"linux::str.78" = private global [6 x i8] c"close\00"
@"linux::str.79" = private global [5 x i8] c"read\00"
@"linux::str.80" = private global [6 x i8] c"write\00"
@"linux::str.81" = private global [6 x i8] c"pread\00"
@"linux::str.82" = private global [7 x i8] c"pwrite\00"
@"linux::str.83" = private global [5 x i8] c"pipe\00"
@"linux::str.84" = private global [6 x i8] c"alarm\00"
@"linux::str.85" = private global [6 x i8] c"sleep\00"
@"linux::str.86" = private global [7 x i8] c"ualarm\00"
@"linux::str.87" = private global [7 x i8] c"usleep\00"
@"linux::str.88" = private global [6 x i8] c"pause\00"
@"linux::str.89" = private global [6 x i8] c"chown\00"
@"linux::str.90" = private global [7 x i8] c"fchown\00"
@"linux::str.91" = private global [7 x i8] c"lchown\00"
@"linux::str.92" = private global [9 x i8] c"fchownat\00"
@"linux::str.93" = private global [6 x i8] c"chdir\00"
@"linux::str.94" = private global [7 x i8] c"fchdir\00"
@"linux::str.95" = private global [7 x i8] c"getcwd\00"
@"linux::str.96" = private global [4 x i8] c"dup\00"
@"linux::str.97" = private global [5 x i8] c"dup2\00"
@"linux::str.98" = private global [7 x i8] c"execve\00"
@"linux::str.99" = private global [8 x i8] c"fexecve\00"
@"linux::str.100" = private global [6 x i8] c"execv\00"
@"linux::str.101" = private global [7 x i8] c"execle\00"
@"linux::str.102" = private global [6 x i8] c"execl\00"
@"linux::str.103" = private global [7 x i8] c"execvp\00"
@"linux::str.104" = private global [7 x i8] c"execlp\00"
@"linux::str.105" = private global [5 x i8] c"nice\00"
@"linux::str.106" = private global [6 x i8] c"_exit\00"
@"linux::str.107" = private global [9 x i8] c"pathconf\00"
@"linux::str.108" = private global [10 x i8] c"fpathconf\00"
@"linux::str.109" = private global [8 x i8] c"sysconf\00"
@"linux::str.110" = private global [8 x i8] c"confstr\00"
@"linux::str.111" = private global [7 x i8] c"getpid\00"
@"linux::str.112" = private global [8 x i8] c"getppid\00"
@"linux::str.113" = private global [8 x i8] c"getpgrp\00"
@"linux::str.114" = private global [10 x i8] c"__getpgid\00"
@"linux::str.115" = private global [8 x i8] c"getpgid\00"
@"linux::str.116" = private global [8 x i8] c"setpgid\00"
@"linux::str.117" = private global [8 x i8] c"setpgrp\00"
@"linux::str.118" = private global [7 x i8] c"setsid\00"
@"linux::str.119" = private global [7 x i8] c"getsid\00"
@"linux::str.120" = private global [7 x i8] c"getuid\00"
@"linux::str.121" = private global [8 x i8] c"geteuid\00"
@"linux::str.122" = private global [7 x i8] c"getgid\00"
@"linux::str.123" = private global [8 x i8] c"getegid\00"
@"linux::str.124" = private global [10 x i8] c"getgroups\00"
@"linux::str.125" = private global [7 x i8] c"setuid\00"
@"linux::str.126" = private global [9 x i8] c"setreuid\00"
@"linux::str.127" = private global [8 x i8] c"seteuid\00"
@"linux::str.128" = private global [7 x i8] c"setgid\00"
@"linux::str.129" = private global [9 x i8] c"setregid\00"
@"linux::str.130" = private global [8 x i8] c"setegid\00"
@"linux::str.131" = private global [5 x i8] c"fork\00"
@"linux::str.132" = private global [6 x i8] c"vfork\00"
@"linux::str.133" = private global [8 x i8] c"ttyname\00"
@"linux::str.134" = private global [10 x i8] c"ttyname_r\00"
@"linux::str.135" = private global [7 x i8] c"isatty\00"
@"linux::str.136" = private global [8 x i8] c"ttyslot\00"
@"linux::str.137" = private global [5 x i8] c"link\00"
@"linux::str.138" = private global [7 x i8] c"linkat\00"
@"linux::str.139" = private global [8 x i8] c"symlink\00"
@"linux::str.140" = private global [9 x i8] c"readlink\00"
@"linux::str.141" = private global [10 x i8] c"symlinkat\00"
@"linux::str.142" = private global [11 x i8] c"readlinkat\00"
@"linux::str.143" = private global [7 x i8] c"unlink\00"
@"linux::str.144" = private global [9 x i8] c"unlinkat\00"
@"linux::str.145" = private global [6 x i8] c"rmdir\00"
@"linux::str.146" = private global [10 x i8] c"tcgetpgrp\00"
@"linux::str.147" = private global [10 x i8] c"tcsetpgrp\00"
@"linux::str.148" = private global [9 x i8] c"getlogin\00"
@"linux::str.149" = private global [11 x i8] c"getlogin_r\00"
@"linux::str.150" = private global [7 x i8] c"getopt\00"
@"linux::str.151" = private global [12 x i8] c"gethostname\00"
@"linux::str.152" = private global [12 x i8] c"sethostname\00"
@"linux::str.153" = private global [10 x i8] c"sethostid\00"
@"linux::str.154" = private global [14 x i8] c"getdomainname\00"
@"linux::str.155" = private global [14 x i8] c"setdomainname\00"
@"linux::str.156" = private global [8 x i8] c"vhangup\00"
@"linux::str.157" = private global [7 x i8] c"profil\00"
@"linux::str.158" = private global [5 x i8] c"acct\00"
@"linux::str.159" = private global [13 x i8] c"getusershell\00"
@"linux::str.160" = private global [13 x i8] c"endusershell\00"
@"linux::str.161" = private global [13 x i8] c"setusershell\00"
@"linux::str.162" = private global [7 x i8] c"daemon\00"
@"linux::str.163" = private global [7 x i8] c"chroot\00"
@"linux::str.164" = private global [8 x i8] c"getpass\00"
@"linux::str.165" = private global [6 x i8] c"fsync\00"
@"linux::str.166" = private global [10 x i8] c"gethostid\00"
@"linux::str.167" = private global [5 x i8] c"sync\00"
@"linux::str.168" = private global [12 x i8] c"getpagesize\00"
@"linux::str.169" = private global [14 x i8] c"getdtablesize\00"
@"linux::str.170" = private global [9 x i8] c"truncate\00"
@"linux::str.171" = private global [10 x i8] c"ftruncate\00"
@"linux::str.172" = private global [4 x i8] c"brk\00"
@"linux::str.173" = private global [5 x i8] c"sbrk\00"
@"linux::str.174" = private global [8 x i8] c"syscall\00"
@"linux::str.175" = private global [6 x i8] c"lockf\00"
@"linux::str.176" = private global [10 x i8] c"fdatasync\00"
@"linux::str.177" = private global [6 x i8] c"crypt\00"
@"linux::str.178" = private global [11 x i8] c"getentropy\00"
@"linux::str.179" = private global [12 x i8] c"cfgetospeed\00"
@"linux::str.180" = private global [12 x i8] c"cfgetispeed\00"
@"linux::str.181" = private global [12 x i8] c"cfsetospeed\00"
@"linux::str.182" = private global [12 x i8] c"cfsetispeed\00"
@"linux::str.183" = private global [11 x i8] c"cfsetspeed\00"
@"linux::str.184" = private global [10 x i8] c"tcgetattr\00"
@"linux::str.185" = private global [10 x i8] c"tcsetattr\00"
@"linux::str.186" = private global [10 x i8] c"cfmakeraw\00"
@"linux::str.187" = private global [12 x i8] c"tcsendbreak\00"
@"linux::str.188" = private global [8 x i8] c"tcdrain\00"
@"linux::str.189" = private global [8 x i8] c"tcflush\00"
@"linux::str.190" = private global [7 x i8] c"tcflow\00"
@"linux::str.191" = private global [9 x i8] c"tcgetsid\00"
@"linux::str.192" = private global [23 x i8] c"__ctype_get_mb_cur_max\00"
@"linux::str.193" = private global [6 x i8] c"atoll\00"
@"linux::str.194" = private global [7 x i8] c"strtof\00"
@"linux::str.195" = private global [8 x i8] c"strtold\00"
@"linux::str.196" = private global [7 x i8] c"strtoq\00"
@"linux::str.197" = private global [8 x i8] c"strtouq\00"
@"linux::str.198" = private global [8 x i8] c"strtoll\00"
@"linux::str.199" = private global [9 x i8] c"strtoull\00"
@"linux::str.200" = private global [5 x i8] c"l64a\00"
@"linux::str.201" = private global [5 x i8] c"a64l\00"
@"linux::str.202" = private global [7 x i8] c"select\00"
@"linux::str.203" = private global [8 x i8] c"pselect\00"
@"linux::str.204" = private global [7 x i8] c"random\00"
@"linux::str.205" = private global [8 x i8] c"srandom\00"
@"linux::str.206" = private global [10 x i8] c"initstate\00"
@"linux::str.207" = private global [9 x i8] c"setstate\00"
@"linux::str.208" = private global [9 x i8] c"random_r\00"
@"linux::str.209" = private global [10 x i8] c"srandom_r\00"
@"linux::str.210" = private global [12 x i8] c"initstate_r\00"
@"linux::str.211" = private global [11 x i8] c"setstate_r\00"
@"linux::str.212" = private global [7 x i8] c"rand_r\00"
@"linux::str.213" = private global [8 x i8] c"drand48\00"
@"linux::str.214" = private global [8 x i8] c"erand48\00"
@"linux::str.215" = private global [8 x i8] c"lrand48\00"
@"linux::str.216" = private global [8 x i8] c"nrand48\00"
@"linux::str.217" = private global [8 x i8] c"mrand48\00"
@"linux::str.218" = private global [8 x i8] c"jrand48\00"
@"linux::str.219" = private global [8 x i8] c"srand48\00"
@"linux::str.220" = private global [7 x i8] c"seed48\00"
@"linux::str.221" = private global [8 x i8] c"lcong48\00"
@"linux::str.222" = private global [10 x i8] c"drand48_r\00"
@"linux::str.223" = private global [10 x i8] c"erand48_r\00"
@"linux::str.224" = private global [10 x i8] c"lrand48_r\00"
@"linux::str.225" = private global [10 x i8] c"nrand48_r\00"
@"linux::str.226" = private global [10 x i8] c"mrand48_r\00"
@"linux::str.227" = private global [10 x i8] c"jrand48_r\00"
@"linux::str.228" = private global [10 x i8] c"srand48_r\00"
@"linux::str.229" = private global [9 x i8] c"seed48_r\00"
@"linux::str.230" = private global [10 x i8] c"lcong48_r\00"
@"linux::str.231" = private global [13 x i8] c"reallocarray\00"
@"linux::str.232" = private global [7 x i8] c"valloc\00"
@"linux::str.233" = private global [15 x i8] c"posix_memalign\00"
@"linux::str.234" = private global [14 x i8] c"aligned_alloc\00"
@"linux::str.235" = private global [14 x i8] c"at_quick_exit\00"
@"linux::str.236" = private global [8 x i8] c"on_exit\00"
@"linux::str.237" = private global [11 x i8] c"quick_exit\00"
@"linux::str.238" = private global [6 x i8] c"_Exit\00"
@"linux::str.239" = private global [7 x i8] c"putenv\00"
@"linux::str.240" = private global [7 x i8] c"setenv\00"
@"linux::str.241" = private global [9 x i8] c"unsetenv\00"
@"linux::str.242" = private global [9 x i8] c"clearenv\00"
@"linux::str.243" = private global [8 x i8] c"mkstemp\00"
@"linux::str.244" = private global [9 x i8] c"mkstemps\00"
@"linux::str.245" = private global [8 x i8] c"mkdtemp\00"
@"linux::str.246" = private global [9 x i8] c"realpath\00"
@"linux::str.247" = private global [6 x i8] c"llabs\00"
@"linux::str.248" = private global [6 x i8] c"lldiv\00"
@"linux::str.249" = private global [5 x i8] c"ecvt\00"
@"linux::str.250" = private global [5 x i8] c"fcvt\00"
@"linux::str.251" = private global [5 x i8] c"gcvt\00"
@"linux::str.252" = private global [6 x i8] c"qecvt\00"
@"linux::str.253" = private global [6 x i8] c"qfcvt\00"
@"linux::str.254" = private global [6 x i8] c"qgcvt\00"
@"linux::str.255" = private global [7 x i8] c"ecvt_r\00"
@"linux::str.256" = private global [7 x i8] c"fcvt_r\00"
@"linux::str.257" = private global [8 x i8] c"qecvt_r\00"
@"linux::str.258" = private global [8 x i8] c"qfcvt_r\00"
@"linux::str.259" = private global [8 x i8] c"rpmatch\00"
@"linux::str.260" = private global [10 x i8] c"getsubopt\00"
@"linux::str.261" = private global [11 x i8] c"getloadavg\00"
@"linux::str.262" = private global [13 x i8] c"_sys_siglist\00"
@_sys_siglist = external global [65 x i8*]
@"linux::str.263" = private global [12 x i8] c"sys_siglist\00"
@sys_siglist = external global [65 x i8*]
@"linux::str.264" = private global [10 x i8] c"__environ\00"
@__environ = external global i8**
@"linux::str.265" = private global [7 x i8] c"optarg\00"
@optarg = external global i8*
@"linux::str.266" = private global [7 x i8] c"optind\00"
@optind = external global i32
@"linux::str.267" = private global [7 x i8] c"opterr\00"
@opterr = external global i32
@"linux::str.268" = private global [7 x i8] c"optopt\00"
@optopt = external global i32

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

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

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
  call void @"main::main::([[int8]])"({ i64, { i64, i8* }* } %args.3)
  call void @free(i8* %args)
  ret i32 0
}

declare i8* @malloc(i64)

define void @"main::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  %tmp.0 = alloca [1 x { i64*, i8*, %"runtime::Type"* }], align 8
  %tmp.1 = alloca i32, align 4
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"std::main::([[int8]])"({ i64, { i64, i8* }* } %0)
  %1 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"type::main::([[int8]])"({ i64, { i64, i8* }* } %1)
  %2 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"runtime::main::([[int8]])"({ i64, { i64, i8* }* } %2)
  %3 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"preload::main::([[int8]])"({ i64, { i64, i8* }* } %3)
  store i1 true, i1* @"main::e", align 1
  %4 = load i1, i1* @"main::e", align 1
  %5 = call i8* @malloc(i64 8)
  %6 = bitcast i8* %5 to i64*
  store i64 0, i64* %6, align 8
  %7 = insertvalue { i64*, i8*, %"runtime::Type"* } undef, i64* %6, 0
  %8 = call i8* @malloc(i64 8)
  %9 = bitcast i8* %8 to i1*
  store i1 %4, i1* %9, align 1
  %10 = bitcast i1* %9 to i8*
  %11 = insertvalue { i64*, i8*, %"runtime::Type"* } %7, i8* %10, 1
  %12 = insertvalue { i64*, i8*, %"runtime::Type"* } %11, %"runtime::Type"* @"type::bool", 2
  %13 = insertvalue [1 x { i64*, i8*, %"runtime::Type"* }] undef, { i64*, i8*, %"runtime::Type"* } %12, 0
  store [1 x { i64*, i8*, %"runtime::Type"* }] %13, [1 x { i64*, i8*, %"runtime::Type"* }]* %tmp.0, align 8
  %14 = getelementptr [1 x { i64*, i8*, %"runtime::Type"* }], [1 x { i64*, i8*, %"runtime::Type"* }]* %tmp.0, i64 0, i64 0
  %15 = insertvalue { i64, { i64*, i8*, %"runtime::Type"* }* } { i64 1, { i64*, i8*, %"runtime::Type"* }* undef }, { i64*, i8*, %"runtime::Type"* }* %14, 1
  %16 = call i32 @"std::print::([&])"({ i64, { i64*, i8*, %"runtime::Type"* }* } %15)
  store i32 %16, i32* %tmp.1, align 4
  ret void
}

declare void @free(i8*)

define { i64, i8* } @"to_string::(main::E)"(i8 %enum.value) {
start:
  switch i8 %enum.value, label %9 [
    i8 2, label %0
    i8 1, label %3
    i8 0, label %6
  ]

0:                                                ; preds = %start
  %1 = getelementptr [4 x i8], [4 x i8]* @"main::str.0", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [4 x i8], [4 x i8]* @"main::str.1", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [4 x i8], [4 x i8]* @"main::str.2", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [10 x i8], [10 x i8]* @"main::str.3", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11
}

define %"runtime::Type"* @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %a.value) {
start:
  %a.0 = alloca %"runtime::Ref", align 8
  store %"runtime::Ref" %a.value, %"runtime::Ref"* %a.0, align 8
  %0 = getelementptr %"runtime::Ref", %"runtime::Ref"* %a.0, i32 0, i32 2
  %1 = load %"runtime::Type"*, %"runtime::Type"** %0, align 8
  ret %"runtime::Type"* %1

2:                                                ; No predecessors!
  ret %"runtime::Type"* undef
}

define void @"runtime::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"cstd::main::([[int8]])"({ i64, { i64, i8* }* } %0)
  ret void
}

define i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %a.value, %"runtime::Type"* %b.value) {
start:
  %a.0 = alloca %"runtime::Type"*, align 8
  %b.0 = alloca %"runtime::Type"*, align 8
  %tmp.0 = alloca i1, align 1
  %tmp.1 = alloca i1, align 1
  %tmp.2 = alloca i1, align 1
  %tmp.3 = alloca i1, align 1
  %tmp.4 = alloca i1, align 1
  %tmp.5 = alloca i1, align 1
  %tmp.6 = alloca i1, align 1
  %i.12 = alloca i32, align 4
  %tmp.7 = alloca i1, align 1
  %i.14 = alloca i32, align 4
  %tmp.8 = alloca i1, align 1
  store %"runtime::Type"* %a.value, %"runtime::Type"** %a.0, align 8
  store %"runtime::Type"* %b.value, %"runtime::Type"** %b.0, align 8
  %0 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %1 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %2 = ptrtoint %"runtime::Type"* %0 to i64
  %3 = ptrtoint %"runtime::Type"* %1 to i64
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %start
  ret i1 true

6:                                                ; No predecessors!
  br label %7

7:                                                ; preds = %6, %start
  %8 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %9 = ptrtoint %"runtime::Type"* %8 to i64
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i1 true, i1* %tmp.0, align 1
  br label %18

13:                                               ; preds = %7
  %14 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %15 = ptrtoint %"runtime::Type"* %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  store i1 %17, i1* %tmp.0, align 1
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i1, i1* %tmp.0, align 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  ret i1 false

21:                                               ; No predecessors!
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %24 = getelementptr %"runtime::Type", %"runtime::Type"* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %27 = getelementptr %"runtime::Type", %"runtime::Type"* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  ret i1 false

31:                                               ; No predecessors!
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %34 = getelementptr %"runtime::Type", %"runtime::Type"* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  ret i1 true

38:                                               ; No predecessors!
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %41 = getelementptr %"runtime::Type", %"runtime::Type"* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %46 = getelementptr %"runtime::Type", %"runtime::Type"* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %49 = getelementptr %"runtime::Type", %"runtime::Type"* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i1 false, i1* %tmp.1, align 1
  br label %61

53:                                               ; preds = %44
  %54 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %55 = getelementptr %"runtime::Type", %"runtime::Type"* %54, i32 0, i32 2
  %56 = load i1, i1* %55, align 1
  %57 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %58 = getelementptr %"runtime::Type", %"runtime::Type"* %57, i32 0, i32 2
  %59 = load i1, i1* %58, align 1
  %60 = icmp eq i1 %56, %59
  store i1 %60, i1* %tmp.1, align 1
  br label %61

61:                                               ; preds = %53, %52
  %62 = load i1, i1* %tmp.1, align 1
  ret i1 %62

63:                                               ; No predecessors!
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %66 = getelementptr %"runtime::Type", %"runtime::Type"* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %71 = getelementptr %"runtime::Type", %"runtime::Type"* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %74 = getelementptr %"runtime::Type", %"runtime::Type"* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  ret i1 %76

77:                                               ; No predecessors!
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %80 = getelementptr %"runtime::Type", %"runtime::Type"* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 6
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %85 = getelementptr %"runtime::Type", %"runtime::Type"* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %88 = getelementptr %"runtime::Type", %"runtime::Type"* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i1 false, i1* %tmp.2, align 1
  br label %101

92:                                               ; preds = %83
  %93 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %94 = getelementptr %"runtime::Type", %"runtime::Type"* %93, i32 0, i32 4
  %95 = load %"runtime::Type"*, %"runtime::Type"** %94, align 8
  %96 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %97 = getelementptr %"runtime::Type", %"runtime::Type"* %96, i32 0, i32 4
  %98 = load %"runtime::Type"*, %"runtime::Type"** %97, align 8
  %99 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %95, %"runtime::Type"* %98)
  store i1 %99, i1* %tmp.3, align 1
  %100 = load i1, i1* %tmp.3, align 1
  store i1 %100, i1* %tmp.2, align 1
  br label %101

101:                                              ; preds = %92, %91
  %102 = load i1, i1* %tmp.2, align 1
  ret i1 %102

103:                                              ; No predecessors!
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %106 = getelementptr %"runtime::Type", %"runtime::Type"* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i1 true, i1* %tmp.4, align 1
  br label %115

110:                                              ; preds = %104
  %111 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %112 = getelementptr %"runtime::Type", %"runtime::Type"* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 7
  store i1 %114, i1* %tmp.4, align 1
  br label %115

115:                                              ; preds = %110, %109
  %116 = load i1, i1* %tmp.4, align 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  store i1 true, i1* %tmp.5, align 1
  br label %123

118:                                              ; preds = %115
  %119 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %120 = getelementptr %"runtime::Type", %"runtime::Type"* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 8
  store i1 %122, i1* %tmp.5, align 1
  br label %123

123:                                              ; preds = %118, %117
  %124 = load i1, i1* %tmp.5, align 1
  br i1 %124, label %125, label %135

125:                                              ; preds = %123
  %126 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %127 = getelementptr %"runtime::Type", %"runtime::Type"* %126, i32 0, i32 4
  %128 = load %"runtime::Type"*, %"runtime::Type"** %127, align 8
  %129 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %130 = getelementptr %"runtime::Type", %"runtime::Type"* %129, i32 0, i32 4
  %131 = load %"runtime::Type"*, %"runtime::Type"** %130, align 8
  %132 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %128, %"runtime::Type"* %131)
  store i1 %132, i1* %tmp.6, align 1
  %133 = load i1, i1* %tmp.6, align 1
  ret i1 %133

134:                                              ; No predecessors!
  br label %135

135:                                              ; preds = %134, %123
  %136 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %137 = getelementptr %"runtime::Type", %"runtime::Type"* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 9
  br i1 %139, label %140, label %233

140:                                              ; preds = %135
  %141 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %142 = getelementptr %"runtime::Type", %"runtime::Type"* %141, i32 0, i32 8
  %143 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %146 = getelementptr %"runtime::Type", %"runtime::Type"* %145, i32 0, i32 8
  %147 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %144, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  ret i1 false

151:                                              ; No predecessors!
  br label %152

152:                                              ; preds = %151, %140
  %153 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %154 = getelementptr %"runtime::Type", %"runtime::Type"* %153, i32 0, i32 9
  %155 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %158 = getelementptr %"runtime::Type", %"runtime::Type"* %157, i32 0, i32 9
  %159 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %156, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  ret i1 false

163:                                              ; No predecessors!
  br label %164

164:                                              ; preds = %163, %152
  %165 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %166 = getelementptr %"runtime::Type", %"runtime::Type"* %165, i32 0, i32 8
  %167 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  store i32 0, i32* %i.12, align 4
  br label %170

170:                                              ; preds = %198, %164
  %171 = load i32, i32* %i.12, align 4
  %172 = icmp slt i32 %171, %169
  br i1 %172, label %173, label %200

173:                                              ; preds = %170
  %174 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %175 = getelementptr %"runtime::Type", %"runtime::Type"* %174, i32 0, i32 8
  %176 = load i32, i32* %i.12, align 4
  %177 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %175, i32 0, i32 1
  %178 = load %"runtime::Type"**, %"runtime::Type"*** %177, align 8
  %179 = getelementptr %"runtime::Type"*, %"runtime::Type"** %178, i32 %176
  %180 = load %"runtime::Type"*, %"runtime::Type"** %179, align 8
  %181 = getelementptr %"runtime::Type", %"runtime::Type"* %180, i32 0, i32 4
  %182 = load %"runtime::Type"*, %"runtime::Type"** %181, align 8
  %183 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %184 = getelementptr %"runtime::Type", %"runtime::Type"* %183, i32 0, i32 8
  %185 = load i32, i32* %i.12, align 4
  %186 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %184, i32 0, i32 1
  %187 = load %"runtime::Type"**, %"runtime::Type"*** %186, align 8
  %188 = getelementptr %"runtime::Type"*, %"runtime::Type"** %187, i32 %185
  %189 = load %"runtime::Type"*, %"runtime::Type"** %188, align 8
  %190 = getelementptr %"runtime::Type", %"runtime::Type"* %189, i32 0, i32 4
  %191 = load %"runtime::Type"*, %"runtime::Type"** %190, align 8
  %192 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %182, %"runtime::Type"* %191)
  store i1 %192, i1* %tmp.7, align 1
  %193 = load i1, i1* %tmp.7, align 1
  %194 = xor i1 %193, true
  br i1 %194, label %195, label %197

195:                                              ; preds = %173
  ret i1 false

196:                                              ; No predecessors!
  br label %197

197:                                              ; preds = %196, %173
  br label %198

198:                                              ; preds = %197
  %199 = add i32 %171, 1
  store i32 %199, i32* %i.12, align 4
  br label %170

200:                                              ; preds = %170
  %201 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %202 = getelementptr %"runtime::Type", %"runtime::Type"* %201, i32 0, i32 9
  %203 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  store i32 0, i32* %i.14, align 4
  br label %206

206:                                              ; preds = %230, %200
  %207 = load i32, i32* %i.14, align 4
  %208 = icmp slt i32 %207, %205
  br i1 %208, label %209, label %232

209:                                              ; preds = %206
  %210 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %211 = getelementptr %"runtime::Type", %"runtime::Type"* %210, i32 0, i32 9
  %212 = load i32, i32* %i.14, align 4
  %213 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %211, i32 0, i32 1
  %214 = load %"runtime::Type"**, %"runtime::Type"*** %213, align 8
  %215 = getelementptr %"runtime::Type"*, %"runtime::Type"** %214, i32 %212
  %216 = load %"runtime::Type"*, %"runtime::Type"** %215, align 8
  %217 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %218 = getelementptr %"runtime::Type", %"runtime::Type"* %217, i32 0, i32 9
  %219 = load i32, i32* %i.14, align 4
  %220 = getelementptr { i64, %"runtime::Type"** }, { i64, %"runtime::Type"** }* %218, i32 0, i32 1
  %221 = load %"runtime::Type"**, %"runtime::Type"*** %220, align 8
  %222 = getelementptr %"runtime::Type"*, %"runtime::Type"** %221, i32 %219
  %223 = load %"runtime::Type"*, %"runtime::Type"** %222, align 8
  %224 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %216, %"runtime::Type"* %223)
  store i1 %224, i1* %tmp.8, align 1
  %225 = load i1, i1* %tmp.8, align 1
  %226 = xor i1 %225, true
  br i1 %226, label %227, label %229

227:                                              ; preds = %209
  ret i1 false

228:                                              ; No predecessors!
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229
  %231 = add i32 %207, 1
  store i32 %231, i32* %i.14, align 4
  br label %206

232:                                              ; preds = %206
  br label %233

233:                                              ; preds = %232, %135
  %234 = load %"runtime::Type"*, %"runtime::Type"** %a.0, align 8
  %235 = getelementptr %"runtime::Type", %"runtime::Type"* %234, i32 0, i32 1
  %236 = load { i64, i8* }, { i64, i8* }* %235, align 8
  %237 = load %"runtime::Type"*, %"runtime::Type"** %b.0, align 8
  %238 = getelementptr %"runtime::Type", %"runtime::Type"* %237, i32 0, i32 1
  %239 = load { i64, i8* }, { i64, i8* }* %238, align 8
  %240 = extractvalue { i64, i8* } %236, 1
  %241 = extractvalue { i64, i8* } %239, 1
  %242 = call i32 @strcmp(i8* %240, i8* %241)
  %243 = icmp eq i32 %242, 0
  ret i1 %243

244:                                              ; No predecessors!
  ret i1 undef
}

declare i32 @strcmp(i8*, i8*)

define { i64, i8* } @"to_string::(runtime::TypeKind)"(i32 %enum.value) {
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

0:                                                ; preds = %start
  %1 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.0", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.1", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.2", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.3", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11

12:                                               ; preds = %start
  %13 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.4", i32 0, i32 0
  %14 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %13, 1
  ret { i64, i8* } %14

15:                                               ; preds = %start
  %16 = getelementptr [8 x i8], [8 x i8]* @"runtime::str.5", i32 0, i32 0
  %17 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %16, 1
  ret { i64, i8* } %17

18:                                               ; preds = %start
  %19 = getelementptr [6 x i8], [6 x i8]* @"runtime::str.6", i32 0, i32 0
  %20 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %19, 1
  ret { i64, i8* } %20

21:                                               ; preds = %start
  %22 = getelementptr [5 x i8], [5 x i8]* @"runtime::str.7", i32 0, i32 0
  %23 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %22, 1
  ret { i64, i8* } %23

24:                                               ; preds = %start
  %25 = getelementptr [7 x i8], [7 x i8]* @"runtime::str.8", i32 0, i32 0
  %26 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %25, 1
  ret { i64, i8* } %26

27:                                               ; preds = %start
  %28 = getelementptr [13 x i8], [13 x i8]* @"runtime::str.9", i32 0, i32 0
  %29 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %28, 1
  ret { i64, i8* } %29

30:                                               ; preds = %start
  %31 = getelementptr [9 x i8], [9 x i8]* @"runtime::str.10", i32 0, i32 0
  %32 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %31, 1
  ret { i64, i8* } %32

33:                                               ; preds = %start
  %34 = getelementptr [10 x i8], [10 x i8]* @"runtime::str.11", i32 0, i32 0
  %35 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %34, 1
  ret { i64, i8* } %35
}

define void @"type::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %0 = getelementptr [9 x i8], [9 x i8]* @"type::str.0", i32 0, i32 0
  %1 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Map", i32 0, i32 1, i32 1
  store i8* %0, i8** %1, align 8
  %2 = getelementptr [5 x i8], [5 x i8]* @"type::str.2", i32 0, i32 0
  %3 = insertvalue %"runtime::Field" { { i64, i8* } { i64 5, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %2, 0, 1
  %4 = getelementptr [7 x i8], [7 x i8]* @"type::str.3", i32 0, i32 0
  %5 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint64", i32 0, i32 1, i32 1
  store i8* %4, i8** %5, align 8
  %6 = insertvalue %"runtime::Field" %3, %"runtime::Type"* @"type::uint64", 2
  %7 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 0
  store %"runtime::Field" %6, %"runtime::Field"* %7, align 8
  %8 = getelementptr [8 x i8], [8 x i8]* @"type::str.4", i32 0, i32 0
  %9 = insertvalue %"runtime::Field" { { i64, i8* } { i64 8, i8* undef }, i64 8, %"runtime::Type"* undef }, i8* %8, 0, 1
  %10 = getelementptr [14 x i8], [14 x i8]* @"type::str.5", i32 0, i32 0
  %11 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[*map::Entry]", i32 0, i32 1, i32 1
  store i8* %10, i8** %11, align 8
  %12 = getelementptr [12 x i8], [12 x i8]* @"type::str.6", i32 0, i32 0
  %13 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*map::Entry", i32 0, i32 1, i32 1
  store i8* %12, i8** %13, align 8
  %14 = getelementptr [11 x i8], [11 x i8]* @"type::str.7", i32 0, i32 0
  %15 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Entry", i32 0, i32 1, i32 1
  store i8* %14, i8** %15, align 8
  %16 = getelementptr [4 x i8], [4 x i8]* @"type::str.9", i32 0, i32 0
  %17 = insertvalue %"runtime::Field" { { i64, i8* } { i64 4, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %16, 0, 1
  %18 = getelementptr [7 x i8], [7 x i8]* @"type::str.10", i32 0, i32 0
  %19 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[int8]", i32 0, i32 1, i32 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr [5 x i8], [5 x i8]* @"type::str.11", i32 0, i32 0
  %21 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int8", i32 0, i32 1, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[int8]", i32 0, i32 4
  store %"runtime::Type"* @"type::int8", %"runtime::Type"** %22, align 8
  %23 = insertvalue %"runtime::Field" %17, %"runtime::Type"* @"type::[int8]", 2
  %24 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 0
  store %"runtime::Field" %23, %"runtime::Field"* %24, align 8
  %25 = getelementptr [6 x i8], [6 x i8]* @"type::str.12", i32 0, i32 0
  %26 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 16, %"runtime::Type"* undef }, i8* %25, 0, 1
  %27 = getelementptr [2 x i8], [2 x i8]* @"type::str.13", i32 0, i32 0
  %28 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*", i32 0, i32 1, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*", i32 0, i32 4
  store %"runtime::Type"* null, %"runtime::Type"** %29, align 8
  %30 = insertvalue %"runtime::Field" %26, %"runtime::Type"* @"type::*", 2
  %31 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 1
  store %"runtime::Field" %30, %"runtime::Field"* %31, align 8
  %32 = getelementptr [5 x i8], [5 x i8]* @"type::str.14", i32 0, i32 0
  %33 = insertvalue %"runtime::Field" { { i64, i8* } { i64 5, i8* undef }, i64 24, %"runtime::Type"* undef }, i8* %32, 0, 1
  %34 = insertvalue %"runtime::Field" %33, %"runtime::Type"* @"type::*map::Entry", 2
  %35 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 2
  store %"runtime::Field" %34, %"runtime::Field"* %35, align 8
  %36 = getelementptr [3 x %"runtime::Field"], [3 x %"runtime::Field"]* @"type::fields.8", i32 0, i32 0
  %37 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Entry", i32 0, i32 7, i32 1
  store %"runtime::Field"* %36, %"runtime::Field"** %37, align 8
  %38 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*map::Entry", i32 0, i32 4
  store %"runtime::Type"* @"type::map::Entry", %"runtime::Type"** %38, align 8
  %39 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::[*map::Entry]", i32 0, i32 4
  store %"runtime::Type"* @"type::*map::Entry", %"runtime::Type"** %39, align 8
  %40 = insertvalue %"runtime::Field" %9, %"runtime::Type"* @"type::[*map::Entry]", 2
  %41 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 1
  store %"runtime::Field" %40, %"runtime::Field"* %41, align 8
  %42 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.1", i32 0, i32 0
  %43 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::map::Map", i32 0, i32 7, i32 1
  store %"runtime::Field"* %42, %"runtime::Field"** %43, align 8
  %44 = getelementptr [21 x i8], [21 x i8]* @"type::str.15", i32 0, i32 0
  %45 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiFunction", i32 0, i32 1, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr [5 x i8], [5 x i8]* @"type::str.17", i32 0, i32 0
  %47 = insertvalue %"runtime::Field" { { i64, i8* } { i64 5, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %46, 0, 1
  %48 = insertvalue %"runtime::Field" %47, %"runtime::Type"* @"type::[int8]", 2
  %49 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 0
  store %"runtime::Field" %48, %"runtime::Field"* %49, align 8
  %50 = getelementptr [4 x i8], [4 x i8]* @"type::str.18", i32 0, i32 0
  %51 = insertvalue %"runtime::Field" { { i64, i8* } { i64 4, i8* undef }, i64 16, %"runtime::Type"* undef }, i8* %50, 0, 1
  %52 = getelementptr [10 x i8], [10 x i8]* @"type::str.19", i32 0, i32 0
  %53 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*() -> ()", i32 0, i32 1, i32 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr [9 x i8], [9 x i8]* @"type::str.20", i32 0, i32 0
  %55 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::() -> ()", i32 0, i32 1, i32 1
  store i8* %54, i8** %55, align 8
  %56 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*() -> ()", i32 0, i32 4
  store %"runtime::Type"* @"type::() -> ()", %"runtime::Type"** %56, align 8
  %57 = insertvalue %"runtime::Field" %51, %"runtime::Type"* @"type::*() -> ()", 2
  %58 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 1
  store %"runtime::Field" %57, %"runtime::Field"* %58, align 8
  %59 = getelementptr [12 x i8], [12 x i8]* @"type::str.21", i32 0, i32 0
  %60 = insertvalue %"runtime::Field" { { i64, i8* } { i64 12, i8* undef }, i64 24, %"runtime::Type"* undef }, i8* %59, 0, 1
  %61 = getelementptr [5 x i8], [5 x i8]* @"type::str.22", i32 0, i32 0
  %62 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::bool", i32 0, i32 1, i32 1
  store i8* %61, i8** %62, align 8
  %63 = insertvalue %"runtime::Field" %60, %"runtime::Type"* @"type::bool", 2
  %64 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 2
  store %"runtime::Field" %63, %"runtime::Field"* %64, align 8
  %65 = getelementptr [8 x i8], [8 x i8]* @"type::str.23", i32 0, i32 0
  %66 = insertvalue %"runtime::Field" { { i64, i8* } { i64 8, i8* undef }, i64 32, %"runtime::Type"* undef }, i8* %65, 0, 1
  %67 = getelementptr [13 x i8], [13 x i8]* @"type::str.24", i32 0, i32 0
  %68 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_cif", i32 0, i32 1, i32 1
  store i8* %67, i8** %68, align 8
  %69 = getelementptr [4 x i8], [4 x i8]* @"type::str.26", i32 0, i32 0
  %70 = insertvalue %"runtime::Field" { { i64, i8* } { i64 4, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %69, 0, 1
  %71 = getelementptr [13 x i8], [13 x i8]* @"type::str.27", i32 0, i32 0
  %72 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 1, i32 1
  store i8* %71, i8** %72, align 8
  %73 = getelementptr [6 x i8], [6 x i8]* @"type::str.28", i32 0, i32 0
  %74 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int32", i32 0, i32 1, i32 1
  store i8* %73, i8** %74, align 8
  %75 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 4
  store %"runtime::Type"* @"type::int32", %"runtime::Type"** %75, align 8
  %76 = getelementptr [11 x i8], [11 x i8]* @"type::str.30", i32 0, i32 0
  %77 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 11, i8* undef }, i64 2 }, i8* %76, 0, 1
  %78 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 0
  store %"runtime::EnumValue" %77, %"runtime::EnumValue"* %78, align 8
  %79 = getelementptr [11 x i8], [11 x i8]* @"type::str.31", i32 0, i32 0
  %80 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 11, i8* undef }, i64 4 }, i8* %79, 0, 1
  %81 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 1
  store %"runtime::EnumValue" %80, %"runtime::EnumValue"* %81, align 8
  %82 = getelementptr [10 x i8], [10 x i8]* @"type::str.32", i32 0, i32 0
  %83 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 10, i8* undef }, i64 3 }, i8* %82, 0, 1
  %84 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 2
  store %"runtime::EnumValue" %83, %"runtime::EnumValue"* %84, align 8
  %85 = getelementptr [14 x i8], [14 x i8]* @"type::str.33", i32 0, i32 0
  %86 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 14, i8* undef }, i64 1 }, i8* %85, 0, 1
  %87 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 3
  store %"runtime::EnumValue" %86, %"runtime::EnumValue"* %87, align 8
  %88 = getelementptr [13 x i8], [13 x i8]* @"type::str.34", i32 0, i32 0
  %89 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 13, i8* undef }, i64 5 }, i8* %88, 0, 1
  %90 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 4
  store %"runtime::EnumValue" %89, %"runtime::EnumValue"* %90, align 8
  %91 = getelementptr [10 x i8], [10 x i8]* @"type::str.35", i32 0, i32 0
  %92 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 10, i8* undef }, i64 3 }, i8* %91, 0, 1
  %93 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 5
  store %"runtime::EnumValue" %92, %"runtime::EnumValue"* %93, align 8
  %94 = getelementptr [16 x i8], [16 x i8]* @"type::str.36", i32 0, i32 0
  %95 = insertvalue %"runtime::EnumValue" { { i64, i8* } { i64 16, i8* undef }, i64 2 }, i8* %94, 0, 1
  %96 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 6
  store %"runtime::EnumValue" %95, %"runtime::EnumValue"* %96, align 8
  %97 = getelementptr [7 x %"runtime::EnumValue"], [7 x %"runtime::EnumValue"]* @"type::values.29", i32 0, i32 0
  %98 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_abi", i32 0, i32 10, i32 1
  store %"runtime::EnumValue"* %97, %"runtime::EnumValue"** %98, align 8
  %99 = insertvalue %"runtime::Field" %70, %"runtime::Type"* @"type::ffi::ffi_abi", 2
  %100 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 0
  store %"runtime::Field" %99, %"runtime::Field"* %100, align 8
  %101 = getelementptr [6 x i8], [6 x i8]* @"type::str.37", i32 0, i32 0
  %102 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 4, %"runtime::Type"* undef }, i8* %101, 0, 1
  %103 = getelementptr [7 x i8], [7 x i8]* @"type::str.38", i32 0, i32 0
  %104 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint32", i32 0, i32 1, i32 1
  store i8* %103, i8** %104, align 8
  %105 = insertvalue %"runtime::Field" %102, %"runtime::Type"* @"type::uint32", 2
  %106 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 1
  store %"runtime::Field" %105, %"runtime::Field"* %106, align 8
  %107 = getelementptr [10 x i8], [10 x i8]* @"type::str.39", i32 0, i32 0
  %108 = insertvalue %"runtime::Field" { { i64, i8* } { i64 10, i8* undef }, i64 8, %"runtime::Type"* undef }, i8* %107, 0, 1
  %109 = getelementptr [16 x i8], [16 x i8]* @"type::str.40", i32 0, i32 0
  %110 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::**ffi::ffi_type", i32 0, i32 1, i32 1
  store i8* %109, i8** %110, align 8
  %111 = getelementptr [15 x i8], [15 x i8]* @"type::str.41", i32 0, i32 0
  %112 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*ffi::ffi_type", i32 0, i32 1, i32 1
  store i8* %111, i8** %112, align 8
  %113 = getelementptr [14 x i8], [14 x i8]* @"type::str.42", i32 0, i32 0
  %114 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_type", i32 0, i32 1, i32 1
  store i8* %113, i8** %114, align 8
  %115 = getelementptr [5 x i8], [5 x i8]* @"type::str.44", i32 0, i32 0
  %116 = insertvalue %"runtime::Field" { { i64, i8* } { i64 5, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %115, 0, 1
  %117 = insertvalue %"runtime::Field" %116, %"runtime::Type"* @"type::uint64", 2
  %118 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 0
  store %"runtime::Field" %117, %"runtime::Field"* %118, align 8
  %119 = getelementptr [10 x i8], [10 x i8]* @"type::str.45", i32 0, i32 0
  %120 = insertvalue %"runtime::Field" { { i64, i8* } { i64 10, i8* undef }, i64 8, %"runtime::Type"* undef }, i8* %119, 0, 1
  %121 = getelementptr [7 x i8], [7 x i8]* @"type::str.46", i32 0, i32 0
  %122 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint16", i32 0, i32 1, i32 1
  store i8* %121, i8** %122, align 8
  %123 = insertvalue %"runtime::Field" %120, %"runtime::Type"* @"type::uint16", 2
  %124 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 1
  store %"runtime::Field" %123, %"runtime::Field"* %124, align 8
  %125 = getelementptr [6 x i8], [6 x i8]* @"type::str.47", i32 0, i32 0
  %126 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 10, %"runtime::Type"* undef }, i8* %125, 0, 1
  %127 = insertvalue %"runtime::Field" %126, %"runtime::Type"* @"type::uint16", 2
  %128 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 2
  store %"runtime::Field" %127, %"runtime::Field"* %128, align 8
  %129 = getelementptr [9 x i8], [9 x i8]* @"type::str.48", i32 0, i32 0
  %130 = insertvalue %"runtime::Field" { { i64, i8* } { i64 9, i8* undef }, i64 16, %"runtime::Type"* undef }, i8* %129, 0, 1
  %131 = insertvalue %"runtime::Field" %130, %"runtime::Type"* @"type::**ffi::ffi_type", 2
  %132 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 3
  store %"runtime::Field" %131, %"runtime::Field"* %132, align 8
  %133 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.43", i32 0, i32 0
  %134 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_type", i32 0, i32 7, i32 1
  store %"runtime::Field"* %133, %"runtime::Field"** %134, align 8
  %135 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*ffi::ffi_type", i32 0, i32 4
  store %"runtime::Type"* @"type::ffi::ffi_type", %"runtime::Type"** %135, align 8
  %136 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::**ffi::ffi_type", i32 0, i32 4
  store %"runtime::Type"* @"type::*ffi::ffi_type", %"runtime::Type"** %136, align 8
  %137 = insertvalue %"runtime::Field" %108, %"runtime::Type"* @"type::**ffi::ffi_type", 2
  %138 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 2
  store %"runtime::Field" %137, %"runtime::Field"* %138, align 8
  %139 = getelementptr [6 x i8], [6 x i8]* @"type::str.49", i32 0, i32 0
  %140 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 16, %"runtime::Type"* undef }, i8* %139, 0, 1
  %141 = insertvalue %"runtime::Field" %140, %"runtime::Type"* @"type::*ffi::ffi_type", 2
  %142 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 3
  store %"runtime::Field" %141, %"runtime::Field"* %142, align 8
  %143 = getelementptr [6 x i8], [6 x i8]* @"type::str.50", i32 0, i32 0
  %144 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 24, %"runtime::Type"* undef }, i8* %143, 0, 1
  %145 = insertvalue %"runtime::Field" %144, %"runtime::Type"* @"type::uint32", 2
  %146 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 4
  store %"runtime::Field" %145, %"runtime::Field"* %146, align 8
  %147 = getelementptr [6 x i8], [6 x i8]* @"type::str.51", i32 0, i32 0
  %148 = insertvalue %"runtime::Field" { { i64, i8* } { i64 6, i8* undef }, i64 28, %"runtime::Type"* undef }, i8* %147, 0, 1
  %149 = insertvalue %"runtime::Field" %148, %"runtime::Type"* @"type::uint32", 2
  %150 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 5
  store %"runtime::Field" %149, %"runtime::Field"* %150, align 8
  %151 = getelementptr [6 x %"runtime::Field"], [6 x %"runtime::Field"]* @"type::fields.25", i32 0, i32 0
  %152 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::ffi::ffi_cif", i32 0, i32 7, i32 1
  store %"runtime::Field"* %151, %"runtime::Field"** %152, align 8
  %153 = insertvalue %"runtime::Field" %66, %"runtime::Type"* @"type::ffi::ffi_cif", 2
  %154 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 3
  store %"runtime::Field" %153, %"runtime::Field"* %154, align 8
  %155 = getelementptr [4 x %"runtime::Field"], [4 x %"runtime::Field"]* @"type::fields.16", i32 0, i32 0
  %156 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiFunction", i32 0, i32 7, i32 1
  store %"runtime::Field"* %155, %"runtime::Field"** %156, align 8
  %157 = getelementptr [19 x i8], [19 x i8]* @"type::str.52", i32 0, i32 0
  %158 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiGlobal", i32 0, i32 1, i32 1
  store i8* %157, i8** %158, align 8
  %159 = getelementptr [5 x i8], [5 x i8]* @"type::str.54", i32 0, i32 0
  %160 = insertvalue %"runtime::Field" { { i64, i8* } { i64 5, i8* undef }, i64 0, %"runtime::Type"* undef }, i8* %159, 0, 1
  %161 = insertvalue %"runtime::Field" %160, %"runtime::Type"* @"type::[int8]", 2
  %162 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 0
  store %"runtime::Field" %161, %"runtime::Field"* %162, align 8
  %163 = getelementptr [4 x i8], [4 x i8]* @"type::str.55", i32 0, i32 0
  %164 = insertvalue %"runtime::Field" { { i64, i8* } { i64 4, i8* undef }, i64 16, %"runtime::Type"* undef }, i8* %163, 0, 1
  %165 = insertvalue %"runtime::Field" %164, %"runtime::Type"* @"type::*", 2
  %166 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 1
  store %"runtime::Field" %165, %"runtime::Field"* %166, align 8
  %167 = getelementptr [2 x %"runtime::Field"], [2 x %"runtime::Field"]* @"type::fields.53", i32 0, i32 0
  %168 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::preload::FfiGlobal", i32 0, i32 7, i32 1
  store %"runtime::Field"* %167, %"runtime::Field"** %168, align 8
  %169 = getelementptr [6 x i8], [6 x i8]* @"type::str.56", i32 0, i32 0
  %170 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*int8", i32 0, i32 1, i32 1
  store i8* %169, i8** %170, align 8
  %171 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::*int8", i32 0, i32 4
  store %"runtime::Type"* @"type::int8", %"runtime::Type"** %171, align 8
  %172 = getelementptr [6 x i8], [6 x i8]* @"type::str.57", i32 0, i32 0
  %173 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::uint8", i32 0, i32 1, i32 1
  store i8* %172, i8** %173, align 8
  %174 = getelementptr [6 x i8], [6 x i8]* @"type::str.58", i32 0, i32 0
  %175 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int16", i32 0, i32 1, i32 1
  store i8* %174, i8** %175, align 8
  %176 = getelementptr [6 x i8], [6 x i8]* @"type::str.59", i32 0, i32 0
  %177 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::int64", i32 0, i32 1, i32 1
  store i8* %176, i8** %177, align 8
  %178 = getelementptr [8 x i8], [8 x i8]* @"type::str.60", i32 0, i32 0
  %179 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::float64", i32 0, i32 1, i32 1
  store i8* %178, i8** %179, align 8
  %180 = getelementptr [8 x i8], [8 x i8]* @"type::str.61", i32 0, i32 0
  %181 = getelementptr %"runtime::Type", %"runtime::Type"* @"type::float32", i32 0, i32 1, i32 1
  store i8* %180, i8** %181, align 8
  ret void
}

define void @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({ i64, { i64, i8* }* } %def_names.value, { i64, void ()** } %defs.value, { i64, { i64, i8* }* } %var_names.value, { i64, i8** } %vars.value) {
start:
  %def_names.0 = alloca { i64, { i64, i8* }* }, align 8
  %defs.0 = alloca { i64, void ()** }, align 8
  %var_names.0 = alloca { i64, { i64, i8* }* }, align 8
  %vars.0 = alloca { i64, i8** }, align 8
  %tmp.0 = alloca %"map::Map"*, align 8
  %tmp.1 = alloca %"map::Map"*, align 8
  %i.3 = alloca i32, align 4
  %name.3 = alloca { i64, i8* }, align 8
  %value.3 = alloca void ()*, align 8
  %ffi_function.3 = alloca %"preload::FfiFunction"*, align 8
  %ffi_global.3 = alloca %"preload::FfiGlobal"*, align 8
  %i.4 = alloca i32, align 4
  %name.4 = alloca { i64, i8* }, align 8
  %value.4 = alloca i8*, align 8
  %ffi_global.4 = alloca %"preload::FfiGlobal"*, align 8
  store { i64, { i64, i8* }* } %def_names.value, { i64, { i64, i8* }* }* %def_names.0, align 8
  store { i64, void ()** } %defs.value, { i64, void ()** }* %defs.0, align 8
  store { i64, { i64, i8* }* } %var_names.value, { i64, { i64, i8* }* }* %var_names.0, align 8
  store { i64, i8** } %vars.value, { i64, i8** }* %vars.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS", align 8
  %1 = ptrtoint %"map::Map"* %0 to i64
  %2 = icmp ne i64 %1, 0
  %3 = xor i1 %2, true
  br i1 %3, label %4, label %7

4:                                                ; preds = %start
  %5 = call %"map::Map"* @"map::make::()"()
  store %"map::Map"* %5, %"map::Map"** %tmp.0, align 8
  %6 = load %"map::Map"*, %"map::Map"** %tmp.0, align 8
  store %"map::Map"* %6, %"map::Map"** @"preload::FFI_GLOBALS", align 8
  br label %7

7:                                                ; preds = %4, %start
  %8 = load %"map::Map"*, %"map::Map"** @"preload::FFI_FUNCTIONS", align 8
  %9 = ptrtoint %"map::Map"* %8 to i64
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = call %"map::Map"* @"map::make::()"()
  store %"map::Map"* %13, %"map::Map"** %tmp.1, align 8
  %14 = load %"map::Map"*, %"map::Map"** %tmp.1, align 8
  store %"map::Map"* %14, %"map::Map"** @"preload::FFI_FUNCTIONS", align 8
  br label %15

15:                                               ; preds = %12, %7
  %16 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %def_names.0, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr { i64, void ()** }, { i64, void ()** }* %defs.0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr [29 x i8], [29 x i8]* @"preload::str.0", i32 0, i32 0
  %23 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @stderr, align 8
  %24 = getelementptr [32 x i8], [32 x i8]* @"preload::str.1", i32 0, i32 0
  %25 = getelementptr [80 x i8], [80 x i8]* @"preload::str.2", i32 0, i32 0
  %26 = getelementptr [9 x i8], [9 x i8]* @"preload::str.3", i32 0, i32 0
  %27 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %23, i8* %24, i8* %25, i32 31, i8* %26, i8* %22)
  call void @abort()
  unreachable

28:                                               ; preds = %15
  %29 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %def_names.0, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 0, i32* %i.3, align 4
  br label %32

32:                                               ; preds = %69, %28
  %33 = load i32, i32* %i.3, align 4
  %34 = icmp slt i32 %33, %31
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load i32, i32* %i.3, align 4
  %37 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %def_names.0, i32 0, i32 1
  %38 = load { i64, i8* }*, { i64, i8* }** %37, align 8
  %39 = getelementptr { i64, i8* }, { i64, i8* }* %38, i32 %36
  %40 = load { i64, i8* }, { i64, i8* }* %39, align 8
  store { i64, i8* } %40, { i64, i8* }* %name.3, align 8
  %41 = load i32, i32* %i.3, align 4
  %42 = getelementptr { i64, void ()** }, { i64, void ()** }* %defs.0, i32 0, i32 1
  %43 = load void ()**, void ()*** %42, align 8
  %44 = getelementptr void ()*, void ()** %43, i32 %41
  %45 = load void ()*, void ()** %44, align 8
  store void ()* %45, void ()** %value.3, align 8
  %46 = call i8* @malloc(i64 64)
  %47 = bitcast i8* %46 to %"preload::FfiFunction"*
  store %"preload::FfiFunction"* %47, %"preload::FfiFunction"** %ffi_function.3, align 8
  %48 = load { i64, i8* }, { i64, i8* }* %name.3, align 8
  %49 = load void ()*, void ()** %value.3, align 8
  %50 = insertvalue %"preload::FfiFunction" { { i64, i8* } undef, void ()* undef, i1 false, %"ffi::ffi_cif" zeroinitializer }, { i64, i8* } %48, 0
  %51 = insertvalue %"preload::FfiFunction" %50, void ()* %49, 1
  %52 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3, align 8
  store %"preload::FfiFunction" %51, %"preload::FfiFunction"* %52, align 8
  %53 = load %"map::Map"*, %"map::Map"** @"preload::FFI_FUNCTIONS", align 8
  %54 = load { i64, i8* }, { i64, i8* }* %name.3, align 8
  %55 = load %"preload::FfiFunction"*, %"preload::FfiFunction"** %ffi_function.3, align 8
  %56 = bitcast %"preload::FfiFunction"* %55 to i8*
  call void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %53, { i64, i8* } %54, i8* %56)
  %57 = call i8* @malloc(i64 24)
  %58 = bitcast i8* %57 to %"preload::FfiGlobal"*
  store %"preload::FfiGlobal"* %58, %"preload::FfiGlobal"** %ffi_global.3, align 8
  %59 = load { i64, i8* }, { i64, i8* }* %name.3, align 8
  %60 = load void ()*, void ()** %value.3, align 8
  %61 = bitcast void ()* %60 to i8*
  %62 = insertvalue %"preload::FfiGlobal" undef, { i64, i8* } %59, 0
  %63 = insertvalue %"preload::FfiGlobal" %62, i8* %61, 1
  %64 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3, align 8
  store %"preload::FfiGlobal" %63, %"preload::FfiGlobal"* %64, align 8
  %65 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS", align 8
  %66 = load { i64, i8* }, { i64, i8* }* %name.3, align 8
  %67 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.3, align 8
  %68 = bitcast %"preload::FfiGlobal"* %67 to i8*
  call void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %65, { i64, i8* } %66, i8* %68)
  br label %69

69:                                               ; preds = %35
  %70 = add i32 %33, 1
  store i32 %70, i32* %i.3, align 4
  br label %32

71:                                               ; preds = %32
  %72 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %var_names.0, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr { i64, i8** }, { i64, i8** }* %vars.0, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = getelementptr [29 x i8], [29 x i8]* @"preload::str.4", i32 0, i32 0
  %79 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @stderr, align 8
  %80 = getelementptr [32 x i8], [32 x i8]* @"preload::str.5", i32 0, i32 0
  %81 = getelementptr [80 x i8], [80 x i8]* @"preload::str.6", i32 0, i32 0
  %82 = getelementptr [9 x i8], [9 x i8]* @"preload::str.7", i32 0, i32 0
  %83 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %79, i8* %80, i8* %81, i32 51, i8* %82, i8* %78)
  call void @abort()
  unreachable

84:                                               ; preds = %71
  %85 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %var_names.0, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 0, i32* %i.4, align 4
  br label %88

88:                                               ; preds = %113, %84
  %89 = load i32, i32* %i.4, align 4
  %90 = icmp slt i32 %89, %87
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load i32, i32* %i.4, align 4
  %93 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %var_names.0, i32 0, i32 1
  %94 = load { i64, i8* }*, { i64, i8* }** %93, align 8
  %95 = getelementptr { i64, i8* }, { i64, i8* }* %94, i32 %92
  %96 = load { i64, i8* }, { i64, i8* }* %95, align 8
  store { i64, i8* } %96, { i64, i8* }* %name.4, align 8
  %97 = load i32, i32* %i.4, align 4
  %98 = getelementptr { i64, i8** }, { i64, i8** }* %vars.0, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr i8*, i8** %99, i32 %97
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %value.4, align 8
  %102 = call i8* @malloc(i64 24)
  %103 = bitcast i8* %102 to %"preload::FfiGlobal"*
  store %"preload::FfiGlobal"* %103, %"preload::FfiGlobal"** %ffi_global.4, align 8
  %104 = load { i64, i8* }, { i64, i8* }* %name.4, align 8
  %105 = load i8*, i8** %value.4, align 8
  %106 = insertvalue %"preload::FfiGlobal" undef, { i64, i8* } %104, 0
  %107 = insertvalue %"preload::FfiGlobal" %106, i8* %105, 1
  %108 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4, align 8
  store %"preload::FfiGlobal" %107, %"preload::FfiGlobal"* %108, align 8
  %109 = load %"map::Map"*, %"map::Map"** @"preload::FFI_GLOBALS", align 8
  %110 = load { i64, i8* }, { i64, i8* }* %name.4, align 8
  %111 = load %"preload::FfiGlobal"*, %"preload::FfiGlobal"** %ffi_global.4, align 8
  %112 = bitcast %"preload::FfiGlobal"* %111 to i8*
  call void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %109, { i64, i8* } %110, i8* %112)
  br label %113

113:                                              ; preds = %91
  %114 = add i32 %89, 1
  store i32 %114, i32* %i.4, align 4
  br label %88

115:                                              ; preds = %88
  ret void
}

declare i32 @fprintf(%"cstd::s__IO_FILE"*, i8*, ...)

declare void @abort()

define void @"preload::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"map::main::([[int8]])"({ i64, { i64, i8* }* } %0)
  %1 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"ffi::main::([[int8]])"({ i64, { i64, i8* }* } %1)
  %2 = load [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", align 8
  %3 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i64 0, i64 0
  %4 = insertvalue { i64, { i64, i8* }* } { i64 478, { i64, i8* }* undef }, { i64, i8* }* %3, 1
  %5 = load [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", align 8
  %6 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i64 0, i64 0
  %7 = insertvalue { i64, void ()** } { i64 478, void ()** undef }, void ()** %6, 1
  %8 = load [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", align 8
  %9 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i64 0, i64 0
  %10 = insertvalue { i64, { i64, i8* }* } { i64 10, { i64, i8* }* undef }, { i64, i8* }* %9, 1
  %11 = load [10 x i8*], [10 x i8*]* @"cstd::__VARS", align 8
  %12 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i64 0, i64 0
  %13 = insertvalue { i64, i8** } { i64 10, i8** undef }, i8** %12, 1
  call void @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({ i64, { i64, i8* }* } %4, { i64, void ()** } %7, { i64, { i64, i8* }* } %10, { i64, i8** } %13)
  %14 = load [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", align 8
  %15 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i64 0, i64 0
  %16 = insertvalue { i64, { i64, i8* }* } { i64 22, { i64, i8* }* undef }, { i64, i8* }* %15, 1
  %17 = load [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", align 8
  %18 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i64 0, i64 0
  %19 = insertvalue { i64, void ()** } { i64 22, void ()** undef }, void ()** %18, 1
  %20 = load [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", align 8
  %21 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i64 0, i64 0
  %22 = insertvalue { i64, { i64, i8* }* } { i64 16, { i64, i8* }* undef }, { i64, i8* }* %21, 1
  %23 = load [16 x i8*], [16 x i8*]* @"ffi::__VARS", align 8
  %24 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i64 0, i64 0
  %25 = insertvalue { i64, i8** } { i64 16, i8** undef }, i8** %24, 1
  call void @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({ i64, { i64, i8* }* } %16, { i64, void ()** } %19, { i64, { i64, i8* }* } %22, { i64, i8** } %25)
  %26 = load [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", align 8
  %27 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i64 0, i64 0
  %28 = insertvalue { i64, { i64, i8* }* } { i64 258, { i64, i8* }* undef }, { i64, i8* }* %27, 1
  %29 = load [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", align 8
  %30 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i64 0, i64 0
  %31 = insertvalue { i64, void ()** } { i64 258, void ()** undef }, void ()** %30, 1
  %32 = load [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", align 8
  %33 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i64 0, i64 0
  %34 = insertvalue { i64, { i64, i8* }* } { i64 7, { i64, i8* }* undef }, { i64, i8* }* %33, 1
  %35 = load [7 x i8*], [7 x i8*]* @"linux::__VARS", align 8
  %36 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i64 0, i64 0
  %37 = insertvalue { i64, i8** } { i64 7, i8** undef }, i8** %36, 1
  call void @"preload::load_ffi::([[int8]], [*() -> ()], [[int8]], [*])"({ i64, { i64, i8* }* } %28, { i64, void ()** } %31, { i64, { i64, i8* }* } %34, { i64, i8** } %37)
  ret void
}

define { i64, i8* } @"to_string::(ffi::ffi_abi)"(i32 %enum.value) {
start:
  switch i32 %enum.value, label %15 [
    i32 2, label %0
    i32 4, label %3
    i32 3, label %6
    i32 1, label %9
    i32 5, label %12
  ]

0:                                                ; preds = %start
  %1 = getelementptr [11 x i8], [11 x i8]* @"ffi::str.0", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [11 x i8], [11 x i8]* @"ffi::str.1", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.2", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [14 x i8], [14 x i8]* @"ffi::str.3", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11

12:                                               ; preds = %start
  %13 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.4", i32 0, i32 0
  %14 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %13, 1
  ret { i64, i8* } %14

15:                                               ; preds = %start
  %16 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.5", i32 0, i32 0
  %17 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %16, 1
  ret { i64, i8* } %17
}

define { i64, i8* } @"to_string::(ffi::ffi_status)"(i32 %enum.value) {
start:
  switch i32 %enum.value, label %9 [
    i32 2, label %0
    i32 1, label %3
    i32 0, label %6
  ]

0:                                                ; preds = %start
  %1 = getelementptr [12 x i8], [12 x i8]* @"ffi::str.6", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.7", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [7 x i8], [7 x i8]* @"ffi::str.8", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [10 x i8], [10 x i8]* @"ffi::str.9", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11
}

define void @"ffi::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  %tmp.0 = alloca { i64, i8* }, align 8
  %tmp.1 = alloca { i64, i8* }, align 8
  %tmp.2 = alloca { i64, i8* }, align 8
  %tmp.3 = alloca { i64, i8* }, align 8
  %tmp.4 = alloca { i64, i8* }, align 8
  %tmp.5 = alloca { i64, i8* }, align 8
  %tmp.6 = alloca { i64, i8* }, align 8
  %tmp.7 = alloca { i64, i8* }, align 8
  %tmp.8 = alloca { i64, i8* }, align 8
  %tmp.9 = alloca { i64, i8* }, align 8
  %tmp.10 = alloca { i64, i8* }, align 8
  %tmp.11 = alloca { i64, i8* }, align 8
  %tmp.12 = alloca { i64, i8* }, align 8
  %tmp.13 = alloca { i64, i8* }, align 8
  %tmp.14 = alloca { i64, i8* }, align 8
  %tmp.15 = alloca { i64, i8* }, align 8
  %tmp.16 = alloca { i64, i8* }, align 8
  %tmp.17 = alloca { i64, i8* }, align 8
  %tmp.18 = alloca { i64, i8* }, align 8
  %tmp.19 = alloca { i64, i8* }, align 8
  %tmp.20 = alloca { i64, i8* }, align 8
  %tmp.21 = alloca { i64, i8* }, align 8
  %tmp.22 = alloca { i64, i8* }, align 8
  %tmp.23 = alloca { i64, i8* }, align 8
  %tmp.24 = alloca { i64, i8* }, align 8
  %tmp.25 = alloca { i64, i8* }, align 8
  %tmp.26 = alloca { i64, i8* }, align 8
  %tmp.27 = alloca { i64, i8* }, align 8
  %tmp.28 = alloca { i64, i8* }, align 8
  %tmp.29 = alloca { i64, i8* }, align 8
  %tmp.30 = alloca { i64, i8* }, align 8
  %tmp.31 = alloca { i64, i8* }, align 8
  %tmp.32 = alloca { i64, i8* }, align 8
  %tmp.33 = alloca { i64, i8* }, align 8
  %tmp.34 = alloca { i64, i8* }, align 8
  %tmp.35 = alloca { i64, i8* }, align 8
  %tmp.36 = alloca { i64, i8* }, align 8
  %tmp.37 = alloca { i64, i8* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.10", i64 0, i64 0
  %1 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %0, 1
  store { i64, i8* } %1, { i64, i8* }* %tmp.0, align 8
  %2 = load { i64, i8* }, { i64, i8* }* %tmp.0, align 8
  %3 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 0
  store { i64, i8* } %2, { i64, i8* }* %3, align 8
  %4 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)* @ffi_raw_call to void ()*
  %5 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 0
  store void ()* %4, void ()** %5, align 8
  %6 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.11", i64 0, i64 0
  %7 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %6, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp.1, align 8
  %8 = load { i64, i8* }, { i64, i8* }* %tmp.1, align 8
  %9 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 1
  store { i64, i8* } %8, { i64, i8* }* %9, align 8
  %10 = bitcast void (%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)* @ffi_ptrarray_to_raw to void ()*
  %11 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 1
  store void ()* %10, void ()** %11, align 8
  %12 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.12", i64 0, i64 0
  %13 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %12, 1
  store { i64, i8* } %13, { i64, i8* }* %tmp.2, align 8
  %14 = load { i64, i8* }, { i64, i8* }* %tmp.2, align 8
  %15 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 2
  store { i64, i8* } %14, { i64, i8* }* %15, align 8
  %16 = bitcast void (%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)* @ffi_raw_to_ptrarray to void ()*
  %17 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 2
  store void ()* %16, void ()** %17, align 8
  %18 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.13", i64 0, i64 0
  %19 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %18, 1
  store { i64, i8* } %19, { i64, i8* }* %tmp.3, align 8
  %20 = load { i64, i8* }, { i64, i8* }* %tmp.3, align 8
  %21 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 3
  store { i64, i8* } %20, { i64, i8* }* %21, align 8
  %22 = bitcast i64 (%"ffi::ffi_cif"*)* @ffi_raw_size to void ()*
  %23 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 3
  store void ()* %22, void ()** %23, align 8
  %24 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.14", i64 0, i64 0
  %25 = insertvalue { i64, i8* } { i64 18, i8* undef }, i8* %24, 1
  store { i64, i8* } %25, { i64, i8* }* %tmp.4, align 8
  %26 = load { i64, i8* }, { i64, i8* }* %tmp.4, align 8
  %27 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 4
  store { i64, i8* } %26, { i64, i8* }* %27, align 8
  %28 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)* @ffi_java_raw_call to void ()*
  %29 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 4
  store void ()* %28, void ()** %29, align 8
  %30 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.15", i64 0, i64 0
  %31 = insertvalue { i64, i8* } { i64 25, i8* undef }, i8* %30, 1
  store { i64, i8* } %31, { i64, i8* }* %tmp.5, align 8
  %32 = load { i64, i8* }, { i64, i8* }* %tmp.5, align 8
  %33 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 5
  store { i64, i8* } %32, { i64, i8* }* %33, align 8
  %34 = bitcast void (%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)* @ffi_java_ptrarray_to_raw to void ()*
  %35 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 5
  store void ()* %34, void ()** %35, align 8
  %36 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.16", i64 0, i64 0
  %37 = insertvalue { i64, i8* } { i64 25, i8* undef }, i8* %36, 1
  store { i64, i8* } %37, { i64, i8* }* %tmp.6, align 8
  %38 = load { i64, i8* }, { i64, i8* }* %tmp.6, align 8
  %39 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 6
  store { i64, i8* } %38, { i64, i8* }* %39, align 8
  %40 = bitcast void (%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)* @ffi_java_raw_to_ptrarray to void ()*
  %41 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 6
  store void ()* %40, void ()** %41, align 8
  %42 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.17", i64 0, i64 0
  %43 = insertvalue { i64, i8* } { i64 18, i8* undef }, i8* %42, 1
  store { i64, i8* } %43, { i64, i8* }* %tmp.7, align 8
  %44 = load { i64, i8* }, { i64, i8* }* %tmp.7, align 8
  %45 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 7
  store { i64, i8* } %44, { i64, i8* }* %45, align 8
  %46 = bitcast i64 (%"ffi::ffi_cif"*)* @ffi_java_raw_size to void ()*
  %47 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 7
  store void ()* %46, void ()** %47, align 8
  %48 = getelementptr [18 x i8], [18 x i8]* @"ffi::str.18", i64 0, i64 0
  %49 = insertvalue { i64, i8* } { i64 18, i8* undef }, i8* %48, 1
  store { i64, i8* } %49, { i64, i8* }* %tmp.8, align 8
  %50 = load { i64, i8* }, { i64, i8* }* %tmp.8, align 8
  %51 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 8
  store { i64, i8* } %50, { i64, i8* }* %51, align 8
  %52 = bitcast i8* (i64, i8**)* @ffi_closure_alloc to void ()*
  %53 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 8
  store void ()* %52, void ()** %53, align 8
  %54 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.19", i64 0, i64 0
  %55 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %54, 1
  store { i64, i8* } %55, { i64, i8* }* %tmp.9, align 8
  %56 = load { i64, i8* }, { i64, i8* }* %tmp.9, align 8
  %57 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 9
  store { i64, i8* } %56, { i64, i8* }* %57, align 8
  %58 = bitcast void (i8*)* @ffi_closure_free to void ()*
  %59 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 9
  store void ()* %58, void ()** %59, align 8
  %60 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.20", i64 0, i64 0
  %61 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %60, 1
  store { i64, i8* } %61, { i64, i8* }* %tmp.10, align 8
  %62 = load { i64, i8* }, { i64, i8* }* %tmp.10, align 8
  %63 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 10
  store { i64, i8* } %62, { i64, i8* }* %63, align 8
  %64 = bitcast i32 (%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*)* @ffi_prep_closure to void ()*
  %65 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 10
  store void ()* %64, void ()** %65, align 8
  %66 = getelementptr [21 x i8], [21 x i8]* @"ffi::str.21", i64 0, i64 0
  %67 = insertvalue { i64, i8* } { i64 21, i8* undef }, i8* %66, 1
  store { i64, i8* } %67, { i64, i8* }* %tmp.11, align 8
  %68 = load { i64, i8* }, { i64, i8* }* %tmp.11, align 8
  %69 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 11
  store { i64, i8* } %68, { i64, i8* }* %69, align 8
  %70 = bitcast i32 (%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)* @ffi_prep_closure_loc to void ()*
  %71 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 11
  store void ()* %70, void ()** %71, align 8
  %72 = getelementptr [21 x i8], [21 x i8]* @"ffi::str.22", i64 0, i64 0
  %73 = insertvalue { i64, i8* } { i64 21, i8* undef }, i8* %72, 1
  store { i64, i8* } %73, { i64, i8* }* %tmp.12, align 8
  %74 = load { i64, i8* }, { i64, i8* }* %tmp.12, align 8
  %75 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 12
  store { i64, i8* } %74, { i64, i8* }* %75, align 8
  %76 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)* @ffi_prep_raw_closure to void ()*
  %77 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 12
  store void ()* %76, void ()** %77, align 8
  %78 = getelementptr [25 x i8], [25 x i8]* @"ffi::str.23", i64 0, i64 0
  %79 = insertvalue { i64, i8* } { i64 25, i8* undef }, i8* %78, 1
  store { i64, i8* } %79, { i64, i8* }* %tmp.13, align 8
  %80 = load { i64, i8* }, { i64, i8* }* %tmp.13, align 8
  %81 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 13
  store { i64, i8* } %80, { i64, i8* }* %81, align 8
  %82 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)* @ffi_prep_raw_closure_loc to void ()*
  %83 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 13
  store void ()* %82, void ()** %83, align 8
  %84 = getelementptr [26 x i8], [26 x i8]* @"ffi::str.24", i64 0, i64 0
  %85 = insertvalue { i64, i8* } { i64 26, i8* undef }, i8* %84, 1
  store { i64, i8* } %85, { i64, i8* }* %tmp.14, align 8
  %86 = load { i64, i8* }, { i64, i8* }* %tmp.14, align 8
  %87 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 14
  store { i64, i8* } %86, { i64, i8* }* %87, align 8
  %88 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)* @ffi_prep_java_raw_closure to void ()*
  %89 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 14
  store void ()* %88, void ()** %89, align 8
  %90 = getelementptr [30 x i8], [30 x i8]* @"ffi::str.25", i64 0, i64 0
  %91 = insertvalue { i64, i8* } { i64 30, i8* undef }, i8* %90, 1
  store { i64, i8* } %91, { i64, i8* }* %tmp.15, align 8
  %92 = load { i64, i8* }, { i64, i8* }* %tmp.15, align 8
  %93 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 15
  store { i64, i8* } %92, { i64, i8* }* %93, align 8
  %94 = bitcast i32 (%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)* @ffi_prep_java_raw_closure_loc to void ()*
  %95 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 15
  store void ()* %94, void ()** %95, align 8
  %96 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.26", i64 0, i64 0
  %97 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %96, 1
  store { i64, i8* } %97, { i64, i8* }* %tmp.16, align 8
  %98 = load { i64, i8* }, { i64, i8* }* %tmp.16, align 8
  %99 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 16
  store { i64, i8* } %98, { i64, i8* }* %99, align 8
  %100 = bitcast i32 (%"ffi::ffi_go_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*)* @ffi_prep_go_closure to void ()*
  %101 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 16
  store void ()* %100, void ()** %101, align 8
  %102 = getelementptr [12 x i8], [12 x i8]* @"ffi::str.27", i64 0, i64 0
  %103 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %102, 1
  store { i64, i8* } %103, { i64, i8* }* %tmp.17, align 8
  %104 = load { i64, i8* }, { i64, i8* }* %tmp.17, align 8
  %105 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 17
  store { i64, i8* } %104, { i64, i8* }* %105, align 8
  %106 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, i8**, i8*)* @ffi_call_go to void ()*
  %107 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 17
  store void ()* %106, void ()** %107, align 8
  %108 = getelementptr [13 x i8], [13 x i8]* @"ffi::str.28", i64 0, i64 0
  %109 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %108, 1
  store { i64, i8* } %109, { i64, i8* }* %tmp.18, align 8
  %110 = load { i64, i8* }, { i64, i8* }* %tmp.18, align 8
  %111 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 18
  store { i64, i8* } %110, { i64, i8* }* %111, align 8
  %112 = bitcast i32 (%"ffi::ffi_cif"*, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)* @ffi_prep_cif to void ()*
  %113 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 18
  store void ()* %112, void ()** %113, align 8
  %114 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.29", i64 0, i64 0
  %115 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %114, 1
  store { i64, i8* } %115, { i64, i8* }* %tmp.19, align 8
  %116 = load { i64, i8* }, { i64, i8* }* %tmp.19, align 8
  %117 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 19
  store { i64, i8* } %116, { i64, i8* }* %117, align 8
  %118 = bitcast i32 (%"ffi::ffi_cif"*, i32, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)* @ffi_prep_cif_var to void ()*
  %119 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 19
  store void ()* %118, void ()** %119, align 8
  %120 = getelementptr [9 x i8], [9 x i8]* @"ffi::str.30", i64 0, i64 0
  %121 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %120, 1
  store { i64, i8* } %121, { i64, i8* }* %tmp.20, align 8
  %122 = load { i64, i8* }, { i64, i8* }* %tmp.20, align 8
  %123 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 20
  store { i64, i8* } %122, { i64, i8* }* %123, align 8
  %124 = bitcast void (%"ffi::ffi_cif"*, void ()*, i8*, i8**)* @ffi_call to void ()*
  %125 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 20
  store void ()* %124, void ()** %125, align 8
  %126 = getelementptr [23 x i8], [23 x i8]* @"ffi::str.31", i64 0, i64 0
  %127 = insertvalue { i64, i8* } { i64 23, i8* undef }, i8* %126, 1
  store { i64, i8* } %127, { i64, i8* }* %tmp.21, align 8
  %128 = load { i64, i8* }, { i64, i8* }* %tmp.21, align 8
  %129 = getelementptr [22 x { i64, i8* }], [22 x { i64, i8* }]* @"ffi::__DEF_NAMES", i32 0, i32 21
  store { i64, i8* } %128, { i64, i8* }* %129, align 8
  %130 = bitcast i32 (i32, %"ffi::ffi_type"*, i64*)* @ffi_get_struct_offsets to void ()*
  %131 = getelementptr [22 x void ()*], [22 x void ()*]* @"ffi::__DEFS", i32 0, i32 21
  store void ()* %130, void ()** %131, align 8
  %132 = getelementptr [14 x i8], [14 x i8]* @"ffi::str.32", i64 0, i64 0
  %133 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %132, 1
  store { i64, i8* } %133, { i64, i8* }* %tmp.22, align 8
  %134 = load { i64, i8* }, { i64, i8* }* %tmp.22, align 8
  %135 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 0
  store { i64, i8* } %134, { i64, i8* }* %135, align 8
  %136 = bitcast %"ffi::ffi_type"* @ffi_type_void to i8*
  %137 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 0
  store i8* %136, i8** %137, align 8
  %138 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.33", i64 0, i64 0
  %139 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %138, 1
  store { i64, i8* } %139, { i64, i8* }* %tmp.23, align 8
  %140 = load { i64, i8* }, { i64, i8* }* %tmp.23, align 8
  %141 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 1
  store { i64, i8* } %140, { i64, i8* }* %141, align 8
  %142 = bitcast %"ffi::ffi_type"* @ffi_type_uint8 to i8*
  %143 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 1
  store i8* %142, i8** %143, align 8
  %144 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.34", i64 0, i64 0
  %145 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %144, 1
  store { i64, i8* } %145, { i64, i8* }* %tmp.24, align 8
  %146 = load { i64, i8* }, { i64, i8* }* %tmp.24, align 8
  %147 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 2
  store { i64, i8* } %146, { i64, i8* }* %147, align 8
  %148 = bitcast %"ffi::ffi_type"* @ffi_type_sint8 to i8*
  %149 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 2
  store i8* %148, i8** %149, align 8
  %150 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.35", i64 0, i64 0
  %151 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %150, 1
  store { i64, i8* } %151, { i64, i8* }* %tmp.25, align 8
  %152 = load { i64, i8* }, { i64, i8* }* %tmp.25, align 8
  %153 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 3
  store { i64, i8* } %152, { i64, i8* }* %153, align 8
  %154 = bitcast %"ffi::ffi_type"* @ffi_type_uint16 to i8*
  %155 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 3
  store i8* %154, i8** %155, align 8
  %156 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.36", i64 0, i64 0
  %157 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %156, 1
  store { i64, i8* } %157, { i64, i8* }* %tmp.26, align 8
  %158 = load { i64, i8* }, { i64, i8* }* %tmp.26, align 8
  %159 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 4
  store { i64, i8* } %158, { i64, i8* }* %159, align 8
  %160 = bitcast %"ffi::ffi_type"* @ffi_type_sint16 to i8*
  %161 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 4
  store i8* %160, i8** %161, align 8
  %162 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.37", i64 0, i64 0
  %163 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %162, 1
  store { i64, i8* } %163, { i64, i8* }* %tmp.27, align 8
  %164 = load { i64, i8* }, { i64, i8* }* %tmp.27, align 8
  %165 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 5
  store { i64, i8* } %164, { i64, i8* }* %165, align 8
  %166 = bitcast %"ffi::ffi_type"* @ffi_type_uint32 to i8*
  %167 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 5
  store i8* %166, i8** %167, align 8
  %168 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.38", i64 0, i64 0
  %169 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %168, 1
  store { i64, i8* } %169, { i64, i8* }* %tmp.28, align 8
  %170 = load { i64, i8* }, { i64, i8* }* %tmp.28, align 8
  %171 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 6
  store { i64, i8* } %170, { i64, i8* }* %171, align 8
  %172 = bitcast %"ffi::ffi_type"* @ffi_type_sint32 to i8*
  %173 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 6
  store i8* %172, i8** %173, align 8
  %174 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.39", i64 0, i64 0
  %175 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %174, 1
  store { i64, i8* } %175, { i64, i8* }* %tmp.29, align 8
  %176 = load { i64, i8* }, { i64, i8* }* %tmp.29, align 8
  %177 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 7
  store { i64, i8* } %176, { i64, i8* }* %177, align 8
  %178 = bitcast %"ffi::ffi_type"* @ffi_type_uint64 to i8*
  %179 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 7
  store i8* %178, i8** %179, align 8
  %180 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.40", i64 0, i64 0
  %181 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %180, 1
  store { i64, i8* } %181, { i64, i8* }* %tmp.30, align 8
  %182 = load { i64, i8* }, { i64, i8* }* %tmp.30, align 8
  %183 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 8
  store { i64, i8* } %182, { i64, i8* }* %183, align 8
  %184 = bitcast %"ffi::ffi_type"* @ffi_type_sint64 to i8*
  %185 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 8
  store i8* %184, i8** %185, align 8
  %186 = getelementptr [15 x i8], [15 x i8]* @"ffi::str.41", i64 0, i64 0
  %187 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %186, 1
  store { i64, i8* } %187, { i64, i8* }* %tmp.31, align 8
  %188 = load { i64, i8* }, { i64, i8* }* %tmp.31, align 8
  %189 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 9
  store { i64, i8* } %188, { i64, i8* }* %189, align 8
  %190 = bitcast %"ffi::ffi_type"* @ffi_type_float to i8*
  %191 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 9
  store i8* %190, i8** %191, align 8
  %192 = getelementptr [16 x i8], [16 x i8]* @"ffi::str.42", i64 0, i64 0
  %193 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %192, 1
  store { i64, i8* } %193, { i64, i8* }* %tmp.32, align 8
  %194 = load { i64, i8* }, { i64, i8* }* %tmp.32, align 8
  %195 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 10
  store { i64, i8* } %194, { i64, i8* }* %195, align 8
  %196 = bitcast %"ffi::ffi_type"* @ffi_type_double to i8*
  %197 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 10
  store i8* %196, i8** %197, align 8
  %198 = getelementptr [17 x i8], [17 x i8]* @"ffi::str.43", i64 0, i64 0
  %199 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %198, 1
  store { i64, i8* } %199, { i64, i8* }* %tmp.33, align 8
  %200 = load { i64, i8* }, { i64, i8* }* %tmp.33, align 8
  %201 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 11
  store { i64, i8* } %200, { i64, i8* }* %201, align 8
  %202 = bitcast %"ffi::ffi_type"* @ffi_type_pointer to i8*
  %203 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 11
  store i8* %202, i8** %203, align 8
  %204 = getelementptr [20 x i8], [20 x i8]* @"ffi::str.44", i64 0, i64 0
  %205 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %204, 1
  store { i64, i8* } %205, { i64, i8* }* %tmp.34, align 8
  %206 = load { i64, i8* }, { i64, i8* }* %tmp.34, align 8
  %207 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 12
  store { i64, i8* } %206, { i64, i8* }* %207, align 8
  %208 = bitcast %"ffi::ffi_type"* @ffi_type_longdouble to i8*
  %209 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 12
  store i8* %208, i8** %209, align 8
  %210 = getelementptr [23 x i8], [23 x i8]* @"ffi::str.45", i64 0, i64 0
  %211 = insertvalue { i64, i8* } { i64 23, i8* undef }, i8* %210, 1
  store { i64, i8* } %211, { i64, i8* }* %tmp.35, align 8
  %212 = load { i64, i8* }, { i64, i8* }* %tmp.35, align 8
  %213 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 13
  store { i64, i8* } %212, { i64, i8* }* %213, align 8
  %214 = bitcast %"ffi::ffi_type"* @ffi_type_complex_float to i8*
  %215 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 13
  store i8* %214, i8** %215, align 8
  %216 = getelementptr [24 x i8], [24 x i8]* @"ffi::str.46", i64 0, i64 0
  %217 = insertvalue { i64, i8* } { i64 24, i8* undef }, i8* %216, 1
  store { i64, i8* } %217, { i64, i8* }* %tmp.36, align 8
  %218 = load { i64, i8* }, { i64, i8* }* %tmp.36, align 8
  %219 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 14
  store { i64, i8* } %218, { i64, i8* }* %219, align 8
  %220 = bitcast %"ffi::ffi_type"* @ffi_type_complex_double to i8*
  %221 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 14
  store i8* %220, i8** %221, align 8
  %222 = getelementptr [28 x i8], [28 x i8]* @"ffi::str.47", i64 0, i64 0
  %223 = insertvalue { i64, i8* } { i64 28, i8* undef }, i8* %222, 1
  store { i64, i8* } %223, { i64, i8* }* %tmp.37, align 8
  %224 = load { i64, i8* }, { i64, i8* }* %tmp.37, align 8
  %225 = getelementptr [16 x { i64, i8* }], [16 x { i64, i8* }]* @"ffi::__VAR_NAMES", i32 0, i32 15
  store { i64, i8* } %224, { i64, i8* }* %225, align 8
  %226 = bitcast %"ffi::ffi_type"* @ffi_type_complex_longdouble to i8*
  %227 = getelementptr [16 x i8*], [16 x i8*]* @"ffi::__VARS", i32 0, i32 15
  store i8* %226, i8** %227, align 8
  ret void
}

declare void @ffi_raw_call(%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)

declare void @ffi_ptrarray_to_raw(%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)

declare void @ffi_raw_to_ptrarray(%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)

declare i64 @ffi_raw_size(%"ffi::ffi_cif"*)

declare void @ffi_java_raw_call(%"ffi::ffi_cif"*, void ()*, i8*, %"ffi::ffi_raw"*)

declare void @ffi_java_ptrarray_to_raw(%"ffi::ffi_cif"*, i8**, %"ffi::ffi_raw"*)

declare void @ffi_java_raw_to_ptrarray(%"ffi::ffi_cif"*, %"ffi::ffi_raw"*, i8**)

declare i64 @ffi_java_raw_size(%"ffi::ffi_cif"*)

declare i8* @ffi_closure_alloc(i64, i8**)

declare void @ffi_closure_free(i8*)

declare i32 @ffi_prep_closure(%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*)

declare i32 @ffi_prep_closure_loc(%"ffi::ffi_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*, i8*, i8*)

declare i32 @ffi_prep_raw_closure(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)

declare i32 @ffi_prep_raw_closure_loc(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)

declare i32 @ffi_prep_java_raw_closure(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*)

declare i32 @ffi_prep_java_raw_closure_loc(%"ffi::ffi_raw_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, %"ffi::ffi_raw"*, i8*)*, i8*, i8*)

declare i32 @ffi_prep_go_closure(%"ffi::ffi_go_closure"*, %"ffi::ffi_cif"*, void (%"ffi::ffi_cif"*, i8*, i8**, i8*)*)

declare void @ffi_call_go(%"ffi::ffi_cif"*, void ()*, i8*, i8**, i8*)

declare i32 @ffi_prep_cif(%"ffi::ffi_cif"*, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)

declare i32 @ffi_prep_cif_var(%"ffi::ffi_cif"*, i32, i32, i32, %"ffi::ffi_type"*, %"ffi::ffi_type"**)

declare void @ffi_call(%"ffi::ffi_cif"*, void ()*, i8*, i8**)

declare i32 @ffi_get_struct_offsets(i32, %"ffi::ffi_type"*, i64*)

define %"map::Map"* @"map::make::()"() {
start:
  %tmp.2 = alloca %"map::Map"*, align 8
  %0 = zext i32 16 to i64
  %1 = call %"map::Map"* @"map::make_size::(uint64)"(i64 %0)
  store %"map::Map"* %1, %"map::Map"** %tmp.2, align 8
  %2 = load %"map::Map"*, %"map::Map"** %tmp.2, align 8
  ret %"map::Map"* %2

3:                                                ; No predecessors!
  ret %"map::Map"* undef
}

define %"map::Map"* @"map::make_size::(uint64)"(i64 %size.value) {
start:
  %size.0 = alloca i64, align 8
  %map.0 = alloca %"map::Map"*, align 8
  store i64 %size.value, i64* %size.0, align 8
  %0 = call i8* @malloc(i64 24)
  %1 = bitcast i8* %0 to %"map::Map"*
  store %"map::Map"* %1, %"map::Map"** %map.0, align 8
  %2 = load i64, i64* %size.0, align 8
  %3 = call i8* @calloc(i64 %2, i64 8)
  %4 = bitcast i8* %3 to %"map::Entry"**
  %5 = insertvalue { i64, %"map::Entry"** } undef, %"map::Entry"** %4, 1
  %6 = insertvalue { i64, %"map::Entry"** } %5, i64 %2, 0
  %7 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %8 = getelementptr %"map::Map", %"map::Map"* %7, i32 0, i32 1
  store { i64, %"map::Entry"** } %6, { i64, %"map::Entry"** }* %8, align 8
  %9 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %10 = getelementptr %"map::Map", %"map::Map"* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  ret %"map::Map"* %11

12:                                               ; No predecessors!
  ret %"map::Map"* undef
}

declare i8* @calloc(i64, i64)

define void @"map::remove::(*map::Map, [int8])"(%"map::Map"* %map.value, { i64, i8* } %key.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %key.0 = alloca { i64, i8* }, align 8
  %h.0 = alloca i32, align 4
  %tmp.7 = alloca i32, align 4
  %index.0 = alloca i64, align 8
  %entry.0 = alloca %"map::Entry"*, align 8
  %entry2.5 = alloca %"map::Entry"*, align 8
  %entry3.6 = alloca %"map::Entry"*, align 8
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  store { i64, i8* } %key.value, { i64, i8* }* %key.0, align 8
  %0 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %1 = call i32 @"map::hash::([int8])"({ i64, i8* } %0)
  store i32 %1, i32* %tmp.7, align 4
  %2 = load i32, i32* %tmp.7, align 4
  store i32 %2, i32* %h.0, align 4
  %3 = load i32, i32* %h.0, align 4
  %4 = zext i32 %3 to i64
  %5 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
  %7 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = urem i64 %4, %8
  store i64 %9, i64* %index.0, align 8
  %10 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %11 = getelementptr %"map::Map", %"map::Map"* %10, i32 0, i32 1
  %12 = load i64, i64* %index.0, align 8
  %13 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %11, i32 0, i32 1
  %14 = load %"map::Entry"**, %"map::Entry"*** %13, align 8
  %15 = getelementptr %"map::Entry"*, %"map::Entry"** %14, i64 %12
  %16 = load %"map::Entry"*, %"map::Entry"** %15, align 8
  store %"map::Entry"* %16, %"map::Entry"** %entry.0, align 8
  %17 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %18 = ptrtoint %"map::Entry"* %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %start
  %21 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 0
  %23 = load { i64, i8* }, { i64, i8* }* %22, align 8
  %24 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %25 = extractvalue { i64, i8* } %23, 1
  %26 = extractvalue { i64, i8* } %24, 1
  %27 = call i32 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %20
  %30 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %31 = getelementptr %"map::Map", %"map::Map"* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = zext i32 1 to i64
  %34 = sub i64 %32, %33
  %35 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %36 = getelementptr %"map::Map", %"map::Map"* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %38 = getelementptr %"map::Entry", %"map::Entry"* %37, i32 0, i32 2
  %39 = load %"map::Entry"*, %"map::Entry"** %38, align 8
  %40 = ptrtoint %"map::Entry"* %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %29
  %43 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %44 = getelementptr %"map::Entry", %"map::Entry"* %43, i32 0, i32 2
  %45 = load %"map::Entry"*, %"map::Entry"** %44, align 8
  %46 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %47 = getelementptr %"map::Map", %"map::Map"* %46, i32 0, i32 1
  %48 = load i64, i64* %index.0, align 8
  %49 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %47, i32 0, i32 1
  %50 = load %"map::Entry"**, %"map::Entry"*** %49, align 8
  %51 = getelementptr %"map::Entry"*, %"map::Entry"** %50, i64 %48
  store %"map::Entry"* %45, %"map::Entry"** %51, align 8
  br label %59

52:                                               ; preds = %29
  %53 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %54 = getelementptr %"map::Map", %"map::Map"* %53, i32 0, i32 1
  %55 = load i64, i64* %index.0, align 8
  %56 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %54, i32 0, i32 1
  %57 = load %"map::Entry"**, %"map::Entry"*** %56, align 8
  %58 = getelementptr %"map::Entry"*, %"map::Entry"** %57, i64 %55
  store %"map::Entry"* null, %"map::Entry"** %58, align 8
  br label %59

59:                                               ; preds = %52, %42
  br label %107

60:                                               ; preds = %20
  %61 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %62 = getelementptr %"map::Entry", %"map::Entry"* %61, i32 0, i32 2
  %63 = load %"map::Entry"*, %"map::Entry"** %62, align 8
  store %"map::Entry"* %63, %"map::Entry"** %entry2.5, align 8
  br label %64

64:                                               ; preds = %100, %60
  %65 = load %"map::Entry"*, %"map::Entry"** %entry2.5, align 8
  %66 = ptrtoint %"map::Entry"* %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %64
  %69 = load %"map::Entry"*, %"map::Entry"** %entry2.5, align 8
  %70 = getelementptr %"map::Entry", %"map::Entry"* %69, i32 0, i32 0
  %71 = load { i64, i8* }, { i64, i8* }* %70, align 8
  %72 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %73 = extractvalue { i64, i8* } %71, 1
  %74 = extractvalue { i64, i8* } %72, 1
  %75 = call i32 @strcmp(i8* %73, i8* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %68
  %78 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %79 = getelementptr %"map::Map", %"map::Map"* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = zext i32 1 to i64
  %82 = sub i64 %80, %81
  %83 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %84 = getelementptr %"map::Map", %"map::Map"* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %"map::Entry"*, %"map::Entry"** %entry2.5, align 8
  %86 = getelementptr %"map::Entry", %"map::Entry"* %85, i32 0, i32 2
  %87 = load %"map::Entry"*, %"map::Entry"** %86, align 8
  %88 = ptrtoint %"map::Entry"* %87 to i64
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %"map::Entry"*, %"map::Entry"** %entry2.5, align 8
  %92 = getelementptr %"map::Entry", %"map::Entry"* %91, i32 0, i32 2
  %93 = load %"map::Entry"*, %"map::Entry"** %92, align 8
  %94 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %95 = getelementptr %"map::Entry", %"map::Entry"* %94, i32 0, i32 2
  store %"map::Entry"* %93, %"map::Entry"** %95, align 8
  br label %99

96:                                               ; preds = %77
  %97 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %98 = getelementptr %"map::Entry", %"map::Entry"* %97, i32 0, i32 2
  store %"map::Entry"* null, %"map::Entry"** %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %68
  %101 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  store %"map::Entry"* %101, %"map::Entry"** %entry3.6, align 8
  %102 = load %"map::Entry"*, %"map::Entry"** %entry2.5, align 8
  store %"map::Entry"* %102, %"map::Entry"** %entry.0, align 8
  %103 = load %"map::Entry"*, %"map::Entry"** %entry3.6, align 8
  %104 = getelementptr %"map::Entry", %"map::Entry"* %103, i32 0, i32 2
  %105 = load %"map::Entry"*, %"map::Entry"** %104, align 8
  store %"map::Entry"* %105, %"map::Entry"** %entry2.5, align 8
  br label %64

106:                                              ; preds = %64
  br label %107

107:                                              ; preds = %106, %59
  br label %108

108:                                              ; preds = %107, %start
  ret void
}

define i32 @"map::hash::([int8])"({ i64, i8* } %str.value) {
start:
  %str.0 = alloca { i64, i8* }, align 8
  %r.0 = alloca i32, align 4
  %i.1 = alloca i32, align 4
  store { i64, i8* } %str.value, { i64, i8* }* %str.0, align 8
  store i32 7, i32* %r.0, align 4
  %0 = load { i64, i8* }, { i64, i8* }* %str.0, align 8
  %1 = extractvalue { i64, i8* } %0, 0
  %2 = sub i64 %1, 1
  %3 = trunc i64 %2 to i32
  store i32 0, i32* %i.1, align 4
  br label %4

4:                                                ; preds = %17, %start
  %5 = load i32, i32* %i.1, align 4
  %6 = icmp slt i32 %5, %3
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load i32, i32* %r.0, align 4
  %9 = mul i32 %8, 31
  %10 = load i32, i32* %i.1, align 4
  %11 = getelementptr { i64, i8* }, { i64, i8* }* %str.0, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr i8, i8* %12, i32 %10
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %9, %15
  store i32 %16, i32* %r.0, align 4
  br label %17

17:                                               ; preds = %7
  %18 = add i32 %5, 1
  store i32 %18, i32* %i.1, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load i32, i32* %r.0, align 4
  ret i32 %20

21:                                               ; No predecessors!
  ret i32 undef
}

define i64 @"map::size::(*map::Map)"(%"map::Map"* %map.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  ret i64 %2

3:                                                ; No predecessors!
  ret i64 undef
}

define void @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %map.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %allocated.0 = alloca i64, align 8
  %entries.0 = alloca { i64, %"map::Entry"** }, align 8
  %new_entries.0 = alloca { i64, %"map::Entry"** }, align 8
  %i.2 = alloca i32, align 4
  %entry.2 = alloca %"map::Entry"*, align 8
  %tmp.0 = alloca i1, align 1
  %entry2.4 = alloca %"map::Entry"*, align 8
  %entry3.5 = alloca %"map::Entry"*, align 8
  %tmp.1 = alloca i1, align 1
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %1 = getelementptr %"map::Map", %"map::Map"* %0, i32 0, i32 1
  %2 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %allocated.0, align 8
  %4 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %5 = getelementptr %"map::Map", %"map::Map"* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = uitofp i64 %6 to double
  %8 = load i64, i64* %allocated.0, align 8
  %9 = uitofp i64 %8 to double
  %10 = fdiv double %7, %9
  %11 = fcmp ult double %10, 0x3FE6666666666667
  br i1 %11, label %12, label %14

12:                                               ; preds = %start
  ret void

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %start
  %15 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %16 = getelementptr %"map::Map", %"map::Map"* %15, i32 0, i32 1
  %17 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %16, align 8
  store { i64, %"map::Entry"** } %17, { i64, %"map::Entry"** }* %entries.0, align 8
  %18 = load i64, i64* %allocated.0, align 8
  %19 = zext i32 2 to i64
  %20 = mul i64 %18, %19
  %21 = call i8* @calloc(i64 %20, i64 8)
  %22 = bitcast i8* %21 to %"map::Entry"**
  %23 = insertvalue { i64, %"map::Entry"** } undef, %"map::Entry"** %22, 1
  %24 = insertvalue { i64, %"map::Entry"** } %23, i64 %20, 0
  store { i64, %"map::Entry"** } %24, { i64, %"map::Entry"** }* %new_entries.0, align 8
  %25 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 0, i32* %i.2, align 4
  br label %28

28:                                               ; preds = %83, %14
  %29 = load i32, i32* %i.2, align 4
  %30 = icmp slt i32 %29, %27
  br i1 %30, label %31, label %85

31:                                               ; preds = %28
  %32 = load i32, i32* %i.2, align 4
  %33 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, i32 0, i32 1
  %34 = load %"map::Entry"**, %"map::Entry"*** %33, align 8
  %35 = getelementptr %"map::Entry"*, %"map::Entry"** %34, i32 %32
  %36 = load %"map::Entry"*, %"map::Entry"** %35, align 8
  store %"map::Entry"* %36, %"map::Entry"** %entry.2, align 8
  %37 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  %38 = ptrtoint %"map::Entry"* %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %31
  %41 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %new_entries.0, align 8
  %42 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  %43 = getelementptr %"map::Entry", %"map::Entry"* %42, i32 0, i32 0
  %44 = load { i64, i8* }, { i64, i8* }* %43, align 8
  %45 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  %46 = getelementptr %"map::Entry", %"map::Entry"* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i1 @"map::do_put::([*map::Entry], [int8], *)"({ i64, %"map::Entry"** } %41, { i64, i8* } %44, i8* %47)
  store i1 %48, i1* %tmp.0, align 1
  %49 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  %50 = getelementptr %"map::Entry", %"map::Entry"* %49, i32 0, i32 2
  %51 = load %"map::Entry"*, %"map::Entry"** %50, align 8
  %52 = ptrtoint %"map::Entry"* %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %40
  %55 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  store %"map::Entry"* %55, %"map::Entry"** %entry2.4, align 8
  br label %56

56:                                               ; preds = %62, %54
  %57 = load %"map::Entry"*, %"map::Entry"** %entry2.4, align 8
  %58 = getelementptr %"map::Entry", %"map::Entry"* %57, i32 0, i32 2
  %59 = load %"map::Entry"*, %"map::Entry"** %58, align 8
  %60 = ptrtoint %"map::Entry"* %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %"map::Entry"*, %"map::Entry"** %entry2.4, align 8
  store %"map::Entry"* %63, %"map::Entry"** %entry3.5, align 8
  %64 = load %"map::Entry"*, %"map::Entry"** %entry2.4, align 8
  %65 = getelementptr %"map::Entry", %"map::Entry"* %64, i32 0, i32 2
  %66 = load %"map::Entry"*, %"map::Entry"** %65, align 8
  store %"map::Entry"* %66, %"map::Entry"** %entry2.4, align 8
  %67 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %new_entries.0, align 8
  %68 = load %"map::Entry"*, %"map::Entry"** %entry2.4, align 8
  %69 = getelementptr %"map::Entry", %"map::Entry"* %68, i32 0, i32 0
  %70 = load { i64, i8* }, { i64, i8* }* %69, align 8
  %71 = load %"map::Entry"*, %"map::Entry"** %entry2.4, align 8
  %72 = getelementptr %"map::Entry", %"map::Entry"* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i1 @"map::do_put::([*map::Entry], [int8], *)"({ i64, %"map::Entry"** } %67, { i64, i8* } %70, i8* %73)
  store i1 %74, i1* %tmp.1, align 1
  %75 = load %"map::Entry"*, %"map::Entry"** %entry3.5, align 8
  %76 = bitcast %"map::Entry"* %75 to i8*
  call void @free(i8* %76)
  br label %56

77:                                               ; preds = %56
  br label %81

78:                                               ; preds = %40
  %79 = load %"map::Entry"*, %"map::Entry"** %entry.2, align 8
  %80 = bitcast %"map::Entry"* %79 to i8*
  call void @free(i8* %80)
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %31
  br label %83

83:                                               ; preds = %82
  %84 = add i32 %29, 1
  store i32 %84, i32* %i.2, align 4
  br label %28

85:                                               ; preds = %28
  %86 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, align 8
  %87 = extractvalue { i64, %"map::Entry"** } %86, 0
  %88 = extractvalue { i64, %"map::Entry"** } %86, 1
  %89 = bitcast %"map::Entry"** %88 to i8*
  %90 = insertvalue { i64, i8* } undef, i64 %87, 0
  %91 = insertvalue { i64, i8* } %90, i8* %89, 1
  %92 = extractvalue { i64, i8* } %91, 1
  call void @free(i8* %92)
  %93 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %new_entries.0, align 8
  %94 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %95 = getelementptr %"map::Map", %"map::Map"* %94, i32 0, i32 1
  store { i64, %"map::Entry"** } %93, { i64, %"map::Entry"** }* %95, align 8
  ret void
}

define i1 @"map::do_put::([*map::Entry], [int8], *)"({ i64, %"map::Entry"** } %entries.value, { i64, i8* } %key.value, i8* %value.value) {
start:
  %entries.0 = alloca { i64, %"map::Entry"** }, align 8
  %key.0 = alloca { i64, i8* }, align 8
  %value.0 = alloca i8*, align 8
  %h.0 = alloca i32, align 4
  %tmp.5 = alloca i32, align 4
  %index.0 = alloca i64, align 8
  %entry.0 = alloca %"map::Entry"*, align 8
  %entry2.1 = alloca %"map::Entry"*, align 8
  store { i64, %"map::Entry"** } %entries.value, { i64, %"map::Entry"** }* %entries.0, align 8
  store { i64, i8* } %key.value, { i64, i8* }* %key.0, align 8
  store i8* %value.value, i8** %value.0, align 8
  %0 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %1 = call i32 @"map::hash::([int8])"({ i64, i8* } %0)
  store i32 %1, i32* %tmp.5, align 4
  %2 = load i32, i32* %tmp.5, align 4
  store i32 %2, i32* %h.0, align 4
  %3 = load i32, i32* %h.0, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = urem i64 %4, %6
  store i64 %7, i64* %index.0, align 8
  %8 = load i64, i64* %index.0, align 8
  %9 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, i32 0, i32 1
  %10 = load %"map::Entry"**, %"map::Entry"*** %9, align 8
  %11 = getelementptr %"map::Entry"*, %"map::Entry"** %10, i64 %8
  %12 = load %"map::Entry"*, %"map::Entry"** %11, align 8
  store %"map::Entry"* %12, %"map::Entry"** %entry.0, align 8
  %13 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %14 = ptrtoint %"map::Entry"* %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %start
  %17 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %18 = getelementptr %"map::Entry", %"map::Entry"* %17, i32 0, i32 0
  %19 = load { i64, i8* }, { i64, i8* }* %18, align 8
  %20 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %21 = extractvalue { i64, i8* } %19, 1
  %22 = extractvalue { i64, i8* } %20, 1
  %23 = call i32 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i8*, i8** %value.0, align 8
  %27 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %28 = getelementptr %"map::Entry", %"map::Entry"* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  ret i1 false

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %54, %30
  %32 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %33 = getelementptr %"map::Entry", %"map::Entry"* %32, i32 0, i32 2
  %34 = load %"map::Entry"*, %"map::Entry"** %33, align 8
  %35 = ptrtoint %"map::Entry"* %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %39 = getelementptr %"map::Entry", %"map::Entry"* %38, i32 0, i32 2
  %40 = load %"map::Entry"*, %"map::Entry"** %39, align 8
  store %"map::Entry"* %40, %"map::Entry"** %entry.0, align 8
  %41 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %42 = getelementptr %"map::Entry", %"map::Entry"* %41, i32 0, i32 0
  %43 = load { i64, i8* }, { i64, i8* }* %42, align 8
  %44 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %45 = extractvalue { i64, i8* } %43, 1
  %46 = extractvalue { i64, i8* } %44, 1
  %47 = call i32 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i8*, i8** %value.0, align 8
  %51 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %52 = getelementptr %"map::Entry", %"map::Entry"* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  ret i1 false

53:                                               ; No predecessors!
  br label %54

54:                                               ; preds = %53, %37
  br label %31

55:                                               ; preds = %31
  %56 = call i8* @malloc(i64 32)
  %57 = bitcast i8* %56 to %"map::Entry"*
  store %"map::Entry"* %57, %"map::Entry"** %entry2.1, align 8
  %58 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %59 = load %"map::Entry"*, %"map::Entry"** %entry2.1, align 8
  %60 = getelementptr %"map::Entry", %"map::Entry"* %59, i32 0, i32 0
  store { i64, i8* } %58, { i64, i8* }* %60, align 8
  %61 = load i8*, i8** %value.0, align 8
  %62 = load %"map::Entry"*, %"map::Entry"** %entry2.1, align 8
  %63 = getelementptr %"map::Entry", %"map::Entry"* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %"map::Entry"*, %"map::Entry"** %entry2.1, align 8
  %65 = getelementptr %"map::Entry", %"map::Entry"* %64, i32 0, i32 2
  store %"map::Entry"* null, %"map::Entry"** %65, align 8
  %66 = load %"map::Entry"*, %"map::Entry"** %entry2.1, align 8
  %67 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %68 = getelementptr %"map::Entry", %"map::Entry"* %67, i32 0, i32 2
  store %"map::Entry"* %66, %"map::Entry"** %68, align 8
  br label %85

69:                                               ; preds = %start
  %70 = call i8* @malloc(i64 32)
  %71 = bitcast i8* %70 to %"map::Entry"*
  store %"map::Entry"* %71, %"map::Entry"** %entry.0, align 8
  %72 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %73 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %74 = getelementptr %"map::Entry", %"map::Entry"* %73, i32 0, i32 0
  store { i64, i8* } %72, { i64, i8* }* %74, align 8
  %75 = load i8*, i8** %value.0, align 8
  %76 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %77 = getelementptr %"map::Entry", %"map::Entry"* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %79 = getelementptr %"map::Entry", %"map::Entry"* %78, i32 0, i32 2
  store %"map::Entry"* null, %"map::Entry"** %79, align 8
  %80 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %81 = load i64, i64* %index.0, align 8
  %82 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %entries.0, i32 0, i32 1
  %83 = load %"map::Entry"**, %"map::Entry"*** %82, align 8
  %84 = getelementptr %"map::Entry"*, %"map::Entry"** %83, i64 %81
  store %"map::Entry"* %80, %"map::Entry"** %84, align 8
  br label %85

85:                                               ; preds = %69, %55
  ret i1 true

86:                                               ; No predecessors!
  ret i1 undef
}

define { i64, { i64, i8* }* } @"map::keys::(*map::Map)"(%"map::Map"* %map.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %keys.0 = alloca { i64, { i64, i8* }* }, align 8
  %tmp.8 = alloca i64, align 8
  %index.0 = alloca i32, align 4
  %i.1 = alloca i32, align 4
  %entry.1 = alloca %"map::Entry"*, align 8
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %1 = call i64 @"map::size::(*map::Map)"(%"map::Map"* %0)
  store i64 %1, i64* %tmp.8, align 8
  %2 = load i64, i64* %tmp.8, align 8
  %3 = mul i64 %2, 16
  %4 = call i8* @malloc(i64 %3)
  %5 = bitcast i8* %4 to { i64, i8* }*
  %6 = insertvalue { i64, { i64, i8* }* } undef, { i64, i8* }* %5, 1
  %7 = insertvalue { i64, { i64, i8* }* } %6, i64 %2, 0
  store { i64, { i64, i8* }* } %7, { i64, { i64, i8* }* }* %keys.0, align 8
  store i32 0, i32* %index.0, align 4
  %8 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %9 = getelementptr %"map::Map", %"map::Map"* %8, i32 0, i32 1
  %10 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 0, i32* %i.1, align 4
  br label %13

13:                                               ; preds = %60, %start
  %14 = load i32, i32* %i.1, align 4
  %15 = icmp slt i32 %14, %12
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %18 = getelementptr %"map::Map", %"map::Map"* %17, i32 0, i32 1
  %19 = load i32, i32* %i.1, align 4
  %20 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %18, i32 0, i32 1
  %21 = load %"map::Entry"**, %"map::Entry"*** %20, align 8
  %22 = getelementptr %"map::Entry"*, %"map::Entry"** %21, i32 %19
  %23 = load %"map::Entry"*, %"map::Entry"** %22, align 8
  store %"map::Entry"* %23, %"map::Entry"** %entry.1, align 8
  %24 = load %"map::Entry"*, %"map::Entry"** %entry.1, align 8
  %25 = ptrtoint %"map::Entry"* %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %16
  %28 = load %"map::Entry"*, %"map::Entry"** %entry.1, align 8
  %29 = getelementptr %"map::Entry", %"map::Entry"* %28, i32 0, i32 0
  %30 = load { i64, i8* }, { i64, i8* }* %29, align 8
  %31 = load i32, i32* %index.0, align 4
  %32 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %keys.0, i32 0, i32 1
  %33 = load { i64, i8* }*, { i64, i8* }** %32, align 8
  %34 = getelementptr { i64, i8* }, { i64, i8* }* %33, i32 %31
  store { i64, i8* } %30, { i64, i8* }* %34, align 8
  %35 = load i32, i32* %index.0, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %index.0, align 4
  br label %37

37:                                               ; preds = %43, %27
  %38 = load %"map::Entry"*, %"map::Entry"** %entry.1, align 8
  %39 = getelementptr %"map::Entry", %"map::Entry"* %38, i32 0, i32 2
  %40 = load %"map::Entry"*, %"map::Entry"** %39, align 8
  %41 = ptrtoint %"map::Entry"* %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %"map::Entry"*, %"map::Entry"** %entry.1, align 8
  %45 = getelementptr %"map::Entry", %"map::Entry"* %44, i32 0, i32 2
  %46 = load %"map::Entry"*, %"map::Entry"** %45, align 8
  %47 = getelementptr %"map::Entry", %"map::Entry"* %46, i32 0, i32 0
  %48 = load { i64, i8* }, { i64, i8* }* %47, align 8
  %49 = load i32, i32* %index.0, align 4
  %50 = getelementptr { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %keys.0, i32 0, i32 1
  %51 = load { i64, i8* }*, { i64, i8* }** %50, align 8
  %52 = getelementptr { i64, i8* }, { i64, i8* }* %51, i32 %49
  store { i64, i8* } %48, { i64, i8* }* %52, align 8
  %53 = load i32, i32* %index.0, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %index.0, align 4
  %55 = load %"map::Entry"*, %"map::Entry"** %entry.1, align 8
  %56 = getelementptr %"map::Entry", %"map::Entry"* %55, i32 0, i32 2
  %57 = load %"map::Entry"*, %"map::Entry"** %56, align 8
  store %"map::Entry"* %57, %"map::Entry"** %entry.1, align 8
  br label %37

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %16
  br label %60

60:                                               ; preds = %59
  %61 = add i32 %14, 1
  store i32 %61, i32* %i.1, align 4
  br label %13

62:                                               ; preds = %13
  %63 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %keys.0, align 8
  ret { i64, { i64, i8* }* } %63

64:                                               ; No predecessors!
  ret { i64, { i64, i8* }* } undef
}

define void @"map::put::(*map::Map, [int8], *)"(%"map::Map"* %map.value, { i64, i8* } %key.value, i8* %value.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %key.0 = alloca { i64, i8* }, align 8
  %value.0 = alloca i8*, align 8
  %tmp.6 = alloca i1, align 1
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  store { i64, i8* } %key.value, { i64, i8* }* %key.0, align 8
  store i8* %value.value, i8** %value.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  call void @"map::maybe_rehash::(*map::Map)"(%"map::Map"* %0)
  %1 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %2 = getelementptr %"map::Map", %"map::Map"* %1, i32 0, i32 1
  %3 = load { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %2, align 8
  %4 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %5 = load i8*, i8** %value.0, align 8
  %6 = call i1 @"map::do_put::([*map::Entry], [int8], *)"({ i64, %"map::Entry"** } %3, { i64, i8* } %4, i8* %5)
  store i1 %6, i1* %tmp.6, align 1
  %7 = load i1, i1* %tmp.6, align 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %start
  %9 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %10 = getelementptr %"map::Map", %"map::Map"* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = zext i32 1 to i64
  %13 = add i64 %11, %12
  %14 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %15 = getelementptr %"map::Map", %"map::Map"* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %8, %start
  ret void
}

define void @"map::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = inttoptr i32 1 to i8*
  store i8* %0, i8** @"map::sentinel", align 8
  ret void
}

define i8* @"map::get::(*map::Map, [int8])"(%"map::Map"* %map.value, { i64, i8* } %key.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %key.0 = alloca { i64, i8* }, align 8
  %h.0 = alloca i32, align 4
  %tmp.3 = alloca i32, align 4
  %index.0 = alloca i64, align 8
  %entry.0 = alloca %"map::Entry"*, align 8
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  store { i64, i8* } %key.value, { i64, i8* }* %key.0, align 8
  %0 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %1 = call i32 @"map::hash::([int8])"({ i64, i8* } %0)
  store i32 %1, i32* %tmp.3, align 4
  %2 = load i32, i32* %tmp.3, align 4
  store i32 %2, i32* %h.0, align 4
  %3 = load i32, i32* %h.0, align 4
  %4 = zext i32 %3 to i64
  %5 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %6 = getelementptr %"map::Map", %"map::Map"* %5, i32 0, i32 1
  %7 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = urem i64 %4, %8
  store i64 %9, i64* %index.0, align 8
  %10 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %11 = getelementptr %"map::Map", %"map::Map"* %10, i32 0, i32 1
  %12 = load i64, i64* %index.0, align 8
  %13 = getelementptr { i64, %"map::Entry"** }, { i64, %"map::Entry"** }* %11, i32 0, i32 1
  %14 = load %"map::Entry"**, %"map::Entry"*** %13, align 8
  %15 = getelementptr %"map::Entry"*, %"map::Entry"** %14, i64 %12
  %16 = load %"map::Entry"*, %"map::Entry"** %15, align 8
  store %"map::Entry"* %16, %"map::Entry"** %entry.0, align 8
  %17 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %18 = ptrtoint %"map::Entry"* %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %start
  %21 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %22 = getelementptr %"map::Entry", %"map::Entry"* %21, i32 0, i32 0
  %23 = load { i64, i8* }, { i64, i8* }* %22, align 8
  %24 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %25 = extractvalue { i64, i8* } %23, 1
  %26 = extractvalue { i64, i8* } %24, 1
  %27 = call i32 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %31 = getelementptr %"map::Entry", %"map::Entry"* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  ret i8* %32

33:                                               ; No predecessors!
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %58, %34
  %36 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %37 = getelementptr %"map::Entry", %"map::Entry"* %36, i32 0, i32 2
  %38 = load %"map::Entry"*, %"map::Entry"** %37, align 8
  %39 = ptrtoint %"map::Entry"* %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %43 = getelementptr %"map::Entry", %"map::Entry"* %42, i32 0, i32 2
  %44 = load %"map::Entry"*, %"map::Entry"** %43, align 8
  store %"map::Entry"* %44, %"map::Entry"** %entry.0, align 8
  %45 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %46 = getelementptr %"map::Entry", %"map::Entry"* %45, i32 0, i32 0
  %47 = load { i64, i8* }, { i64, i8* }* %46, align 8
  %48 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %49 = extractvalue { i64, i8* } %47, 1
  %50 = extractvalue { i64, i8* } %48, 1
  %51 = call i32 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load %"map::Entry"*, %"map::Entry"** %entry.0, align 8
  %55 = getelementptr %"map::Entry", %"map::Entry"* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  ret i8* %56

57:                                               ; No predecessors!
  br label %58

58:                                               ; preds = %57, %41
  br label %35

59:                                               ; preds = %35
  ret i8* null

60:                                               ; No predecessors!
  br label %63

61:                                               ; preds = %start
  ret i8* null

62:                                               ; No predecessors!
  br label %63

63:                                               ; preds = %62, %60
  ret i8* undef
}

define i1 @"map::contains::(*map::Map, [int8])"(%"map::Map"* %map.value, { i64, i8* } %key.value) {
start:
  %map.0 = alloca %"map::Map"*, align 8
  %key.0 = alloca { i64, i8* }, align 8
  %value.0 = alloca i8*, align 8
  %tmp.4 = alloca i8*, align 8
  store %"map::Map"* %map.value, %"map::Map"** %map.0, align 8
  store { i64, i8* } %key.value, { i64, i8* }* %key.0, align 8
  %0 = load %"map::Map"*, %"map::Map"** %map.0, align 8
  %1 = load { i64, i8* }, { i64, i8* }* %key.0, align 8
  %2 = call i8* @"map::get::(*map::Map, [int8])"(%"map::Map"* %0, { i64, i8* } %1)
  store i8* %2, i8** %tmp.4, align 8
  %3 = load i8*, i8** %tmp.4, align 8
  store i8* %3, i8** %value.0, align 8
  %4 = load i8*, i8** %value.0, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = icmp ne i64 %5, 0
  ret i1 %6

7:                                                ; No predecessors!
  ret i1 undef
}

define void @"cstd::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  %tmp.0 = alloca { i64, i8* }, align 8
  %tmp.1 = alloca { i64, i8* }, align 8
  %tmp.2 = alloca { i64, i8* }, align 8
  %tmp.3 = alloca { i64, i8* }, align 8
  %tmp.4 = alloca { i64, i8* }, align 8
  %tmp.5 = alloca { i64, i8* }, align 8
  %tmp.6 = alloca { i64, i8* }, align 8
  %tmp.7 = alloca { i64, i8* }, align 8
  %tmp.8 = alloca { i64, i8* }, align 8
  %tmp.9 = alloca { i64, i8* }, align 8
  %tmp.10 = alloca { i64, i8* }, align 8
  %tmp.11 = alloca { i64, i8* }, align 8
  %tmp.12 = alloca { i64, i8* }, align 8
  %tmp.13 = alloca { i64, i8* }, align 8
  %tmp.14 = alloca { i64, i8* }, align 8
  %tmp.15 = alloca { i64, i8* }, align 8
  %tmp.16 = alloca { i64, i8* }, align 8
  %tmp.17 = alloca { i64, i8* }, align 8
  %tmp.18 = alloca { i64, i8* }, align 8
  %tmp.19 = alloca { i64, i8* }, align 8
  %tmp.20 = alloca { i64, i8* }, align 8
  %tmp.21 = alloca { i64, i8* }, align 8
  %tmp.22 = alloca { i64, i8* }, align 8
  %tmp.23 = alloca { i64, i8* }, align 8
  %tmp.24 = alloca { i64, i8* }, align 8
  %tmp.25 = alloca { i64, i8* }, align 8
  %tmp.26 = alloca { i64, i8* }, align 8
  %tmp.27 = alloca { i64, i8* }, align 8
  %tmp.28 = alloca { i64, i8* }, align 8
  %tmp.29 = alloca { i64, i8* }, align 8
  %tmp.30 = alloca { i64, i8* }, align 8
  %tmp.31 = alloca { i64, i8* }, align 8
  %tmp.32 = alloca { i64, i8* }, align 8
  %tmp.33 = alloca { i64, i8* }, align 8
  %tmp.34 = alloca { i64, i8* }, align 8
  %tmp.35 = alloca { i64, i8* }, align 8
  %tmp.36 = alloca { i64, i8* }, align 8
  %tmp.37 = alloca { i64, i8* }, align 8
  %tmp.38 = alloca { i64, i8* }, align 8
  %tmp.39 = alloca { i64, i8* }, align 8
  %tmp.40 = alloca { i64, i8* }, align 8
  %tmp.41 = alloca { i64, i8* }, align 8
  %tmp.42 = alloca { i64, i8* }, align 8
  %tmp.43 = alloca { i64, i8* }, align 8
  %tmp.44 = alloca { i64, i8* }, align 8
  %tmp.45 = alloca { i64, i8* }, align 8
  %tmp.46 = alloca { i64, i8* }, align 8
  %tmp.47 = alloca { i64, i8* }, align 8
  %tmp.48 = alloca { i64, i8* }, align 8
  %tmp.49 = alloca { i64, i8* }, align 8
  %tmp.50 = alloca { i64, i8* }, align 8
  %tmp.51 = alloca { i64, i8* }, align 8
  %tmp.52 = alloca { i64, i8* }, align 8
  %tmp.53 = alloca { i64, i8* }, align 8
  %tmp.54 = alloca { i64, i8* }, align 8
  %tmp.55 = alloca { i64, i8* }, align 8
  %tmp.56 = alloca { i64, i8* }, align 8
  %tmp.57 = alloca { i64, i8* }, align 8
  %tmp.58 = alloca { i64, i8* }, align 8
  %tmp.59 = alloca { i64, i8* }, align 8
  %tmp.60 = alloca { i64, i8* }, align 8
  %tmp.61 = alloca { i64, i8* }, align 8
  %tmp.62 = alloca { i64, i8* }, align 8
  %tmp.63 = alloca { i64, i8* }, align 8
  %tmp.64 = alloca { i64, i8* }, align 8
  %tmp.65 = alloca { i64, i8* }, align 8
  %tmp.66 = alloca { i64, i8* }, align 8
  %tmp.67 = alloca { i64, i8* }, align 8
  %tmp.68 = alloca { i64, i8* }, align 8
  %tmp.69 = alloca { i64, i8* }, align 8
  %tmp.70 = alloca { i64, i8* }, align 8
  %tmp.71 = alloca { i64, i8* }, align 8
  %tmp.72 = alloca { i64, i8* }, align 8
  %tmp.73 = alloca { i64, i8* }, align 8
  %tmp.74 = alloca { i64, i8* }, align 8
  %tmp.75 = alloca { i64, i8* }, align 8
  %tmp.76 = alloca { i64, i8* }, align 8
  %tmp.77 = alloca { i64, i8* }, align 8
  %tmp.78 = alloca { i64, i8* }, align 8
  %tmp.79 = alloca { i64, i8* }, align 8
  %tmp.80 = alloca { i64, i8* }, align 8
  %tmp.81 = alloca { i64, i8* }, align 8
  %tmp.82 = alloca { i64, i8* }, align 8
  %tmp.83 = alloca { i64, i8* }, align 8
  %tmp.84 = alloca { i64, i8* }, align 8
  %tmp.85 = alloca { i64, i8* }, align 8
  %tmp.86 = alloca { i64, i8* }, align 8
  %tmp.87 = alloca { i64, i8* }, align 8
  %tmp.88 = alloca { i64, i8* }, align 8
  %tmp.89 = alloca { i64, i8* }, align 8
  %tmp.90 = alloca { i64, i8* }, align 8
  %tmp.91 = alloca { i64, i8* }, align 8
  %tmp.92 = alloca { i64, i8* }, align 8
  %tmp.93 = alloca { i64, i8* }, align 8
  %tmp.94 = alloca { i64, i8* }, align 8
  %tmp.95 = alloca { i64, i8* }, align 8
  %tmp.96 = alloca { i64, i8* }, align 8
  %tmp.97 = alloca { i64, i8* }, align 8
  %tmp.98 = alloca { i64, i8* }, align 8
  %tmp.99 = alloca { i64, i8* }, align 8
  %tmp.100 = alloca { i64, i8* }, align 8
  %tmp.101 = alloca { i64, i8* }, align 8
  %tmp.102 = alloca { i64, i8* }, align 8
  %tmp.103 = alloca { i64, i8* }, align 8
  %tmp.104 = alloca { i64, i8* }, align 8
  %tmp.105 = alloca { i64, i8* }, align 8
  %tmp.106 = alloca { i64, i8* }, align 8
  %tmp.107 = alloca { i64, i8* }, align 8
  %tmp.108 = alloca { i64, i8* }, align 8
  %tmp.109 = alloca { i64, i8* }, align 8
  %tmp.110 = alloca { i64, i8* }, align 8
  %tmp.111 = alloca { i64, i8* }, align 8
  %tmp.112 = alloca { i64, i8* }, align 8
  %tmp.113 = alloca { i64, i8* }, align 8
  %tmp.114 = alloca { i64, i8* }, align 8
  %tmp.115 = alloca { i64, i8* }, align 8
  %tmp.116 = alloca { i64, i8* }, align 8
  %tmp.117 = alloca { i64, i8* }, align 8
  %tmp.118 = alloca { i64, i8* }, align 8
  %tmp.119 = alloca { i64, i8* }, align 8
  %tmp.120 = alloca { i64, i8* }, align 8
  %tmp.121 = alloca { i64, i8* }, align 8
  %tmp.122 = alloca { i64, i8* }, align 8
  %tmp.123 = alloca { i64, i8* }, align 8
  %tmp.124 = alloca { i64, i8* }, align 8
  %tmp.125 = alloca { i64, i8* }, align 8
  %tmp.126 = alloca { i64, i8* }, align 8
  %tmp.127 = alloca { i64, i8* }, align 8
  %tmp.128 = alloca { i64, i8* }, align 8
  %tmp.129 = alloca { i64, i8* }, align 8
  %tmp.130 = alloca { i64, i8* }, align 8
  %tmp.131 = alloca { i64, i8* }, align 8
  %tmp.132 = alloca { i64, i8* }, align 8
  %tmp.133 = alloca { i64, i8* }, align 8
  %tmp.134 = alloca { i64, i8* }, align 8
  %tmp.135 = alloca { i64, i8* }, align 8
  %tmp.136 = alloca { i64, i8* }, align 8
  %tmp.137 = alloca { i64, i8* }, align 8
  %tmp.138 = alloca { i64, i8* }, align 8
  %tmp.139 = alloca { i64, i8* }, align 8
  %tmp.140 = alloca { i64, i8* }, align 8
  %tmp.141 = alloca { i64, i8* }, align 8
  %tmp.142 = alloca { i64, i8* }, align 8
  %tmp.143 = alloca { i64, i8* }, align 8
  %tmp.144 = alloca { i64, i8* }, align 8
  %tmp.145 = alloca { i64, i8* }, align 8
  %tmp.146 = alloca { i64, i8* }, align 8
  %tmp.147 = alloca { i64, i8* }, align 8
  %tmp.148 = alloca { i64, i8* }, align 8
  %tmp.149 = alloca { i64, i8* }, align 8
  %tmp.150 = alloca { i64, i8* }, align 8
  %tmp.151 = alloca { i64, i8* }, align 8
  %tmp.152 = alloca { i64, i8* }, align 8
  %tmp.153 = alloca { i64, i8* }, align 8
  %tmp.154 = alloca { i64, i8* }, align 8
  %tmp.155 = alloca { i64, i8* }, align 8
  %tmp.156 = alloca { i64, i8* }, align 8
  %tmp.157 = alloca { i64, i8* }, align 8
  %tmp.158 = alloca { i64, i8* }, align 8
  %tmp.159 = alloca { i64, i8* }, align 8
  %tmp.160 = alloca { i64, i8* }, align 8
  %tmp.161 = alloca { i64, i8* }, align 8
  %tmp.162 = alloca { i64, i8* }, align 8
  %tmp.163 = alloca { i64, i8* }, align 8
  %tmp.164 = alloca { i64, i8* }, align 8
  %tmp.165 = alloca { i64, i8* }, align 8
  %tmp.166 = alloca { i64, i8* }, align 8
  %tmp.167 = alloca { i64, i8* }, align 8
  %tmp.168 = alloca { i64, i8* }, align 8
  %tmp.169 = alloca { i64, i8* }, align 8
  %tmp.170 = alloca { i64, i8* }, align 8
  %tmp.171 = alloca { i64, i8* }, align 8
  %tmp.172 = alloca { i64, i8* }, align 8
  %tmp.173 = alloca { i64, i8* }, align 8
  %tmp.174 = alloca { i64, i8* }, align 8
  %tmp.175 = alloca { i64, i8* }, align 8
  %tmp.176 = alloca { i64, i8* }, align 8
  %tmp.177 = alloca { i64, i8* }, align 8
  %tmp.178 = alloca { i64, i8* }, align 8
  %tmp.179 = alloca { i64, i8* }, align 8
  %tmp.180 = alloca { i64, i8* }, align 8
  %tmp.181 = alloca { i64, i8* }, align 8
  %tmp.182 = alloca { i64, i8* }, align 8
  %tmp.183 = alloca { i64, i8* }, align 8
  %tmp.184 = alloca { i64, i8* }, align 8
  %tmp.185 = alloca { i64, i8* }, align 8
  %tmp.186 = alloca { i64, i8* }, align 8
  %tmp.187 = alloca { i64, i8* }, align 8
  %tmp.188 = alloca { i64, i8* }, align 8
  %tmp.189 = alloca { i64, i8* }, align 8
  %tmp.190 = alloca { i64, i8* }, align 8
  %tmp.191 = alloca { i64, i8* }, align 8
  %tmp.192 = alloca { i64, i8* }, align 8
  %tmp.193 = alloca { i64, i8* }, align 8
  %tmp.194 = alloca { i64, i8* }, align 8
  %tmp.195 = alloca { i64, i8* }, align 8
  %tmp.196 = alloca { i64, i8* }, align 8
  %tmp.197 = alloca { i64, i8* }, align 8
  %tmp.198 = alloca { i64, i8* }, align 8
  %tmp.199 = alloca { i64, i8* }, align 8
  %tmp.200 = alloca { i64, i8* }, align 8
  %tmp.201 = alloca { i64, i8* }, align 8
  %tmp.202 = alloca { i64, i8* }, align 8
  %tmp.203 = alloca { i64, i8* }, align 8
  %tmp.204 = alloca { i64, i8* }, align 8
  %tmp.205 = alloca { i64, i8* }, align 8
  %tmp.206 = alloca { i64, i8* }, align 8
  %tmp.207 = alloca { i64, i8* }, align 8
  %tmp.208 = alloca { i64, i8* }, align 8
  %tmp.209 = alloca { i64, i8* }, align 8
  %tmp.210 = alloca { i64, i8* }, align 8
  %tmp.211 = alloca { i64, i8* }, align 8
  %tmp.212 = alloca { i64, i8* }, align 8
  %tmp.213 = alloca { i64, i8* }, align 8
  %tmp.214 = alloca { i64, i8* }, align 8
  %tmp.215 = alloca { i64, i8* }, align 8
  %tmp.216 = alloca { i64, i8* }, align 8
  %tmp.217 = alloca { i64, i8* }, align 8
  %tmp.218 = alloca { i64, i8* }, align 8
  %tmp.219 = alloca { i64, i8* }, align 8
  %tmp.220 = alloca { i64, i8* }, align 8
  %tmp.221 = alloca { i64, i8* }, align 8
  %tmp.222 = alloca { i64, i8* }, align 8
  %tmp.223 = alloca { i64, i8* }, align 8
  %tmp.224 = alloca { i64, i8* }, align 8
  %tmp.225 = alloca { i64, i8* }, align 8
  %tmp.226 = alloca { i64, i8* }, align 8
  %tmp.227 = alloca { i64, i8* }, align 8
  %tmp.228 = alloca { i64, i8* }, align 8
  %tmp.229 = alloca { i64, i8* }, align 8
  %tmp.230 = alloca { i64, i8* }, align 8
  %tmp.231 = alloca { i64, i8* }, align 8
  %tmp.232 = alloca { i64, i8* }, align 8
  %tmp.233 = alloca { i64, i8* }, align 8
  %tmp.234 = alloca { i64, i8* }, align 8
  %tmp.235 = alloca { i64, i8* }, align 8
  %tmp.236 = alloca { i64, i8* }, align 8
  %tmp.237 = alloca { i64, i8* }, align 8
  %tmp.238 = alloca { i64, i8* }, align 8
  %tmp.239 = alloca { i64, i8* }, align 8
  %tmp.240 = alloca { i64, i8* }, align 8
  %tmp.241 = alloca { i64, i8* }, align 8
  %tmp.242 = alloca { i64, i8* }, align 8
  %tmp.243 = alloca { i64, i8* }, align 8
  %tmp.244 = alloca { i64, i8* }, align 8
  %tmp.245 = alloca { i64, i8* }, align 8
  %tmp.246 = alloca { i64, i8* }, align 8
  %tmp.247 = alloca { i64, i8* }, align 8
  %tmp.248 = alloca { i64, i8* }, align 8
  %tmp.249 = alloca { i64, i8* }, align 8
  %tmp.250 = alloca { i64, i8* }, align 8
  %tmp.251 = alloca { i64, i8* }, align 8
  %tmp.252 = alloca { i64, i8* }, align 8
  %tmp.253 = alloca { i64, i8* }, align 8
  %tmp.254 = alloca { i64, i8* }, align 8
  %tmp.255 = alloca { i64, i8* }, align 8
  %tmp.256 = alloca { i64, i8* }, align 8
  %tmp.257 = alloca { i64, i8* }, align 8
  %tmp.258 = alloca { i64, i8* }, align 8
  %tmp.259 = alloca { i64, i8* }, align 8
  %tmp.260 = alloca { i64, i8* }, align 8
  %tmp.261 = alloca { i64, i8* }, align 8
  %tmp.262 = alloca { i64, i8* }, align 8
  %tmp.263 = alloca { i64, i8* }, align 8
  %tmp.264 = alloca { i64, i8* }, align 8
  %tmp.265 = alloca { i64, i8* }, align 8
  %tmp.266 = alloca { i64, i8* }, align 8
  %tmp.267 = alloca { i64, i8* }, align 8
  %tmp.268 = alloca { i64, i8* }, align 8
  %tmp.269 = alloca { i64, i8* }, align 8
  %tmp.270 = alloca { i64, i8* }, align 8
  %tmp.271 = alloca { i64, i8* }, align 8
  %tmp.272 = alloca { i64, i8* }, align 8
  %tmp.273 = alloca { i64, i8* }, align 8
  %tmp.274 = alloca { i64, i8* }, align 8
  %tmp.275 = alloca { i64, i8* }, align 8
  %tmp.276 = alloca { i64, i8* }, align 8
  %tmp.277 = alloca { i64, i8* }, align 8
  %tmp.278 = alloca { i64, i8* }, align 8
  %tmp.279 = alloca { i64, i8* }, align 8
  %tmp.280 = alloca { i64, i8* }, align 8
  %tmp.281 = alloca { i64, i8* }, align 8
  %tmp.282 = alloca { i64, i8* }, align 8
  %tmp.283 = alloca { i64, i8* }, align 8
  %tmp.284 = alloca { i64, i8* }, align 8
  %tmp.285 = alloca { i64, i8* }, align 8
  %tmp.286 = alloca { i64, i8* }, align 8
  %tmp.287 = alloca { i64, i8* }, align 8
  %tmp.288 = alloca { i64, i8* }, align 8
  %tmp.289 = alloca { i64, i8* }, align 8
  %tmp.290 = alloca { i64, i8* }, align 8
  %tmp.291 = alloca { i64, i8* }, align 8
  %tmp.292 = alloca { i64, i8* }, align 8
  %tmp.293 = alloca { i64, i8* }, align 8
  %tmp.294 = alloca { i64, i8* }, align 8
  %tmp.295 = alloca { i64, i8* }, align 8
  %tmp.296 = alloca { i64, i8* }, align 8
  %tmp.297 = alloca { i64, i8* }, align 8
  %tmp.298 = alloca { i64, i8* }, align 8
  %tmp.299 = alloca { i64, i8* }, align 8
  %tmp.300 = alloca { i64, i8* }, align 8
  %tmp.301 = alloca { i64, i8* }, align 8
  %tmp.302 = alloca { i64, i8* }, align 8
  %tmp.303 = alloca { i64, i8* }, align 8
  %tmp.304 = alloca { i64, i8* }, align 8
  %tmp.305 = alloca { i64, i8* }, align 8
  %tmp.306 = alloca { i64, i8* }, align 8
  %tmp.307 = alloca { i64, i8* }, align 8
  %tmp.308 = alloca { i64, i8* }, align 8
  %tmp.309 = alloca { i64, i8* }, align 8
  %tmp.310 = alloca { i64, i8* }, align 8
  %tmp.311 = alloca { i64, i8* }, align 8
  %tmp.312 = alloca { i64, i8* }, align 8
  %tmp.313 = alloca { i64, i8* }, align 8
  %tmp.314 = alloca { i64, i8* }, align 8
  %tmp.315 = alloca { i64, i8* }, align 8
  %tmp.316 = alloca { i64, i8* }, align 8
  %tmp.317 = alloca { i64, i8* }, align 8
  %tmp.318 = alloca { i64, i8* }, align 8
  %tmp.319 = alloca { i64, i8* }, align 8
  %tmp.320 = alloca { i64, i8* }, align 8
  %tmp.321 = alloca { i64, i8* }, align 8
  %tmp.322 = alloca { i64, i8* }, align 8
  %tmp.323 = alloca { i64, i8* }, align 8
  %tmp.324 = alloca { i64, i8* }, align 8
  %tmp.325 = alloca { i64, i8* }, align 8
  %tmp.326 = alloca { i64, i8* }, align 8
  %tmp.327 = alloca { i64, i8* }, align 8
  %tmp.328 = alloca { i64, i8* }, align 8
  %tmp.329 = alloca { i64, i8* }, align 8
  %tmp.330 = alloca { i64, i8* }, align 8
  %tmp.331 = alloca { i64, i8* }, align 8
  %tmp.332 = alloca { i64, i8* }, align 8
  %tmp.333 = alloca { i64, i8* }, align 8
  %tmp.334 = alloca { i64, i8* }, align 8
  %tmp.335 = alloca { i64, i8* }, align 8
  %tmp.336 = alloca { i64, i8* }, align 8
  %tmp.337 = alloca { i64, i8* }, align 8
  %tmp.338 = alloca { i64, i8* }, align 8
  %tmp.339 = alloca { i64, i8* }, align 8
  %tmp.340 = alloca { i64, i8* }, align 8
  %tmp.341 = alloca { i64, i8* }, align 8
  %tmp.342 = alloca { i64, i8* }, align 8
  %tmp.343 = alloca { i64, i8* }, align 8
  %tmp.344 = alloca { i64, i8* }, align 8
  %tmp.345 = alloca { i64, i8* }, align 8
  %tmp.346 = alloca { i64, i8* }, align 8
  %tmp.347 = alloca { i64, i8* }, align 8
  %tmp.348 = alloca { i64, i8* }, align 8
  %tmp.349 = alloca { i64, i8* }, align 8
  %tmp.350 = alloca { i64, i8* }, align 8
  %tmp.351 = alloca { i64, i8* }, align 8
  %tmp.352 = alloca { i64, i8* }, align 8
  %tmp.353 = alloca { i64, i8* }, align 8
  %tmp.354 = alloca { i64, i8* }, align 8
  %tmp.355 = alloca { i64, i8* }, align 8
  %tmp.356 = alloca { i64, i8* }, align 8
  %tmp.357 = alloca { i64, i8* }, align 8
  %tmp.358 = alloca { i64, i8* }, align 8
  %tmp.359 = alloca { i64, i8* }, align 8
  %tmp.360 = alloca { i64, i8* }, align 8
  %tmp.361 = alloca { i64, i8* }, align 8
  %tmp.362 = alloca { i64, i8* }, align 8
  %tmp.363 = alloca { i64, i8* }, align 8
  %tmp.364 = alloca { i64, i8* }, align 8
  %tmp.365 = alloca { i64, i8* }, align 8
  %tmp.366 = alloca { i64, i8* }, align 8
  %tmp.367 = alloca { i64, i8* }, align 8
  %tmp.368 = alloca { i64, i8* }, align 8
  %tmp.369 = alloca { i64, i8* }, align 8
  %tmp.370 = alloca { i64, i8* }, align 8
  %tmp.371 = alloca { i64, i8* }, align 8
  %tmp.372 = alloca { i64, i8* }, align 8
  %tmp.373 = alloca { i64, i8* }, align 8
  %tmp.374 = alloca { i64, i8* }, align 8
  %tmp.375 = alloca { i64, i8* }, align 8
  %tmp.376 = alloca { i64, i8* }, align 8
  %tmp.377 = alloca { i64, i8* }, align 8
  %tmp.378 = alloca { i64, i8* }, align 8
  %tmp.379 = alloca { i64, i8* }, align 8
  %tmp.380 = alloca { i64, i8* }, align 8
  %tmp.381 = alloca { i64, i8* }, align 8
  %tmp.382 = alloca { i64, i8* }, align 8
  %tmp.383 = alloca { i64, i8* }, align 8
  %tmp.384 = alloca { i64, i8* }, align 8
  %tmp.385 = alloca { i64, i8* }, align 8
  %tmp.386 = alloca { i64, i8* }, align 8
  %tmp.387 = alloca { i64, i8* }, align 8
  %tmp.388 = alloca { i64, i8* }, align 8
  %tmp.389 = alloca { i64, i8* }, align 8
  %tmp.390 = alloca { i64, i8* }, align 8
  %tmp.391 = alloca { i64, i8* }, align 8
  %tmp.392 = alloca { i64, i8* }, align 8
  %tmp.393 = alloca { i64, i8* }, align 8
  %tmp.394 = alloca { i64, i8* }, align 8
  %tmp.395 = alloca { i64, i8* }, align 8
  %tmp.396 = alloca { i64, i8* }, align 8
  %tmp.397 = alloca { i64, i8* }, align 8
  %tmp.398 = alloca { i64, i8* }, align 8
  %tmp.399 = alloca { i64, i8* }, align 8
  %tmp.400 = alloca { i64, i8* }, align 8
  %tmp.401 = alloca { i64, i8* }, align 8
  %tmp.402 = alloca { i64, i8* }, align 8
  %tmp.403 = alloca { i64, i8* }, align 8
  %tmp.404 = alloca { i64, i8* }, align 8
  %tmp.405 = alloca { i64, i8* }, align 8
  %tmp.406 = alloca { i64, i8* }, align 8
  %tmp.407 = alloca { i64, i8* }, align 8
  %tmp.408 = alloca { i64, i8* }, align 8
  %tmp.409 = alloca { i64, i8* }, align 8
  %tmp.410 = alloca { i64, i8* }, align 8
  %tmp.411 = alloca { i64, i8* }, align 8
  %tmp.412 = alloca { i64, i8* }, align 8
  %tmp.413 = alloca { i64, i8* }, align 8
  %tmp.414 = alloca { i64, i8* }, align 8
  %tmp.415 = alloca { i64, i8* }, align 8
  %tmp.416 = alloca { i64, i8* }, align 8
  %tmp.417 = alloca { i64, i8* }, align 8
  %tmp.418 = alloca { i64, i8* }, align 8
  %tmp.419 = alloca { i64, i8* }, align 8
  %tmp.420 = alloca { i64, i8* }, align 8
  %tmp.421 = alloca { i64, i8* }, align 8
  %tmp.422 = alloca { i64, i8* }, align 8
  %tmp.423 = alloca { i64, i8* }, align 8
  %tmp.424 = alloca { i64, i8* }, align 8
  %tmp.425 = alloca { i64, i8* }, align 8
  %tmp.426 = alloca { i64, i8* }, align 8
  %tmp.427 = alloca { i64, i8* }, align 8
  %tmp.428 = alloca { i64, i8* }, align 8
  %tmp.429 = alloca { i64, i8* }, align 8
  %tmp.430 = alloca { i64, i8* }, align 8
  %tmp.431 = alloca { i64, i8* }, align 8
  %tmp.432 = alloca { i64, i8* }, align 8
  %tmp.433 = alloca { i64, i8* }, align 8
  %tmp.434 = alloca { i64, i8* }, align 8
  %tmp.435 = alloca { i64, i8* }, align 8
  %tmp.436 = alloca { i64, i8* }, align 8
  %tmp.437 = alloca { i64, i8* }, align 8
  %tmp.438 = alloca { i64, i8* }, align 8
  %tmp.439 = alloca { i64, i8* }, align 8
  %tmp.440 = alloca { i64, i8* }, align 8
  %tmp.441 = alloca { i64, i8* }, align 8
  %tmp.442 = alloca { i64, i8* }, align 8
  %tmp.443 = alloca { i64, i8* }, align 8
  %tmp.444 = alloca { i64, i8* }, align 8
  %tmp.445 = alloca { i64, i8* }, align 8
  %tmp.446 = alloca { i64, i8* }, align 8
  %tmp.447 = alloca { i64, i8* }, align 8
  %tmp.448 = alloca { i64, i8* }, align 8
  %tmp.449 = alloca { i64, i8* }, align 8
  %tmp.450 = alloca { i64, i8* }, align 8
  %tmp.451 = alloca { i64, i8* }, align 8
  %tmp.452 = alloca { i64, i8* }, align 8
  %tmp.453 = alloca { i64, i8* }, align 8
  %tmp.454 = alloca { i64, i8* }, align 8
  %tmp.455 = alloca { i64, i8* }, align 8
  %tmp.456 = alloca { i64, i8* }, align 8
  %tmp.457 = alloca { i64, i8* }, align 8
  %tmp.458 = alloca { i64, i8* }, align 8
  %tmp.459 = alloca { i64, i8* }, align 8
  %tmp.460 = alloca { i64, i8* }, align 8
  %tmp.461 = alloca { i64, i8* }, align 8
  %tmp.462 = alloca { i64, i8* }, align 8
  %tmp.463 = alloca { i64, i8* }, align 8
  %tmp.464 = alloca { i64, i8* }, align 8
  %tmp.465 = alloca { i64, i8* }, align 8
  %tmp.466 = alloca { i64, i8* }, align 8
  %tmp.467 = alloca { i64, i8* }, align 8
  %tmp.468 = alloca { i64, i8* }, align 8
  %tmp.469 = alloca { i64, i8* }, align 8
  %tmp.470 = alloca { i64, i8* }, align 8
  %tmp.471 = alloca { i64, i8* }, align 8
  %tmp.472 = alloca { i64, i8* }, align 8
  %tmp.473 = alloca { i64, i8* }, align 8
  %tmp.474 = alloca { i64, i8* }, align 8
  %tmp.475 = alloca { i64, i8* }, align 8
  %tmp.476 = alloca { i64, i8* }, align 8
  %tmp.477 = alloca { i64, i8* }, align 8
  %tmp.478 = alloca { i64, i8* }, align 8
  %tmp.479 = alloca { i64, i8* }, align 8
  %tmp.480 = alloca { i64, i8* }, align 8
  %tmp.481 = alloca { i64, i8* }, align 8
  %tmp.482 = alloca { i64, i8* }, align 8
  %tmp.483 = alloca { i64, i8* }, align 8
  %tmp.484 = alloca { i64, i8* }, align 8
  %tmp.485 = alloca { i64, i8* }, align 8
  %tmp.486 = alloca { i64, i8* }, align 8
  %tmp.487 = alloca { i64, i8* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.4", i64 0, i64 0
  %1 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %0, 1
  store { i64, i8* } %1, { i64, i8* }* %tmp.0, align 8
  %2 = load { i64, i8* }, { i64, i8* }* %tmp.0, align 8
  %3 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 0
  store { i64, i8* } %2, { i64, i8* }* %3, align 8
  %4 = bitcast double (i8*)* @atof to void ()*
  %5 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 0
  store void ()* %4, void ()** %5, align 8
  %6 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.5", i64 0, i64 0
  %7 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %6, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp.1, align 8
  %8 = load { i64, i8* }, { i64, i8* }* %tmp.1, align 8
  %9 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 1
  store { i64, i8* } %8, { i64, i8* }* %9, align 8
  %10 = bitcast i32 (i8*)* @atoi to void ()*
  %11 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 1
  store void ()* %10, void ()** %11, align 8
  %12 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.6", i64 0, i64 0
  %13 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %12, 1
  store { i64, i8* } %13, { i64, i8* }* %tmp.2, align 8
  %14 = load { i64, i8* }, { i64, i8* }* %tmp.2, align 8
  %15 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 2
  store { i64, i8* } %14, { i64, i8* }* %15, align 8
  %16 = bitcast i64 (i8*)* @atol to void ()*
  %17 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 2
  store void ()* %16, void ()** %17, align 8
  %18 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.7", i64 0, i64 0
  %19 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %18, 1
  store { i64, i8* } %19, { i64, i8* }* %tmp.3, align 8
  %20 = load { i64, i8* }, { i64, i8* }* %tmp.3, align 8
  %21 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 3
  store { i64, i8* } %20, { i64, i8* }* %21, align 8
  %22 = bitcast double (i8*, i8**)* @strtod to void ()*
  %23 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 3
  store void ()* %22, void ()** %23, align 8
  %24 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.8", i64 0, i64 0
  %25 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %24, 1
  store { i64, i8* } %25, { i64, i8* }* %tmp.4, align 8
  %26 = load { i64, i8* }, { i64, i8* }* %tmp.4, align 8
  %27 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 4
  store { i64, i8* } %26, { i64, i8* }* %27, align 8
  %28 = bitcast i64 (i8*, i8**, i32)* @strtol to void ()*
  %29 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 4
  store void ()* %28, void ()** %29, align 8
  %30 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.9", i64 0, i64 0
  %31 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %30, 1
  store { i64, i8* } %31, { i64, i8* }* %tmp.5, align 8
  %32 = load { i64, i8* }, { i64, i8* }* %tmp.5, align 8
  %33 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 5
  store { i64, i8* } %32, { i64, i8* }* %33, align 8
  %34 = bitcast i64 (i8*, i8**, i32)* @strtoul to void ()*
  %35 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 5
  store void ()* %34, void ()** %35, align 8
  %36 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.10", i64 0, i64 0
  %37 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %36, 1
  store { i64, i8* } %37, { i64, i8* }* %tmp.6, align 8
  %38 = load { i64, i8* }, { i64, i8* }* %tmp.6, align 8
  %39 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 6
  store { i64, i8* } %38, { i64, i8* }* %39, align 8
  %40 = bitcast i32 ()* @rand to void ()*
  %41 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 6
  store void ()* %40, void ()** %41, align 8
  %42 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.11", i64 0, i64 0
  %43 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %42, 1
  store { i64, i8* } %43, { i64, i8* }* %tmp.7, align 8
  %44 = load { i64, i8* }, { i64, i8* }* %tmp.7, align 8
  %45 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 7
  store { i64, i8* } %44, { i64, i8* }* %45, align 8
  %46 = bitcast void (i32)* @srand to void ()*
  %47 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 7
  store void ()* %46, void ()** %47, align 8
  %48 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.12", i64 0, i64 0
  %49 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %48, 1
  store { i64, i8* } %49, { i64, i8* }* %tmp.8, align 8
  %50 = load { i64, i8* }, { i64, i8* }* %tmp.8, align 8
  %51 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 8
  store { i64, i8* } %50, { i64, i8* }* %51, align 8
  %52 = bitcast i8* (i64)* @malloc to void ()*
  %53 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 8
  store void ()* %52, void ()** %53, align 8
  %54 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.13", i64 0, i64 0
  %55 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %54, 1
  store { i64, i8* } %55, { i64, i8* }* %tmp.9, align 8
  %56 = load { i64, i8* }, { i64, i8* }* %tmp.9, align 8
  %57 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 9
  store { i64, i8* } %56, { i64, i8* }* %57, align 8
  %58 = bitcast i8* (i64, i64)* @calloc to void ()*
  %59 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 9
  store void ()* %58, void ()** %59, align 8
  %60 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.14", i64 0, i64 0
  %61 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %60, 1
  store { i64, i8* } %61, { i64, i8* }* %tmp.10, align 8
  %62 = load { i64, i8* }, { i64, i8* }* %tmp.10, align 8
  %63 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 10
  store { i64, i8* } %62, { i64, i8* }* %63, align 8
  %64 = bitcast i8* (i8*, i64)* @realloc to void ()*
  %65 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 10
  store void ()* %64, void ()** %65, align 8
  %66 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.15", i64 0, i64 0
  %67 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %66, 1
  store { i64, i8* } %67, { i64, i8* }* %tmp.11, align 8
  %68 = load { i64, i8* }, { i64, i8* }* %tmp.11, align 8
  %69 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 11
  store { i64, i8* } %68, { i64, i8* }* %69, align 8
  %70 = bitcast void (i8*)* @free to void ()*
  %71 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 11
  store void ()* %70, void ()** %71, align 8
  %72 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.16", i64 0, i64 0
  %73 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %72, 1
  store { i64, i8* } %73, { i64, i8* }* %tmp.12, align 8
  %74 = load { i64, i8* }, { i64, i8* }* %tmp.12, align 8
  %75 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 12
  store { i64, i8* } %74, { i64, i8* }* %75, align 8
  %76 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 12
  store void ()* @abort, void ()** %76, align 8
  %77 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.17", i64 0, i64 0
  %78 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %77, 1
  store { i64, i8* } %78, { i64, i8* }* %tmp.13, align 8
  %79 = load { i64, i8* }, { i64, i8* }* %tmp.13, align 8
  %80 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 13
  store { i64, i8* } %79, { i64, i8* }* %80, align 8
  %81 = bitcast i32 (void ()*)* @atexit to void ()*
  %82 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 13
  store void ()* %81, void ()** %82, align 8
  %83 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.18", i64 0, i64 0
  %84 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %83, 1
  store { i64, i8* } %84, { i64, i8* }* %tmp.14, align 8
  %85 = load { i64, i8* }, { i64, i8* }* %tmp.14, align 8
  %86 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 14
  store { i64, i8* } %85, { i64, i8* }* %86, align 8
  %87 = bitcast void (i32)* @exit to void ()*
  %88 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 14
  store void ()* %87, void ()** %88, align 8
  %89 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.19", i64 0, i64 0
  %90 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %89, 1
  store { i64, i8* } %90, { i64, i8* }* %tmp.15, align 8
  %91 = load { i64, i8* }, { i64, i8* }* %tmp.15, align 8
  %92 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 15
  store { i64, i8* } %91, { i64, i8* }* %92, align 8
  %93 = bitcast i8* (i8*)* @getenv to void ()*
  %94 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 15
  store void ()* %93, void ()** %94, align 8
  %95 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.20", i64 0, i64 0
  %96 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %95, 1
  store { i64, i8* } %96, { i64, i8* }* %tmp.16, align 8
  %97 = load { i64, i8* }, { i64, i8* }* %tmp.16, align 8
  %98 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 16
  store { i64, i8* } %97, { i64, i8* }* %98, align 8
  %99 = bitcast i32 (i8*)* @system to void ()*
  %100 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 16
  store void ()* %99, void ()** %100, align 8
  %101 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.21", i64 0, i64 0
  %102 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %101, 1
  store { i64, i8* } %102, { i64, i8* }* %tmp.17, align 8
  %103 = load { i64, i8* }, { i64, i8* }* %tmp.17, align 8
  %104 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 17
  store { i64, i8* } %103, { i64, i8* }* %104, align 8
  %105 = bitcast i8* (i8*, i8*, i64, i64, i32 (i8*, i8*)*)* @bsearch to void ()*
  %106 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 17
  store void ()* %105, void ()** %106, align 8
  %107 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.22", i64 0, i64 0
  %108 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %107, 1
  store { i64, i8* } %108, { i64, i8* }* %tmp.18, align 8
  %109 = load { i64, i8* }, { i64, i8* }* %tmp.18, align 8
  %110 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 18
  store { i64, i8* } %109, { i64, i8* }* %110, align 8
  %111 = bitcast void (i8*, i64, i64, i32 (i8*, i8*)*)* @qsort to void ()*
  %112 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 18
  store void ()* %111, void ()** %112, align 8
  %113 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.23", i64 0, i64 0
  %114 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %113, 1
  store { i64, i8* } %114, { i64, i8* }* %tmp.19, align 8
  %115 = load { i64, i8* }, { i64, i8* }* %tmp.19, align 8
  %116 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 19
  store { i64, i8* } %115, { i64, i8* }* %116, align 8
  %117 = bitcast i32 (i32)* @abs to void ()*
  %118 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 19
  store void ()* %117, void ()** %118, align 8
  %119 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.24", i64 0, i64 0
  %120 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %119, 1
  store { i64, i8* } %120, { i64, i8* }* %tmp.20, align 8
  %121 = load { i64, i8* }, { i64, i8* }* %tmp.20, align 8
  %122 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 20
  store { i64, i8* } %121, { i64, i8* }* %122, align 8
  %123 = bitcast i64 (i64)* @labs to void ()*
  %124 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 20
  store void ()* %123, void ()** %124, align 8
  %125 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.25", i64 0, i64 0
  %126 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %125, 1
  store { i64, i8* } %126, { i64, i8* }* %tmp.21, align 8
  %127 = load { i64, i8* }, { i64, i8* }* %tmp.21, align 8
  %128 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 21
  store { i64, i8* } %127, { i64, i8* }* %128, align 8
  %129 = bitcast %"cstd::div_t" (i32, i32)* @div to void ()*
  %130 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 21
  store void ()* %129, void ()** %130, align 8
  %131 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.26", i64 0, i64 0
  %132 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %131, 1
  store { i64, i8* } %132, { i64, i8* }* %tmp.22, align 8
  %133 = load { i64, i8* }, { i64, i8* }* %tmp.22, align 8
  %134 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 22
  store { i64, i8* } %133, { i64, i8* }* %134, align 8
  %135 = bitcast %"cstd::ldiv_t" (i64, i64)* @ldiv to void ()*
  %136 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 22
  store void ()* %135, void ()** %136, align 8
  %137 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.27", i64 0, i64 0
  %138 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %137, 1
  store { i64, i8* } %138, { i64, i8* }* %tmp.23, align 8
  %139 = load { i64, i8* }, { i64, i8* }* %tmp.23, align 8
  %140 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 23
  store { i64, i8* } %139, { i64, i8* }* %140, align 8
  %141 = bitcast i32 (i8*, i64)* @mblen to void ()*
  %142 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 23
  store void ()* %141, void ()** %142, align 8
  %143 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.28", i64 0, i64 0
  %144 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %143, 1
  store { i64, i8* } %144, { i64, i8* }* %tmp.24, align 8
  %145 = load { i64, i8* }, { i64, i8* }* %tmp.24, align 8
  %146 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 24
  store { i64, i8* } %145, { i64, i8* }* %146, align 8
  %147 = bitcast i32 (i32*, i8*, i64)* @mbtowc to void ()*
  %148 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 24
  store void ()* %147, void ()** %148, align 8
  %149 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.29", i64 0, i64 0
  %150 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %149, 1
  store { i64, i8* } %150, { i64, i8* }* %tmp.25, align 8
  %151 = load { i64, i8* }, { i64, i8* }* %tmp.25, align 8
  %152 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 25
  store { i64, i8* } %151, { i64, i8* }* %152, align 8
  %153 = bitcast i32 (i8*, i32)* @wctomb to void ()*
  %154 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 25
  store void ()* %153, void ()** %154, align 8
  %155 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.30", i64 0, i64 0
  %156 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %155, 1
  store { i64, i8* } %156, { i64, i8* }* %tmp.26, align 8
  %157 = load { i64, i8* }, { i64, i8* }* %tmp.26, align 8
  %158 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 26
  store { i64, i8* } %157, { i64, i8* }* %158, align 8
  %159 = bitcast i64 (i32*, i8*, i64)* @mbstowcs to void ()*
  %160 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 26
  store void ()* %159, void ()** %160, align 8
  %161 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.31", i64 0, i64 0
  %162 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %161, 1
  store { i64, i8* } %162, { i64, i8* }* %tmp.27, align 8
  %163 = load { i64, i8* }, { i64, i8* }* %tmp.27, align 8
  %164 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 27
  store { i64, i8* } %163, { i64, i8* }* %164, align 8
  %165 = bitcast i64 (i8*, i32*, i64)* @wcstombs to void ()*
  %166 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 27
  store void ()* %165, void ()** %166, align 8
  %167 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.32", i64 0, i64 0
  %168 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %167, 1
  store { i64, i8* } %168, { i64, i8* }* %tmp.28, align 8
  %169 = load { i64, i8* }, { i64, i8* }* %tmp.28, align 8
  %170 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 28
  store { i64, i8* } %169, { i64, i8* }* %170, align 8
  %171 = bitcast i32 (i8*)* @remove to void ()*
  %172 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 28
  store void ()* %171, void ()** %172, align 8
  %173 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.33", i64 0, i64 0
  %174 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %173, 1
  store { i64, i8* } %174, { i64, i8* }* %tmp.29, align 8
  %175 = load { i64, i8* }, { i64, i8* }* %tmp.29, align 8
  %176 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 29
  store { i64, i8* } %175, { i64, i8* }* %176, align 8
  %177 = bitcast i32 (i8*, i8*)* @rename to void ()*
  %178 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 29
  store void ()* %177, void ()** %178, align 8
  %179 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.34", i64 0, i64 0
  %180 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %179, 1
  store { i64, i8* } %180, { i64, i8* }* %tmp.30, align 8
  %181 = load { i64, i8* }, { i64, i8* }* %tmp.30, align 8
  %182 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 30
  store { i64, i8* } %181, { i64, i8* }* %182, align 8
  %183 = bitcast i32 (i32, i8*, i32, i8*)* @renameat to void ()*
  %184 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 30
  store void ()* %183, void ()** %184, align 8
  %185 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.35", i64 0, i64 0
  %186 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %185, 1
  store { i64, i8* } %186, { i64, i8* }* %tmp.31, align 8
  %187 = load { i64, i8* }, { i64, i8* }* %tmp.31, align 8
  %188 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 31
  store { i64, i8* } %187, { i64, i8* }* %188, align 8
  %189 = bitcast %"cstd::s__IO_FILE"* ()* @tmpfile to void ()*
  %190 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 31
  store void ()* %189, void ()** %190, align 8
  %191 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.36", i64 0, i64 0
  %192 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %191, 1
  store { i64, i8* } %192, { i64, i8* }* %tmp.32, align 8
  %193 = load { i64, i8* }, { i64, i8* }* %tmp.32, align 8
  %194 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 32
  store { i64, i8* } %193, { i64, i8* }* %194, align 8
  %195 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fclose to void ()*
  %196 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 32
  store void ()* %195, void ()** %196, align 8
  %197 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.37", i64 0, i64 0
  %198 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %197, 1
  store { i64, i8* } %198, { i64, i8* }* %tmp.33, align 8
  %199 = load { i64, i8* }, { i64, i8* }* %tmp.33, align 8
  %200 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 33
  store { i64, i8* } %199, { i64, i8* }* %200, align 8
  %201 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fflush to void ()*
  %202 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 33
  store void ()* %201, void ()** %202, align 8
  %203 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.38", i64 0, i64 0
  %204 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %203, 1
  store { i64, i8* } %204, { i64, i8* }* %tmp.34, align 8
  %205 = load { i64, i8* }, { i64, i8* }* %tmp.34, align 8
  %206 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 34
  store { i64, i8* } %205, { i64, i8* }* %206, align 8
  %207 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fflush_unlocked to void ()*
  %208 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 34
  store void ()* %207, void ()** %208, align 8
  %209 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.39", i64 0, i64 0
  %210 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %209, 1
  store { i64, i8* } %210, { i64, i8* }* %tmp.35, align 8
  %211 = load { i64, i8* }, { i64, i8* }* %tmp.35, align 8
  %212 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 35
  store { i64, i8* } %211, { i64, i8* }* %212, align 8
  %213 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @fopen to void ()*
  %214 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 35
  store void ()* %213, void ()** %214, align 8
  %215 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.40", i64 0, i64 0
  %216 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %215, 1
  store { i64, i8* } %216, { i64, i8* }* %tmp.36, align 8
  %217 = load { i64, i8* }, { i64, i8* }* %tmp.36, align 8
  %218 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 36
  store { i64, i8* } %217, { i64, i8* }* %218, align 8
  %219 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*, %"cstd::s__IO_FILE"*)* @freopen to void ()*
  %220 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 36
  store void ()* %219, void ()** %220, align 8
  %221 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.41", i64 0, i64 0
  %222 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %221, 1
  store { i64, i8* } %222, { i64, i8* }* %tmp.37, align 8
  %223 = load { i64, i8* }, { i64, i8* }* %tmp.37, align 8
  %224 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 37
  store { i64, i8* } %223, { i64, i8* }* %224, align 8
  %225 = bitcast %"cstd::s__IO_FILE"* (i32, i8*)* @fdopen to void ()*
  %226 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 37
  store void ()* %225, void ()** %226, align 8
  %227 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.42", i64 0, i64 0
  %228 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %227, 1
  store { i64, i8* } %228, { i64, i8* }* %tmp.38, align 8
  %229 = load { i64, i8* }, { i64, i8* }* %tmp.38, align 8
  %230 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 38
  store { i64, i8* } %229, { i64, i8* }* %230, align 8
  %231 = bitcast %"cstd::s__IO_FILE"* (i8*, i64, i8*)* @fmemopen to void ()*
  %232 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 38
  store void ()* %231, void ()** %232, align 8
  %233 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.43", i64 0, i64 0
  %234 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %233, 1
  store { i64, i8* } %234, { i64, i8* }* %tmp.39, align 8
  %235 = load { i64, i8* }, { i64, i8* }* %tmp.39, align 8
  %236 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 39
  store { i64, i8* } %235, { i64, i8* }* %236, align 8
  %237 = bitcast %"cstd::s__IO_FILE"* (i8**, i64*)* @open_memstream to void ()*
  %238 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 39
  store void ()* %237, void ()** %238, align 8
  %239 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.44", i64 0, i64 0
  %240 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %239, 1
  store { i64, i8* } %240, { i64, i8* }* %tmp.40, align 8
  %241 = load { i64, i8* }, { i64, i8* }* %tmp.40, align 8
  %242 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 40
  store { i64, i8* } %241, { i64, i8* }* %242, align 8
  %243 = bitcast void (%"cstd::s__IO_FILE"*, i8*)* @setbuf to void ()*
  %244 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 40
  store void ()* %243, void ()** %244, align 8
  %245 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.45", i64 0, i64 0
  %246 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %245, 1
  store { i64, i8* } %246, { i64, i8* }* %tmp.41, align 8
  %247 = load { i64, i8* }, { i64, i8* }* %tmp.41, align 8
  %248 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 41
  store { i64, i8* } %247, { i64, i8* }* %248, align 8
  %249 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, i32, i64)* @setvbuf to void ()*
  %250 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 41
  store void ()* %249, void ()** %250, align 8
  %251 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.46", i64 0, i64 0
  %252 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %251, 1
  store { i64, i8* } %252, { i64, i8* }* %tmp.42, align 8
  %253 = load { i64, i8* }, { i64, i8* }* %tmp.42, align 8
  %254 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 42
  store { i64, i8* } %253, { i64, i8* }* %254, align 8
  %255 = bitcast void (%"cstd::s__IO_FILE"*, i8*, i64)* @setbuffer to void ()*
  %256 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 42
  store void ()* %255, void ()** %256, align 8
  %257 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.47", i64 0, i64 0
  %258 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %257, 1
  store { i64, i8* } %258, { i64, i8* }* %tmp.43, align 8
  %259 = load { i64, i8* }, { i64, i8* }* %tmp.43, align 8
  %260 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 43
  store { i64, i8* } %259, { i64, i8* }* %260, align 8
  %261 = bitcast void (%"cstd::s__IO_FILE"*)* @setlinebuf to void ()*
  %262 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 43
  store void ()* %261, void ()** %262, align 8
  %263 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.48", i64 0, i64 0
  %264 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %263, 1
  store { i64, i8* } %264, { i64, i8* }* %tmp.44, align 8
  %265 = load { i64, i8* }, { i64, i8* }* %tmp.44, align 8
  %266 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 44
  store { i64, i8* } %265, { i64, i8* }* %266, align 8
  %267 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @fprintf to void ()*
  %268 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 44
  store void ()* %267, void ()** %268, align 8
  %269 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.49", i64 0, i64 0
  %270 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %269, 1
  store { i64, i8* } %270, { i64, i8* }* %tmp.45, align 8
  %271 = load { i64, i8* }, { i64, i8* }* %tmp.45, align 8
  %272 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 45
  store { i64, i8* } %271, { i64, i8* }* %272, align 8
  %273 = bitcast i32 (i8*, ...)* @printf to void ()*
  %274 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 45
  store void ()* %273, void ()** %274, align 8
  %275 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.50", i64 0, i64 0
  %276 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %275, 1
  store { i64, i8* } %276, { i64, i8* }* %tmp.46, align 8
  %277 = load { i64, i8* }, { i64, i8* }* %tmp.46, align 8
  %278 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 46
  store { i64, i8* } %277, { i64, i8* }* %278, align 8
  %279 = bitcast i32 (i8*, i8*, ...)* @sprintf to void ()*
  %280 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 46
  store void ()* %279, void ()** %280, align 8
  %281 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.51", i64 0, i64 0
  %282 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %281, 1
  store { i64, i8* } %282, { i64, i8* }* %tmp.47, align 8
  %283 = load { i64, i8* }, { i64, i8* }* %tmp.47, align 8
  %284 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 47
  store { i64, i8* } %283, { i64, i8* }* %284, align 8
  %285 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %struct.__va_list_tag*)* @vfprintf to void ()*
  %286 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 47
  store void ()* %285, void ()** %286, align 8
  %287 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.52", i64 0, i64 0
  %288 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %287, 1
  store { i64, i8* } %288, { i64, i8* }* %tmp.48, align 8
  %289 = load { i64, i8* }, { i64, i8* }* %tmp.48, align 8
  %290 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 48
  store { i64, i8* } %289, { i64, i8* }* %290, align 8
  %291 = bitcast i32 (i8*, %struct.__va_list_tag*)* @vprintf to void ()*
  %292 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 48
  store void ()* %291, void ()** %292, align 8
  %293 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.53", i64 0, i64 0
  %294 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %293, 1
  store { i64, i8* } %294, { i64, i8* }* %tmp.49, align 8
  %295 = load { i64, i8* }, { i64, i8* }* %tmp.49, align 8
  %296 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 49
  store { i64, i8* } %295, { i64, i8* }* %296, align 8
  %297 = bitcast i32 (i8*, i8*, %struct.__va_list_tag*)* @vsprintf to void ()*
  %298 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 49
  store void ()* %297, void ()** %298, align 8
  %299 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.54", i64 0, i64 0
  %300 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %299, 1
  store { i64, i8* } %300, { i64, i8* }* %tmp.50, align 8
  %301 = load { i64, i8* }, { i64, i8* }* %tmp.50, align 8
  %302 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 50
  store { i64, i8* } %301, { i64, i8* }* %302, align 8
  %303 = bitcast i32 (i8*, i64, i8*, ...)* @snprintf to void ()*
  %304 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 50
  store void ()* %303, void ()** %304, align 8
  %305 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.55", i64 0, i64 0
  %306 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %305, 1
  store { i64, i8* } %306, { i64, i8* }* %tmp.51, align 8
  %307 = load { i64, i8* }, { i64, i8* }* %tmp.51, align 8
  %308 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 51
  store { i64, i8* } %307, { i64, i8* }* %308, align 8
  %309 = bitcast i32 (i8*, i64, i8*, %struct.__va_list_tag*)* @vsnprintf to void ()*
  %310 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 51
  store void ()* %309, void ()** %310, align 8
  %311 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.56", i64 0, i64 0
  %312 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %311, 1
  store { i64, i8* } %312, { i64, i8* }* %tmp.52, align 8
  %313 = load { i64, i8* }, { i64, i8* }* %tmp.52, align 8
  %314 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 52
  store { i64, i8* } %313, { i64, i8* }* %314, align 8
  %315 = bitcast i32 (i32, i8*, %struct.__va_list_tag*)* @vdprintf to void ()*
  %316 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 52
  store void ()* %315, void ()** %316, align 8
  %317 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.57", i64 0, i64 0
  %318 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %317, 1
  store { i64, i8* } %318, { i64, i8* }* %tmp.53, align 8
  %319 = load { i64, i8* }, { i64, i8* }* %tmp.53, align 8
  %320 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 53
  store { i64, i8* } %319, { i64, i8* }* %320, align 8
  %321 = bitcast i32 (i32, i8*, ...)* @dprintf to void ()*
  %322 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 53
  store void ()* %321, void ()** %322, align 8
  %323 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.58", i64 0, i64 0
  %324 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %323, 1
  store { i64, i8* } %324, { i64, i8* }* %tmp.54, align 8
  %325 = load { i64, i8* }, { i64, i8* }* %tmp.54, align 8
  %326 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 54
  store { i64, i8* } %325, { i64, i8* }* %326, align 8
  %327 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, ...)* @fscanf to void ()*
  %328 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 54
  store void ()* %327, void ()** %328, align 8
  %329 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.59", i64 0, i64 0
  %330 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %329, 1
  store { i64, i8* } %330, { i64, i8* }* %tmp.55, align 8
  %331 = load { i64, i8* }, { i64, i8* }* %tmp.55, align 8
  %332 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 55
  store { i64, i8* } %331, { i64, i8* }* %332, align 8
  %333 = bitcast i32 (i8*, ...)* @scanf to void ()*
  %334 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 55
  store void ()* %333, void ()** %334, align 8
  %335 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.60", i64 0, i64 0
  %336 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %335, 1
  store { i64, i8* } %336, { i64, i8* }* %tmp.56, align 8
  %337 = load { i64, i8* }, { i64, i8* }* %tmp.56, align 8
  %338 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 56
  store { i64, i8* } %337, { i64, i8* }* %338, align 8
  %339 = bitcast i32 (i8*, i8*, ...)* @sscanf to void ()*
  %340 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 56
  store void ()* %339, void ()** %340, align 8
  %341 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.61", i64 0, i64 0
  %342 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %341, 1
  store { i64, i8* } %342, { i64, i8* }* %tmp.57, align 8
  %343 = load { i64, i8* }, { i64, i8* }* %tmp.57, align 8
  %344 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 57
  store { i64, i8* } %343, { i64, i8* }* %344, align 8
  %345 = bitcast i32 (%"cstd::s__IO_FILE"*, i8*, %struct.__va_list_tag*)* @vfscanf to void ()*
  %346 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 57
  store void ()* %345, void ()** %346, align 8
  %347 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.62", i64 0, i64 0
  %348 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %347, 1
  store { i64, i8* } %348, { i64, i8* }* %tmp.58, align 8
  %349 = load { i64, i8* }, { i64, i8* }* %tmp.58, align 8
  %350 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 58
  store { i64, i8* } %349, { i64, i8* }* %350, align 8
  %351 = bitcast i32 (i8*, %struct.__va_list_tag*)* @vscanf to void ()*
  %352 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 58
  store void ()* %351, void ()** %352, align 8
  %353 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.63", i64 0, i64 0
  %354 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %353, 1
  store { i64, i8* } %354, { i64, i8* }* %tmp.59, align 8
  %355 = load { i64, i8* }, { i64, i8* }* %tmp.59, align 8
  %356 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 59
  store { i64, i8* } %355, { i64, i8* }* %356, align 8
  %357 = bitcast i32 (i8*, i8*, %struct.__va_list_tag*)* @vsscanf to void ()*
  %358 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 59
  store void ()* %357, void ()** %358, align 8
  %359 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.64", i64 0, i64 0
  %360 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %359, 1
  store { i64, i8* } %360, { i64, i8* }* %tmp.60, align 8
  %361 = load { i64, i8* }, { i64, i8* }* %tmp.60, align 8
  %362 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 60
  store { i64, i8* } %361, { i64, i8* }* %362, align 8
  %363 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fgetc to void ()*
  %364 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 60
  store void ()* %363, void ()** %364, align 8
  %365 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.65", i64 0, i64 0
  %366 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %365, 1
  store { i64, i8* } %366, { i64, i8* }* %tmp.61, align 8
  %367 = load { i64, i8* }, { i64, i8* }* %tmp.61, align 8
  %368 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 61
  store { i64, i8* } %367, { i64, i8* }* %368, align 8
  %369 = bitcast i32 (%"cstd::s__IO_FILE"*)* @getc to void ()*
  %370 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 61
  store void ()* %369, void ()** %370, align 8
  %371 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.66", i64 0, i64 0
  %372 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %371, 1
  store { i64, i8* } %372, { i64, i8* }* %tmp.62, align 8
  %373 = load { i64, i8* }, { i64, i8* }* %tmp.62, align 8
  %374 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 62
  store { i64, i8* } %373, { i64, i8* }* %374, align 8
  %375 = bitcast i32 ()* @getchar to void ()*
  %376 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 62
  store void ()* %375, void ()** %376, align 8
  %377 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.67", i64 0, i64 0
  %378 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %377, 1
  store { i64, i8* } %378, { i64, i8* }* %tmp.63, align 8
  %379 = load { i64, i8* }, { i64, i8* }* %tmp.63, align 8
  %380 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 63
  store { i64, i8* } %379, { i64, i8* }* %380, align 8
  %381 = bitcast i32 (%"cstd::s__IO_FILE"*)* @getc_unlocked to void ()*
  %382 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 63
  store void ()* %381, void ()** %382, align 8
  %383 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.68", i64 0, i64 0
  %384 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %383, 1
  store { i64, i8* } %384, { i64, i8* }* %tmp.64, align 8
  %385 = load { i64, i8* }, { i64, i8* }* %tmp.64, align 8
  %386 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 64
  store { i64, i8* } %385, { i64, i8* }* %386, align 8
  %387 = bitcast i32 ()* @getchar_unlocked to void ()*
  %388 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 64
  store void ()* %387, void ()** %388, align 8
  %389 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.69", i64 0, i64 0
  %390 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %389, 1
  store { i64, i8* } %390, { i64, i8* }* %tmp.65, align 8
  %391 = load { i64, i8* }, { i64, i8* }* %tmp.65, align 8
  %392 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 65
  store { i64, i8* } %391, { i64, i8* }* %392, align 8
  %393 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fgetc_unlocked to void ()*
  %394 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 65
  store void ()* %393, void ()** %394, align 8
  %395 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.70", i64 0, i64 0
  %396 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %395, 1
  store { i64, i8* } %396, { i64, i8* }* %tmp.66, align 8
  %397 = load { i64, i8* }, { i64, i8* }* %tmp.66, align 8
  %398 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 66
  store { i64, i8* } %397, { i64, i8* }* %398, align 8
  %399 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @fputc to void ()*
  %400 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 66
  store void ()* %399, void ()** %400, align 8
  %401 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.71", i64 0, i64 0
  %402 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %401, 1
  store { i64, i8* } %402, { i64, i8* }* %tmp.67, align 8
  %403 = load { i64, i8* }, { i64, i8* }* %tmp.67, align 8
  %404 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 67
  store { i64, i8* } %403, { i64, i8* }* %404, align 8
  %405 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @putc to void ()*
  %406 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 67
  store void ()* %405, void ()** %406, align 8
  %407 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.72", i64 0, i64 0
  %408 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %407, 1
  store { i64, i8* } %408, { i64, i8* }* %tmp.68, align 8
  %409 = load { i64, i8* }, { i64, i8* }* %tmp.68, align 8
  %410 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 68
  store { i64, i8* } %409, { i64, i8* }* %410, align 8
  %411 = bitcast i32 (i32)* @putchar to void ()*
  %412 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 68
  store void ()* %411, void ()** %412, align 8
  %413 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.73", i64 0, i64 0
  %414 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %413, 1
  store { i64, i8* } %414, { i64, i8* }* %tmp.69, align 8
  %415 = load { i64, i8* }, { i64, i8* }* %tmp.69, align 8
  %416 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 69
  store { i64, i8* } %415, { i64, i8* }* %416, align 8
  %417 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @fputc_unlocked to void ()*
  %418 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 69
  store void ()* %417, void ()** %418, align 8
  %419 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.74", i64 0, i64 0
  %420 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %419, 1
  store { i64, i8* } %420, { i64, i8* }* %tmp.70, align 8
  %421 = load { i64, i8* }, { i64, i8* }* %tmp.70, align 8
  %422 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 70
  store { i64, i8* } %421, { i64, i8* }* %422, align 8
  %423 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @putc_unlocked to void ()*
  %424 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 70
  store void ()* %423, void ()** %424, align 8
  %425 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.75", i64 0, i64 0
  %426 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %425, 1
  store { i64, i8* } %426, { i64, i8* }* %tmp.71, align 8
  %427 = load { i64, i8* }, { i64, i8* }* %tmp.71, align 8
  %428 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 71
  store { i64, i8* } %427, { i64, i8* }* %428, align 8
  %429 = bitcast i32 (i32)* @putchar_unlocked to void ()*
  %430 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 71
  store void ()* %429, void ()** %430, align 8
  %431 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.76", i64 0, i64 0
  %432 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %431, 1
  store { i64, i8* } %432, { i64, i8* }* %tmp.72, align 8
  %433 = load { i64, i8* }, { i64, i8* }* %tmp.72, align 8
  %434 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 72
  store { i64, i8* } %433, { i64, i8* }* %434, align 8
  %435 = bitcast i32 (%"cstd::s__IO_FILE"*)* @getw to void ()*
  %436 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 72
  store void ()* %435, void ()** %436, align 8
  %437 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.77", i64 0, i64 0
  %438 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %437, 1
  store { i64, i8* } %438, { i64, i8* }* %tmp.73, align 8
  %439 = load { i64, i8* }, { i64, i8* }* %tmp.73, align 8
  %440 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 73
  store { i64, i8* } %439, { i64, i8* }* %440, align 8
  %441 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @putw to void ()*
  %442 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 73
  store void ()* %441, void ()** %442, align 8
  %443 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.78", i64 0, i64 0
  %444 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %443, 1
  store { i64, i8* } %444, { i64, i8* }* %tmp.74, align 8
  %445 = load { i64, i8* }, { i64, i8* }* %tmp.74, align 8
  %446 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 74
  store { i64, i8* } %445, { i64, i8* }* %446, align 8
  %447 = bitcast i8* (i8*, i32, %"cstd::s__IO_FILE"*)* @fgets to void ()*
  %448 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 74
  store void ()* %447, void ()** %448, align 8
  %449 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.79", i64 0, i64 0
  %450 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %449, 1
  store { i64, i8* } %450, { i64, i8* }* %tmp.75, align 8
  %451 = load { i64, i8* }, { i64, i8* }* %tmp.75, align 8
  %452 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 75
  store { i64, i8* } %451, { i64, i8* }* %452, align 8
  %453 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @__getdelim to void ()*
  %454 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 75
  store void ()* %453, void ()** %454, align 8
  %455 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.80", i64 0, i64 0
  %456 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %455, 1
  store { i64, i8* } %456, { i64, i8* }* %tmp.76, align 8
  %457 = load { i64, i8* }, { i64, i8* }* %tmp.76, align 8
  %458 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 76
  store { i64, i8* } %457, { i64, i8* }* %458, align 8
  %459 = bitcast i64 (i8**, i64*, i32, %"cstd::s__IO_FILE"*)* @getdelim to void ()*
  %460 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 76
  store void ()* %459, void ()** %460, align 8
  %461 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.81", i64 0, i64 0
  %462 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %461, 1
  store { i64, i8* } %462, { i64, i8* }* %tmp.77, align 8
  %463 = load { i64, i8* }, { i64, i8* }* %tmp.77, align 8
  %464 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 77
  store { i64, i8* } %463, { i64, i8* }* %464, align 8
  %465 = bitcast i64 (i8**, i64*, %"cstd::s__IO_FILE"*)* @getline to void ()*
  %466 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 77
  store void ()* %465, void ()** %466, align 8
  %467 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.82", i64 0, i64 0
  %468 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %467, 1
  store { i64, i8* } %468, { i64, i8* }* %tmp.78, align 8
  %469 = load { i64, i8* }, { i64, i8* }* %tmp.78, align 8
  %470 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 78
  store { i64, i8* } %469, { i64, i8* }* %470, align 8
  %471 = bitcast i32 (i8*, %"cstd::s__IO_FILE"*)* @fputs to void ()*
  %472 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 78
  store void ()* %471, void ()** %472, align 8
  %473 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.83", i64 0, i64 0
  %474 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %473, 1
  store { i64, i8* } %474, { i64, i8* }* %tmp.79, align 8
  %475 = load { i64, i8* }, { i64, i8* }* %tmp.79, align 8
  %476 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 79
  store { i64, i8* } %475, { i64, i8* }* %476, align 8
  %477 = bitcast i32 (i8*)* @puts to void ()*
  %478 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 79
  store void ()* %477, void ()** %478, align 8
  %479 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.84", i64 0, i64 0
  %480 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %479, 1
  store { i64, i8* } %480, { i64, i8* }* %tmp.80, align 8
  %481 = load { i64, i8* }, { i64, i8* }* %tmp.80, align 8
  %482 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 80
  store { i64, i8* } %481, { i64, i8* }* %482, align 8
  %483 = bitcast i32 (i32, %"cstd::s__IO_FILE"*)* @ungetc to void ()*
  %484 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 80
  store void ()* %483, void ()** %484, align 8
  %485 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.85", i64 0, i64 0
  %486 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %485, 1
  store { i64, i8* } %486, { i64, i8* }* %tmp.81, align 8
  %487 = load { i64, i8* }, { i64, i8* }* %tmp.81, align 8
  %488 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 81
  store { i64, i8* } %487, { i64, i8* }* %488, align 8
  %489 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @fread to void ()*
  %490 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 81
  store void ()* %489, void ()** %490, align 8
  %491 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.86", i64 0, i64 0
  %492 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %491, 1
  store { i64, i8* } %492, { i64, i8* }* %tmp.82, align 8
  %493 = load { i64, i8* }, { i64, i8* }* %tmp.82, align 8
  %494 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 82
  store { i64, i8* } %493, { i64, i8* }* %494, align 8
  %495 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @fwrite to void ()*
  %496 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 82
  store void ()* %495, void ()** %496, align 8
  %497 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.87", i64 0, i64 0
  %498 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %497, 1
  store { i64, i8* } %498, { i64, i8* }* %tmp.83, align 8
  %499 = load { i64, i8* }, { i64, i8* }* %tmp.83, align 8
  %500 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 83
  store { i64, i8* } %499, { i64, i8* }* %500, align 8
  %501 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @fread_unlocked to void ()*
  %502 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 83
  store void ()* %501, void ()** %502, align 8
  %503 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.88", i64 0, i64 0
  %504 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %503, 1
  store { i64, i8* } %504, { i64, i8* }* %tmp.84, align 8
  %505 = load { i64, i8* }, { i64, i8* }* %tmp.84, align 8
  %506 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 84
  store { i64, i8* } %505, { i64, i8* }* %506, align 8
  %507 = bitcast i64 (i8*, i64, i64, %"cstd::s__IO_FILE"*)* @fwrite_unlocked to void ()*
  %508 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 84
  store void ()* %507, void ()** %508, align 8
  %509 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.89", i64 0, i64 0
  %510 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %509, 1
  store { i64, i8* } %510, { i64, i8* }* %tmp.85, align 8
  %511 = load { i64, i8* }, { i64, i8* }* %tmp.85, align 8
  %512 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 85
  store { i64, i8* } %511, { i64, i8* }* %512, align 8
  %513 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @fseek to void ()*
  %514 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 85
  store void ()* %513, void ()** %514, align 8
  %515 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.90", i64 0, i64 0
  %516 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %515, 1
  store { i64, i8* } %516, { i64, i8* }* %tmp.86, align 8
  %517 = load { i64, i8* }, { i64, i8* }* %tmp.86, align 8
  %518 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 86
  store { i64, i8* } %517, { i64, i8* }* %518, align 8
  %519 = bitcast i64 (%"cstd::s__IO_FILE"*)* @ftell to void ()*
  %520 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 86
  store void ()* %519, void ()** %520, align 8
  %521 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.91", i64 0, i64 0
  %522 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %521, 1
  store { i64, i8* } %522, { i64, i8* }* %tmp.87, align 8
  %523 = load { i64, i8* }, { i64, i8* }* %tmp.87, align 8
  %524 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 87
  store { i64, i8* } %523, { i64, i8* }* %524, align 8
  %525 = bitcast void (%"cstd::s__IO_FILE"*)* @rewind to void ()*
  %526 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 87
  store void ()* %525, void ()** %526, align 8
  %527 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.92", i64 0, i64 0
  %528 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %527, 1
  store { i64, i8* } %528, { i64, i8* }* %tmp.88, align 8
  %529 = load { i64, i8* }, { i64, i8* }* %tmp.88, align 8
  %530 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 88
  store { i64, i8* } %529, { i64, i8* }* %530, align 8
  %531 = bitcast i32 (%"cstd::s__IO_FILE"*, i64, i32)* @fseeko to void ()*
  %532 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 88
  store void ()* %531, void ()** %532, align 8
  %533 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.93", i64 0, i64 0
  %534 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %533, 1
  store { i64, i8* } %534, { i64, i8* }* %tmp.89, align 8
  %535 = load { i64, i8* }, { i64, i8* }* %tmp.89, align 8
  %536 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 89
  store { i64, i8* } %535, { i64, i8* }* %536, align 8
  %537 = bitcast i64 (%"cstd::s__IO_FILE"*)* @ftello to void ()*
  %538 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 89
  store void ()* %537, void ()** %538, align 8
  %539 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.94", i64 0, i64 0
  %540 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %539, 1
  store { i64, i8* } %540, { i64, i8* }* %tmp.90, align 8
  %541 = load { i64, i8* }, { i64, i8* }* %tmp.90, align 8
  %542 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 90
  store { i64, i8* } %541, { i64, i8* }* %542, align 8
  %543 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @fgetpos to void ()*
  %544 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 90
  store void ()* %543, void ()** %544, align 8
  %545 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.95", i64 0, i64 0
  %546 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %545, 1
  store { i64, i8* } %546, { i64, i8* }* %tmp.91, align 8
  %547 = load { i64, i8* }, { i64, i8* }* %tmp.91, align 8
  %548 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 91
  store { i64, i8* } %547, { i64, i8* }* %548, align 8
  %549 = bitcast i32 (%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)* @fsetpos to void ()*
  %550 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 91
  store void ()* %549, void ()** %550, align 8
  %551 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.96", i64 0, i64 0
  %552 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %551, 1
  store { i64, i8* } %552, { i64, i8* }* %tmp.92, align 8
  %553 = load { i64, i8* }, { i64, i8* }* %tmp.92, align 8
  %554 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 92
  store { i64, i8* } %553, { i64, i8* }* %554, align 8
  %555 = bitcast void (%"cstd::s__IO_FILE"*)* @clearerr to void ()*
  %556 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 92
  store void ()* %555, void ()** %556, align 8
  %557 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.97", i64 0, i64 0
  %558 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %557, 1
  store { i64, i8* } %558, { i64, i8* }* %tmp.93, align 8
  %559 = load { i64, i8* }, { i64, i8* }* %tmp.93, align 8
  %560 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 93
  store { i64, i8* } %559, { i64, i8* }* %560, align 8
  %561 = bitcast i32 (%"cstd::s__IO_FILE"*)* @feof to void ()*
  %562 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 93
  store void ()* %561, void ()** %562, align 8
  %563 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.98", i64 0, i64 0
  %564 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %563, 1
  store { i64, i8* } %564, { i64, i8* }* %tmp.94, align 8
  %565 = load { i64, i8* }, { i64, i8* }* %tmp.94, align 8
  %566 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 94
  store { i64, i8* } %565, { i64, i8* }* %566, align 8
  %567 = bitcast i32 (%"cstd::s__IO_FILE"*)* @ferror to void ()*
  %568 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 94
  store void ()* %567, void ()** %568, align 8
  %569 = getelementptr [18 x i8], [18 x i8]* @"cstd::str.99", i64 0, i64 0
  %570 = insertvalue { i64, i8* } { i64 18, i8* undef }, i8* %569, 1
  store { i64, i8* } %570, { i64, i8* }* %tmp.95, align 8
  %571 = load { i64, i8* }, { i64, i8* }* %tmp.95, align 8
  %572 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 95
  store { i64, i8* } %571, { i64, i8* }* %572, align 8
  %573 = bitcast void (%"cstd::s__IO_FILE"*)* @clearerr_unlocked to void ()*
  %574 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 95
  store void ()* %573, void ()** %574, align 8
  %575 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.100", i64 0, i64 0
  %576 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %575, 1
  store { i64, i8* } %576, { i64, i8* }* %tmp.96, align 8
  %577 = load { i64, i8* }, { i64, i8* }* %tmp.96, align 8
  %578 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 96
  store { i64, i8* } %577, { i64, i8* }* %578, align 8
  %579 = bitcast i32 (%"cstd::s__IO_FILE"*)* @feof_unlocked to void ()*
  %580 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 96
  store void ()* %579, void ()** %580, align 8
  %581 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.101", i64 0, i64 0
  %582 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %581, 1
  store { i64, i8* } %582, { i64, i8* }* %tmp.97, align 8
  %583 = load { i64, i8* }, { i64, i8* }* %tmp.97, align 8
  %584 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 97
  store { i64, i8* } %583, { i64, i8* }* %584, align 8
  %585 = bitcast i32 (%"cstd::s__IO_FILE"*)* @ferror_unlocked to void ()*
  %586 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 97
  store void ()* %585, void ()** %586, align 8
  %587 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.102", i64 0, i64 0
  %588 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %587, 1
  store { i64, i8* } %588, { i64, i8* }* %tmp.98, align 8
  %589 = load { i64, i8* }, { i64, i8* }* %tmp.98, align 8
  %590 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 98
  store { i64, i8* } %589, { i64, i8* }* %590, align 8
  %591 = bitcast void (i8*)* @perror to void ()*
  %592 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 98
  store void ()* %591, void ()** %592, align 8
  %593 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.103", i64 0, i64 0
  %594 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %593, 1
  store { i64, i8* } %594, { i64, i8* }* %tmp.99, align 8
  %595 = load { i64, i8* }, { i64, i8* }* %tmp.99, align 8
  %596 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 99
  store { i64, i8* } %595, { i64, i8* }* %596, align 8
  %597 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fileno to void ()*
  %598 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 99
  store void ()* %597, void ()** %598, align 8
  %599 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.104", i64 0, i64 0
  %600 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %599, 1
  store { i64, i8* } %600, { i64, i8* }* %tmp.100, align 8
  %601 = load { i64, i8* }, { i64, i8* }* %tmp.100, align 8
  %602 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 100
  store { i64, i8* } %601, { i64, i8* }* %602, align 8
  %603 = bitcast i32 (%"cstd::s__IO_FILE"*)* @fileno_unlocked to void ()*
  %604 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 100
  store void ()* %603, void ()** %604, align 8
  %605 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.105", i64 0, i64 0
  %606 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %605, 1
  store { i64, i8* } %606, { i64, i8* }* %tmp.101, align 8
  %607 = load { i64, i8* }, { i64, i8* }* %tmp.101, align 8
  %608 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 101
  store { i64, i8* } %607, { i64, i8* }* %608, align 8
  %609 = bitcast %"cstd::s__IO_FILE"* (i8*, i8*)* @popen to void ()*
  %610 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 101
  store void ()* %609, void ()** %610, align 8
  %611 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.106", i64 0, i64 0
  %612 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %611, 1
  store { i64, i8* } %612, { i64, i8* }* %tmp.102, align 8
  %613 = load { i64, i8* }, { i64, i8* }* %tmp.102, align 8
  %614 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 102
  store { i64, i8* } %613, { i64, i8* }* %614, align 8
  %615 = bitcast i32 (%"cstd::s__IO_FILE"*)* @pclose to void ()*
  %616 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 102
  store void ()* %615, void ()** %616, align 8
  %617 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.107", i64 0, i64 0
  %618 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %617, 1
  store { i64, i8* } %618, { i64, i8* }* %tmp.103, align 8
  %619 = load { i64, i8* }, { i64, i8* }* %tmp.103, align 8
  %620 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 103
  store { i64, i8* } %619, { i64, i8* }* %620, align 8
  %621 = bitcast i8* (i8*)* @ctermid to void ()*
  %622 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 103
  store void ()* %621, void ()** %622, align 8
  %623 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.108", i64 0, i64 0
  %624 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %623, 1
  store { i64, i8* } %624, { i64, i8* }* %tmp.104, align 8
  %625 = load { i64, i8* }, { i64, i8* }* %tmp.104, align 8
  %626 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 104
  store { i64, i8* } %625, { i64, i8* }* %626, align 8
  %627 = bitcast void (%"cstd::s__IO_FILE"*)* @flockfile to void ()*
  %628 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 104
  store void ()* %627, void ()** %628, align 8
  %629 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.109", i64 0, i64 0
  %630 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %629, 1
  store { i64, i8* } %630, { i64, i8* }* %tmp.105, align 8
  %631 = load { i64, i8* }, { i64, i8* }* %tmp.105, align 8
  %632 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 105
  store { i64, i8* } %631, { i64, i8* }* %632, align 8
  %633 = bitcast i32 (%"cstd::s__IO_FILE"*)* @ftrylockfile to void ()*
  %634 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 105
  store void ()* %633, void ()** %634, align 8
  %635 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.110", i64 0, i64 0
  %636 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %635, 1
  store { i64, i8* } %636, { i64, i8* }* %tmp.106, align 8
  %637 = load { i64, i8* }, { i64, i8* }* %tmp.106, align 8
  %638 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 106
  store { i64, i8* } %637, { i64, i8* }* %638, align 8
  %639 = bitcast void (%"cstd::s__IO_FILE"*)* @funlockfile to void ()*
  %640 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 106
  store void ()* %639, void ()** %640, align 8
  %641 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.111", i64 0, i64 0
  %642 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %641, 1
  store { i64, i8* } %642, { i64, i8* }* %tmp.107, align 8
  %643 = load { i64, i8* }, { i64, i8* }* %tmp.107, align 8
  %644 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 107
  store { i64, i8* } %643, { i64, i8* }* %644, align 8
  %645 = bitcast i32 (%"cstd::s__IO_FILE"*)* @__uflow to void ()*
  %646 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 107
  store void ()* %645, void ()** %646, align 8
  %647 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.112", i64 0, i64 0
  %648 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %647, 1
  store { i64, i8* } %648, { i64, i8* }* %tmp.108, align 8
  %649 = load { i64, i8* }, { i64, i8* }* %tmp.108, align 8
  %650 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 108
  store { i64, i8* } %649, { i64, i8* }* %650, align 8
  %651 = bitcast i32 (%"cstd::s__IO_FILE"*, i32)* @__overflow to void ()*
  %652 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 108
  store void ()* %651, void ()** %652, align 8
  %653 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.113", i64 0, i64 0
  %654 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %653, 1
  store { i64, i8* } %654, { i64, i8* }* %tmp.109, align 8
  %655 = load { i64, i8* }, { i64, i8* }* %tmp.109, align 8
  %656 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 109
  store { i64, i8* } %655, { i64, i8* }* %656, align 8
  %657 = bitcast i8* (i8*, i8*, i64)* @memcpy to void ()*
  %658 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 109
  store void ()* %657, void ()** %658, align 8
  %659 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.114", i64 0, i64 0
  %660 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %659, 1
  store { i64, i8* } %660, { i64, i8* }* %tmp.110, align 8
  %661 = load { i64, i8* }, { i64, i8* }* %tmp.110, align 8
  %662 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 110
  store { i64, i8* } %661, { i64, i8* }* %662, align 8
  %663 = bitcast i8* (i8*, i8*, i64)* @memmove to void ()*
  %664 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 110
  store void ()* %663, void ()** %664, align 8
  %665 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.115", i64 0, i64 0
  %666 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %665, 1
  store { i64, i8* } %666, { i64, i8* }* %tmp.111, align 8
  %667 = load { i64, i8* }, { i64, i8* }* %tmp.111, align 8
  %668 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 111
  store { i64, i8* } %667, { i64, i8* }* %668, align 8
  %669 = bitcast i8* (i8*, i8*, i32, i64)* @memccpy to void ()*
  %670 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 111
  store void ()* %669, void ()** %670, align 8
  %671 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.116", i64 0, i64 0
  %672 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %671, 1
  store { i64, i8* } %672, { i64, i8* }* %tmp.112, align 8
  %673 = load { i64, i8* }, { i64, i8* }* %tmp.112, align 8
  %674 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 112
  store { i64, i8* } %673, { i64, i8* }* %674, align 8
  %675 = bitcast i8* (i8*, i32, i64)* @memset to void ()*
  %676 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 112
  store void ()* %675, void ()** %676, align 8
  %677 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.117", i64 0, i64 0
  %678 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %677, 1
  store { i64, i8* } %678, { i64, i8* }* %tmp.113, align 8
  %679 = load { i64, i8* }, { i64, i8* }* %tmp.113, align 8
  %680 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 113
  store { i64, i8* } %679, { i64, i8* }* %680, align 8
  %681 = bitcast i32 (i8*, i8*, i64)* @memcmp to void ()*
  %682 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 113
  store void ()* %681, void ()** %682, align 8
  %683 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.118", i64 0, i64 0
  %684 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %683, 1
  store { i64, i8* } %684, { i64, i8* }* %tmp.114, align 8
  %685 = load { i64, i8* }, { i64, i8* }* %tmp.114, align 8
  %686 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 114
  store { i64, i8* } %685, { i64, i8* }* %686, align 8
  %687 = bitcast i8* (i8*, i32, i64)* @memchr to void ()*
  %688 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 114
  store void ()* %687, void ()** %688, align 8
  %689 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.119", i64 0, i64 0
  %690 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %689, 1
  store { i64, i8* } %690, { i64, i8* }* %tmp.115, align 8
  %691 = load { i64, i8* }, { i64, i8* }* %tmp.115, align 8
  %692 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 115
  store { i64, i8* } %691, { i64, i8* }* %692, align 8
  %693 = bitcast i8* (i8*, i8*)* @strcpy to void ()*
  %694 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 115
  store void ()* %693, void ()** %694, align 8
  %695 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.120", i64 0, i64 0
  %696 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %695, 1
  store { i64, i8* } %696, { i64, i8* }* %tmp.116, align 8
  %697 = load { i64, i8* }, { i64, i8* }* %tmp.116, align 8
  %698 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 116
  store { i64, i8* } %697, { i64, i8* }* %698, align 8
  %699 = bitcast i8* (i8*, i8*, i64)* @strncpy to void ()*
  %700 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 116
  store void ()* %699, void ()** %700, align 8
  %701 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.121", i64 0, i64 0
  %702 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %701, 1
  store { i64, i8* } %702, { i64, i8* }* %tmp.117, align 8
  %703 = load { i64, i8* }, { i64, i8* }* %tmp.117, align 8
  %704 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 117
  store { i64, i8* } %703, { i64, i8* }* %704, align 8
  %705 = bitcast i8* (i8*, i8*)* @strcat to void ()*
  %706 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 117
  store void ()* %705, void ()** %706, align 8
  %707 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.122", i64 0, i64 0
  %708 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %707, 1
  store { i64, i8* } %708, { i64, i8* }* %tmp.118, align 8
  %709 = load { i64, i8* }, { i64, i8* }* %tmp.118, align 8
  %710 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 118
  store { i64, i8* } %709, { i64, i8* }* %710, align 8
  %711 = bitcast i8* (i8*, i8*, i64)* @strncat to void ()*
  %712 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 118
  store void ()* %711, void ()** %712, align 8
  %713 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.123", i64 0, i64 0
  %714 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %713, 1
  store { i64, i8* } %714, { i64, i8* }* %tmp.119, align 8
  %715 = load { i64, i8* }, { i64, i8* }* %tmp.119, align 8
  %716 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 119
  store { i64, i8* } %715, { i64, i8* }* %716, align 8
  %717 = bitcast i32 (i8*, i8*)* @strcmp to void ()*
  %718 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 119
  store void ()* %717, void ()** %718, align 8
  %719 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.124", i64 0, i64 0
  %720 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %719, 1
  store { i64, i8* } %720, { i64, i8* }* %tmp.120, align 8
  %721 = load { i64, i8* }, { i64, i8* }* %tmp.120, align 8
  %722 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 120
  store { i64, i8* } %721, { i64, i8* }* %722, align 8
  %723 = bitcast i32 (i8*, i8*, i64)* @strncmp to void ()*
  %724 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 120
  store void ()* %723, void ()** %724, align 8
  %725 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.125", i64 0, i64 0
  %726 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %725, 1
  store { i64, i8* } %726, { i64, i8* }* %tmp.121, align 8
  %727 = load { i64, i8* }, { i64, i8* }* %tmp.121, align 8
  %728 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 121
  store { i64, i8* } %727, { i64, i8* }* %728, align 8
  %729 = bitcast i32 (i8*, i8*)* @strcoll to void ()*
  %730 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 121
  store void ()* %729, void ()** %730, align 8
  %731 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.126", i64 0, i64 0
  %732 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %731, 1
  store { i64, i8* } %732, { i64, i8* }* %tmp.122, align 8
  %733 = load { i64, i8* }, { i64, i8* }* %tmp.122, align 8
  %734 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 122
  store { i64, i8* } %733, { i64, i8* }* %734, align 8
  %735 = bitcast i64 (i8*, i8*, i64)* @strxfrm to void ()*
  %736 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 122
  store void ()* %735, void ()** %736, align 8
  %737 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.127", i64 0, i64 0
  %738 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %737, 1
  store { i64, i8* } %738, { i64, i8* }* %tmp.123, align 8
  %739 = load { i64, i8* }, { i64, i8* }* %tmp.123, align 8
  %740 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 123
  store { i64, i8* } %739, { i64, i8* }* %740, align 8
  %741 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @strcoll_l to void ()*
  %742 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 123
  store void ()* %741, void ()** %742, align 8
  %743 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.128", i64 0, i64 0
  %744 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %743, 1
  store { i64, i8* } %744, { i64, i8* }* %tmp.124, align 8
  %745 = load { i64, i8* }, { i64, i8* }* %tmp.124, align 8
  %746 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 124
  store { i64, i8* } %745, { i64, i8* }* %746, align 8
  %747 = bitcast i64 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @strxfrm_l to void ()*
  %748 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 124
  store void ()* %747, void ()** %748, align 8
  %749 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.129", i64 0, i64 0
  %750 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %749, 1
  store { i64, i8* } %750, { i64, i8* }* %tmp.125, align 8
  %751 = load { i64, i8* }, { i64, i8* }* %tmp.125, align 8
  %752 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 125
  store { i64, i8* } %751, { i64, i8* }* %752, align 8
  %753 = bitcast i8* (i8*)* @strdup to void ()*
  %754 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 125
  store void ()* %753, void ()** %754, align 8
  %755 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.130", i64 0, i64 0
  %756 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %755, 1
  store { i64, i8* } %756, { i64, i8* }* %tmp.126, align 8
  %757 = load { i64, i8* }, { i64, i8* }* %tmp.126, align 8
  %758 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 126
  store { i64, i8* } %757, { i64, i8* }* %758, align 8
  %759 = bitcast i8* (i8*, i64)* @strndup to void ()*
  %760 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 126
  store void ()* %759, void ()** %760, align 8
  %761 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.131", i64 0, i64 0
  %762 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %761, 1
  store { i64, i8* } %762, { i64, i8* }* %tmp.127, align 8
  %763 = load { i64, i8* }, { i64, i8* }* %tmp.127, align 8
  %764 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 127
  store { i64, i8* } %763, { i64, i8* }* %764, align 8
  %765 = bitcast i8* (i8*, i32)* @strchr to void ()*
  %766 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 127
  store void ()* %765, void ()** %766, align 8
  %767 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.132", i64 0, i64 0
  %768 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %767, 1
  store { i64, i8* } %768, { i64, i8* }* %tmp.128, align 8
  %769 = load { i64, i8* }, { i64, i8* }* %tmp.128, align 8
  %770 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 128
  store { i64, i8* } %769, { i64, i8* }* %770, align 8
  %771 = bitcast i8* (i8*, i32)* @strrchr to void ()*
  %772 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 128
  store void ()* %771, void ()** %772, align 8
  %773 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.133", i64 0, i64 0
  %774 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %773, 1
  store { i64, i8* } %774, { i64, i8* }* %tmp.129, align 8
  %775 = load { i64, i8* }, { i64, i8* }* %tmp.129, align 8
  %776 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 129
  store { i64, i8* } %775, { i64, i8* }* %776, align 8
  %777 = bitcast i64 (i8*, i8*)* @strcspn to void ()*
  %778 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 129
  store void ()* %777, void ()** %778, align 8
  %779 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.134", i64 0, i64 0
  %780 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %779, 1
  store { i64, i8* } %780, { i64, i8* }* %tmp.130, align 8
  %781 = load { i64, i8* }, { i64, i8* }* %tmp.130, align 8
  %782 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 130
  store { i64, i8* } %781, { i64, i8* }* %782, align 8
  %783 = bitcast i64 (i8*, i8*)* @strspn to void ()*
  %784 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 130
  store void ()* %783, void ()** %784, align 8
  %785 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.135", i64 0, i64 0
  %786 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %785, 1
  store { i64, i8* } %786, { i64, i8* }* %tmp.131, align 8
  %787 = load { i64, i8* }, { i64, i8* }* %tmp.131, align 8
  %788 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 131
  store { i64, i8* } %787, { i64, i8* }* %788, align 8
  %789 = bitcast i8* (i8*, i8*)* @strpbrk to void ()*
  %790 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 131
  store void ()* %789, void ()** %790, align 8
  %791 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.136", i64 0, i64 0
  %792 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %791, 1
  store { i64, i8* } %792, { i64, i8* }* %tmp.132, align 8
  %793 = load { i64, i8* }, { i64, i8* }* %tmp.132, align 8
  %794 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 132
  store { i64, i8* } %793, { i64, i8* }* %794, align 8
  %795 = bitcast i8* (i8*, i8*)* @strstr to void ()*
  %796 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 132
  store void ()* %795, void ()** %796, align 8
  %797 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.137", i64 0, i64 0
  %798 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %797, 1
  store { i64, i8* } %798, { i64, i8* }* %tmp.133, align 8
  %799 = load { i64, i8* }, { i64, i8* }* %tmp.133, align 8
  %800 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 133
  store { i64, i8* } %799, { i64, i8* }* %800, align 8
  %801 = bitcast i8* (i8*, i8*)* @strtok to void ()*
  %802 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 133
  store void ()* %801, void ()** %802, align 8
  %803 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.138", i64 0, i64 0
  %804 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %803, 1
  store { i64, i8* } %804, { i64, i8* }* %tmp.134, align 8
  %805 = load { i64, i8* }, { i64, i8* }* %tmp.134, align 8
  %806 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 134
  store { i64, i8* } %805, { i64, i8* }* %806, align 8
  %807 = bitcast i8* (i8*, i8*, i8**)* @__strtok_r to void ()*
  %808 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 134
  store void ()* %807, void ()** %808, align 8
  %809 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.139", i64 0, i64 0
  %810 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %809, 1
  store { i64, i8* } %810, { i64, i8* }* %tmp.135, align 8
  %811 = load { i64, i8* }, { i64, i8* }* %tmp.135, align 8
  %812 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 135
  store { i64, i8* } %811, { i64, i8* }* %812, align 8
  %813 = bitcast i8* (i8*, i8*, i8**)* @strtok_r to void ()*
  %814 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 135
  store void ()* %813, void ()** %814, align 8
  %815 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.140", i64 0, i64 0
  %816 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %815, 1
  store { i64, i8* } %816, { i64, i8* }* %tmp.136, align 8
  %817 = load { i64, i8* }, { i64, i8* }* %tmp.136, align 8
  %818 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 136
  store { i64, i8* } %817, { i64, i8* }* %818, align 8
  %819 = bitcast i64 (i8*)* @strlen to void ()*
  %820 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 136
  store void ()* %819, void ()** %820, align 8
  %821 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.141", i64 0, i64 0
  %822 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %821, 1
  store { i64, i8* } %822, { i64, i8* }* %tmp.137, align 8
  %823 = load { i64, i8* }, { i64, i8* }* %tmp.137, align 8
  %824 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 137
  store { i64, i8* } %823, { i64, i8* }* %824, align 8
  %825 = bitcast i64 (i8*, i64)* @strnlen to void ()*
  %826 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 137
  store void ()* %825, void ()** %826, align 8
  %827 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.142", i64 0, i64 0
  %828 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %827, 1
  store { i64, i8* } %828, { i64, i8* }* %tmp.138, align 8
  %829 = load { i64, i8* }, { i64, i8* }* %tmp.138, align 8
  %830 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 138
  store { i64, i8* } %829, { i64, i8* }* %830, align 8
  %831 = bitcast i8* (i32)* @strerror to void ()*
  %832 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 138
  store void ()* %831, void ()** %832, align 8
  %833 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.143", i64 0, i64 0
  %834 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %833, 1
  store { i64, i8* } %834, { i64, i8* }* %tmp.139, align 8
  %835 = load { i64, i8* }, { i64, i8* }* %tmp.139, align 8
  %836 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 139
  store { i64, i8* } %835, { i64, i8* }* %836, align 8
  %837 = bitcast i32 (i32, i8*, i64)* @strerror_r to void ()*
  %838 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 139
  store void ()* %837, void ()** %838, align 8
  %839 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.144", i64 0, i64 0
  %840 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %839, 1
  store { i64, i8* } %840, { i64, i8* }* %tmp.140, align 8
  %841 = load { i64, i8* }, { i64, i8* }* %tmp.140, align 8
  %842 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 140
  store { i64, i8* } %841, { i64, i8* }* %842, align 8
  %843 = bitcast i8* (i32, %"cstd::s___locale_struct"*)* @strerror_l to void ()*
  %844 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 140
  store void ()* %843, void ()** %844, align 8
  %845 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.145", i64 0, i64 0
  %846 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %845, 1
  store { i64, i8* } %846, { i64, i8* }* %tmp.141, align 8
  %847 = load { i64, i8* }, { i64, i8* }* %tmp.141, align 8
  %848 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 141
  store { i64, i8* } %847, { i64, i8* }* %848, align 8
  %849 = bitcast i32 (i8*, i8*, i64)* @bcmp to void ()*
  %850 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 141
  store void ()* %849, void ()** %850, align 8
  %851 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.146", i64 0, i64 0
  %852 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %851, 1
  store { i64, i8* } %852, { i64, i8* }* %tmp.142, align 8
  %853 = load { i64, i8* }, { i64, i8* }* %tmp.142, align 8
  %854 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 142
  store { i64, i8* } %853, { i64, i8* }* %854, align 8
  %855 = bitcast void (i8*, i8*, i64)* @bcopy to void ()*
  %856 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 142
  store void ()* %855, void ()** %856, align 8
  %857 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.147", i64 0, i64 0
  %858 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %857, 1
  store { i64, i8* } %858, { i64, i8* }* %tmp.143, align 8
  %859 = load { i64, i8* }, { i64, i8* }* %tmp.143, align 8
  %860 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 143
  store { i64, i8* } %859, { i64, i8* }* %860, align 8
  %861 = bitcast void (i8*, i64)* @bzero to void ()*
  %862 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 143
  store void ()* %861, void ()** %862, align 8
  %863 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.148", i64 0, i64 0
  %864 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %863, 1
  store { i64, i8* } %864, { i64, i8* }* %tmp.144, align 8
  %865 = load { i64, i8* }, { i64, i8* }* %tmp.144, align 8
  %866 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 144
  store { i64, i8* } %865, { i64, i8* }* %866, align 8
  %867 = bitcast i8* (i8*, i32)* @index to void ()*
  %868 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 144
  store void ()* %867, void ()** %868, align 8
  %869 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.149", i64 0, i64 0
  %870 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %869, 1
  store { i64, i8* } %870, { i64, i8* }* %tmp.145, align 8
  %871 = load { i64, i8* }, { i64, i8* }* %tmp.145, align 8
  %872 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 145
  store { i64, i8* } %871, { i64, i8* }* %872, align 8
  %873 = bitcast i8* (i8*, i32)* @rindex to void ()*
  %874 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 145
  store void ()* %873, void ()** %874, align 8
  %875 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.150", i64 0, i64 0
  %876 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %875, 1
  store { i64, i8* } %876, { i64, i8* }* %tmp.146, align 8
  %877 = load { i64, i8* }, { i64, i8* }* %tmp.146, align 8
  %878 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 146
  store { i64, i8* } %877, { i64, i8* }* %878, align 8
  %879 = bitcast i32 (i32)* @ffs to void ()*
  %880 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 146
  store void ()* %879, void ()** %880, align 8
  %881 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.151", i64 0, i64 0
  %882 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %881, 1
  store { i64, i8* } %882, { i64, i8* }* %tmp.147, align 8
  %883 = load { i64, i8* }, { i64, i8* }* %tmp.147, align 8
  %884 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 147
  store { i64, i8* } %883, { i64, i8* }* %884, align 8
  %885 = bitcast i32 (i64)* @ffsl to void ()*
  %886 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 147
  store void ()* %885, void ()** %886, align 8
  %887 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.152", i64 0, i64 0
  %888 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %887, 1
  store { i64, i8* } %888, { i64, i8* }* %tmp.148, align 8
  %889 = load { i64, i8* }, { i64, i8* }* %tmp.148, align 8
  %890 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 148
  store { i64, i8* } %889, { i64, i8* }* %890, align 8
  %891 = bitcast i32 (i64)* @ffsll to void ()*
  %892 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 148
  store void ()* %891, void ()** %892, align 8
  %893 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.153", i64 0, i64 0
  %894 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %893, 1
  store { i64, i8* } %894, { i64, i8* }* %tmp.149, align 8
  %895 = load { i64, i8* }, { i64, i8* }* %tmp.149, align 8
  %896 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 149
  store { i64, i8* } %895, { i64, i8* }* %896, align 8
  %897 = bitcast i32 (i8*, i8*)* @strcasecmp to void ()*
  %898 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 149
  store void ()* %897, void ()** %898, align 8
  %899 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.154", i64 0, i64 0
  %900 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %899, 1
  store { i64, i8* } %900, { i64, i8* }* %tmp.150, align 8
  %901 = load { i64, i8* }, { i64, i8* }* %tmp.150, align 8
  %902 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 150
  store { i64, i8* } %901, { i64, i8* }* %902, align 8
  %903 = bitcast i32 (i8*, i8*, i64)* @strncasecmp to void ()*
  %904 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 150
  store void ()* %903, void ()** %904, align 8
  %905 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.155", i64 0, i64 0
  %906 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %905, 1
  store { i64, i8* } %906, { i64, i8* }* %tmp.151, align 8
  %907 = load { i64, i8* }, { i64, i8* }* %tmp.151, align 8
  %908 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 151
  store { i64, i8* } %907, { i64, i8* }* %908, align 8
  %909 = bitcast i32 (i8*, i8*, %"cstd::s___locale_struct"*)* @strcasecmp_l to void ()*
  %910 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 151
  store void ()* %909, void ()** %910, align 8
  %911 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.156", i64 0, i64 0
  %912 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %911, 1
  store { i64, i8* } %912, { i64, i8* }* %tmp.152, align 8
  %913 = load { i64, i8* }, { i64, i8* }* %tmp.152, align 8
  %914 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 152
  store { i64, i8* } %913, { i64, i8* }* %914, align 8
  %915 = bitcast i32 (i8*, i8*, i64, %"cstd::s___locale_struct"*)* @strncasecmp_l to void ()*
  %916 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 152
  store void ()* %915, void ()** %916, align 8
  %917 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.157", i64 0, i64 0
  %918 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %917, 1
  store { i64, i8* } %918, { i64, i8* }* %tmp.153, align 8
  %919 = load { i64, i8* }, { i64, i8* }* %tmp.153, align 8
  %920 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 153
  store { i64, i8* } %919, { i64, i8* }* %920, align 8
  %921 = bitcast void (i8*, i64)* @explicit_bzero to void ()*
  %922 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 153
  store void ()* %921, void ()** %922, align 8
  %923 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.158", i64 0, i64 0
  %924 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %923, 1
  store { i64, i8* } %924, { i64, i8* }* %tmp.154, align 8
  %925 = load { i64, i8* }, { i64, i8* }* %tmp.154, align 8
  %926 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 154
  store { i64, i8* } %925, { i64, i8* }* %926, align 8
  %927 = bitcast i8* (i8**, i8*)* @strsep to void ()*
  %928 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 154
  store void ()* %927, void ()** %928, align 8
  %929 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.159", i64 0, i64 0
  %930 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %929, 1
  store { i64, i8* } %930, { i64, i8* }* %tmp.155, align 8
  %931 = load { i64, i8* }, { i64, i8* }* %tmp.155, align 8
  %932 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 155
  store { i64, i8* } %931, { i64, i8* }* %932, align 8
  %933 = bitcast i8* (i32)* @strsignal to void ()*
  %934 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 155
  store void ()* %933, void ()** %934, align 8
  %935 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.160", i64 0, i64 0
  %936 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %935, 1
  store { i64, i8* } %936, { i64, i8* }* %tmp.156, align 8
  %937 = load { i64, i8* }, { i64, i8* }* %tmp.156, align 8
  %938 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 156
  store { i64, i8* } %937, { i64, i8* }* %938, align 8
  %939 = bitcast i8* (i8*, i8*)* @__stpcpy to void ()*
  %940 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 156
  store void ()* %939, void ()** %940, align 8
  %941 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.161", i64 0, i64 0
  %942 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %941, 1
  store { i64, i8* } %942, { i64, i8* }* %tmp.157, align 8
  %943 = load { i64, i8* }, { i64, i8* }* %tmp.157, align 8
  %944 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 157
  store { i64, i8* } %943, { i64, i8* }* %944, align 8
  %945 = bitcast i8* (i8*, i8*)* @stpcpy to void ()*
  %946 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 157
  store void ()* %945, void ()** %946, align 8
  %947 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.162", i64 0, i64 0
  %948 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %947, 1
  store { i64, i8* } %948, { i64, i8* }* %tmp.158, align 8
  %949 = load { i64, i8* }, { i64, i8* }* %tmp.158, align 8
  %950 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 158
  store { i64, i8* } %949, { i64, i8* }* %950, align 8
  %951 = bitcast i8* (i8*, i8*, i64)* @__stpncpy to void ()*
  %952 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 158
  store void ()* %951, void ()** %952, align 8
  %953 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.163", i64 0, i64 0
  %954 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %953, 1
  store { i64, i8* } %954, { i64, i8* }* %tmp.159, align 8
  %955 = load { i64, i8* }, { i64, i8* }* %tmp.159, align 8
  %956 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 159
  store { i64, i8* } %955, { i64, i8* }* %956, align 8
  %957 = bitcast i8* (i8*, i8*, i64)* @stpncpy to void ()*
  %958 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 159
  store void ()* %957, void ()** %958, align 8
  %959 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.164", i64 0, i64 0
  %960 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %959, 1
  store { i64, i8* } %960, { i64, i8* }* %tmp.160, align 8
  %961 = load { i64, i8* }, { i64, i8* }* %tmp.160, align 8
  %962 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 160
  store { i64, i8* } %961, { i64, i8* }* %962, align 8
  %963 = bitcast i64 ()* @clock to void ()*
  %964 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 160
  store void ()* %963, void ()** %964, align 8
  %965 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.165", i64 0, i64 0
  %966 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %965, 1
  store { i64, i8* } %966, { i64, i8* }* %tmp.161, align 8
  %967 = load { i64, i8* }, { i64, i8* }* %tmp.161, align 8
  %968 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 161
  store { i64, i8* } %967, { i64, i8* }* %968, align 8
  %969 = bitcast i64 (i64*)* @time to void ()*
  %970 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 161
  store void ()* %969, void ()** %970, align 8
  %971 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.166", i64 0, i64 0
  %972 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %971, 1
  store { i64, i8* } %972, { i64, i8* }* %tmp.162, align 8
  %973 = load { i64, i8* }, { i64, i8* }* %tmp.162, align 8
  %974 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 162
  store { i64, i8* } %973, { i64, i8* }* %974, align 8
  %975 = bitcast double (i64, i64)* @difftime to void ()*
  %976 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 162
  store void ()* %975, void ()** %976, align 8
  %977 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.167", i64 0, i64 0
  %978 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %977, 1
  store { i64, i8* } %978, { i64, i8* }* %tmp.163, align 8
  %979 = load { i64, i8* }, { i64, i8* }* %tmp.163, align 8
  %980 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 163
  store { i64, i8* } %979, { i64, i8* }* %980, align 8
  %981 = bitcast i64 (%"cstd::s_tm"*)* @mktime to void ()*
  %982 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 163
  store void ()* %981, void ()** %982, align 8
  %983 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.168", i64 0, i64 0
  %984 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %983, 1
  store { i64, i8* } %984, { i64, i8* }* %tmp.164, align 8
  %985 = load { i64, i8* }, { i64, i8* }* %tmp.164, align 8
  %986 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 164
  store { i64, i8* } %985, { i64, i8* }* %986, align 8
  %987 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*)* @strftime to void ()*
  %988 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 164
  store void ()* %987, void ()** %988, align 8
  %989 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.169", i64 0, i64 0
  %990 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %989, 1
  store { i64, i8* } %990, { i64, i8* }* %tmp.165, align 8
  %991 = load { i64, i8* }, { i64, i8* }* %tmp.165, align 8
  %992 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 165
  store { i64, i8* } %991, { i64, i8* }* %992, align 8
  %993 = bitcast i64 (i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)* @strftime_l to void ()*
  %994 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 165
  store void ()* %993, void ()** %994, align 8
  %995 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.170", i64 0, i64 0
  %996 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %995, 1
  store { i64, i8* } %996, { i64, i8* }* %tmp.166, align 8
  %997 = load { i64, i8* }, { i64, i8* }* %tmp.166, align 8
  %998 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 166
  store { i64, i8* } %997, { i64, i8* }* %998, align 8
  %999 = bitcast %"cstd::s_tm"* (i64*)* @gmtime to void ()*
  %1000 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 166
  store void ()* %999, void ()** %1000, align 8
  %1001 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.171", i64 0, i64 0
  %1002 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1001, 1
  store { i64, i8* } %1002, { i64, i8* }* %tmp.167, align 8
  %1003 = load { i64, i8* }, { i64, i8* }* %tmp.167, align 8
  %1004 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 167
  store { i64, i8* } %1003, { i64, i8* }* %1004, align 8
  %1005 = bitcast %"cstd::s_tm"* (i64*)* @localtime to void ()*
  %1006 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 167
  store void ()* %1005, void ()** %1006, align 8
  %1007 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.172", i64 0, i64 0
  %1008 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1007, 1
  store { i64, i8* } %1008, { i64, i8* }* %tmp.168, align 8
  %1009 = load { i64, i8* }, { i64, i8* }* %tmp.168, align 8
  %1010 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 168
  store { i64, i8* } %1009, { i64, i8* }* %1010, align 8
  %1011 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @gmtime_r to void ()*
  %1012 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 168
  store void ()* %1011, void ()** %1012, align 8
  %1013 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.173", i64 0, i64 0
  %1014 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1013, 1
  store { i64, i8* } %1014, { i64, i8* }* %tmp.169, align 8
  %1015 = load { i64, i8* }, { i64, i8* }* %tmp.169, align 8
  %1016 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 169
  store { i64, i8* } %1015, { i64, i8* }* %1016, align 8
  %1017 = bitcast %"cstd::s_tm"* (i64*, %"cstd::s_tm"*)* @localtime_r to void ()*
  %1018 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 169
  store void ()* %1017, void ()** %1018, align 8
  %1019 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.174", i64 0, i64 0
  %1020 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1019, 1
  store { i64, i8* } %1020, { i64, i8* }* %tmp.170, align 8
  %1021 = load { i64, i8* }, { i64, i8* }* %tmp.170, align 8
  %1022 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 170
  store { i64, i8* } %1021, { i64, i8* }* %1022, align 8
  %1023 = bitcast i8* (%"cstd::s_tm"*)* @asctime to void ()*
  %1024 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 170
  store void ()* %1023, void ()** %1024, align 8
  %1025 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.175", i64 0, i64 0
  %1026 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1025, 1
  store { i64, i8* } %1026, { i64, i8* }* %tmp.171, align 8
  %1027 = load { i64, i8* }, { i64, i8* }* %tmp.171, align 8
  %1028 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 171
  store { i64, i8* } %1027, { i64, i8* }* %1028, align 8
  %1029 = bitcast i8* (i64*)* @ctime to void ()*
  %1030 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 171
  store void ()* %1029, void ()** %1030, align 8
  %1031 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.176", i64 0, i64 0
  %1032 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1031, 1
  store { i64, i8* } %1032, { i64, i8* }* %tmp.172, align 8
  %1033 = load { i64, i8* }, { i64, i8* }* %tmp.172, align 8
  %1034 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 172
  store { i64, i8* } %1033, { i64, i8* }* %1034, align 8
  %1035 = bitcast i8* (%"cstd::s_tm"*, i8*)* @asctime_r to void ()*
  %1036 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 172
  store void ()* %1035, void ()** %1036, align 8
  %1037 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.177", i64 0, i64 0
  %1038 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1037, 1
  store { i64, i8* } %1038, { i64, i8* }* %tmp.173, align 8
  %1039 = load { i64, i8* }, { i64, i8* }* %tmp.173, align 8
  %1040 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 173
  store { i64, i8* } %1039, { i64, i8* }* %1040, align 8
  %1041 = bitcast i8* (i64*, i8*)* @ctime_r to void ()*
  %1042 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 173
  store void ()* %1041, void ()** %1042, align 8
  %1043 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.178", i64 0, i64 0
  %1044 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1043, 1
  store { i64, i8* } %1044, { i64, i8* }* %tmp.174, align 8
  %1045 = load { i64, i8* }, { i64, i8* }* %tmp.174, align 8
  %1046 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 174
  store { i64, i8* } %1045, { i64, i8* }* %1046, align 8
  %1047 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 174
  store void ()* @tzset, void ()** %1047, align 8
  %1048 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.179", i64 0, i64 0
  %1049 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1048, 1
  store { i64, i8* } %1049, { i64, i8* }* %tmp.175, align 8
  %1050 = load { i64, i8* }, { i64, i8* }* %tmp.175, align 8
  %1051 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 175
  store { i64, i8* } %1050, { i64, i8* }* %1051, align 8
  %1052 = bitcast i64 (%"cstd::s_tm"*)* @timegm to void ()*
  %1053 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 175
  store void ()* %1052, void ()** %1053, align 8
  %1054 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.180", i64 0, i64 0
  %1055 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1054, 1
  store { i64, i8* } %1055, { i64, i8* }* %tmp.176, align 8
  %1056 = load { i64, i8* }, { i64, i8* }* %tmp.176, align 8
  %1057 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 176
  store { i64, i8* } %1056, { i64, i8* }* %1057, align 8
  %1058 = bitcast i64 (%"cstd::s_tm"*)* @timelocal to void ()*
  %1059 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 176
  store void ()* %1058, void ()** %1059, align 8
  %1060 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.181", i64 0, i64 0
  %1061 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1060, 1
  store { i64, i8* } %1061, { i64, i8* }* %tmp.177, align 8
  %1062 = load { i64, i8* }, { i64, i8* }* %tmp.177, align 8
  %1063 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 177
  store { i64, i8* } %1062, { i64, i8* }* %1063, align 8
  %1064 = bitcast i32 (i32)* @dysize to void ()*
  %1065 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 177
  store void ()* %1064, void ()** %1065, align 8
  %1066 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.182", i64 0, i64 0
  %1067 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1066, 1
  store { i64, i8* } %1067, { i64, i8* }* %tmp.178, align 8
  %1068 = load { i64, i8* }, { i64, i8* }* %tmp.178, align 8
  %1069 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 178
  store { i64, i8* } %1068, { i64, i8* }* %1069, align 8
  %1070 = bitcast i32 (%"cstd::ldiv_t"*, %"cstd::ldiv_t"*)* @nanosleep to void ()*
  %1071 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 178
  store void ()* %1070, void ()** %1071, align 8
  %1072 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.183", i64 0, i64 0
  %1073 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1072, 1
  store { i64, i8* } %1073, { i64, i8* }* %tmp.179, align 8
  %1074 = load { i64, i8* }, { i64, i8* }* %tmp.179, align 8
  %1075 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 179
  store { i64, i8* } %1074, { i64, i8* }* %1075, align 8
  %1076 = bitcast i32 (i32, %"cstd::ldiv_t"*)* @clock_getres to void ()*
  %1077 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 179
  store void ()* %1076, void ()** %1077, align 8
  %1078 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.184", i64 0, i64 0
  %1079 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1078, 1
  store { i64, i8* } %1079, { i64, i8* }* %tmp.180, align 8
  %1080 = load { i64, i8* }, { i64, i8* }* %tmp.180, align 8
  %1081 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 180
  store { i64, i8* } %1080, { i64, i8* }* %1081, align 8
  %1082 = bitcast i32 (i32, %"cstd::ldiv_t"*)* @clock_gettime to void ()*
  %1083 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 180
  store void ()* %1082, void ()** %1083, align 8
  %1084 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.185", i64 0, i64 0
  %1085 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1084, 1
  store { i64, i8* } %1085, { i64, i8* }* %tmp.181, align 8
  %1086 = load { i64, i8* }, { i64, i8* }* %tmp.181, align 8
  %1087 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 181
  store { i64, i8* } %1086, { i64, i8* }* %1087, align 8
  %1088 = bitcast i32 (i32, %"cstd::ldiv_t"*)* @clock_settime to void ()*
  %1089 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 181
  store void ()* %1088, void ()** %1089, align 8
  %1090 = getelementptr [16 x i8], [16 x i8]* @"cstd::str.186", i64 0, i64 0
  %1091 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %1090, 1
  store { i64, i8* } %1091, { i64, i8* }* %tmp.182, align 8
  %1092 = load { i64, i8* }, { i64, i8* }* %tmp.182, align 8
  %1093 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 182
  store { i64, i8* } %1092, { i64, i8* }* %1093, align 8
  %1094 = bitcast i32 (i32, i32, %"cstd::ldiv_t"*, %"cstd::ldiv_t"*)* @clock_nanosleep to void ()*
  %1095 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 182
  store void ()* %1094, void ()** %1095, align 8
  %1096 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.187", i64 0, i64 0
  %1097 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %1096, 1
  store { i64, i8* } %1097, { i64, i8* }* %tmp.183, align 8
  %1098 = load { i64, i8* }, { i64, i8* }* %tmp.183, align 8
  %1099 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 183
  store { i64, i8* } %1098, { i64, i8* }* %1099, align 8
  %1100 = bitcast i32 (i32, i32*)* @clock_getcpuclockid to void ()*
  %1101 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 183
  store void ()* %1100, void ()** %1101, align 8
  %1102 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.188", i64 0, i64 0
  %1103 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1102, 1
  store { i64, i8* } %1103, { i64, i8* }* %tmp.184, align 8
  %1104 = load { i64, i8* }, { i64, i8* }* %tmp.184, align 8
  %1105 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 184
  store { i64, i8* } %1104, { i64, i8* }* %1105, align 8
  %1106 = bitcast i32 (i32, %"cstd::sigevent_t"*, i8**)* @timer_create to void ()*
  %1107 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 184
  store void ()* %1106, void ()** %1107, align 8
  %1108 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.189", i64 0, i64 0
  %1109 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1108, 1
  store { i64, i8* } %1109, { i64, i8* }* %tmp.185, align 8
  %1110 = load { i64, i8* }, { i64, i8* }* %tmp.185, align 8
  %1111 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 185
  store { i64, i8* } %1110, { i64, i8* }* %1111, align 8
  %1112 = bitcast i32 (i8*)* @timer_delete to void ()*
  %1113 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 185
  store void ()* %1112, void ()** %1113, align 8
  %1114 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.190", i64 0, i64 0
  %1115 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1114, 1
  store { i64, i8* } %1115, { i64, i8* }* %tmp.186, align 8
  %1116 = load { i64, i8* }, { i64, i8* }* %tmp.186, align 8
  %1117 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 186
  store { i64, i8* } %1116, { i64, i8* }* %1117, align 8
  %1118 = bitcast i32 (i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)* @timer_settime to void ()*
  %1119 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 186
  store void ()* %1118, void ()** %1119, align 8
  %1120 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.191", i64 0, i64 0
  %1121 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1120, 1
  store { i64, i8* } %1121, { i64, i8* }* %tmp.187, align 8
  %1122 = load { i64, i8* }, { i64, i8* }* %tmp.187, align 8
  %1123 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 187
  store { i64, i8* } %1122, { i64, i8* }* %1123, align 8
  %1124 = bitcast i32 (i8*, %"cstd::s_itimerspec"*)* @timer_gettime to void ()*
  %1125 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 187
  store void ()* %1124, void ()** %1125, align 8
  %1126 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.192", i64 0, i64 0
  %1127 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %1126, 1
  store { i64, i8* } %1127, { i64, i8* }* %tmp.188, align 8
  %1128 = load { i64, i8* }, { i64, i8* }* %tmp.188, align 8
  %1129 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 188
  store { i64, i8* } %1128, { i64, i8* }* %1129, align 8
  %1130 = bitcast i32 (i8*)* @timer_getoverrun to void ()*
  %1131 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 188
  store void ()* %1130, void ()** %1131, align 8
  %1132 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.193", i64 0, i64 0
  %1133 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1132, 1
  store { i64, i8* } %1133, { i64, i8* }* %tmp.189, align 8
  %1134 = load { i64, i8* }, { i64, i8* }* %tmp.189, align 8
  %1135 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 189
  store { i64, i8* } %1134, { i64, i8* }* %1135, align 8
  %1136 = bitcast i32 (%"cstd::ldiv_t"*, i32)* @timespec_get to void ()*
  %1137 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 189
  store void ()* %1136, void ()** %1137, align 8
  %1138 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.194", i64 0, i64 0
  %1139 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1138, 1
  store { i64, i8* } %1139, { i64, i8* }* %tmp.190, align 8
  %1140 = load { i64, i8* }, { i64, i8* }* %tmp.190, align 8
  %1141 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 190
  store { i64, i8* } %1140, { i64, i8* }* %1141, align 8
  %1142 = bitcast i32 (double)* @__fpclassify to void ()*
  %1143 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 190
  store void ()* %1142, void ()** %1143, align 8
  %1144 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.195", i64 0, i64 0
  %1145 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1144, 1
  store { i64, i8* } %1145, { i64, i8* }* %tmp.191, align 8
  %1146 = load { i64, i8* }, { i64, i8* }* %tmp.191, align 8
  %1147 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 191
  store { i64, i8* } %1146, { i64, i8* }* %1147, align 8
  %1148 = bitcast i32 (double)* @__signbit to void ()*
  %1149 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 191
  store void ()* %1148, void ()** %1149, align 8
  %1150 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.196", i64 0, i64 0
  %1151 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1150, 1
  store { i64, i8* } %1151, { i64, i8* }* %tmp.192, align 8
  %1152 = load { i64, i8* }, { i64, i8* }* %tmp.192, align 8
  %1153 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 192
  store { i64, i8* } %1152, { i64, i8* }* %1153, align 8
  %1154 = bitcast i32 (double)* @__isinf to void ()*
  %1155 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 192
  store void ()* %1154, void ()** %1155, align 8
  %1156 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.197", i64 0, i64 0
  %1157 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1156, 1
  store { i64, i8* } %1157, { i64, i8* }* %tmp.193, align 8
  %1158 = load { i64, i8* }, { i64, i8* }* %tmp.193, align 8
  %1159 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 193
  store { i64, i8* } %1158, { i64, i8* }* %1159, align 8
  %1160 = bitcast i32 (double)* @__finite to void ()*
  %1161 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 193
  store void ()* %1160, void ()** %1161, align 8
  %1162 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.198", i64 0, i64 0
  %1163 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1162, 1
  store { i64, i8* } %1163, { i64, i8* }* %tmp.194, align 8
  %1164 = load { i64, i8* }, { i64, i8* }* %tmp.194, align 8
  %1165 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 194
  store { i64, i8* } %1164, { i64, i8* }* %1165, align 8
  %1166 = bitcast i32 (double)* @__isnan to void ()*
  %1167 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 194
  store void ()* %1166, void ()** %1167, align 8
  %1168 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.199", i64 0, i64 0
  %1169 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1168, 1
  store { i64, i8* } %1169, { i64, i8* }* %tmp.195, align 8
  %1170 = load { i64, i8* }, { i64, i8* }* %tmp.195, align 8
  %1171 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 195
  store { i64, i8* } %1170, { i64, i8* }* %1171, align 8
  %1172 = bitcast i32 (double, double)* @__iseqsig to void ()*
  %1173 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 195
  store void ()* %1172, void ()** %1173, align 8
  %1174 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.200", i64 0, i64 0
  %1175 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1174, 1
  store { i64, i8* } %1175, { i64, i8* }* %tmp.196, align 8
  %1176 = load { i64, i8* }, { i64, i8* }* %tmp.196, align 8
  %1177 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 196
  store { i64, i8* } %1176, { i64, i8* }* %1177, align 8
  %1178 = bitcast i32 (double)* @__issignaling to void ()*
  %1179 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 196
  store void ()* %1178, void ()** %1179, align 8
  %1180 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.201", i64 0, i64 0
  %1181 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1180, 1
  store { i64, i8* } %1181, { i64, i8* }* %tmp.197, align 8
  %1182 = load { i64, i8* }, { i64, i8* }* %tmp.197, align 8
  %1183 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 197
  store { i64, i8* } %1182, { i64, i8* }* %1183, align 8
  %1184 = bitcast double (double)* @acos to void ()*
  %1185 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 197
  store void ()* %1184, void ()** %1185, align 8
  %1186 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.202", i64 0, i64 0
  %1187 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1186, 1
  store { i64, i8* } %1187, { i64, i8* }* %tmp.198, align 8
  %1188 = load { i64, i8* }, { i64, i8* }* %tmp.198, align 8
  %1189 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 198
  store { i64, i8* } %1188, { i64, i8* }* %1189, align 8
  %1190 = bitcast double (double)* @asin to void ()*
  %1191 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 198
  store void ()* %1190, void ()** %1191, align 8
  %1192 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.203", i64 0, i64 0
  %1193 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1192, 1
  store { i64, i8* } %1193, { i64, i8* }* %tmp.199, align 8
  %1194 = load { i64, i8* }, { i64, i8* }* %tmp.199, align 8
  %1195 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 199
  store { i64, i8* } %1194, { i64, i8* }* %1195, align 8
  %1196 = bitcast double (double)* @atan to void ()*
  %1197 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 199
  store void ()* %1196, void ()** %1197, align 8
  %1198 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.204", i64 0, i64 0
  %1199 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1198, 1
  store { i64, i8* } %1199, { i64, i8* }* %tmp.200, align 8
  %1200 = load { i64, i8* }, { i64, i8* }* %tmp.200, align 8
  %1201 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 200
  store { i64, i8* } %1200, { i64, i8* }* %1201, align 8
  %1202 = bitcast double (double, double)* @atan2 to void ()*
  %1203 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 200
  store void ()* %1202, void ()** %1203, align 8
  %1204 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.205", i64 0, i64 0
  %1205 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1204, 1
  store { i64, i8* } %1205, { i64, i8* }* %tmp.201, align 8
  %1206 = load { i64, i8* }, { i64, i8* }* %tmp.201, align 8
  %1207 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 201
  store { i64, i8* } %1206, { i64, i8* }* %1207, align 8
  %1208 = bitcast double (double)* @cos to void ()*
  %1209 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 201
  store void ()* %1208, void ()** %1209, align 8
  %1210 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.206", i64 0, i64 0
  %1211 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1210, 1
  store { i64, i8* } %1211, { i64, i8* }* %tmp.202, align 8
  %1212 = load { i64, i8* }, { i64, i8* }* %tmp.202, align 8
  %1213 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 202
  store { i64, i8* } %1212, { i64, i8* }* %1213, align 8
  %1214 = bitcast double (double)* @sin to void ()*
  %1215 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 202
  store void ()* %1214, void ()** %1215, align 8
  %1216 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.207", i64 0, i64 0
  %1217 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1216, 1
  store { i64, i8* } %1217, { i64, i8* }* %tmp.203, align 8
  %1218 = load { i64, i8* }, { i64, i8* }* %tmp.203, align 8
  %1219 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 203
  store { i64, i8* } %1218, { i64, i8* }* %1219, align 8
  %1220 = bitcast double (double)* @tan to void ()*
  %1221 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 203
  store void ()* %1220, void ()** %1221, align 8
  %1222 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.208", i64 0, i64 0
  %1223 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1222, 1
  store { i64, i8* } %1223, { i64, i8* }* %tmp.204, align 8
  %1224 = load { i64, i8* }, { i64, i8* }* %tmp.204, align 8
  %1225 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 204
  store { i64, i8* } %1224, { i64, i8* }* %1225, align 8
  %1226 = bitcast double (double)* @cosh to void ()*
  %1227 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 204
  store void ()* %1226, void ()** %1227, align 8
  %1228 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.209", i64 0, i64 0
  %1229 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1228, 1
  store { i64, i8* } %1229, { i64, i8* }* %tmp.205, align 8
  %1230 = load { i64, i8* }, { i64, i8* }* %tmp.205, align 8
  %1231 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 205
  store { i64, i8* } %1230, { i64, i8* }* %1231, align 8
  %1232 = bitcast double (double)* @sinh to void ()*
  %1233 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 205
  store void ()* %1232, void ()** %1233, align 8
  %1234 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.210", i64 0, i64 0
  %1235 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1234, 1
  store { i64, i8* } %1235, { i64, i8* }* %tmp.206, align 8
  %1236 = load { i64, i8* }, { i64, i8* }* %tmp.206, align 8
  %1237 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 206
  store { i64, i8* } %1236, { i64, i8* }* %1237, align 8
  %1238 = bitcast double (double)* @tanh to void ()*
  %1239 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 206
  store void ()* %1238, void ()** %1239, align 8
  %1240 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.211", i64 0, i64 0
  %1241 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1240, 1
  store { i64, i8* } %1241, { i64, i8* }* %tmp.207, align 8
  %1242 = load { i64, i8* }, { i64, i8* }* %tmp.207, align 8
  %1243 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 207
  store { i64, i8* } %1242, { i64, i8* }* %1243, align 8
  %1244 = bitcast double (double)* @acosh to void ()*
  %1245 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 207
  store void ()* %1244, void ()** %1245, align 8
  %1246 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.212", i64 0, i64 0
  %1247 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1246, 1
  store { i64, i8* } %1247, { i64, i8* }* %tmp.208, align 8
  %1248 = load { i64, i8* }, { i64, i8* }* %tmp.208, align 8
  %1249 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 208
  store { i64, i8* } %1248, { i64, i8* }* %1249, align 8
  %1250 = bitcast double (double)* @asinh to void ()*
  %1251 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 208
  store void ()* %1250, void ()** %1251, align 8
  %1252 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.213", i64 0, i64 0
  %1253 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1252, 1
  store { i64, i8* } %1253, { i64, i8* }* %tmp.209, align 8
  %1254 = load { i64, i8* }, { i64, i8* }* %tmp.209, align 8
  %1255 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 209
  store { i64, i8* } %1254, { i64, i8* }* %1255, align 8
  %1256 = bitcast double (double)* @atanh to void ()*
  %1257 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 209
  store void ()* %1256, void ()** %1257, align 8
  %1258 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.214", i64 0, i64 0
  %1259 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1258, 1
  store { i64, i8* } %1259, { i64, i8* }* %tmp.210, align 8
  %1260 = load { i64, i8* }, { i64, i8* }* %tmp.210, align 8
  %1261 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 210
  store { i64, i8* } %1260, { i64, i8* }* %1261, align 8
  %1262 = bitcast double (double)* @exp to void ()*
  %1263 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 210
  store void ()* %1262, void ()** %1263, align 8
  %1264 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.215", i64 0, i64 0
  %1265 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1264, 1
  store { i64, i8* } %1265, { i64, i8* }* %tmp.211, align 8
  %1266 = load { i64, i8* }, { i64, i8* }* %tmp.211, align 8
  %1267 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 211
  store { i64, i8* } %1266, { i64, i8* }* %1267, align 8
  %1268 = bitcast double (double, i32*)* @frexp to void ()*
  %1269 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 211
  store void ()* %1268, void ()** %1269, align 8
  %1270 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.216", i64 0, i64 0
  %1271 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1270, 1
  store { i64, i8* } %1271, { i64, i8* }* %tmp.212, align 8
  %1272 = load { i64, i8* }, { i64, i8* }* %tmp.212, align 8
  %1273 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 212
  store { i64, i8* } %1272, { i64, i8* }* %1273, align 8
  %1274 = bitcast double (double, i32)* @ldexp to void ()*
  %1275 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 212
  store void ()* %1274, void ()** %1275, align 8
  %1276 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.217", i64 0, i64 0
  %1277 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1276, 1
  store { i64, i8* } %1277, { i64, i8* }* %tmp.213, align 8
  %1278 = load { i64, i8* }, { i64, i8* }* %tmp.213, align 8
  %1279 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 213
  store { i64, i8* } %1278, { i64, i8* }* %1279, align 8
  %1280 = bitcast double (double)* @log to void ()*
  %1281 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 213
  store void ()* %1280, void ()** %1281, align 8
  %1282 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.218", i64 0, i64 0
  %1283 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1282, 1
  store { i64, i8* } %1283, { i64, i8* }* %tmp.214, align 8
  %1284 = load { i64, i8* }, { i64, i8* }* %tmp.214, align 8
  %1285 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 214
  store { i64, i8* } %1284, { i64, i8* }* %1285, align 8
  %1286 = bitcast double (double)* @log10 to void ()*
  %1287 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 214
  store void ()* %1286, void ()** %1287, align 8
  %1288 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.219", i64 0, i64 0
  %1289 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1288, 1
  store { i64, i8* } %1289, { i64, i8* }* %tmp.215, align 8
  %1290 = load { i64, i8* }, { i64, i8* }* %tmp.215, align 8
  %1291 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 215
  store { i64, i8* } %1290, { i64, i8* }* %1291, align 8
  %1292 = bitcast double (double, double*)* @modf to void ()*
  %1293 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 215
  store void ()* %1292, void ()** %1293, align 8
  %1294 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.220", i64 0, i64 0
  %1295 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1294, 1
  store { i64, i8* } %1295, { i64, i8* }* %tmp.216, align 8
  %1296 = load { i64, i8* }, { i64, i8* }* %tmp.216, align 8
  %1297 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 216
  store { i64, i8* } %1296, { i64, i8* }* %1297, align 8
  %1298 = bitcast double (double)* @expm1 to void ()*
  %1299 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 216
  store void ()* %1298, void ()** %1299, align 8
  %1300 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.221", i64 0, i64 0
  %1301 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1300, 1
  store { i64, i8* } %1301, { i64, i8* }* %tmp.217, align 8
  %1302 = load { i64, i8* }, { i64, i8* }* %tmp.217, align 8
  %1303 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 217
  store { i64, i8* } %1302, { i64, i8* }* %1303, align 8
  %1304 = bitcast double (double)* @log1p to void ()*
  %1305 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 217
  store void ()* %1304, void ()** %1305, align 8
  %1306 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.222", i64 0, i64 0
  %1307 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1306, 1
  store { i64, i8* } %1307, { i64, i8* }* %tmp.218, align 8
  %1308 = load { i64, i8* }, { i64, i8* }* %tmp.218, align 8
  %1309 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 218
  store { i64, i8* } %1308, { i64, i8* }* %1309, align 8
  %1310 = bitcast double (double)* @logb to void ()*
  %1311 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 218
  store void ()* %1310, void ()** %1311, align 8
  %1312 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.223", i64 0, i64 0
  %1313 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1312, 1
  store { i64, i8* } %1313, { i64, i8* }* %tmp.219, align 8
  %1314 = load { i64, i8* }, { i64, i8* }* %tmp.219, align 8
  %1315 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 219
  store { i64, i8* } %1314, { i64, i8* }* %1315, align 8
  %1316 = bitcast double (double)* @exp2 to void ()*
  %1317 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 219
  store void ()* %1316, void ()** %1317, align 8
  %1318 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.224", i64 0, i64 0
  %1319 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1318, 1
  store { i64, i8* } %1319, { i64, i8* }* %tmp.220, align 8
  %1320 = load { i64, i8* }, { i64, i8* }* %tmp.220, align 8
  %1321 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 220
  store { i64, i8* } %1320, { i64, i8* }* %1321, align 8
  %1322 = bitcast double (double)* @log2 to void ()*
  %1323 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 220
  store void ()* %1322, void ()** %1323, align 8
  %1324 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.225", i64 0, i64 0
  %1325 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1324, 1
  store { i64, i8* } %1325, { i64, i8* }* %tmp.221, align 8
  %1326 = load { i64, i8* }, { i64, i8* }* %tmp.221, align 8
  %1327 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 221
  store { i64, i8* } %1326, { i64, i8* }* %1327, align 8
  %1328 = bitcast double (double, double)* @pow to void ()*
  %1329 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 221
  store void ()* %1328, void ()** %1329, align 8
  %1330 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.226", i64 0, i64 0
  %1331 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1330, 1
  store { i64, i8* } %1331, { i64, i8* }* %tmp.222, align 8
  %1332 = load { i64, i8* }, { i64, i8* }* %tmp.222, align 8
  %1333 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 222
  store { i64, i8* } %1332, { i64, i8* }* %1333, align 8
  %1334 = bitcast double (double)* @sqrt to void ()*
  %1335 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 222
  store void ()* %1334, void ()** %1335, align 8
  %1336 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.227", i64 0, i64 0
  %1337 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1336, 1
  store { i64, i8* } %1337, { i64, i8* }* %tmp.223, align 8
  %1338 = load { i64, i8* }, { i64, i8* }* %tmp.223, align 8
  %1339 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 223
  store { i64, i8* } %1338, { i64, i8* }* %1339, align 8
  %1340 = bitcast double (double, double)* @hypot to void ()*
  %1341 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 223
  store void ()* %1340, void ()** %1341, align 8
  %1342 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.228", i64 0, i64 0
  %1343 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1342, 1
  store { i64, i8* } %1343, { i64, i8* }* %tmp.224, align 8
  %1344 = load { i64, i8* }, { i64, i8* }* %tmp.224, align 8
  %1345 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 224
  store { i64, i8* } %1344, { i64, i8* }* %1345, align 8
  %1346 = bitcast double (double)* @cbrt to void ()*
  %1347 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 224
  store void ()* %1346, void ()** %1347, align 8
  %1348 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.229", i64 0, i64 0
  %1349 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1348, 1
  store { i64, i8* } %1349, { i64, i8* }* %tmp.225, align 8
  %1350 = load { i64, i8* }, { i64, i8* }* %tmp.225, align 8
  %1351 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 225
  store { i64, i8* } %1350, { i64, i8* }* %1351, align 8
  %1352 = bitcast double (double)* @ceil to void ()*
  %1353 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 225
  store void ()* %1352, void ()** %1353, align 8
  %1354 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.230", i64 0, i64 0
  %1355 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1354, 1
  store { i64, i8* } %1355, { i64, i8* }* %tmp.226, align 8
  %1356 = load { i64, i8* }, { i64, i8* }* %tmp.226, align 8
  %1357 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 226
  store { i64, i8* } %1356, { i64, i8* }* %1357, align 8
  %1358 = bitcast double (double)* @fabs to void ()*
  %1359 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 226
  store void ()* %1358, void ()** %1359, align 8
  %1360 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.231", i64 0, i64 0
  %1361 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1360, 1
  store { i64, i8* } %1361, { i64, i8* }* %tmp.227, align 8
  %1362 = load { i64, i8* }, { i64, i8* }* %tmp.227, align 8
  %1363 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 227
  store { i64, i8* } %1362, { i64, i8* }* %1363, align 8
  %1364 = bitcast double (double)* @floor to void ()*
  %1365 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 227
  store void ()* %1364, void ()** %1365, align 8
  %1366 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.232", i64 0, i64 0
  %1367 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1366, 1
  store { i64, i8* } %1367, { i64, i8* }* %tmp.228, align 8
  %1368 = load { i64, i8* }, { i64, i8* }* %tmp.228, align 8
  %1369 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 228
  store { i64, i8* } %1368, { i64, i8* }* %1369, align 8
  %1370 = bitcast double (double, double)* @fmod to void ()*
  %1371 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 228
  store void ()* %1370, void ()** %1371, align 8
  %1372 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.233", i64 0, i64 0
  %1373 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1372, 1
  store { i64, i8* } %1373, { i64, i8* }* %tmp.229, align 8
  %1374 = load { i64, i8* }, { i64, i8* }* %tmp.229, align 8
  %1375 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 229
  store { i64, i8* } %1374, { i64, i8* }* %1375, align 8
  %1376 = bitcast i32 (double)* @isinf to void ()*
  %1377 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 229
  store void ()* %1376, void ()** %1377, align 8
  %1378 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.234", i64 0, i64 0
  %1379 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1378, 1
  store { i64, i8* } %1379, { i64, i8* }* %tmp.230, align 8
  %1380 = load { i64, i8* }, { i64, i8* }* %tmp.230, align 8
  %1381 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 230
  store { i64, i8* } %1380, { i64, i8* }* %1381, align 8
  %1382 = bitcast i32 (double)* @finite to void ()*
  %1383 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 230
  store void ()* %1382, void ()** %1383, align 8
  %1384 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.235", i64 0, i64 0
  %1385 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1384, 1
  store { i64, i8* } %1385, { i64, i8* }* %tmp.231, align 8
  %1386 = load { i64, i8* }, { i64, i8* }* %tmp.231, align 8
  %1387 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 231
  store { i64, i8* } %1386, { i64, i8* }* %1387, align 8
  %1388 = bitcast double (double, double)* @drem to void ()*
  %1389 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 231
  store void ()* %1388, void ()** %1389, align 8
  %1390 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.236", i64 0, i64 0
  %1391 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1390, 1
  store { i64, i8* } %1391, { i64, i8* }* %tmp.232, align 8
  %1392 = load { i64, i8* }, { i64, i8* }* %tmp.232, align 8
  %1393 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 232
  store { i64, i8* } %1392, { i64, i8* }* %1393, align 8
  %1394 = bitcast double (double)* @significand to void ()*
  %1395 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 232
  store void ()* %1394, void ()** %1395, align 8
  %1396 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.237", i64 0, i64 0
  %1397 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1396, 1
  store { i64, i8* } %1397, { i64, i8* }* %tmp.233, align 8
  %1398 = load { i64, i8* }, { i64, i8* }* %tmp.233, align 8
  %1399 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 233
  store { i64, i8* } %1398, { i64, i8* }* %1399, align 8
  %1400 = bitcast double (double, double)* @copysign to void ()*
  %1401 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 233
  store void ()* %1400, void ()** %1401, align 8
  %1402 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.238", i64 0, i64 0
  %1403 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1402, 1
  store { i64, i8* } %1403, { i64, i8* }* %tmp.234, align 8
  %1404 = load { i64, i8* }, { i64, i8* }* %tmp.234, align 8
  %1405 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 234
  store { i64, i8* } %1404, { i64, i8* }* %1405, align 8
  %1406 = bitcast double (i8*)* @nan to void ()*
  %1407 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 234
  store void ()* %1406, void ()** %1407, align 8
  %1408 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.239", i64 0, i64 0
  %1409 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1408, 1
  store { i64, i8* } %1409, { i64, i8* }* %tmp.235, align 8
  %1410 = load { i64, i8* }, { i64, i8* }* %tmp.235, align 8
  %1411 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 235
  store { i64, i8* } %1410, { i64, i8* }* %1411, align 8
  %1412 = bitcast i32 (double)* @isnan to void ()*
  %1413 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 235
  store void ()* %1412, void ()** %1413, align 8
  %1414 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.240", i64 0, i64 0
  %1415 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1414, 1
  store { i64, i8* } %1415, { i64, i8* }* %tmp.236, align 8
  %1416 = load { i64, i8* }, { i64, i8* }* %tmp.236, align 8
  %1417 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 236
  store { i64, i8* } %1416, { i64, i8* }* %1417, align 8
  %1418 = bitcast double (double)* @j0 to void ()*
  %1419 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 236
  store void ()* %1418, void ()** %1419, align 8
  %1420 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.241", i64 0, i64 0
  %1421 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1420, 1
  store { i64, i8* } %1421, { i64, i8* }* %tmp.237, align 8
  %1422 = load { i64, i8* }, { i64, i8* }* %tmp.237, align 8
  %1423 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 237
  store { i64, i8* } %1422, { i64, i8* }* %1423, align 8
  %1424 = bitcast double (double)* @j1 to void ()*
  %1425 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 237
  store void ()* %1424, void ()** %1425, align 8
  %1426 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.242", i64 0, i64 0
  %1427 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1426, 1
  store { i64, i8* } %1427, { i64, i8* }* %tmp.238, align 8
  %1428 = load { i64, i8* }, { i64, i8* }* %tmp.238, align 8
  %1429 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 238
  store { i64, i8* } %1428, { i64, i8* }* %1429, align 8
  %1430 = bitcast double (i32, double)* @jn to void ()*
  %1431 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 238
  store void ()* %1430, void ()** %1431, align 8
  %1432 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.243", i64 0, i64 0
  %1433 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1432, 1
  store { i64, i8* } %1433, { i64, i8* }* %tmp.239, align 8
  %1434 = load { i64, i8* }, { i64, i8* }* %tmp.239, align 8
  %1435 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 239
  store { i64, i8* } %1434, { i64, i8* }* %1435, align 8
  %1436 = bitcast double (double)* @y0 to void ()*
  %1437 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 239
  store void ()* %1436, void ()** %1437, align 8
  %1438 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.244", i64 0, i64 0
  %1439 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1438, 1
  store { i64, i8* } %1439, { i64, i8* }* %tmp.240, align 8
  %1440 = load { i64, i8* }, { i64, i8* }* %tmp.240, align 8
  %1441 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 240
  store { i64, i8* } %1440, { i64, i8* }* %1441, align 8
  %1442 = bitcast double (double)* @y1 to void ()*
  %1443 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 240
  store void ()* %1442, void ()** %1443, align 8
  %1444 = getelementptr [3 x i8], [3 x i8]* @"cstd::str.245", i64 0, i64 0
  %1445 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %1444, 1
  store { i64, i8* } %1445, { i64, i8* }* %tmp.241, align 8
  %1446 = load { i64, i8* }, { i64, i8* }* %tmp.241, align 8
  %1447 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 241
  store { i64, i8* } %1446, { i64, i8* }* %1447, align 8
  %1448 = bitcast double (i32, double)* @yn to void ()*
  %1449 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 241
  store void ()* %1448, void ()** %1449, align 8
  %1450 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.246", i64 0, i64 0
  %1451 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1450, 1
  store { i64, i8* } %1451, { i64, i8* }* %tmp.242, align 8
  %1452 = load { i64, i8* }, { i64, i8* }* %tmp.242, align 8
  %1453 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 242
  store { i64, i8* } %1452, { i64, i8* }* %1453, align 8
  %1454 = bitcast double (double)* @erf to void ()*
  %1455 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 242
  store void ()* %1454, void ()** %1455, align 8
  %1456 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.247", i64 0, i64 0
  %1457 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1456, 1
  store { i64, i8* } %1457, { i64, i8* }* %tmp.243, align 8
  %1458 = load { i64, i8* }, { i64, i8* }* %tmp.243, align 8
  %1459 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 243
  store { i64, i8* } %1458, { i64, i8* }* %1459, align 8
  %1460 = bitcast double (double)* @erfc to void ()*
  %1461 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 243
  store void ()* %1460, void ()** %1461, align 8
  %1462 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.248", i64 0, i64 0
  %1463 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1462, 1
  store { i64, i8* } %1463, { i64, i8* }* %tmp.244, align 8
  %1464 = load { i64, i8* }, { i64, i8* }* %tmp.244, align 8
  %1465 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 244
  store { i64, i8* } %1464, { i64, i8* }* %1465, align 8
  %1466 = bitcast double (double)* @lgamma to void ()*
  %1467 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 244
  store void ()* %1466, void ()** %1467, align 8
  %1468 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.249", i64 0, i64 0
  %1469 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1468, 1
  store { i64, i8* } %1469, { i64, i8* }* %tmp.245, align 8
  %1470 = load { i64, i8* }, { i64, i8* }* %tmp.245, align 8
  %1471 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 245
  store { i64, i8* } %1470, { i64, i8* }* %1471, align 8
  %1472 = bitcast double (double)* @tgamma to void ()*
  %1473 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 245
  store void ()* %1472, void ()** %1473, align 8
  %1474 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.250", i64 0, i64 0
  %1475 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1474, 1
  store { i64, i8* } %1475, { i64, i8* }* %tmp.246, align 8
  %1476 = load { i64, i8* }, { i64, i8* }* %tmp.246, align 8
  %1477 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 246
  store { i64, i8* } %1476, { i64, i8* }* %1477, align 8
  %1478 = bitcast double (double)* @gamma to void ()*
  %1479 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 246
  store void ()* %1478, void ()** %1479, align 8
  %1480 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.251", i64 0, i64 0
  %1481 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1480, 1
  store { i64, i8* } %1481, { i64, i8* }* %tmp.247, align 8
  %1482 = load { i64, i8* }, { i64, i8* }* %tmp.247, align 8
  %1483 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 247
  store { i64, i8* } %1482, { i64, i8* }* %1483, align 8
  %1484 = bitcast double (double, i32*)* @lgamma_r to void ()*
  %1485 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 247
  store void ()* %1484, void ()** %1485, align 8
  %1486 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.252", i64 0, i64 0
  %1487 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1486, 1
  store { i64, i8* } %1487, { i64, i8* }* %tmp.248, align 8
  %1488 = load { i64, i8* }, { i64, i8* }* %tmp.248, align 8
  %1489 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 248
  store { i64, i8* } %1488, { i64, i8* }* %1489, align 8
  %1490 = bitcast double (double)* @rint to void ()*
  %1491 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 248
  store void ()* %1490, void ()** %1491, align 8
  %1492 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.253", i64 0, i64 0
  %1493 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1492, 1
  store { i64, i8* } %1493, { i64, i8* }* %tmp.249, align 8
  %1494 = load { i64, i8* }, { i64, i8* }* %tmp.249, align 8
  %1495 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 249
  store { i64, i8* } %1494, { i64, i8* }* %1495, align 8
  %1496 = bitcast double (double, double)* @nextafter to void ()*
  %1497 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 249
  store void ()* %1496, void ()** %1497, align 8
  %1498 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.254", i64 0, i64 0
  %1499 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1498, 1
  store { i64, i8* } %1499, { i64, i8* }* %tmp.250, align 8
  %1500 = load { i64, i8* }, { i64, i8* }* %tmp.250, align 8
  %1501 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 250
  store { i64, i8* } %1500, { i64, i8* }* %1501, align 8
  %1502 = bitcast double (double, x86_fp80)* @nexttoward to void ()*
  %1503 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 250
  store void ()* %1502, void ()** %1503, align 8
  %1504 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.255", i64 0, i64 0
  %1505 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1504, 1
  store { i64, i8* } %1505, { i64, i8* }* %tmp.251, align 8
  %1506 = load { i64, i8* }, { i64, i8* }* %tmp.251, align 8
  %1507 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 251
  store { i64, i8* } %1506, { i64, i8* }* %1507, align 8
  %1508 = bitcast double (double, double)* @remainder to void ()*
  %1509 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 251
  store void ()* %1508, void ()** %1509, align 8
  %1510 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.256", i64 0, i64 0
  %1511 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1510, 1
  store { i64, i8* } %1511, { i64, i8* }* %tmp.252, align 8
  %1512 = load { i64, i8* }, { i64, i8* }* %tmp.252, align 8
  %1513 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 252
  store { i64, i8* } %1512, { i64, i8* }* %1513, align 8
  %1514 = bitcast double (double, i32)* @scalbn to void ()*
  %1515 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 252
  store void ()* %1514, void ()** %1515, align 8
  %1516 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.257", i64 0, i64 0
  %1517 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1516, 1
  store { i64, i8* } %1517, { i64, i8* }* %tmp.253, align 8
  %1518 = load { i64, i8* }, { i64, i8* }* %tmp.253, align 8
  %1519 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 253
  store { i64, i8* } %1518, { i64, i8* }* %1519, align 8
  %1520 = bitcast i32 (double)* @ilogb to void ()*
  %1521 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 253
  store void ()* %1520, void ()** %1521, align 8
  %1522 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.258", i64 0, i64 0
  %1523 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1522, 1
  store { i64, i8* } %1523, { i64, i8* }* %tmp.254, align 8
  %1524 = load { i64, i8* }, { i64, i8* }* %tmp.254, align 8
  %1525 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 254
  store { i64, i8* } %1524, { i64, i8* }* %1525, align 8
  %1526 = bitcast double (double, i64)* @scalbln to void ()*
  %1527 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 254
  store void ()* %1526, void ()** %1527, align 8
  %1528 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.259", i64 0, i64 0
  %1529 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1528, 1
  store { i64, i8* } %1529, { i64, i8* }* %tmp.255, align 8
  %1530 = load { i64, i8* }, { i64, i8* }* %tmp.255, align 8
  %1531 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 255
  store { i64, i8* } %1530, { i64, i8* }* %1531, align 8
  %1532 = bitcast double (double)* @nearbyint to void ()*
  %1533 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 255
  store void ()* %1532, void ()** %1533, align 8
  %1534 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.260", i64 0, i64 0
  %1535 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1534, 1
  store { i64, i8* } %1535, { i64, i8* }* %tmp.256, align 8
  %1536 = load { i64, i8* }, { i64, i8* }* %tmp.256, align 8
  %1537 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 256
  store { i64, i8* } %1536, { i64, i8* }* %1537, align 8
  %1538 = bitcast double (double)* @round to void ()*
  %1539 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 256
  store void ()* %1538, void ()** %1539, align 8
  %1540 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.261", i64 0, i64 0
  %1541 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1540, 1
  store { i64, i8* } %1541, { i64, i8* }* %tmp.257, align 8
  %1542 = load { i64, i8* }, { i64, i8* }* %tmp.257, align 8
  %1543 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 257
  store { i64, i8* } %1542, { i64, i8* }* %1543, align 8
  %1544 = bitcast double (double)* @trunc to void ()*
  %1545 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 257
  store void ()* %1544, void ()** %1545, align 8
  %1546 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.262", i64 0, i64 0
  %1547 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1546, 1
  store { i64, i8* } %1547, { i64, i8* }* %tmp.258, align 8
  %1548 = load { i64, i8* }, { i64, i8* }* %tmp.258, align 8
  %1549 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 258
  store { i64, i8* } %1548, { i64, i8* }* %1549, align 8
  %1550 = bitcast double (double, double, i32*)* @remquo to void ()*
  %1551 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 258
  store void ()* %1550, void ()** %1551, align 8
  %1552 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.263", i64 0, i64 0
  %1553 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1552, 1
  store { i64, i8* } %1553, { i64, i8* }* %tmp.259, align 8
  %1554 = load { i64, i8* }, { i64, i8* }* %tmp.259, align 8
  %1555 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 259
  store { i64, i8* } %1554, { i64, i8* }* %1555, align 8
  %1556 = bitcast i64 (double)* @lrint to void ()*
  %1557 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 259
  store void ()* %1556, void ()** %1557, align 8
  %1558 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.264", i64 0, i64 0
  %1559 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1558, 1
  store { i64, i8* } %1559, { i64, i8* }* %tmp.260, align 8
  %1560 = load { i64, i8* }, { i64, i8* }* %tmp.260, align 8
  %1561 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 260
  store { i64, i8* } %1560, { i64, i8* }* %1561, align 8
  %1562 = bitcast i64 (double)* @llrint to void ()*
  %1563 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 260
  store void ()* %1562, void ()** %1563, align 8
  %1564 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.265", i64 0, i64 0
  %1565 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1564, 1
  store { i64, i8* } %1565, { i64, i8* }* %tmp.261, align 8
  %1566 = load { i64, i8* }, { i64, i8* }* %tmp.261, align 8
  %1567 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 261
  store { i64, i8* } %1566, { i64, i8* }* %1567, align 8
  %1568 = bitcast i64 (double)* @lround to void ()*
  %1569 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 261
  store void ()* %1568, void ()** %1569, align 8
  %1570 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.266", i64 0, i64 0
  %1571 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1570, 1
  store { i64, i8* } %1571, { i64, i8* }* %tmp.262, align 8
  %1572 = load { i64, i8* }, { i64, i8* }* %tmp.262, align 8
  %1573 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 262
  store { i64, i8* } %1572, { i64, i8* }* %1573, align 8
  %1574 = bitcast i64 (double)* @llround to void ()*
  %1575 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 262
  store void ()* %1574, void ()** %1575, align 8
  %1576 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.267", i64 0, i64 0
  %1577 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1576, 1
  store { i64, i8* } %1577, { i64, i8* }* %tmp.263, align 8
  %1578 = load { i64, i8* }, { i64, i8* }* %tmp.263, align 8
  %1579 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 263
  store { i64, i8* } %1578, { i64, i8* }* %1579, align 8
  %1580 = bitcast double (double, double)* @fdim to void ()*
  %1581 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 263
  store void ()* %1580, void ()** %1581, align 8
  %1582 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.268", i64 0, i64 0
  %1583 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1582, 1
  store { i64, i8* } %1583, { i64, i8* }* %tmp.264, align 8
  %1584 = load { i64, i8* }, { i64, i8* }* %tmp.264, align 8
  %1585 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 264
  store { i64, i8* } %1584, { i64, i8* }* %1585, align 8
  %1586 = bitcast double (double, double)* @fmax to void ()*
  %1587 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 264
  store void ()* %1586, void ()** %1587, align 8
  %1588 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.269", i64 0, i64 0
  %1589 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1588, 1
  store { i64, i8* } %1589, { i64, i8* }* %tmp.265, align 8
  %1590 = load { i64, i8* }, { i64, i8* }* %tmp.265, align 8
  %1591 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 265
  store { i64, i8* } %1590, { i64, i8* }* %1591, align 8
  %1592 = bitcast double (double, double)* @fmin to void ()*
  %1593 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 265
  store void ()* %1592, void ()** %1593, align 8
  %1594 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.270", i64 0, i64 0
  %1595 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1594, 1
  store { i64, i8* } %1595, { i64, i8* }* %tmp.266, align 8
  %1596 = load { i64, i8* }, { i64, i8* }* %tmp.266, align 8
  %1597 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 266
  store { i64, i8* } %1596, { i64, i8* }* %1597, align 8
  %1598 = bitcast double (double, double, double)* @fma to void ()*
  %1599 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 266
  store void ()* %1598, void ()** %1599, align 8
  %1600 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.271", i64 0, i64 0
  %1601 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1600, 1
  store { i64, i8* } %1601, { i64, i8* }* %tmp.267, align 8
  %1602 = load { i64, i8* }, { i64, i8* }* %tmp.267, align 8
  %1603 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 267
  store { i64, i8* } %1602, { i64, i8* }* %1603, align 8
  %1604 = bitcast double (double, double)* @scalb to void ()*
  %1605 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 267
  store void ()* %1604, void ()** %1605, align 8
  %1606 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.272", i64 0, i64 0
  %1607 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1606, 1
  store { i64, i8* } %1607, { i64, i8* }* %tmp.268, align 8
  %1608 = load { i64, i8* }, { i64, i8* }* %tmp.268, align 8
  %1609 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 268
  store { i64, i8* } %1608, { i64, i8* }* %1609, align 8
  %1610 = bitcast i32 (float)* @__fpclassifyf to void ()*
  %1611 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 268
  store void ()* %1610, void ()** %1611, align 8
  %1612 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.273", i64 0, i64 0
  %1613 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1612, 1
  store { i64, i8* } %1613, { i64, i8* }* %tmp.269, align 8
  %1614 = load { i64, i8* }, { i64, i8* }* %tmp.269, align 8
  %1615 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 269
  store { i64, i8* } %1614, { i64, i8* }* %1615, align 8
  %1616 = bitcast i32 (float)* @__signbitf to void ()*
  %1617 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 269
  store void ()* %1616, void ()** %1617, align 8
  %1618 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.274", i64 0, i64 0
  %1619 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1618, 1
  store { i64, i8* } %1619, { i64, i8* }* %tmp.270, align 8
  %1620 = load { i64, i8* }, { i64, i8* }* %tmp.270, align 8
  %1621 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 270
  store { i64, i8* } %1620, { i64, i8* }* %1621, align 8
  %1622 = bitcast i32 (float)* @__isinff to void ()*
  %1623 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 270
  store void ()* %1622, void ()** %1623, align 8
  %1624 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.275", i64 0, i64 0
  %1625 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1624, 1
  store { i64, i8* } %1625, { i64, i8* }* %tmp.271, align 8
  %1626 = load { i64, i8* }, { i64, i8* }* %tmp.271, align 8
  %1627 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 271
  store { i64, i8* } %1626, { i64, i8* }* %1627, align 8
  %1628 = bitcast i32 (float)* @__finitef to void ()*
  %1629 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 271
  store void ()* %1628, void ()** %1629, align 8
  %1630 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.276", i64 0, i64 0
  %1631 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1630, 1
  store { i64, i8* } %1631, { i64, i8* }* %tmp.272, align 8
  %1632 = load { i64, i8* }, { i64, i8* }* %tmp.272, align 8
  %1633 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 272
  store { i64, i8* } %1632, { i64, i8* }* %1633, align 8
  %1634 = bitcast i32 (float)* @__isnanf to void ()*
  %1635 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 272
  store void ()* %1634, void ()** %1635, align 8
  %1636 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.277", i64 0, i64 0
  %1637 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1636, 1
  store { i64, i8* } %1637, { i64, i8* }* %tmp.273, align 8
  %1638 = load { i64, i8* }, { i64, i8* }* %tmp.273, align 8
  %1639 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 273
  store { i64, i8* } %1638, { i64, i8* }* %1639, align 8
  %1640 = bitcast i32 (float, float)* @__iseqsigf to void ()*
  %1641 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 273
  store void ()* %1640, void ()** %1641, align 8
  %1642 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.278", i64 0, i64 0
  %1643 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %1642, 1
  store { i64, i8* } %1643, { i64, i8* }* %tmp.274, align 8
  %1644 = load { i64, i8* }, { i64, i8* }* %tmp.274, align 8
  %1645 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 274
  store { i64, i8* } %1644, { i64, i8* }* %1645, align 8
  %1646 = bitcast i32 (float)* @__issignalingf to void ()*
  %1647 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 274
  store void ()* %1646, void ()** %1647, align 8
  %1648 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.279", i64 0, i64 0
  %1649 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1648, 1
  store { i64, i8* } %1649, { i64, i8* }* %tmp.275, align 8
  %1650 = load { i64, i8* }, { i64, i8* }* %tmp.275, align 8
  %1651 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 275
  store { i64, i8* } %1650, { i64, i8* }* %1651, align 8
  %1652 = bitcast float (float)* @acosf to void ()*
  %1653 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 275
  store void ()* %1652, void ()** %1653, align 8
  %1654 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.280", i64 0, i64 0
  %1655 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1654, 1
  store { i64, i8* } %1655, { i64, i8* }* %tmp.276, align 8
  %1656 = load { i64, i8* }, { i64, i8* }* %tmp.276, align 8
  %1657 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 276
  store { i64, i8* } %1656, { i64, i8* }* %1657, align 8
  %1658 = bitcast float (float)* @asinf to void ()*
  %1659 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 276
  store void ()* %1658, void ()** %1659, align 8
  %1660 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.281", i64 0, i64 0
  %1661 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1660, 1
  store { i64, i8* } %1661, { i64, i8* }* %tmp.277, align 8
  %1662 = load { i64, i8* }, { i64, i8* }* %tmp.277, align 8
  %1663 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 277
  store { i64, i8* } %1662, { i64, i8* }* %1663, align 8
  %1664 = bitcast float (float)* @atanf to void ()*
  %1665 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 277
  store void ()* %1664, void ()** %1665, align 8
  %1666 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.282", i64 0, i64 0
  %1667 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1666, 1
  store { i64, i8* } %1667, { i64, i8* }* %tmp.278, align 8
  %1668 = load { i64, i8* }, { i64, i8* }* %tmp.278, align 8
  %1669 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 278
  store { i64, i8* } %1668, { i64, i8* }* %1669, align 8
  %1670 = bitcast float (float, float)* @atan2f to void ()*
  %1671 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 278
  store void ()* %1670, void ()** %1671, align 8
  %1672 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.283", i64 0, i64 0
  %1673 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1672, 1
  store { i64, i8* } %1673, { i64, i8* }* %tmp.279, align 8
  %1674 = load { i64, i8* }, { i64, i8* }* %tmp.279, align 8
  %1675 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 279
  store { i64, i8* } %1674, { i64, i8* }* %1675, align 8
  %1676 = bitcast float (float)* @cosf to void ()*
  %1677 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 279
  store void ()* %1676, void ()** %1677, align 8
  %1678 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.284", i64 0, i64 0
  %1679 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1678, 1
  store { i64, i8* } %1679, { i64, i8* }* %tmp.280, align 8
  %1680 = load { i64, i8* }, { i64, i8* }* %tmp.280, align 8
  %1681 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 280
  store { i64, i8* } %1680, { i64, i8* }* %1681, align 8
  %1682 = bitcast float (float)* @sinf to void ()*
  %1683 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 280
  store void ()* %1682, void ()** %1683, align 8
  %1684 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.285", i64 0, i64 0
  %1685 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1684, 1
  store { i64, i8* } %1685, { i64, i8* }* %tmp.281, align 8
  %1686 = load { i64, i8* }, { i64, i8* }* %tmp.281, align 8
  %1687 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 281
  store { i64, i8* } %1686, { i64, i8* }* %1687, align 8
  %1688 = bitcast float (float)* @tanf to void ()*
  %1689 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 281
  store void ()* %1688, void ()** %1689, align 8
  %1690 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.286", i64 0, i64 0
  %1691 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1690, 1
  store { i64, i8* } %1691, { i64, i8* }* %tmp.282, align 8
  %1692 = load { i64, i8* }, { i64, i8* }* %tmp.282, align 8
  %1693 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 282
  store { i64, i8* } %1692, { i64, i8* }* %1693, align 8
  %1694 = bitcast float (float)* @coshf to void ()*
  %1695 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 282
  store void ()* %1694, void ()** %1695, align 8
  %1696 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.287", i64 0, i64 0
  %1697 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1696, 1
  store { i64, i8* } %1697, { i64, i8* }* %tmp.283, align 8
  %1698 = load { i64, i8* }, { i64, i8* }* %tmp.283, align 8
  %1699 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 283
  store { i64, i8* } %1698, { i64, i8* }* %1699, align 8
  %1700 = bitcast float (float)* @sinhf to void ()*
  %1701 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 283
  store void ()* %1700, void ()** %1701, align 8
  %1702 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.288", i64 0, i64 0
  %1703 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1702, 1
  store { i64, i8* } %1703, { i64, i8* }* %tmp.284, align 8
  %1704 = load { i64, i8* }, { i64, i8* }* %tmp.284, align 8
  %1705 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 284
  store { i64, i8* } %1704, { i64, i8* }* %1705, align 8
  %1706 = bitcast float (float)* @tanhf to void ()*
  %1707 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 284
  store void ()* %1706, void ()** %1707, align 8
  %1708 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.289", i64 0, i64 0
  %1709 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1708, 1
  store { i64, i8* } %1709, { i64, i8* }* %tmp.285, align 8
  %1710 = load { i64, i8* }, { i64, i8* }* %tmp.285, align 8
  %1711 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 285
  store { i64, i8* } %1710, { i64, i8* }* %1711, align 8
  %1712 = bitcast float (float)* @acoshf to void ()*
  %1713 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 285
  store void ()* %1712, void ()** %1713, align 8
  %1714 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.290", i64 0, i64 0
  %1715 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1714, 1
  store { i64, i8* } %1715, { i64, i8* }* %tmp.286, align 8
  %1716 = load { i64, i8* }, { i64, i8* }* %tmp.286, align 8
  %1717 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 286
  store { i64, i8* } %1716, { i64, i8* }* %1717, align 8
  %1718 = bitcast float (float)* @asinhf to void ()*
  %1719 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 286
  store void ()* %1718, void ()** %1719, align 8
  %1720 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.291", i64 0, i64 0
  %1721 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1720, 1
  store { i64, i8* } %1721, { i64, i8* }* %tmp.287, align 8
  %1722 = load { i64, i8* }, { i64, i8* }* %tmp.287, align 8
  %1723 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 287
  store { i64, i8* } %1722, { i64, i8* }* %1723, align 8
  %1724 = bitcast float (float)* @atanhf to void ()*
  %1725 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 287
  store void ()* %1724, void ()** %1725, align 8
  %1726 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.292", i64 0, i64 0
  %1727 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1726, 1
  store { i64, i8* } %1727, { i64, i8* }* %tmp.288, align 8
  %1728 = load { i64, i8* }, { i64, i8* }* %tmp.288, align 8
  %1729 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 288
  store { i64, i8* } %1728, { i64, i8* }* %1729, align 8
  %1730 = bitcast float (float)* @expf to void ()*
  %1731 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 288
  store void ()* %1730, void ()** %1731, align 8
  %1732 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.293", i64 0, i64 0
  %1733 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1732, 1
  store { i64, i8* } %1733, { i64, i8* }* %tmp.289, align 8
  %1734 = load { i64, i8* }, { i64, i8* }* %tmp.289, align 8
  %1735 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 289
  store { i64, i8* } %1734, { i64, i8* }* %1735, align 8
  %1736 = bitcast float (float, i32*)* @frexpf to void ()*
  %1737 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 289
  store void ()* %1736, void ()** %1737, align 8
  %1738 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.294", i64 0, i64 0
  %1739 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1738, 1
  store { i64, i8* } %1739, { i64, i8* }* %tmp.290, align 8
  %1740 = load { i64, i8* }, { i64, i8* }* %tmp.290, align 8
  %1741 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 290
  store { i64, i8* } %1740, { i64, i8* }* %1741, align 8
  %1742 = bitcast float (float, i32)* @ldexpf to void ()*
  %1743 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 290
  store void ()* %1742, void ()** %1743, align 8
  %1744 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.295", i64 0, i64 0
  %1745 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1744, 1
  store { i64, i8* } %1745, { i64, i8* }* %tmp.291, align 8
  %1746 = load { i64, i8* }, { i64, i8* }* %tmp.291, align 8
  %1747 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 291
  store { i64, i8* } %1746, { i64, i8* }* %1747, align 8
  %1748 = bitcast float (float)* @logf to void ()*
  %1749 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 291
  store void ()* %1748, void ()** %1749, align 8
  %1750 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.296", i64 0, i64 0
  %1751 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1750, 1
  store { i64, i8* } %1751, { i64, i8* }* %tmp.292, align 8
  %1752 = load { i64, i8* }, { i64, i8* }* %tmp.292, align 8
  %1753 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 292
  store { i64, i8* } %1752, { i64, i8* }* %1753, align 8
  %1754 = bitcast float (float)* @log10f to void ()*
  %1755 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 292
  store void ()* %1754, void ()** %1755, align 8
  %1756 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.297", i64 0, i64 0
  %1757 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1756, 1
  store { i64, i8* } %1757, { i64, i8* }* %tmp.293, align 8
  %1758 = load { i64, i8* }, { i64, i8* }* %tmp.293, align 8
  %1759 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 293
  store { i64, i8* } %1758, { i64, i8* }* %1759, align 8
  %1760 = bitcast float (float, float*)* @modff to void ()*
  %1761 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 293
  store void ()* %1760, void ()** %1761, align 8
  %1762 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.298", i64 0, i64 0
  %1763 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1762, 1
  store { i64, i8* } %1763, { i64, i8* }* %tmp.294, align 8
  %1764 = load { i64, i8* }, { i64, i8* }* %tmp.294, align 8
  %1765 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 294
  store { i64, i8* } %1764, { i64, i8* }* %1765, align 8
  %1766 = bitcast float (float)* @expm1f to void ()*
  %1767 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 294
  store void ()* %1766, void ()** %1767, align 8
  %1768 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.299", i64 0, i64 0
  %1769 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1768, 1
  store { i64, i8* } %1769, { i64, i8* }* %tmp.295, align 8
  %1770 = load { i64, i8* }, { i64, i8* }* %tmp.295, align 8
  %1771 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 295
  store { i64, i8* } %1770, { i64, i8* }* %1771, align 8
  %1772 = bitcast float (float)* @log1pf to void ()*
  %1773 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 295
  store void ()* %1772, void ()** %1773, align 8
  %1774 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.300", i64 0, i64 0
  %1775 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1774, 1
  store { i64, i8* } %1775, { i64, i8* }* %tmp.296, align 8
  %1776 = load { i64, i8* }, { i64, i8* }* %tmp.296, align 8
  %1777 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 296
  store { i64, i8* } %1776, { i64, i8* }* %1777, align 8
  %1778 = bitcast float (float)* @logbf to void ()*
  %1779 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 296
  store void ()* %1778, void ()** %1779, align 8
  %1780 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.301", i64 0, i64 0
  %1781 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1780, 1
  store { i64, i8* } %1781, { i64, i8* }* %tmp.297, align 8
  %1782 = load { i64, i8* }, { i64, i8* }* %tmp.297, align 8
  %1783 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 297
  store { i64, i8* } %1782, { i64, i8* }* %1783, align 8
  %1784 = bitcast float (float)* @exp2f to void ()*
  %1785 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 297
  store void ()* %1784, void ()** %1785, align 8
  %1786 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.302", i64 0, i64 0
  %1787 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1786, 1
  store { i64, i8* } %1787, { i64, i8* }* %tmp.298, align 8
  %1788 = load { i64, i8* }, { i64, i8* }* %tmp.298, align 8
  %1789 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 298
  store { i64, i8* } %1788, { i64, i8* }* %1789, align 8
  %1790 = bitcast float (float)* @log2f to void ()*
  %1791 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 298
  store void ()* %1790, void ()** %1791, align 8
  %1792 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.303", i64 0, i64 0
  %1793 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1792, 1
  store { i64, i8* } %1793, { i64, i8* }* %tmp.299, align 8
  %1794 = load { i64, i8* }, { i64, i8* }* %tmp.299, align 8
  %1795 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 299
  store { i64, i8* } %1794, { i64, i8* }* %1795, align 8
  %1796 = bitcast float (float, float)* @powf to void ()*
  %1797 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 299
  store void ()* %1796, void ()** %1797, align 8
  %1798 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.304", i64 0, i64 0
  %1799 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1798, 1
  store { i64, i8* } %1799, { i64, i8* }* %tmp.300, align 8
  %1800 = load { i64, i8* }, { i64, i8* }* %tmp.300, align 8
  %1801 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 300
  store { i64, i8* } %1800, { i64, i8* }* %1801, align 8
  %1802 = bitcast float (float)* @sqrtf to void ()*
  %1803 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 300
  store void ()* %1802, void ()** %1803, align 8
  %1804 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.305", i64 0, i64 0
  %1805 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1804, 1
  store { i64, i8* } %1805, { i64, i8* }* %tmp.301, align 8
  %1806 = load { i64, i8* }, { i64, i8* }* %tmp.301, align 8
  %1807 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 301
  store { i64, i8* } %1806, { i64, i8* }* %1807, align 8
  %1808 = bitcast float (float, float)* @hypotf to void ()*
  %1809 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 301
  store void ()* %1808, void ()** %1809, align 8
  %1810 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.306", i64 0, i64 0
  %1811 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1810, 1
  store { i64, i8* } %1811, { i64, i8* }* %tmp.302, align 8
  %1812 = load { i64, i8* }, { i64, i8* }* %tmp.302, align 8
  %1813 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 302
  store { i64, i8* } %1812, { i64, i8* }* %1813, align 8
  %1814 = bitcast float (float)* @cbrtf to void ()*
  %1815 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 302
  store void ()* %1814, void ()** %1815, align 8
  %1816 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.307", i64 0, i64 0
  %1817 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1816, 1
  store { i64, i8* } %1817, { i64, i8* }* %tmp.303, align 8
  %1818 = load { i64, i8* }, { i64, i8* }* %tmp.303, align 8
  %1819 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 303
  store { i64, i8* } %1818, { i64, i8* }* %1819, align 8
  %1820 = bitcast float (float)* @ceilf to void ()*
  %1821 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 303
  store void ()* %1820, void ()** %1821, align 8
  %1822 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.308", i64 0, i64 0
  %1823 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1822, 1
  store { i64, i8* } %1823, { i64, i8* }* %tmp.304, align 8
  %1824 = load { i64, i8* }, { i64, i8* }* %tmp.304, align 8
  %1825 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 304
  store { i64, i8* } %1824, { i64, i8* }* %1825, align 8
  %1826 = bitcast float (float)* @fabsf to void ()*
  %1827 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 304
  store void ()* %1826, void ()** %1827, align 8
  %1828 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.309", i64 0, i64 0
  %1829 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1828, 1
  store { i64, i8* } %1829, { i64, i8* }* %tmp.305, align 8
  %1830 = load { i64, i8* }, { i64, i8* }* %tmp.305, align 8
  %1831 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 305
  store { i64, i8* } %1830, { i64, i8* }* %1831, align 8
  %1832 = bitcast float (float)* @floorf to void ()*
  %1833 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 305
  store void ()* %1832, void ()** %1833, align 8
  %1834 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.310", i64 0, i64 0
  %1835 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1834, 1
  store { i64, i8* } %1835, { i64, i8* }* %tmp.306, align 8
  %1836 = load { i64, i8* }, { i64, i8* }* %tmp.306, align 8
  %1837 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 306
  store { i64, i8* } %1836, { i64, i8* }* %1837, align 8
  %1838 = bitcast float (float, float)* @fmodf to void ()*
  %1839 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 306
  store void ()* %1838, void ()** %1839, align 8
  %1840 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.311", i64 0, i64 0
  %1841 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1840, 1
  store { i64, i8* } %1841, { i64, i8* }* %tmp.307, align 8
  %1842 = load { i64, i8* }, { i64, i8* }* %tmp.307, align 8
  %1843 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 307
  store { i64, i8* } %1842, { i64, i8* }* %1843, align 8
  %1844 = bitcast i32 (float)* @isinff to void ()*
  %1845 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 307
  store void ()* %1844, void ()** %1845, align 8
  %1846 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.312", i64 0, i64 0
  %1847 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1846, 1
  store { i64, i8* } %1847, { i64, i8* }* %tmp.308, align 8
  %1848 = load { i64, i8* }, { i64, i8* }* %tmp.308, align 8
  %1849 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 308
  store { i64, i8* } %1848, { i64, i8* }* %1849, align 8
  %1850 = bitcast i32 (float)* @finitef to void ()*
  %1851 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 308
  store void ()* %1850, void ()** %1851, align 8
  %1852 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.313", i64 0, i64 0
  %1853 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1852, 1
  store { i64, i8* } %1853, { i64, i8* }* %tmp.309, align 8
  %1854 = load { i64, i8* }, { i64, i8* }* %tmp.309, align 8
  %1855 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 309
  store { i64, i8* } %1854, { i64, i8* }* %1855, align 8
  %1856 = bitcast float (float, float)* @dremf to void ()*
  %1857 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 309
  store void ()* %1856, void ()** %1857, align 8
  %1858 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.314", i64 0, i64 0
  %1859 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1858, 1
  store { i64, i8* } %1859, { i64, i8* }* %tmp.310, align 8
  %1860 = load { i64, i8* }, { i64, i8* }* %tmp.310, align 8
  %1861 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 310
  store { i64, i8* } %1860, { i64, i8* }* %1861, align 8
  %1862 = bitcast float (float)* @significandf to void ()*
  %1863 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 310
  store void ()* %1862, void ()** %1863, align 8
  %1864 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.315", i64 0, i64 0
  %1865 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1864, 1
  store { i64, i8* } %1865, { i64, i8* }* %tmp.311, align 8
  %1866 = load { i64, i8* }, { i64, i8* }* %tmp.311, align 8
  %1867 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 311
  store { i64, i8* } %1866, { i64, i8* }* %1867, align 8
  %1868 = bitcast float (float, float)* @copysignf to void ()*
  %1869 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 311
  store void ()* %1868, void ()** %1869, align 8
  %1870 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.316", i64 0, i64 0
  %1871 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1870, 1
  store { i64, i8* } %1871, { i64, i8* }* %tmp.312, align 8
  %1872 = load { i64, i8* }, { i64, i8* }* %tmp.312, align 8
  %1873 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 312
  store { i64, i8* } %1872, { i64, i8* }* %1873, align 8
  %1874 = bitcast float (i8*)* @nanf to void ()*
  %1875 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 312
  store void ()* %1874, void ()** %1875, align 8
  %1876 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.317", i64 0, i64 0
  %1877 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1876, 1
  store { i64, i8* } %1877, { i64, i8* }* %tmp.313, align 8
  %1878 = load { i64, i8* }, { i64, i8* }* %tmp.313, align 8
  %1879 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 313
  store { i64, i8* } %1878, { i64, i8* }* %1879, align 8
  %1880 = bitcast i32 (float)* @isnanf to void ()*
  %1881 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 313
  store void ()* %1880, void ()** %1881, align 8
  %1882 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.318", i64 0, i64 0
  %1883 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1882, 1
  store { i64, i8* } %1883, { i64, i8* }* %tmp.314, align 8
  %1884 = load { i64, i8* }, { i64, i8* }* %tmp.314, align 8
  %1885 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 314
  store { i64, i8* } %1884, { i64, i8* }* %1885, align 8
  %1886 = bitcast float (float)* @j0f to void ()*
  %1887 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 314
  store void ()* %1886, void ()** %1887, align 8
  %1888 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.319", i64 0, i64 0
  %1889 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1888, 1
  store { i64, i8* } %1889, { i64, i8* }* %tmp.315, align 8
  %1890 = load { i64, i8* }, { i64, i8* }* %tmp.315, align 8
  %1891 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 315
  store { i64, i8* } %1890, { i64, i8* }* %1891, align 8
  %1892 = bitcast float (float)* @j1f to void ()*
  %1893 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 315
  store void ()* %1892, void ()** %1893, align 8
  %1894 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.320", i64 0, i64 0
  %1895 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1894, 1
  store { i64, i8* } %1895, { i64, i8* }* %tmp.316, align 8
  %1896 = load { i64, i8* }, { i64, i8* }* %tmp.316, align 8
  %1897 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 316
  store { i64, i8* } %1896, { i64, i8* }* %1897, align 8
  %1898 = bitcast float (i32, float)* @jnf to void ()*
  %1899 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 316
  store void ()* %1898, void ()** %1899, align 8
  %1900 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.321", i64 0, i64 0
  %1901 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1900, 1
  store { i64, i8* } %1901, { i64, i8* }* %tmp.317, align 8
  %1902 = load { i64, i8* }, { i64, i8* }* %tmp.317, align 8
  %1903 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 317
  store { i64, i8* } %1902, { i64, i8* }* %1903, align 8
  %1904 = bitcast float (float)* @y0f to void ()*
  %1905 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 317
  store void ()* %1904, void ()** %1905, align 8
  %1906 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.322", i64 0, i64 0
  %1907 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1906, 1
  store { i64, i8* } %1907, { i64, i8* }* %tmp.318, align 8
  %1908 = load { i64, i8* }, { i64, i8* }* %tmp.318, align 8
  %1909 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 318
  store { i64, i8* } %1908, { i64, i8* }* %1909, align 8
  %1910 = bitcast float (float)* @y1f to void ()*
  %1911 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 318
  store void ()* %1910, void ()** %1911, align 8
  %1912 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.323", i64 0, i64 0
  %1913 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1912, 1
  store { i64, i8* } %1913, { i64, i8* }* %tmp.319, align 8
  %1914 = load { i64, i8* }, { i64, i8* }* %tmp.319, align 8
  %1915 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 319
  store { i64, i8* } %1914, { i64, i8* }* %1915, align 8
  %1916 = bitcast float (i32, float)* @ynf to void ()*
  %1917 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 319
  store void ()* %1916, void ()** %1917, align 8
  %1918 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.324", i64 0, i64 0
  %1919 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1918, 1
  store { i64, i8* } %1919, { i64, i8* }* %tmp.320, align 8
  %1920 = load { i64, i8* }, { i64, i8* }* %tmp.320, align 8
  %1921 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 320
  store { i64, i8* } %1920, { i64, i8* }* %1921, align 8
  %1922 = bitcast float (float)* @erff to void ()*
  %1923 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 320
  store void ()* %1922, void ()** %1923, align 8
  %1924 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.325", i64 0, i64 0
  %1925 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1924, 1
  store { i64, i8* } %1925, { i64, i8* }* %tmp.321, align 8
  %1926 = load { i64, i8* }, { i64, i8* }* %tmp.321, align 8
  %1927 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 321
  store { i64, i8* } %1926, { i64, i8* }* %1927, align 8
  %1928 = bitcast float (float)* @erfcf to void ()*
  %1929 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 321
  store void ()* %1928, void ()** %1929, align 8
  %1930 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.326", i64 0, i64 0
  %1931 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1930, 1
  store { i64, i8* } %1931, { i64, i8* }* %tmp.322, align 8
  %1932 = load { i64, i8* }, { i64, i8* }* %tmp.322, align 8
  %1933 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 322
  store { i64, i8* } %1932, { i64, i8* }* %1933, align 8
  %1934 = bitcast float (float)* @lgammaf to void ()*
  %1935 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 322
  store void ()* %1934, void ()** %1935, align 8
  %1936 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.327", i64 0, i64 0
  %1937 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1936, 1
  store { i64, i8* } %1937, { i64, i8* }* %tmp.323, align 8
  %1938 = load { i64, i8* }, { i64, i8* }* %tmp.323, align 8
  %1939 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 323
  store { i64, i8* } %1938, { i64, i8* }* %1939, align 8
  %1940 = bitcast float (float)* @tgammaf to void ()*
  %1941 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 323
  store void ()* %1940, void ()** %1941, align 8
  %1942 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.328", i64 0, i64 0
  %1943 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1942, 1
  store { i64, i8* } %1943, { i64, i8* }* %tmp.324, align 8
  %1944 = load { i64, i8* }, { i64, i8* }* %tmp.324, align 8
  %1945 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 324
  store { i64, i8* } %1944, { i64, i8* }* %1945, align 8
  %1946 = bitcast float (float)* @gammaf to void ()*
  %1947 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 324
  store void ()* %1946, void ()** %1947, align 8
  %1948 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.329", i64 0, i64 0
  %1949 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1948, 1
  store { i64, i8* } %1949, { i64, i8* }* %tmp.325, align 8
  %1950 = load { i64, i8* }, { i64, i8* }* %tmp.325, align 8
  %1951 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 325
  store { i64, i8* } %1950, { i64, i8* }* %1951, align 8
  %1952 = bitcast float (float, i32*)* @lgammaf_r to void ()*
  %1953 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 325
  store void ()* %1952, void ()** %1953, align 8
  %1954 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.330", i64 0, i64 0
  %1955 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1954, 1
  store { i64, i8* } %1955, { i64, i8* }* %tmp.326, align 8
  %1956 = load { i64, i8* }, { i64, i8* }* %tmp.326, align 8
  %1957 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 326
  store { i64, i8* } %1956, { i64, i8* }* %1957, align 8
  %1958 = bitcast float (float)* @rintf to void ()*
  %1959 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 326
  store void ()* %1958, void ()** %1959, align 8
  %1960 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.331", i64 0, i64 0
  %1961 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1960, 1
  store { i64, i8* } %1961, { i64, i8* }* %tmp.327, align 8
  %1962 = load { i64, i8* }, { i64, i8* }* %tmp.327, align 8
  %1963 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 327
  store { i64, i8* } %1962, { i64, i8* }* %1963, align 8
  %1964 = bitcast float (float, float)* @nextafterf to void ()*
  %1965 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 327
  store void ()* %1964, void ()** %1965, align 8
  %1966 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.332", i64 0, i64 0
  %1967 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1966, 1
  store { i64, i8* } %1967, { i64, i8* }* %tmp.328, align 8
  %1968 = load { i64, i8* }, { i64, i8* }* %tmp.328, align 8
  %1969 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 328
  store { i64, i8* } %1968, { i64, i8* }* %1969, align 8
  %1970 = bitcast float (float, x86_fp80)* @nexttowardf to void ()*
  %1971 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 328
  store void ()* %1970, void ()** %1971, align 8
  %1972 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.333", i64 0, i64 0
  %1973 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1972, 1
  store { i64, i8* } %1973, { i64, i8* }* %tmp.329, align 8
  %1974 = load { i64, i8* }, { i64, i8* }* %tmp.329, align 8
  %1975 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 329
  store { i64, i8* } %1974, { i64, i8* }* %1975, align 8
  %1976 = bitcast float (float, float)* @remainderf to void ()*
  %1977 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 329
  store void ()* %1976, void ()** %1977, align 8
  %1978 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.334", i64 0, i64 0
  %1979 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1978, 1
  store { i64, i8* } %1979, { i64, i8* }* %tmp.330, align 8
  %1980 = load { i64, i8* }, { i64, i8* }* %tmp.330, align 8
  %1981 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 330
  store { i64, i8* } %1980, { i64, i8* }* %1981, align 8
  %1982 = bitcast float (float, i32)* @scalbnf to void ()*
  %1983 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 330
  store void ()* %1982, void ()** %1983, align 8
  %1984 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.335", i64 0, i64 0
  %1985 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1984, 1
  store { i64, i8* } %1985, { i64, i8* }* %tmp.331, align 8
  %1986 = load { i64, i8* }, { i64, i8* }* %tmp.331, align 8
  %1987 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 331
  store { i64, i8* } %1986, { i64, i8* }* %1987, align 8
  %1988 = bitcast i32 (float)* @ilogbf to void ()*
  %1989 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 331
  store void ()* %1988, void ()** %1989, align 8
  %1990 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.336", i64 0, i64 0
  %1991 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1990, 1
  store { i64, i8* } %1991, { i64, i8* }* %tmp.332, align 8
  %1992 = load { i64, i8* }, { i64, i8* }* %tmp.332, align 8
  %1993 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 332
  store { i64, i8* } %1992, { i64, i8* }* %1993, align 8
  %1994 = bitcast float (float, i64)* @scalblnf to void ()*
  %1995 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 332
  store void ()* %1994, void ()** %1995, align 8
  %1996 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.337", i64 0, i64 0
  %1997 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1996, 1
  store { i64, i8* } %1997, { i64, i8* }* %tmp.333, align 8
  %1998 = load { i64, i8* }, { i64, i8* }* %tmp.333, align 8
  %1999 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 333
  store { i64, i8* } %1998, { i64, i8* }* %1999, align 8
  %2000 = bitcast float (float)* @nearbyintf to void ()*
  %2001 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 333
  store void ()* %2000, void ()** %2001, align 8
  %2002 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.338", i64 0, i64 0
  %2003 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2002, 1
  store { i64, i8* } %2003, { i64, i8* }* %tmp.334, align 8
  %2004 = load { i64, i8* }, { i64, i8* }* %tmp.334, align 8
  %2005 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 334
  store { i64, i8* } %2004, { i64, i8* }* %2005, align 8
  %2006 = bitcast float (float)* @roundf to void ()*
  %2007 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 334
  store void ()* %2006, void ()** %2007, align 8
  %2008 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.339", i64 0, i64 0
  %2009 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2008, 1
  store { i64, i8* } %2009, { i64, i8* }* %tmp.335, align 8
  %2010 = load { i64, i8* }, { i64, i8* }* %tmp.335, align 8
  %2011 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 335
  store { i64, i8* } %2010, { i64, i8* }* %2011, align 8
  %2012 = bitcast float (float)* @truncf to void ()*
  %2013 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 335
  store void ()* %2012, void ()** %2013, align 8
  %2014 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.340", i64 0, i64 0
  %2015 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2014, 1
  store { i64, i8* } %2015, { i64, i8* }* %tmp.336, align 8
  %2016 = load { i64, i8* }, { i64, i8* }* %tmp.336, align 8
  %2017 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 336
  store { i64, i8* } %2016, { i64, i8* }* %2017, align 8
  %2018 = bitcast float (float, float, i32*)* @remquof to void ()*
  %2019 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 336
  store void ()* %2018, void ()** %2019, align 8
  %2020 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.341", i64 0, i64 0
  %2021 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2020, 1
  store { i64, i8* } %2021, { i64, i8* }* %tmp.337, align 8
  %2022 = load { i64, i8* }, { i64, i8* }* %tmp.337, align 8
  %2023 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 337
  store { i64, i8* } %2022, { i64, i8* }* %2023, align 8
  %2024 = bitcast i64 (float)* @lrintf to void ()*
  %2025 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 337
  store void ()* %2024, void ()** %2025, align 8
  %2026 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.342", i64 0, i64 0
  %2027 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2026, 1
  store { i64, i8* } %2027, { i64, i8* }* %tmp.338, align 8
  %2028 = load { i64, i8* }, { i64, i8* }* %tmp.338, align 8
  %2029 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 338
  store { i64, i8* } %2028, { i64, i8* }* %2029, align 8
  %2030 = bitcast i64 (float)* @llrintf to void ()*
  %2031 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 338
  store void ()* %2030, void ()** %2031, align 8
  %2032 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.343", i64 0, i64 0
  %2033 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2032, 1
  store { i64, i8* } %2033, { i64, i8* }* %tmp.339, align 8
  %2034 = load { i64, i8* }, { i64, i8* }* %tmp.339, align 8
  %2035 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 339
  store { i64, i8* } %2034, { i64, i8* }* %2035, align 8
  %2036 = bitcast i64 (float)* @lroundf to void ()*
  %2037 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 339
  store void ()* %2036, void ()** %2037, align 8
  %2038 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.344", i64 0, i64 0
  %2039 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2038, 1
  store { i64, i8* } %2039, { i64, i8* }* %tmp.340, align 8
  %2040 = load { i64, i8* }, { i64, i8* }* %tmp.340, align 8
  %2041 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 340
  store { i64, i8* } %2040, { i64, i8* }* %2041, align 8
  %2042 = bitcast i64 (float)* @llroundf to void ()*
  %2043 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 340
  store void ()* %2042, void ()** %2043, align 8
  %2044 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.345", i64 0, i64 0
  %2045 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2044, 1
  store { i64, i8* } %2045, { i64, i8* }* %tmp.341, align 8
  %2046 = load { i64, i8* }, { i64, i8* }* %tmp.341, align 8
  %2047 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 341
  store { i64, i8* } %2046, { i64, i8* }* %2047, align 8
  %2048 = bitcast float (float, float)* @fdimf to void ()*
  %2049 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 341
  store void ()* %2048, void ()** %2049, align 8
  %2050 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.346", i64 0, i64 0
  %2051 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2050, 1
  store { i64, i8* } %2051, { i64, i8* }* %tmp.342, align 8
  %2052 = load { i64, i8* }, { i64, i8* }* %tmp.342, align 8
  %2053 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 342
  store { i64, i8* } %2052, { i64, i8* }* %2053, align 8
  %2054 = bitcast float (float, float)* @fmaxf to void ()*
  %2055 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 342
  store void ()* %2054, void ()** %2055, align 8
  %2056 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.347", i64 0, i64 0
  %2057 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2056, 1
  store { i64, i8* } %2057, { i64, i8* }* %tmp.343, align 8
  %2058 = load { i64, i8* }, { i64, i8* }* %tmp.343, align 8
  %2059 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 343
  store { i64, i8* } %2058, { i64, i8* }* %2059, align 8
  %2060 = bitcast float (float, float)* @fminf to void ()*
  %2061 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 343
  store void ()* %2060, void ()** %2061, align 8
  %2062 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.348", i64 0, i64 0
  %2063 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2062, 1
  store { i64, i8* } %2063, { i64, i8* }* %tmp.344, align 8
  %2064 = load { i64, i8* }, { i64, i8* }* %tmp.344, align 8
  %2065 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 344
  store { i64, i8* } %2064, { i64, i8* }* %2065, align 8
  %2066 = bitcast float (float, float, float)* @fmaf to void ()*
  %2067 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 344
  store void ()* %2066, void ()** %2067, align 8
  %2068 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.349", i64 0, i64 0
  %2069 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2068, 1
  store { i64, i8* } %2069, { i64, i8* }* %tmp.345, align 8
  %2070 = load { i64, i8* }, { i64, i8* }* %tmp.345, align 8
  %2071 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 345
  store { i64, i8* } %2070, { i64, i8* }* %2071, align 8
  %2072 = bitcast float (float, float)* @scalbf to void ()*
  %2073 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 345
  store void ()* %2072, void ()** %2073, align 8
  %2074 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.350", i64 0, i64 0
  %2075 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %2074, 1
  store { i64, i8* } %2075, { i64, i8* }* %tmp.346, align 8
  %2076 = load { i64, i8* }, { i64, i8* }* %tmp.346, align 8
  %2077 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 346
  store { i64, i8* } %2076, { i64, i8* }* %2077, align 8
  %2078 = bitcast i32 (x86_fp80)* @__fpclassifyl to void ()*
  %2079 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 346
  store void ()* %2078, void ()** %2079, align 8
  %2080 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.351", i64 0, i64 0
  %2081 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2080, 1
  store { i64, i8* } %2081, { i64, i8* }* %tmp.347, align 8
  %2082 = load { i64, i8* }, { i64, i8* }* %tmp.347, align 8
  %2083 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 347
  store { i64, i8* } %2082, { i64, i8* }* %2083, align 8
  %2084 = bitcast i32 (x86_fp80)* @__signbitl to void ()*
  %2085 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 347
  store void ()* %2084, void ()** %2085, align 8
  %2086 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.352", i64 0, i64 0
  %2087 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2086, 1
  store { i64, i8* } %2087, { i64, i8* }* %tmp.348, align 8
  %2088 = load { i64, i8* }, { i64, i8* }* %tmp.348, align 8
  %2089 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 348
  store { i64, i8* } %2088, { i64, i8* }* %2089, align 8
  %2090 = bitcast i32 (x86_fp80)* @__isinfl to void ()*
  %2091 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 348
  store void ()* %2090, void ()** %2091, align 8
  %2092 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.353", i64 0, i64 0
  %2093 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2092, 1
  store { i64, i8* } %2093, { i64, i8* }* %tmp.349, align 8
  %2094 = load { i64, i8* }, { i64, i8* }* %tmp.349, align 8
  %2095 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 349
  store { i64, i8* } %2094, { i64, i8* }* %2095, align 8
  %2096 = bitcast i32 (x86_fp80)* @__finitel to void ()*
  %2097 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 349
  store void ()* %2096, void ()** %2097, align 8
  %2098 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.354", i64 0, i64 0
  %2099 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2098, 1
  store { i64, i8* } %2099, { i64, i8* }* %tmp.350, align 8
  %2100 = load { i64, i8* }, { i64, i8* }* %tmp.350, align 8
  %2101 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 350
  store { i64, i8* } %2100, { i64, i8* }* %2101, align 8
  %2102 = bitcast i32 (x86_fp80)* @__isnanl to void ()*
  %2103 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 350
  store void ()* %2102, void ()** %2103, align 8
  %2104 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.355", i64 0, i64 0
  %2105 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2104, 1
  store { i64, i8* } %2105, { i64, i8* }* %tmp.351, align 8
  %2106 = load { i64, i8* }, { i64, i8* }* %tmp.351, align 8
  %2107 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 351
  store { i64, i8* } %2106, { i64, i8* }* %2107, align 8
  %2108 = bitcast i32 (x86_fp80, x86_fp80)* @__iseqsigl to void ()*
  %2109 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 351
  store void ()* %2108, void ()** %2109, align 8
  %2110 = getelementptr [15 x i8], [15 x i8]* @"cstd::str.356", i64 0, i64 0
  %2111 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %2110, 1
  store { i64, i8* } %2111, { i64, i8* }* %tmp.352, align 8
  %2112 = load { i64, i8* }, { i64, i8* }* %tmp.352, align 8
  %2113 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 352
  store { i64, i8* } %2112, { i64, i8* }* %2113, align 8
  %2114 = bitcast i32 (x86_fp80)* @__issignalingl to void ()*
  %2115 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 352
  store void ()* %2114, void ()** %2115, align 8
  %2116 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.357", i64 0, i64 0
  %2117 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2116, 1
  store { i64, i8* } %2117, { i64, i8* }* %tmp.353, align 8
  %2118 = load { i64, i8* }, { i64, i8* }* %tmp.353, align 8
  %2119 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 353
  store { i64, i8* } %2118, { i64, i8* }* %2119, align 8
  %2120 = bitcast x86_fp80 (x86_fp80)* @acosl to void ()*
  %2121 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 353
  store void ()* %2120, void ()** %2121, align 8
  %2122 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.358", i64 0, i64 0
  %2123 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2122, 1
  store { i64, i8* } %2123, { i64, i8* }* %tmp.354, align 8
  %2124 = load { i64, i8* }, { i64, i8* }* %tmp.354, align 8
  %2125 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 354
  store { i64, i8* } %2124, { i64, i8* }* %2125, align 8
  %2126 = bitcast x86_fp80 (x86_fp80)* @asinl to void ()*
  %2127 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 354
  store void ()* %2126, void ()** %2127, align 8
  %2128 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.359", i64 0, i64 0
  %2129 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2128, 1
  store { i64, i8* } %2129, { i64, i8* }* %tmp.355, align 8
  %2130 = load { i64, i8* }, { i64, i8* }* %tmp.355, align 8
  %2131 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 355
  store { i64, i8* } %2130, { i64, i8* }* %2131, align 8
  %2132 = bitcast x86_fp80 (x86_fp80)* @atanl to void ()*
  %2133 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 355
  store void ()* %2132, void ()** %2133, align 8
  %2134 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.360", i64 0, i64 0
  %2135 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2134, 1
  store { i64, i8* } %2135, { i64, i8* }* %tmp.356, align 8
  %2136 = load { i64, i8* }, { i64, i8* }* %tmp.356, align 8
  %2137 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 356
  store { i64, i8* } %2136, { i64, i8* }* %2137, align 8
  %2138 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @atan2l to void ()*
  %2139 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 356
  store void ()* %2138, void ()** %2139, align 8
  %2140 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.361", i64 0, i64 0
  %2141 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2140, 1
  store { i64, i8* } %2141, { i64, i8* }* %tmp.357, align 8
  %2142 = load { i64, i8* }, { i64, i8* }* %tmp.357, align 8
  %2143 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 357
  store { i64, i8* } %2142, { i64, i8* }* %2143, align 8
  %2144 = bitcast x86_fp80 (x86_fp80)* @cosl to void ()*
  %2145 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 357
  store void ()* %2144, void ()** %2145, align 8
  %2146 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.362", i64 0, i64 0
  %2147 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2146, 1
  store { i64, i8* } %2147, { i64, i8* }* %tmp.358, align 8
  %2148 = load { i64, i8* }, { i64, i8* }* %tmp.358, align 8
  %2149 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 358
  store { i64, i8* } %2148, { i64, i8* }* %2149, align 8
  %2150 = bitcast x86_fp80 (x86_fp80)* @sinl to void ()*
  %2151 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 358
  store void ()* %2150, void ()** %2151, align 8
  %2152 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.363", i64 0, i64 0
  %2153 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2152, 1
  store { i64, i8* } %2153, { i64, i8* }* %tmp.359, align 8
  %2154 = load { i64, i8* }, { i64, i8* }* %tmp.359, align 8
  %2155 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 359
  store { i64, i8* } %2154, { i64, i8* }* %2155, align 8
  %2156 = bitcast x86_fp80 (x86_fp80)* @tanl to void ()*
  %2157 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 359
  store void ()* %2156, void ()** %2157, align 8
  %2158 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.364", i64 0, i64 0
  %2159 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2158, 1
  store { i64, i8* } %2159, { i64, i8* }* %tmp.360, align 8
  %2160 = load { i64, i8* }, { i64, i8* }* %tmp.360, align 8
  %2161 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 360
  store { i64, i8* } %2160, { i64, i8* }* %2161, align 8
  %2162 = bitcast x86_fp80 (x86_fp80)* @coshl to void ()*
  %2163 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 360
  store void ()* %2162, void ()** %2163, align 8
  %2164 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.365", i64 0, i64 0
  %2165 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2164, 1
  store { i64, i8* } %2165, { i64, i8* }* %tmp.361, align 8
  %2166 = load { i64, i8* }, { i64, i8* }* %tmp.361, align 8
  %2167 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 361
  store { i64, i8* } %2166, { i64, i8* }* %2167, align 8
  %2168 = bitcast x86_fp80 (x86_fp80)* @sinhl to void ()*
  %2169 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 361
  store void ()* %2168, void ()** %2169, align 8
  %2170 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.366", i64 0, i64 0
  %2171 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2170, 1
  store { i64, i8* } %2171, { i64, i8* }* %tmp.362, align 8
  %2172 = load { i64, i8* }, { i64, i8* }* %tmp.362, align 8
  %2173 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 362
  store { i64, i8* } %2172, { i64, i8* }* %2173, align 8
  %2174 = bitcast x86_fp80 (x86_fp80)* @tanhl to void ()*
  %2175 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 362
  store void ()* %2174, void ()** %2175, align 8
  %2176 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.367", i64 0, i64 0
  %2177 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2176, 1
  store { i64, i8* } %2177, { i64, i8* }* %tmp.363, align 8
  %2178 = load { i64, i8* }, { i64, i8* }* %tmp.363, align 8
  %2179 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 363
  store { i64, i8* } %2178, { i64, i8* }* %2179, align 8
  %2180 = bitcast x86_fp80 (x86_fp80)* @acoshl to void ()*
  %2181 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 363
  store void ()* %2180, void ()** %2181, align 8
  %2182 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.368", i64 0, i64 0
  %2183 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2182, 1
  store { i64, i8* } %2183, { i64, i8* }* %tmp.364, align 8
  %2184 = load { i64, i8* }, { i64, i8* }* %tmp.364, align 8
  %2185 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 364
  store { i64, i8* } %2184, { i64, i8* }* %2185, align 8
  %2186 = bitcast x86_fp80 (x86_fp80)* @asinhl to void ()*
  %2187 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 364
  store void ()* %2186, void ()** %2187, align 8
  %2188 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.369", i64 0, i64 0
  %2189 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2188, 1
  store { i64, i8* } %2189, { i64, i8* }* %tmp.365, align 8
  %2190 = load { i64, i8* }, { i64, i8* }* %tmp.365, align 8
  %2191 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 365
  store { i64, i8* } %2190, { i64, i8* }* %2191, align 8
  %2192 = bitcast x86_fp80 (x86_fp80)* @atanhl to void ()*
  %2193 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 365
  store void ()* %2192, void ()** %2193, align 8
  %2194 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.370", i64 0, i64 0
  %2195 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2194, 1
  store { i64, i8* } %2195, { i64, i8* }* %tmp.366, align 8
  %2196 = load { i64, i8* }, { i64, i8* }* %tmp.366, align 8
  %2197 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 366
  store { i64, i8* } %2196, { i64, i8* }* %2197, align 8
  %2198 = bitcast x86_fp80 (x86_fp80)* @expl to void ()*
  %2199 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 366
  store void ()* %2198, void ()** %2199, align 8
  %2200 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.371", i64 0, i64 0
  %2201 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2200, 1
  store { i64, i8* } %2201, { i64, i8* }* %tmp.367, align 8
  %2202 = load { i64, i8* }, { i64, i8* }* %tmp.367, align 8
  %2203 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 367
  store { i64, i8* } %2202, { i64, i8* }* %2203, align 8
  %2204 = bitcast x86_fp80 (x86_fp80, i32*)* @frexpl to void ()*
  %2205 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 367
  store void ()* %2204, void ()** %2205, align 8
  %2206 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.372", i64 0, i64 0
  %2207 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2206, 1
  store { i64, i8* } %2207, { i64, i8* }* %tmp.368, align 8
  %2208 = load { i64, i8* }, { i64, i8* }* %tmp.368, align 8
  %2209 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 368
  store { i64, i8* } %2208, { i64, i8* }* %2209, align 8
  %2210 = bitcast x86_fp80 (x86_fp80, i32)* @ldexpl to void ()*
  %2211 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 368
  store void ()* %2210, void ()** %2211, align 8
  %2212 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.373", i64 0, i64 0
  %2213 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2212, 1
  store { i64, i8* } %2213, { i64, i8* }* %tmp.369, align 8
  %2214 = load { i64, i8* }, { i64, i8* }* %tmp.369, align 8
  %2215 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 369
  store { i64, i8* } %2214, { i64, i8* }* %2215, align 8
  %2216 = bitcast x86_fp80 (x86_fp80)* @logl to void ()*
  %2217 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 369
  store void ()* %2216, void ()** %2217, align 8
  %2218 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.374", i64 0, i64 0
  %2219 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2218, 1
  store { i64, i8* } %2219, { i64, i8* }* %tmp.370, align 8
  %2220 = load { i64, i8* }, { i64, i8* }* %tmp.370, align 8
  %2221 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 370
  store { i64, i8* } %2220, { i64, i8* }* %2221, align 8
  %2222 = bitcast x86_fp80 (x86_fp80)* @log10l to void ()*
  %2223 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 370
  store void ()* %2222, void ()** %2223, align 8
  %2224 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.375", i64 0, i64 0
  %2225 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2224, 1
  store { i64, i8* } %2225, { i64, i8* }* %tmp.371, align 8
  %2226 = load { i64, i8* }, { i64, i8* }* %tmp.371, align 8
  %2227 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 371
  store { i64, i8* } %2226, { i64, i8* }* %2227, align 8
  %2228 = bitcast x86_fp80 (x86_fp80, x86_fp80*)* @modfl to void ()*
  %2229 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 371
  store void ()* %2228, void ()** %2229, align 8
  %2230 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.376", i64 0, i64 0
  %2231 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2230, 1
  store { i64, i8* } %2231, { i64, i8* }* %tmp.372, align 8
  %2232 = load { i64, i8* }, { i64, i8* }* %tmp.372, align 8
  %2233 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 372
  store { i64, i8* } %2232, { i64, i8* }* %2233, align 8
  %2234 = bitcast x86_fp80 (x86_fp80)* @expm1l to void ()*
  %2235 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 372
  store void ()* %2234, void ()** %2235, align 8
  %2236 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.377", i64 0, i64 0
  %2237 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2236, 1
  store { i64, i8* } %2237, { i64, i8* }* %tmp.373, align 8
  %2238 = load { i64, i8* }, { i64, i8* }* %tmp.373, align 8
  %2239 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 373
  store { i64, i8* } %2238, { i64, i8* }* %2239, align 8
  %2240 = bitcast x86_fp80 (x86_fp80)* @log1pl to void ()*
  %2241 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 373
  store void ()* %2240, void ()** %2241, align 8
  %2242 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.378", i64 0, i64 0
  %2243 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2242, 1
  store { i64, i8* } %2243, { i64, i8* }* %tmp.374, align 8
  %2244 = load { i64, i8* }, { i64, i8* }* %tmp.374, align 8
  %2245 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 374
  store { i64, i8* } %2244, { i64, i8* }* %2245, align 8
  %2246 = bitcast x86_fp80 (x86_fp80)* @logbl to void ()*
  %2247 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 374
  store void ()* %2246, void ()** %2247, align 8
  %2248 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.379", i64 0, i64 0
  %2249 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2248, 1
  store { i64, i8* } %2249, { i64, i8* }* %tmp.375, align 8
  %2250 = load { i64, i8* }, { i64, i8* }* %tmp.375, align 8
  %2251 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 375
  store { i64, i8* } %2250, { i64, i8* }* %2251, align 8
  %2252 = bitcast x86_fp80 (x86_fp80)* @exp2l to void ()*
  %2253 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 375
  store void ()* %2252, void ()** %2253, align 8
  %2254 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.380", i64 0, i64 0
  %2255 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2254, 1
  store { i64, i8* } %2255, { i64, i8* }* %tmp.376, align 8
  %2256 = load { i64, i8* }, { i64, i8* }* %tmp.376, align 8
  %2257 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 376
  store { i64, i8* } %2256, { i64, i8* }* %2257, align 8
  %2258 = bitcast x86_fp80 (x86_fp80)* @log2l to void ()*
  %2259 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 376
  store void ()* %2258, void ()** %2259, align 8
  %2260 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.381", i64 0, i64 0
  %2261 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2260, 1
  store { i64, i8* } %2261, { i64, i8* }* %tmp.377, align 8
  %2262 = load { i64, i8* }, { i64, i8* }* %tmp.377, align 8
  %2263 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 377
  store { i64, i8* } %2262, { i64, i8* }* %2263, align 8
  %2264 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @powl to void ()*
  %2265 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 377
  store void ()* %2264, void ()** %2265, align 8
  %2266 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.382", i64 0, i64 0
  %2267 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2266, 1
  store { i64, i8* } %2267, { i64, i8* }* %tmp.378, align 8
  %2268 = load { i64, i8* }, { i64, i8* }* %tmp.378, align 8
  %2269 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 378
  store { i64, i8* } %2268, { i64, i8* }* %2269, align 8
  %2270 = bitcast x86_fp80 (x86_fp80)* @sqrtl to void ()*
  %2271 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 378
  store void ()* %2270, void ()** %2271, align 8
  %2272 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.383", i64 0, i64 0
  %2273 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2272, 1
  store { i64, i8* } %2273, { i64, i8* }* %tmp.379, align 8
  %2274 = load { i64, i8* }, { i64, i8* }* %tmp.379, align 8
  %2275 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 379
  store { i64, i8* } %2274, { i64, i8* }* %2275, align 8
  %2276 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @hypotl to void ()*
  %2277 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 379
  store void ()* %2276, void ()** %2277, align 8
  %2278 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.384", i64 0, i64 0
  %2279 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2278, 1
  store { i64, i8* } %2279, { i64, i8* }* %tmp.380, align 8
  %2280 = load { i64, i8* }, { i64, i8* }* %tmp.380, align 8
  %2281 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 380
  store { i64, i8* } %2280, { i64, i8* }* %2281, align 8
  %2282 = bitcast x86_fp80 (x86_fp80)* @cbrtl to void ()*
  %2283 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 380
  store void ()* %2282, void ()** %2283, align 8
  %2284 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.385", i64 0, i64 0
  %2285 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2284, 1
  store { i64, i8* } %2285, { i64, i8* }* %tmp.381, align 8
  %2286 = load { i64, i8* }, { i64, i8* }* %tmp.381, align 8
  %2287 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 381
  store { i64, i8* } %2286, { i64, i8* }* %2287, align 8
  %2288 = bitcast x86_fp80 (x86_fp80)* @ceill to void ()*
  %2289 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 381
  store void ()* %2288, void ()** %2289, align 8
  %2290 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.386", i64 0, i64 0
  %2291 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2290, 1
  store { i64, i8* } %2291, { i64, i8* }* %tmp.382, align 8
  %2292 = load { i64, i8* }, { i64, i8* }* %tmp.382, align 8
  %2293 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 382
  store { i64, i8* } %2292, { i64, i8* }* %2293, align 8
  %2294 = bitcast x86_fp80 (x86_fp80)* @fabsl to void ()*
  %2295 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 382
  store void ()* %2294, void ()** %2295, align 8
  %2296 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.387", i64 0, i64 0
  %2297 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2296, 1
  store { i64, i8* } %2297, { i64, i8* }* %tmp.383, align 8
  %2298 = load { i64, i8* }, { i64, i8* }* %tmp.383, align 8
  %2299 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 383
  store { i64, i8* } %2298, { i64, i8* }* %2299, align 8
  %2300 = bitcast x86_fp80 (x86_fp80)* @floorl to void ()*
  %2301 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 383
  store void ()* %2300, void ()** %2301, align 8
  %2302 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.388", i64 0, i64 0
  %2303 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2302, 1
  store { i64, i8* } %2303, { i64, i8* }* %tmp.384, align 8
  %2304 = load { i64, i8* }, { i64, i8* }* %tmp.384, align 8
  %2305 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 384
  store { i64, i8* } %2304, { i64, i8* }* %2305, align 8
  %2306 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @fmodl to void ()*
  %2307 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 384
  store void ()* %2306, void ()** %2307, align 8
  %2308 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.389", i64 0, i64 0
  %2309 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2308, 1
  store { i64, i8* } %2309, { i64, i8* }* %tmp.385, align 8
  %2310 = load { i64, i8* }, { i64, i8* }* %tmp.385, align 8
  %2311 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 385
  store { i64, i8* } %2310, { i64, i8* }* %2311, align 8
  %2312 = bitcast i32 (x86_fp80)* @isinfl to void ()*
  %2313 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 385
  store void ()* %2312, void ()** %2313, align 8
  %2314 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.390", i64 0, i64 0
  %2315 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2314, 1
  store { i64, i8* } %2315, { i64, i8* }* %tmp.386, align 8
  %2316 = load { i64, i8* }, { i64, i8* }* %tmp.386, align 8
  %2317 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 386
  store { i64, i8* } %2316, { i64, i8* }* %2317, align 8
  %2318 = bitcast i32 (x86_fp80)* @finitel to void ()*
  %2319 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 386
  store void ()* %2318, void ()** %2319, align 8
  %2320 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.391", i64 0, i64 0
  %2321 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2320, 1
  store { i64, i8* } %2321, { i64, i8* }* %tmp.387, align 8
  %2322 = load { i64, i8* }, { i64, i8* }* %tmp.387, align 8
  %2323 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 387
  store { i64, i8* } %2322, { i64, i8* }* %2323, align 8
  %2324 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @dreml to void ()*
  %2325 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 387
  store void ()* %2324, void ()** %2325, align 8
  %2326 = getelementptr [13 x i8], [13 x i8]* @"cstd::str.392", i64 0, i64 0
  %2327 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %2326, 1
  store { i64, i8* } %2327, { i64, i8* }* %tmp.388, align 8
  %2328 = load { i64, i8* }, { i64, i8* }* %tmp.388, align 8
  %2329 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 388
  store { i64, i8* } %2328, { i64, i8* }* %2329, align 8
  %2330 = bitcast x86_fp80 (x86_fp80)* @significandl to void ()*
  %2331 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 388
  store void ()* %2330, void ()** %2331, align 8
  %2332 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.393", i64 0, i64 0
  %2333 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2332, 1
  store { i64, i8* } %2333, { i64, i8* }* %tmp.389, align 8
  %2334 = load { i64, i8* }, { i64, i8* }* %tmp.389, align 8
  %2335 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 389
  store { i64, i8* } %2334, { i64, i8* }* %2335, align 8
  %2336 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @copysignl to void ()*
  %2337 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 389
  store void ()* %2336, void ()** %2337, align 8
  %2338 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.394", i64 0, i64 0
  %2339 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2338, 1
  store { i64, i8* } %2339, { i64, i8* }* %tmp.390, align 8
  %2340 = load { i64, i8* }, { i64, i8* }* %tmp.390, align 8
  %2341 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 390
  store { i64, i8* } %2340, { i64, i8* }* %2341, align 8
  %2342 = bitcast x86_fp80 (i8*)* @nanl to void ()*
  %2343 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 390
  store void ()* %2342, void ()** %2343, align 8
  %2344 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.395", i64 0, i64 0
  %2345 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2344, 1
  store { i64, i8* } %2345, { i64, i8* }* %tmp.391, align 8
  %2346 = load { i64, i8* }, { i64, i8* }* %tmp.391, align 8
  %2347 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 391
  store { i64, i8* } %2346, { i64, i8* }* %2347, align 8
  %2348 = bitcast i32 (x86_fp80)* @isnanl to void ()*
  %2349 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 391
  store void ()* %2348, void ()** %2349, align 8
  %2350 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.396", i64 0, i64 0
  %2351 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2350, 1
  store { i64, i8* } %2351, { i64, i8* }* %tmp.392, align 8
  %2352 = load { i64, i8* }, { i64, i8* }* %tmp.392, align 8
  %2353 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 392
  store { i64, i8* } %2352, { i64, i8* }* %2353, align 8
  %2354 = bitcast x86_fp80 (x86_fp80)* @j0l to void ()*
  %2355 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 392
  store void ()* %2354, void ()** %2355, align 8
  %2356 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.397", i64 0, i64 0
  %2357 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2356, 1
  store { i64, i8* } %2357, { i64, i8* }* %tmp.393, align 8
  %2358 = load { i64, i8* }, { i64, i8* }* %tmp.393, align 8
  %2359 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 393
  store { i64, i8* } %2358, { i64, i8* }* %2359, align 8
  %2360 = bitcast x86_fp80 (x86_fp80)* @j1l to void ()*
  %2361 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 393
  store void ()* %2360, void ()** %2361, align 8
  %2362 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.398", i64 0, i64 0
  %2363 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2362, 1
  store { i64, i8* } %2363, { i64, i8* }* %tmp.394, align 8
  %2364 = load { i64, i8* }, { i64, i8* }* %tmp.394, align 8
  %2365 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 394
  store { i64, i8* } %2364, { i64, i8* }* %2365, align 8
  %2366 = bitcast x86_fp80 (i32, x86_fp80)* @jnl to void ()*
  %2367 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 394
  store void ()* %2366, void ()** %2367, align 8
  %2368 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.399", i64 0, i64 0
  %2369 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2368, 1
  store { i64, i8* } %2369, { i64, i8* }* %tmp.395, align 8
  %2370 = load { i64, i8* }, { i64, i8* }* %tmp.395, align 8
  %2371 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 395
  store { i64, i8* } %2370, { i64, i8* }* %2371, align 8
  %2372 = bitcast x86_fp80 (x86_fp80)* @y0l to void ()*
  %2373 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 395
  store void ()* %2372, void ()** %2373, align 8
  %2374 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.400", i64 0, i64 0
  %2375 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2374, 1
  store { i64, i8* } %2375, { i64, i8* }* %tmp.396, align 8
  %2376 = load { i64, i8* }, { i64, i8* }* %tmp.396, align 8
  %2377 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 396
  store { i64, i8* } %2376, { i64, i8* }* %2377, align 8
  %2378 = bitcast x86_fp80 (x86_fp80)* @y1l to void ()*
  %2379 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 396
  store void ()* %2378, void ()** %2379, align 8
  %2380 = getelementptr [4 x i8], [4 x i8]* @"cstd::str.401", i64 0, i64 0
  %2381 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %2380, 1
  store { i64, i8* } %2381, { i64, i8* }* %tmp.397, align 8
  %2382 = load { i64, i8* }, { i64, i8* }* %tmp.397, align 8
  %2383 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 397
  store { i64, i8* } %2382, { i64, i8* }* %2383, align 8
  %2384 = bitcast x86_fp80 (i32, x86_fp80)* @ynl to void ()*
  %2385 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 397
  store void ()* %2384, void ()** %2385, align 8
  %2386 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.402", i64 0, i64 0
  %2387 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2386, 1
  store { i64, i8* } %2387, { i64, i8* }* %tmp.398, align 8
  %2388 = load { i64, i8* }, { i64, i8* }* %tmp.398, align 8
  %2389 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 398
  store { i64, i8* } %2388, { i64, i8* }* %2389, align 8
  %2390 = bitcast x86_fp80 (x86_fp80)* @erfl to void ()*
  %2391 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 398
  store void ()* %2390, void ()** %2391, align 8
  %2392 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.403", i64 0, i64 0
  %2393 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2392, 1
  store { i64, i8* } %2393, { i64, i8* }* %tmp.399, align 8
  %2394 = load { i64, i8* }, { i64, i8* }* %tmp.399, align 8
  %2395 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 399
  store { i64, i8* } %2394, { i64, i8* }* %2395, align 8
  %2396 = bitcast x86_fp80 (x86_fp80)* @erfcl to void ()*
  %2397 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 399
  store void ()* %2396, void ()** %2397, align 8
  %2398 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.404", i64 0, i64 0
  %2399 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2398, 1
  store { i64, i8* } %2399, { i64, i8* }* %tmp.400, align 8
  %2400 = load { i64, i8* }, { i64, i8* }* %tmp.400, align 8
  %2401 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 400
  store { i64, i8* } %2400, { i64, i8* }* %2401, align 8
  %2402 = bitcast x86_fp80 (x86_fp80)* @lgammal to void ()*
  %2403 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 400
  store void ()* %2402, void ()** %2403, align 8
  %2404 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.405", i64 0, i64 0
  %2405 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2404, 1
  store { i64, i8* } %2405, { i64, i8* }* %tmp.401, align 8
  %2406 = load { i64, i8* }, { i64, i8* }* %tmp.401, align 8
  %2407 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 401
  store { i64, i8* } %2406, { i64, i8* }* %2407, align 8
  %2408 = bitcast x86_fp80 (x86_fp80)* @tgammal to void ()*
  %2409 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 401
  store void ()* %2408, void ()** %2409, align 8
  %2410 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.406", i64 0, i64 0
  %2411 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2410, 1
  store { i64, i8* } %2411, { i64, i8* }* %tmp.402, align 8
  %2412 = load { i64, i8* }, { i64, i8* }* %tmp.402, align 8
  %2413 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 402
  store { i64, i8* } %2412, { i64, i8* }* %2413, align 8
  %2414 = bitcast x86_fp80 (x86_fp80)* @gammal to void ()*
  %2415 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 402
  store void ()* %2414, void ()** %2415, align 8
  %2416 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.407", i64 0, i64 0
  %2417 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2416, 1
  store { i64, i8* } %2417, { i64, i8* }* %tmp.403, align 8
  %2418 = load { i64, i8* }, { i64, i8* }* %tmp.403, align 8
  %2419 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 403
  store { i64, i8* } %2418, { i64, i8* }* %2419, align 8
  %2420 = bitcast x86_fp80 (x86_fp80, i32*)* @lgammal_r to void ()*
  %2421 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 403
  store void ()* %2420, void ()** %2421, align 8
  %2422 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.408", i64 0, i64 0
  %2423 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2422, 1
  store { i64, i8* } %2423, { i64, i8* }* %tmp.404, align 8
  %2424 = load { i64, i8* }, { i64, i8* }* %tmp.404, align 8
  %2425 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 404
  store { i64, i8* } %2424, { i64, i8* }* %2425, align 8
  %2426 = bitcast x86_fp80 (x86_fp80)* @rintl to void ()*
  %2427 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 404
  store void ()* %2426, void ()** %2427, align 8
  %2428 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.409", i64 0, i64 0
  %2429 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2428, 1
  store { i64, i8* } %2429, { i64, i8* }* %tmp.405, align 8
  %2430 = load { i64, i8* }, { i64, i8* }* %tmp.405, align 8
  %2431 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 405
  store { i64, i8* } %2430, { i64, i8* }* %2431, align 8
  %2432 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @nextafterl to void ()*
  %2433 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 405
  store void ()* %2432, void ()** %2433, align 8
  %2434 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.410", i64 0, i64 0
  %2435 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %2434, 1
  store { i64, i8* } %2435, { i64, i8* }* %tmp.406, align 8
  %2436 = load { i64, i8* }, { i64, i8* }* %tmp.406, align 8
  %2437 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 406
  store { i64, i8* } %2436, { i64, i8* }* %2437, align 8
  %2438 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @nexttowardl to void ()*
  %2439 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 406
  store void ()* %2438, void ()** %2439, align 8
  %2440 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.411", i64 0, i64 0
  %2441 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2440, 1
  store { i64, i8* } %2441, { i64, i8* }* %tmp.407, align 8
  %2442 = load { i64, i8* }, { i64, i8* }* %tmp.407, align 8
  %2443 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 407
  store { i64, i8* } %2442, { i64, i8* }* %2443, align 8
  %2444 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @remainderl to void ()*
  %2445 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 407
  store void ()* %2444, void ()** %2445, align 8
  %2446 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.412", i64 0, i64 0
  %2447 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2446, 1
  store { i64, i8* } %2447, { i64, i8* }* %tmp.408, align 8
  %2448 = load { i64, i8* }, { i64, i8* }* %tmp.408, align 8
  %2449 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 408
  store { i64, i8* } %2448, { i64, i8* }* %2449, align 8
  %2450 = bitcast x86_fp80 (x86_fp80, i32)* @scalbnl to void ()*
  %2451 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 408
  store void ()* %2450, void ()** %2451, align 8
  %2452 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.413", i64 0, i64 0
  %2453 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2452, 1
  store { i64, i8* } %2453, { i64, i8* }* %tmp.409, align 8
  %2454 = load { i64, i8* }, { i64, i8* }* %tmp.409, align 8
  %2455 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 409
  store { i64, i8* } %2454, { i64, i8* }* %2455, align 8
  %2456 = bitcast i32 (x86_fp80)* @ilogbl to void ()*
  %2457 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 409
  store void ()* %2456, void ()** %2457, align 8
  %2458 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.414", i64 0, i64 0
  %2459 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2458, 1
  store { i64, i8* } %2459, { i64, i8* }* %tmp.410, align 8
  %2460 = load { i64, i8* }, { i64, i8* }* %tmp.410, align 8
  %2461 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 410
  store { i64, i8* } %2460, { i64, i8* }* %2461, align 8
  %2462 = bitcast x86_fp80 (x86_fp80, i64)* @scalblnl to void ()*
  %2463 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 410
  store void ()* %2462, void ()** %2463, align 8
  %2464 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.415", i64 0, i64 0
  %2465 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2464, 1
  store { i64, i8* } %2465, { i64, i8* }* %tmp.411, align 8
  %2466 = load { i64, i8* }, { i64, i8* }* %tmp.411, align 8
  %2467 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 411
  store { i64, i8* } %2466, { i64, i8* }* %2467, align 8
  %2468 = bitcast x86_fp80 (x86_fp80)* @nearbyintl to void ()*
  %2469 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 411
  store void ()* %2468, void ()** %2469, align 8
  %2470 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.416", i64 0, i64 0
  %2471 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2470, 1
  store { i64, i8* } %2471, { i64, i8* }* %tmp.412, align 8
  %2472 = load { i64, i8* }, { i64, i8* }* %tmp.412, align 8
  %2473 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 412
  store { i64, i8* } %2472, { i64, i8* }* %2473, align 8
  %2474 = bitcast x86_fp80 (x86_fp80)* @roundl to void ()*
  %2475 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 412
  store void ()* %2474, void ()** %2475, align 8
  %2476 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.417", i64 0, i64 0
  %2477 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2476, 1
  store { i64, i8* } %2477, { i64, i8* }* %tmp.413, align 8
  %2478 = load { i64, i8* }, { i64, i8* }* %tmp.413, align 8
  %2479 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 413
  store { i64, i8* } %2478, { i64, i8* }* %2479, align 8
  %2480 = bitcast x86_fp80 (x86_fp80)* @truncl to void ()*
  %2481 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 413
  store void ()* %2480, void ()** %2481, align 8
  %2482 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.418", i64 0, i64 0
  %2483 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2482, 1
  store { i64, i8* } %2483, { i64, i8* }* %tmp.414, align 8
  %2484 = load { i64, i8* }, { i64, i8* }* %tmp.414, align 8
  %2485 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 414
  store { i64, i8* } %2484, { i64, i8* }* %2485, align 8
  %2486 = bitcast x86_fp80 (x86_fp80, x86_fp80, i32*)* @remquol to void ()*
  %2487 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 414
  store void ()* %2486, void ()** %2487, align 8
  %2488 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.419", i64 0, i64 0
  %2489 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2488, 1
  store { i64, i8* } %2489, { i64, i8* }* %tmp.415, align 8
  %2490 = load { i64, i8* }, { i64, i8* }* %tmp.415, align 8
  %2491 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 415
  store { i64, i8* } %2490, { i64, i8* }* %2491, align 8
  %2492 = bitcast i64 (x86_fp80)* @lrintl to void ()*
  %2493 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 415
  store void ()* %2492, void ()** %2493, align 8
  %2494 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.420", i64 0, i64 0
  %2495 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2494, 1
  store { i64, i8* } %2495, { i64, i8* }* %tmp.416, align 8
  %2496 = load { i64, i8* }, { i64, i8* }* %tmp.416, align 8
  %2497 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 416
  store { i64, i8* } %2496, { i64, i8* }* %2497, align 8
  %2498 = bitcast i64 (x86_fp80)* @llrintl to void ()*
  %2499 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 416
  store void ()* %2498, void ()** %2499, align 8
  %2500 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.421", i64 0, i64 0
  %2501 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2500, 1
  store { i64, i8* } %2501, { i64, i8* }* %tmp.417, align 8
  %2502 = load { i64, i8* }, { i64, i8* }* %tmp.417, align 8
  %2503 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 417
  store { i64, i8* } %2502, { i64, i8* }* %2503, align 8
  %2504 = bitcast i64 (x86_fp80)* @lroundl to void ()*
  %2505 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 417
  store void ()* %2504, void ()** %2505, align 8
  %2506 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.422", i64 0, i64 0
  %2507 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2506, 1
  store { i64, i8* } %2507, { i64, i8* }* %tmp.418, align 8
  %2508 = load { i64, i8* }, { i64, i8* }* %tmp.418, align 8
  %2509 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 418
  store { i64, i8* } %2508, { i64, i8* }* %2509, align 8
  %2510 = bitcast i64 (x86_fp80)* @llroundl to void ()*
  %2511 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 418
  store void ()* %2510, void ()** %2511, align 8
  %2512 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.423", i64 0, i64 0
  %2513 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2512, 1
  store { i64, i8* } %2513, { i64, i8* }* %tmp.419, align 8
  %2514 = load { i64, i8* }, { i64, i8* }* %tmp.419, align 8
  %2515 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 419
  store { i64, i8* } %2514, { i64, i8* }* %2515, align 8
  %2516 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @fdiml to void ()*
  %2517 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 419
  store void ()* %2516, void ()** %2517, align 8
  %2518 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.424", i64 0, i64 0
  %2519 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2518, 1
  store { i64, i8* } %2519, { i64, i8* }* %tmp.420, align 8
  %2520 = load { i64, i8* }, { i64, i8* }* %tmp.420, align 8
  %2521 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 420
  store { i64, i8* } %2520, { i64, i8* }* %2521, align 8
  %2522 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @fmaxl to void ()*
  %2523 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 420
  store void ()* %2522, void ()** %2523, align 8
  %2524 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.425", i64 0, i64 0
  %2525 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2524, 1
  store { i64, i8* } %2525, { i64, i8* }* %tmp.421, align 8
  %2526 = load { i64, i8* }, { i64, i8* }* %tmp.421, align 8
  %2527 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 421
  store { i64, i8* } %2526, { i64, i8* }* %2527, align 8
  %2528 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @fminl to void ()*
  %2529 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 421
  store void ()* %2528, void ()** %2529, align 8
  %2530 = getelementptr [5 x i8], [5 x i8]* @"cstd::str.426", i64 0, i64 0
  %2531 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %2530, 1
  store { i64, i8* } %2531, { i64, i8* }* %tmp.422, align 8
  %2532 = load { i64, i8* }, { i64, i8* }* %tmp.422, align 8
  %2533 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 422
  store { i64, i8* } %2532, { i64, i8* }* %2533, align 8
  %2534 = bitcast x86_fp80 (x86_fp80, x86_fp80, x86_fp80)* @fmal to void ()*
  %2535 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 422
  store void ()* %2534, void ()** %2535, align 8
  %2536 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.427", i64 0, i64 0
  %2537 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2536, 1
  store { i64, i8* } %2537, { i64, i8* }* %tmp.423, align 8
  %2538 = load { i64, i8* }, { i64, i8* }* %tmp.423, align 8
  %2539 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 423
  store { i64, i8* } %2538, { i64, i8* }* %2539, align 8
  %2540 = bitcast x86_fp80 (x86_fp80, x86_fp80)* @scalbl to void ()*
  %2541 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 423
  store void ()* %2540, void ()** %2541, align 8
  %2542 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.428", i64 0, i64 0
  %2543 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %2542, 1
  store { i64, i8* } %2543, { i64, i8* }* %tmp.424, align 8
  %2544 = load { i64, i8* }, { i64, i8* }* %tmp.424, align 8
  %2545 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 424
  store { i64, i8* } %2544, { i64, i8* }* %2545, align 8
  %2546 = bitcast void (i8*, i8*, i32, i8*)* @__assert_fail to void ()*
  %2547 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 424
  store void ()* %2546, void ()** %2547, align 8
  %2548 = getelementptr [21 x i8], [21 x i8]* @"cstd::str.429", i64 0, i64 0
  %2549 = insertvalue { i64, i8* } { i64 21, i8* undef }, i8* %2548, 1
  store { i64, i8* } %2549, { i64, i8* }* %tmp.425, align 8
  %2550 = load { i64, i8* }, { i64, i8* }* %tmp.425, align 8
  %2551 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 425
  store { i64, i8* } %2550, { i64, i8* }* %2551, align 8
  %2552 = bitcast void (i32, i8*, i32, i8*)* @__assert_perror_fail to void ()*
  %2553 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 425
  store void ()* %2552, void ()** %2553, align 8
  %2554 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.430", i64 0, i64 0
  %2555 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2554, 1
  store { i64, i8* } %2555, { i64, i8* }* %tmp.426, align 8
  %2556 = load { i64, i8* }, { i64, i8* }* %tmp.426, align 8
  %2557 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 426
  store { i64, i8* } %2556, { i64, i8* }* %2557, align 8
  %2558 = bitcast void (i8*, i8*, i32)* @__assert to void ()*
  %2559 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 426
  store void ()* %2558, void ()** %2559, align 8
  %2560 = getelementptr [14 x i8], [14 x i8]* @"cstd::str.431", i64 0, i64 0
  %2561 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %2560, 1
  store { i64, i8* } %2561, { i64, i8* }* %tmp.427, align 8
  %2562 = load { i64, i8* }, { i64, i8* }* %tmp.427, align 8
  %2563 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 427
  store { i64, i8* } %2562, { i64, i8* }* %2563, align 8
  %2564 = bitcast i16** ()* @__ctype_b_loc to void ()*
  %2565 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 427
  store void ()* %2564, void ()** %2565, align 8
  %2566 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.432", i64 0, i64 0
  %2567 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %2566, 1
  store { i64, i8* } %2567, { i64, i8* }* %tmp.428, align 8
  %2568 = load { i64, i8* }, { i64, i8* }* %tmp.428, align 8
  %2569 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 428
  store { i64, i8* } %2568, { i64, i8* }* %2569, align 8
  %2570 = bitcast i32** ()* @__ctype_tolower_loc to void ()*
  %2571 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 428
  store void ()* %2570, void ()** %2571, align 8
  %2572 = getelementptr [20 x i8], [20 x i8]* @"cstd::str.433", i64 0, i64 0
  %2573 = insertvalue { i64, i8* } { i64 20, i8* undef }, i8* %2572, 1
  store { i64, i8* } %2573, { i64, i8* }* %tmp.429, align 8
  %2574 = load { i64, i8* }, { i64, i8* }* %tmp.429, align 8
  %2575 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 429
  store { i64, i8* } %2574, { i64, i8* }* %2575, align 8
  %2576 = bitcast i32** ()* @__ctype_toupper_loc to void ()*
  %2577 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 429
  store void ()* %2576, void ()** %2577, align 8
  %2578 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.434", i64 0, i64 0
  %2579 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2578, 1
  store { i64, i8* } %2579, { i64, i8* }* %tmp.430, align 8
  %2580 = load { i64, i8* }, { i64, i8* }* %tmp.430, align 8
  %2581 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 430
  store { i64, i8* } %2580, { i64, i8* }* %2581, align 8
  %2582 = bitcast i32 (i32)* @isalnum to void ()*
  %2583 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 430
  store void ()* %2582, void ()** %2583, align 8
  %2584 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.435", i64 0, i64 0
  %2585 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2584, 1
  store { i64, i8* } %2585, { i64, i8* }* %tmp.431, align 8
  %2586 = load { i64, i8* }, { i64, i8* }* %tmp.431, align 8
  %2587 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 431
  store { i64, i8* } %2586, { i64, i8* }* %2587, align 8
  %2588 = bitcast i32 (i32)* @isalpha to void ()*
  %2589 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 431
  store void ()* %2588, void ()** %2589, align 8
  %2590 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.436", i64 0, i64 0
  %2591 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2590, 1
  store { i64, i8* } %2591, { i64, i8* }* %tmp.432, align 8
  %2592 = load { i64, i8* }, { i64, i8* }* %tmp.432, align 8
  %2593 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 432
  store { i64, i8* } %2592, { i64, i8* }* %2593, align 8
  %2594 = bitcast i32 (i32)* @iscntrl to void ()*
  %2595 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 432
  store void ()* %2594, void ()** %2595, align 8
  %2596 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.437", i64 0, i64 0
  %2597 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2596, 1
  store { i64, i8* } %2597, { i64, i8* }* %tmp.433, align 8
  %2598 = load { i64, i8* }, { i64, i8* }* %tmp.433, align 8
  %2599 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 433
  store { i64, i8* } %2598, { i64, i8* }* %2599, align 8
  %2600 = bitcast i32 (i32)* @isdigit to void ()*
  %2601 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 433
  store void ()* %2600, void ()** %2601, align 8
  %2602 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.438", i64 0, i64 0
  %2603 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2602, 1
  store { i64, i8* } %2603, { i64, i8* }* %tmp.434, align 8
  %2604 = load { i64, i8* }, { i64, i8* }* %tmp.434, align 8
  %2605 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 434
  store { i64, i8* } %2604, { i64, i8* }* %2605, align 8
  %2606 = bitcast i32 (i32)* @islower to void ()*
  %2607 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 434
  store void ()* %2606, void ()** %2607, align 8
  %2608 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.439", i64 0, i64 0
  %2609 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2608, 1
  store { i64, i8* } %2609, { i64, i8* }* %tmp.435, align 8
  %2610 = load { i64, i8* }, { i64, i8* }* %tmp.435, align 8
  %2611 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 435
  store { i64, i8* } %2610, { i64, i8* }* %2611, align 8
  %2612 = bitcast i32 (i32)* @isgraph to void ()*
  %2613 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 435
  store void ()* %2612, void ()** %2613, align 8
  %2614 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.440", i64 0, i64 0
  %2615 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2614, 1
  store { i64, i8* } %2615, { i64, i8* }* %tmp.436, align 8
  %2616 = load { i64, i8* }, { i64, i8* }* %tmp.436, align 8
  %2617 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 436
  store { i64, i8* } %2616, { i64, i8* }* %2617, align 8
  %2618 = bitcast i32 (i32)* @isprint to void ()*
  %2619 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 436
  store void ()* %2618, void ()** %2619, align 8
  %2620 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.441", i64 0, i64 0
  %2621 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2620, 1
  store { i64, i8* } %2621, { i64, i8* }* %tmp.437, align 8
  %2622 = load { i64, i8* }, { i64, i8* }* %tmp.437, align 8
  %2623 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 437
  store { i64, i8* } %2622, { i64, i8* }* %2623, align 8
  %2624 = bitcast i32 (i32)* @ispunct to void ()*
  %2625 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 437
  store void ()* %2624, void ()** %2625, align 8
  %2626 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.442", i64 0, i64 0
  %2627 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2626, 1
  store { i64, i8* } %2627, { i64, i8* }* %tmp.438, align 8
  %2628 = load { i64, i8* }, { i64, i8* }* %tmp.438, align 8
  %2629 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 438
  store { i64, i8* } %2628, { i64, i8* }* %2629, align 8
  %2630 = bitcast i32 (i32)* @isspace to void ()*
  %2631 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 438
  store void ()* %2630, void ()** %2631, align 8
  %2632 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.443", i64 0, i64 0
  %2633 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2632, 1
  store { i64, i8* } %2633, { i64, i8* }* %tmp.439, align 8
  %2634 = load { i64, i8* }, { i64, i8* }* %tmp.439, align 8
  %2635 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 439
  store { i64, i8* } %2634, { i64, i8* }* %2635, align 8
  %2636 = bitcast i32 (i32)* @isupper to void ()*
  %2637 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 439
  store void ()* %2636, void ()** %2637, align 8
  %2638 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.444", i64 0, i64 0
  %2639 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2638, 1
  store { i64, i8* } %2639, { i64, i8* }* %tmp.440, align 8
  %2640 = load { i64, i8* }, { i64, i8* }* %tmp.440, align 8
  %2641 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 440
  store { i64, i8* } %2640, { i64, i8* }* %2641, align 8
  %2642 = bitcast i32 (i32)* @isxdigit to void ()*
  %2643 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 440
  store void ()* %2642, void ()** %2643, align 8
  %2644 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.445", i64 0, i64 0
  %2645 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2644, 1
  store { i64, i8* } %2645, { i64, i8* }* %tmp.441, align 8
  %2646 = load { i64, i8* }, { i64, i8* }* %tmp.441, align 8
  %2647 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 441
  store { i64, i8* } %2646, { i64, i8* }* %2647, align 8
  %2648 = bitcast i32 (i32)* @tolower to void ()*
  %2649 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 441
  store void ()* %2648, void ()** %2649, align 8
  %2650 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.446", i64 0, i64 0
  %2651 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2650, 1
  store { i64, i8* } %2651, { i64, i8* }* %tmp.442, align 8
  %2652 = load { i64, i8* }, { i64, i8* }* %tmp.442, align 8
  %2653 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 442
  store { i64, i8* } %2652, { i64, i8* }* %2653, align 8
  %2654 = bitcast i32 (i32)* @toupper to void ()*
  %2655 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 442
  store void ()* %2654, void ()** %2655, align 8
  %2656 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.447", i64 0, i64 0
  %2657 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2656, 1
  store { i64, i8* } %2657, { i64, i8* }* %tmp.443, align 8
  %2658 = load { i64, i8* }, { i64, i8* }* %tmp.443, align 8
  %2659 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 443
  store { i64, i8* } %2658, { i64, i8* }* %2659, align 8
  %2660 = bitcast i32 (i32)* @isblank to void ()*
  %2661 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 443
  store void ()* %2660, void ()** %2661, align 8
  %2662 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.448", i64 0, i64 0
  %2663 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2662, 1
  store { i64, i8* } %2663, { i64, i8* }* %tmp.444, align 8
  %2664 = load { i64, i8* }, { i64, i8* }* %tmp.444, align 8
  %2665 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 444
  store { i64, i8* } %2664, { i64, i8* }* %2665, align 8
  %2666 = bitcast i32 (i32)* @isascii to void ()*
  %2667 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 444
  store void ()* %2666, void ()** %2667, align 8
  %2668 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.449", i64 0, i64 0
  %2669 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2668, 1
  store { i64, i8* } %2669, { i64, i8* }* %tmp.445, align 8
  %2670 = load { i64, i8* }, { i64, i8* }* %tmp.445, align 8
  %2671 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 445
  store { i64, i8* } %2670, { i64, i8* }* %2671, align 8
  %2672 = bitcast i32 (i32)* @toascii to void ()*
  %2673 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 445
  store void ()* %2672, void ()** %2673, align 8
  %2674 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.450", i64 0, i64 0
  %2675 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2674, 1
  store { i64, i8* } %2675, { i64, i8* }* %tmp.446, align 8
  %2676 = load { i64, i8* }, { i64, i8* }* %tmp.446, align 8
  %2677 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 446
  store { i64, i8* } %2676, { i64, i8* }* %2677, align 8
  %2678 = bitcast i32 (i32)* @_toupper to void ()*
  %2679 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 446
  store void ()* %2678, void ()** %2679, align 8
  %2680 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.451", i64 0, i64 0
  %2681 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2680, 1
  store { i64, i8* } %2681, { i64, i8* }* %tmp.447, align 8
  %2682 = load { i64, i8* }, { i64, i8* }* %tmp.447, align 8
  %2683 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 447
  store { i64, i8* } %2682, { i64, i8* }* %2683, align 8
  %2684 = bitcast i32 (i32)* @_tolower to void ()*
  %2685 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 447
  store void ()* %2684, void ()** %2685, align 8
  %2686 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.452", i64 0, i64 0
  %2687 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2686, 1
  store { i64, i8* } %2687, { i64, i8* }* %tmp.448, align 8
  %2688 = load { i64, i8* }, { i64, i8* }* %tmp.448, align 8
  %2689 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 448
  store { i64, i8* } %2688, { i64, i8* }* %2689, align 8
  %2690 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isalnum_l to void ()*
  %2691 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 448
  store void ()* %2690, void ()** %2691, align 8
  %2692 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.453", i64 0, i64 0
  %2693 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2692, 1
  store { i64, i8* } %2693, { i64, i8* }* %tmp.449, align 8
  %2694 = load { i64, i8* }, { i64, i8* }* %tmp.449, align 8
  %2695 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 449
  store { i64, i8* } %2694, { i64, i8* }* %2695, align 8
  %2696 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isalpha_l to void ()*
  %2697 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 449
  store void ()* %2696, void ()** %2697, align 8
  %2698 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.454", i64 0, i64 0
  %2699 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2698, 1
  store { i64, i8* } %2699, { i64, i8* }* %tmp.450, align 8
  %2700 = load { i64, i8* }, { i64, i8* }* %tmp.450, align 8
  %2701 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 450
  store { i64, i8* } %2700, { i64, i8* }* %2701, align 8
  %2702 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @iscntrl_l to void ()*
  %2703 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 450
  store void ()* %2702, void ()** %2703, align 8
  %2704 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.455", i64 0, i64 0
  %2705 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2704, 1
  store { i64, i8* } %2705, { i64, i8* }* %tmp.451, align 8
  %2706 = load { i64, i8* }, { i64, i8* }* %tmp.451, align 8
  %2707 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 451
  store { i64, i8* } %2706, { i64, i8* }* %2707, align 8
  %2708 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isdigit_l to void ()*
  %2709 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 451
  store void ()* %2708, void ()** %2709, align 8
  %2710 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.456", i64 0, i64 0
  %2711 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2710, 1
  store { i64, i8* } %2711, { i64, i8* }* %tmp.452, align 8
  %2712 = load { i64, i8* }, { i64, i8* }* %tmp.452, align 8
  %2713 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 452
  store { i64, i8* } %2712, { i64, i8* }* %2713, align 8
  %2714 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @islower_l to void ()*
  %2715 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 452
  store void ()* %2714, void ()** %2715, align 8
  %2716 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.457", i64 0, i64 0
  %2717 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2716, 1
  store { i64, i8* } %2717, { i64, i8* }* %tmp.453, align 8
  %2718 = load { i64, i8* }, { i64, i8* }* %tmp.453, align 8
  %2719 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 453
  store { i64, i8* } %2718, { i64, i8* }* %2719, align 8
  %2720 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isgraph_l to void ()*
  %2721 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 453
  store void ()* %2720, void ()** %2721, align 8
  %2722 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.458", i64 0, i64 0
  %2723 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2722, 1
  store { i64, i8* } %2723, { i64, i8* }* %tmp.454, align 8
  %2724 = load { i64, i8* }, { i64, i8* }* %tmp.454, align 8
  %2725 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 454
  store { i64, i8* } %2724, { i64, i8* }* %2725, align 8
  %2726 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isprint_l to void ()*
  %2727 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 454
  store void ()* %2726, void ()** %2727, align 8
  %2728 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.459", i64 0, i64 0
  %2729 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2728, 1
  store { i64, i8* } %2729, { i64, i8* }* %tmp.455, align 8
  %2730 = load { i64, i8* }, { i64, i8* }* %tmp.455, align 8
  %2731 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 455
  store { i64, i8* } %2730, { i64, i8* }* %2731, align 8
  %2732 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @ispunct_l to void ()*
  %2733 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 455
  store void ()* %2732, void ()** %2733, align 8
  %2734 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.460", i64 0, i64 0
  %2735 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2734, 1
  store { i64, i8* } %2735, { i64, i8* }* %tmp.456, align 8
  %2736 = load { i64, i8* }, { i64, i8* }* %tmp.456, align 8
  %2737 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 456
  store { i64, i8* } %2736, { i64, i8* }* %2737, align 8
  %2738 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isspace_l to void ()*
  %2739 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 456
  store void ()* %2738, void ()** %2739, align 8
  %2740 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.461", i64 0, i64 0
  %2741 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2740, 1
  store { i64, i8* } %2741, { i64, i8* }* %tmp.457, align 8
  %2742 = load { i64, i8* }, { i64, i8* }* %tmp.457, align 8
  %2743 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 457
  store { i64, i8* } %2742, { i64, i8* }* %2743, align 8
  %2744 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isupper_l to void ()*
  %2745 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 457
  store void ()* %2744, void ()** %2745, align 8
  %2746 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.462", i64 0, i64 0
  %2747 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2746, 1
  store { i64, i8* } %2747, { i64, i8* }* %tmp.458, align 8
  %2748 = load { i64, i8* }, { i64, i8* }* %tmp.458, align 8
  %2749 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 458
  store { i64, i8* } %2748, { i64, i8* }* %2749, align 8
  %2750 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isxdigit_l to void ()*
  %2751 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 458
  store void ()* %2750, void ()** %2751, align 8
  %2752 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.463", i64 0, i64 0
  %2753 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2752, 1
  store { i64, i8* } %2753, { i64, i8* }* %tmp.459, align 8
  %2754 = load { i64, i8* }, { i64, i8* }* %tmp.459, align 8
  %2755 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 459
  store { i64, i8* } %2754, { i64, i8* }* %2755, align 8
  %2756 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @isblank_l to void ()*
  %2757 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 459
  store void ()* %2756, void ()** %2757, align 8
  %2758 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.464", i64 0, i64 0
  %2759 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %2758, 1
  store { i64, i8* } %2759, { i64, i8* }* %tmp.460, align 8
  %2760 = load { i64, i8* }, { i64, i8* }* %tmp.460, align 8
  %2761 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 460
  store { i64, i8* } %2760, { i64, i8* }* %2761, align 8
  %2762 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @__tolower_l to void ()*
  %2763 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 460
  store void ()* %2762, void ()** %2763, align 8
  %2764 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.465", i64 0, i64 0
  %2765 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2764, 1
  store { i64, i8* } %2765, { i64, i8* }* %tmp.461, align 8
  %2766 = load { i64, i8* }, { i64, i8* }* %tmp.461, align 8
  %2767 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 461
  store { i64, i8* } %2766, { i64, i8* }* %2767, align 8
  %2768 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @tolower_l to void ()*
  %2769 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 461
  store void ()* %2768, void ()** %2769, align 8
  %2770 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.466", i64 0, i64 0
  %2771 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %2770, 1
  store { i64, i8* } %2771, { i64, i8* }* %tmp.462, align 8
  %2772 = load { i64, i8* }, { i64, i8* }* %tmp.462, align 8
  %2773 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 462
  store { i64, i8* } %2772, { i64, i8* }* %2773, align 8
  %2774 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @__toupper_l to void ()*
  %2775 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 462
  store void ()* %2774, void ()** %2775, align 8
  %2776 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.467", i64 0, i64 0
  %2777 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2776, 1
  store { i64, i8* } %2777, { i64, i8* }* %tmp.463, align 8
  %2778 = load { i64, i8* }, { i64, i8* }* %tmp.463, align 8
  %2779 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 463
  store { i64, i8* } %2778, { i64, i8* }* %2779, align 8
  %2780 = bitcast i32 (i32, %"cstd::s___locale_struct"*)* @toupper_l to void ()*
  %2781 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 463
  store void ()* %2780, void ()** %2781, align 8
  %2782 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.468", i64 0, i64 0
  %2783 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2782, 1
  store { i64, i8* } %2783, { i64, i8* }* %tmp.464, align 8
  %2784 = load { i64, i8* }, { i64, i8* }* %tmp.464, align 8
  %2785 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 464
  store { i64, i8* } %2784, { i64, i8* }* %2785, align 8
  %2786 = bitcast i8* (i32, i8*)* @setlocale to void ()*
  %2787 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 464
  store void ()* %2786, void ()** %2787, align 8
  %2788 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.469", i64 0, i64 0
  %2789 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2788, 1
  store { i64, i8* } %2789, { i64, i8* }* %tmp.465, align 8
  %2790 = load { i64, i8* }, { i64, i8* }* %tmp.465, align 8
  %2791 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 465
  store { i64, i8* } %2790, { i64, i8* }* %2791, align 8
  %2792 = bitcast %"cstd::s_lconv"* ()* @localeconv to void ()*
  %2793 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 465
  store void ()* %2792, void ()** %2793, align 8
  %2794 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.470", i64 0, i64 0
  %2795 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2794, 1
  store { i64, i8* } %2795, { i64, i8* }* %tmp.466, align 8
  %2796 = load { i64, i8* }, { i64, i8* }* %tmp.466, align 8
  %2797 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 466
  store { i64, i8* } %2796, { i64, i8* }* %2797, align 8
  %2798 = bitcast %"cstd::s___locale_struct"* (i32, i8*, %"cstd::s___locale_struct"*)* @newlocale to void ()*
  %2799 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 466
  store void ()* %2798, void ()** %2799, align 8
  %2800 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.471", i64 0, i64 0
  %2801 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2800, 1
  store { i64, i8* } %2801, { i64, i8* }* %tmp.467, align 8
  %2802 = load { i64, i8* }, { i64, i8* }* %tmp.467, align 8
  %2803 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 467
  store { i64, i8* } %2802, { i64, i8* }* %2803, align 8
  %2804 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @duplocale to void ()*
  %2805 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 467
  store void ()* %2804, void ()** %2805, align 8
  %2806 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.472", i64 0, i64 0
  %2807 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2806, 1
  store { i64, i8* } %2807, { i64, i8* }* %tmp.468, align 8
  %2808 = load { i64, i8* }, { i64, i8* }* %tmp.468, align 8
  %2809 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 468
  store { i64, i8* } %2808, { i64, i8* }* %2809, align 8
  %2810 = bitcast void (%"cstd::s___locale_struct"*)* @freelocale to void ()*
  %2811 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 468
  store void ()* %2810, void ()** %2811, align 8
  %2812 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.473", i64 0, i64 0
  %2813 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %2812, 1
  store { i64, i8* } %2813, { i64, i8* }* %tmp.469, align 8
  %2814 = load { i64, i8* }, { i64, i8* }* %tmp.469, align 8
  %2815 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 469
  store { i64, i8* } %2814, { i64, i8* }* %2815, align 8
  %2816 = bitcast %"cstd::s___locale_struct"* (%"cstd::s___locale_struct"*)* @uselocale to void ()*
  %2817 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 469
  store void ()* %2816, void ()** %2817, align 8
  %2818 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.474", i64 0, i64 0
  %2819 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2818, 1
  store { i64, i8* } %2819, { i64, i8* }* %tmp.470, align 8
  %2820 = load { i64, i8* }, { i64, i8* }* %tmp.470, align 8
  %2821 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 470
  store { i64, i8* } %2820, { i64, i8* }* %2821, align 8
  %2822 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @setjmp to void ()*
  %2823 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 470
  store void ()* %2822, void ()** %2823, align 8
  %2824 = getelementptr [12 x i8], [12 x i8]* @"cstd::str.475", i64 0, i64 0
  %2825 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %2824, 1
  store { i64, i8* } %2825, { i64, i8* }* %tmp.471, align 8
  %2826 = load { i64, i8* }, { i64, i8* }* %tmp.471, align 8
  %2827 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 471
  store { i64, i8* } %2826, { i64, i8* }* %2827, align 8
  %2828 = bitcast i32 (%"cstd::s___jmp_buf_tag"*, i32)* @__sigsetjmp to void ()*
  %2829 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 471
  store void ()* %2828, void ()** %2829, align 8
  %2830 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.476", i64 0, i64 0
  %2831 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2830, 1
  store { i64, i8* } %2831, { i64, i8* }* %tmp.472, align 8
  %2832 = load { i64, i8* }, { i64, i8* }* %tmp.472, align 8
  %2833 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 472
  store { i64, i8* } %2832, { i64, i8* }* %2833, align 8
  %2834 = bitcast i32 (%"cstd::s___jmp_buf_tag"*)* @_setjmp to void ()*
  %2835 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 472
  store void ()* %2834, void ()** %2835, align 8
  %2836 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.477", i64 0, i64 0
  %2837 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2836, 1
  store { i64, i8* } %2837, { i64, i8* }* %tmp.473, align 8
  %2838 = load { i64, i8* }, { i64, i8* }* %tmp.473, align 8
  %2839 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 473
  store { i64, i8* } %2838, { i64, i8* }* %2839, align 8
  %2840 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @longjmp to void ()*
  %2841 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 473
  store void ()* %2840, void ()** %2841, align 8
  %2842 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.478", i64 0, i64 0
  %2843 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2842, 1
  store { i64, i8* } %2843, { i64, i8* }* %tmp.474, align 8
  %2844 = load { i64, i8* }, { i64, i8* }* %tmp.474, align 8
  %2845 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 474
  store { i64, i8* } %2844, { i64, i8* }* %2845, align 8
  %2846 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @_longjmp to void ()*
  %2847 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 474
  store void ()* %2846, void ()** %2847, align 8
  %2848 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.479", i64 0, i64 0
  %2849 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2848, 1
  store { i64, i8* } %2849, { i64, i8* }* %tmp.475, align 8
  %2850 = load { i64, i8* }, { i64, i8* }* %tmp.475, align 8
  %2851 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 475
  store { i64, i8* } %2850, { i64, i8* }* %2851, align 8
  %2852 = bitcast void (%"cstd::s___jmp_buf_tag"*, i32)* @siglongjmp to void ()*
  %2853 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 475
  store void ()* %2852, void ()** %2853, align 8
  %2854 = getelementptr [17 x i8], [17 x i8]* @"cstd::str.480", i64 0, i64 0
  %2855 = insertvalue { i64, i8* } { i64 17, i8* undef }, i8* %2854, 1
  store { i64, i8* } %2855, { i64, i8* }* %tmp.476, align 8
  %2856 = load { i64, i8* }, { i64, i8* }* %tmp.476, align 8
  %2857 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 476
  store { i64, i8* } %2856, { i64, i8* }* %2857, align 8
  %2858 = bitcast i32* ()* @__errno_location to void ()*
  %2859 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 476
  store void ()* %2858, void ()** %2859, align 8
  %2860 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.481", i64 0, i64 0
  %2861 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2860, 1
  store { i64, i8* } %2861, { i64, i8* }* %tmp.477, align 8
  %2862 = load { i64, i8* }, { i64, i8* }* %tmp.477, align 8
  %2863 = getelementptr [478 x { i64, i8* }], [478 x { i64, i8* }]* @"cstd::__DEF_NAMES", i32 0, i32 477
  store { i64, i8* } %2862, { i64, i8* }* %2863, align 8
  %2864 = bitcast i32 (i8*, i8*, ...)* @concat to void ()*
  %2865 = getelementptr [478 x void ()*], [478 x void ()*]* @"cstd::__DEFS", i32 0, i32 477
  store void ()* %2864, void ()** %2865, align 8
  %2866 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.482", i64 0, i64 0
  %2867 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %2866, 1
  store { i64, i8* } %2867, { i64, i8* }* %tmp.478, align 8
  %2868 = load { i64, i8* }, { i64, i8* }* %tmp.478, align 8
  %2869 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 0
  store { i64, i8* } %2868, { i64, i8* }* %2869, align 8
  %2870 = bitcast %"cstd::s__IO_FILE"** @stdin to i8*
  %2871 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 0
  store i8* %2870, i8** %2871, align 8
  %2872 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.483", i64 0, i64 0
  %2873 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2872, 1
  store { i64, i8* } %2873, { i64, i8* }* %tmp.479, align 8
  %2874 = load { i64, i8* }, { i64, i8* }* %tmp.479, align 8
  %2875 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 1
  store { i64, i8* } %2874, { i64, i8* }* %2875, align 8
  %2876 = bitcast %"cstd::s__IO_FILE"** @stdout to i8*
  %2877 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 1
  store i8* %2876, i8** %2877, align 8
  %2878 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.484", i64 0, i64 0
  %2879 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2878, 1
  store { i64, i8* } %2879, { i64, i8* }* %tmp.480, align 8
  %2880 = load { i64, i8* }, { i64, i8* }* %tmp.480, align 8
  %2881 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 2
  store { i64, i8* } %2880, { i64, i8* }* %2881, align 8
  %2882 = bitcast %"cstd::s__IO_FILE"** @stderr to i8*
  %2883 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 2
  store i8* %2882, i8** %2883, align 8
  %2884 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.485", i64 0, i64 0
  %2885 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2884, 1
  store { i64, i8* } %2885, { i64, i8* }* %tmp.481, align 8
  %2886 = load { i64, i8* }, { i64, i8* }* %tmp.481, align 8
  %2887 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 3
  store { i64, i8* } %2886, { i64, i8* }* %2887, align 8
  %2888 = bitcast [2 x i8*]* @__tzname to i8*
  %2889 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 3
  store i8* %2888, i8** %2889, align 8
  %2890 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.486", i64 0, i64 0
  %2891 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2890, 1
  store { i64, i8* } %2891, { i64, i8* }* %tmp.482, align 8
  %2892 = load { i64, i8* }, { i64, i8* }* %tmp.482, align 8
  %2893 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 4
  store { i64, i8* } %2892, { i64, i8* }* %2893, align 8
  %2894 = bitcast i32* @__daylight to i8*
  %2895 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 4
  store i8* %2894, i8** %2895, align 8
  %2896 = getelementptr [11 x i8], [11 x i8]* @"cstd::str.487", i64 0, i64 0
  %2897 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %2896, 1
  store { i64, i8* } %2897, { i64, i8* }* %tmp.483, align 8
  %2898 = load { i64, i8* }, { i64, i8* }* %tmp.483, align 8
  %2899 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 5
  store { i64, i8* } %2898, { i64, i8* }* %2899, align 8
  %2900 = bitcast i64* @__timezone to i8*
  %2901 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 5
  store i8* %2900, i8** %2901, align 8
  %2902 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.488", i64 0, i64 0
  %2903 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %2902, 1
  store { i64, i8* } %2903, { i64, i8* }* %tmp.484, align 8
  %2904 = load { i64, i8* }, { i64, i8* }* %tmp.484, align 8
  %2905 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 6
  store { i64, i8* } %2904, { i64, i8* }* %2905, align 8
  %2906 = bitcast [2 x i8*]* @tzname to i8*
  %2907 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 6
  store i8* %2906, i8** %2907, align 8
  %2908 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.489", i64 0, i64 0
  %2909 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2908, 1
  store { i64, i8* } %2909, { i64, i8* }* %tmp.485, align 8
  %2910 = load { i64, i8* }, { i64, i8* }* %tmp.485, align 8
  %2911 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 7
  store { i64, i8* } %2910, { i64, i8* }* %2911, align 8
  %2912 = bitcast i32* @daylight to i8*
  %2913 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 7
  store i8* %2912, i8** %2913, align 8
  %2914 = getelementptr [9 x i8], [9 x i8]* @"cstd::str.490", i64 0, i64 0
  %2915 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %2914, 1
  store { i64, i8* } %2915, { i64, i8* }* %tmp.486, align 8
  %2916 = load { i64, i8* }, { i64, i8* }* %tmp.486, align 8
  %2917 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 8
  store { i64, i8* } %2916, { i64, i8* }* %2917, align 8
  %2918 = bitcast i64* @timezone to i8*
  %2919 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 8
  store i8* %2918, i8** %2919, align 8
  %2920 = getelementptr [8 x i8], [8 x i8]* @"cstd::str.491", i64 0, i64 0
  %2921 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %2920, 1
  store { i64, i8* } %2921, { i64, i8* }* %tmp.487, align 8
  %2922 = load { i64, i8* }, { i64, i8* }* %tmp.487, align 8
  %2923 = getelementptr [10 x { i64, i8* }], [10 x { i64, i8* }]* @"cstd::__VAR_NAMES", i32 0, i32 9
  store { i64, i8* } %2922, { i64, i8* }* %2923, align 8
  %2924 = bitcast i32* @signgam to i8*
  %2925 = getelementptr [10 x i8*], [10 x i8*]* @"cstd::__VARS", i32 0, i32 9
  store i8* %2924, i8** %2925, align 8
  ret void
}

declare double @atof(i8*)

declare i32 @atoi(i8*)

declare i64 @atol(i8*)

declare double @strtod(i8*, i8**)

declare i64 @strtol(i8*, i8**, i32)

declare i64 @strtoul(i8*, i8**, i32)

declare i32 @rand()

declare void @srand(i32)

declare i8* @realloc(i8*, i64)

declare i32 @atexit(void ()*)

declare void @exit(i32)

declare i8* @getenv(i8*)

declare i32 @system(i8*)

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*)

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

declare i32 @abs(i32)

declare i64 @labs(i64)

declare %"cstd::div_t" @div(i32, i32)

declare %"cstd::ldiv_t" @ldiv(i64, i64)

declare i32 @mblen(i8*, i64)

declare i32 @mbtowc(i32*, i8*, i64)

declare i32 @wctomb(i8*, i32)

declare i64 @mbstowcs(i32*, i8*, i64)

declare i64 @wcstombs(i8*, i32*, i64)

declare i32 @remove(i8*)

declare i32 @rename(i8*, i8*)

declare i32 @renameat(i32, i8*, i32, i8*)

declare %"cstd::s__IO_FILE"* @tmpfile()

declare i32 @fclose(%"cstd::s__IO_FILE"*)

declare i32 @fflush(%"cstd::s__IO_FILE"*)

declare i32 @fflush_unlocked(%"cstd::s__IO_FILE"*)

declare %"cstd::s__IO_FILE"* @fopen(i8*, i8*)

declare %"cstd::s__IO_FILE"* @freopen(i8*, i8*, %"cstd::s__IO_FILE"*)

declare %"cstd::s__IO_FILE"* @fdopen(i32, i8*)

declare %"cstd::s__IO_FILE"* @fmemopen(i8*, i64, i8*)

declare %"cstd::s__IO_FILE"* @open_memstream(i8**, i64*)

declare void @setbuf(%"cstd::s__IO_FILE"*, i8*)

declare i32 @setvbuf(%"cstd::s__IO_FILE"*, i8*, i32, i64)

declare void @setbuffer(%"cstd::s__IO_FILE"*, i8*, i64)

declare void @setlinebuf(%"cstd::s__IO_FILE"*)

declare i32 @printf(i8*, ...)

declare i32 @sprintf(i8*, i8*, ...)

declare i32 @vfprintf(%"cstd::s__IO_FILE"*, i8*, %struct.__va_list_tag*)

declare i32 @vprintf(i8*, %struct.__va_list_tag*)

declare i32 @snprintf(i8*, i64, i8*, ...)

declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*)

declare i32 @vdprintf(i32, i8*, %struct.__va_list_tag*)

declare i32 @dprintf(i32, i8*, ...)

declare i32 @fscanf(%"cstd::s__IO_FILE"*, i8*, ...)

declare i32 @scanf(i8*, ...)

declare i32 @sscanf(i8*, i8*, ...)

declare i32 @vfscanf(%"cstd::s__IO_FILE"*, i8*, %struct.__va_list_tag*)

declare i32 @vscanf(i8*, %struct.__va_list_tag*)

declare i32 @vsscanf(i8*, i8*, %struct.__va_list_tag*)

declare i32 @fgetc(%"cstd::s__IO_FILE"*)

declare i32 @getc(%"cstd::s__IO_FILE"*)

declare i32 @getchar()

declare i32 @getc_unlocked(%"cstd::s__IO_FILE"*)

declare i32 @getchar_unlocked()

declare i32 @fgetc_unlocked(%"cstd::s__IO_FILE"*)

declare i32 @fputc(i32, %"cstd::s__IO_FILE"*)

declare i32 @putc(i32, %"cstd::s__IO_FILE"*)

declare i32 @putchar(i32)

declare i32 @fputc_unlocked(i32, %"cstd::s__IO_FILE"*)

declare i32 @putc_unlocked(i32, %"cstd::s__IO_FILE"*)

declare i32 @putchar_unlocked(i32)

declare i32 @getw(%"cstd::s__IO_FILE"*)

declare i32 @putw(i32, %"cstd::s__IO_FILE"*)

declare i8* @fgets(i8*, i32, %"cstd::s__IO_FILE"*)

declare i64 @__getdelim(i8**, i64*, i32, %"cstd::s__IO_FILE"*)

declare i64 @getdelim(i8**, i64*, i32, %"cstd::s__IO_FILE"*)

declare i64 @getline(i8**, i64*, %"cstd::s__IO_FILE"*)

declare i32 @fputs(i8*, %"cstd::s__IO_FILE"*)

declare i32 @puts(i8*)

declare i32 @ungetc(i32, %"cstd::s__IO_FILE"*)

declare i64 @fread(i8*, i64, i64, %"cstd::s__IO_FILE"*)

declare i64 @fwrite(i8*, i64, i64, %"cstd::s__IO_FILE"*)

declare i64 @fread_unlocked(i8*, i64, i64, %"cstd::s__IO_FILE"*)

declare i64 @fwrite_unlocked(i8*, i64, i64, %"cstd::s__IO_FILE"*)

declare i32 @fseek(%"cstd::s__IO_FILE"*, i64, i32)

declare i64 @ftell(%"cstd::s__IO_FILE"*)

declare void @rewind(%"cstd::s__IO_FILE"*)

declare i32 @fseeko(%"cstd::s__IO_FILE"*, i64, i32)

declare i64 @ftello(%"cstd::s__IO_FILE"*)

declare i32 @fgetpos(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)

declare i32 @fsetpos(%"cstd::s__IO_FILE"*, %"cstd::__fpos_t"*)

declare void @clearerr(%"cstd::s__IO_FILE"*)

declare i32 @feof(%"cstd::s__IO_FILE"*)

declare i32 @ferror(%"cstd::s__IO_FILE"*)

declare void @clearerr_unlocked(%"cstd::s__IO_FILE"*)

declare i32 @feof_unlocked(%"cstd::s__IO_FILE"*)

declare i32 @ferror_unlocked(%"cstd::s__IO_FILE"*)

declare void @perror(i8*)

declare i32 @fileno(%"cstd::s__IO_FILE"*)

declare i32 @fileno_unlocked(%"cstd::s__IO_FILE"*)

declare %"cstd::s__IO_FILE"* @popen(i8*, i8*)

declare i32 @pclose(%"cstd::s__IO_FILE"*)

declare i8* @ctermid(i8*)

declare void @flockfile(%"cstd::s__IO_FILE"*)

declare i32 @ftrylockfile(%"cstd::s__IO_FILE"*)

declare void @funlockfile(%"cstd::s__IO_FILE"*)

declare i32 @__uflow(%"cstd::s__IO_FILE"*)

declare i32 @__overflow(%"cstd::s__IO_FILE"*, i32)

declare i8* @memcpy(i8*, i8*, i64)

declare i8* @memmove(i8*, i8*, i64)

declare i8* @memccpy(i8*, i8*, i32, i64)

declare i8* @memset(i8*, i32, i64)

declare i32 @memcmp(i8*, i8*, i64)

declare i8* @memchr(i8*, i32, i64)

declare i8* @strcpy(i8*, i8*)

declare i8* @strncpy(i8*, i8*, i64)

declare i8* @strcat(i8*, i8*)

declare i8* @strncat(i8*, i8*, i64)

declare i32 @strncmp(i8*, i8*, i64)

declare i32 @strcoll(i8*, i8*)

declare i64 @strxfrm(i8*, i8*, i64)

declare i32 @strcoll_l(i8*, i8*, %"cstd::s___locale_struct"*)

declare i64 @strxfrm_l(i8*, i8*, i64, %"cstd::s___locale_struct"*)

declare i8* @strdup(i8*)

declare i8* @strndup(i8*, i64)

declare i8* @strchr(i8*, i32)

declare i8* @strrchr(i8*, i32)

declare i64 @strcspn(i8*, i8*)

declare i64 @strspn(i8*, i8*)

declare i8* @strpbrk(i8*, i8*)

declare i8* @strstr(i8*, i8*)

declare i8* @strtok(i8*, i8*)

declare i8* @__strtok_r(i8*, i8*, i8**)

declare i8* @strtok_r(i8*, i8*, i8**)

declare i64 @strnlen(i8*, i64)

declare i8* @strerror(i32)

declare i32 @strerror_r(i32, i8*, i64)

declare i8* @strerror_l(i32, %"cstd::s___locale_struct"*)

declare i32 @bcmp(i8*, i8*, i64)

declare void @bcopy(i8*, i8*, i64)

declare void @bzero(i8*, i64)

declare i8* @index(i8*, i32)

declare i8* @rindex(i8*, i32)

declare i32 @ffs(i32)

declare i32 @ffsl(i64)

declare i32 @ffsll(i64)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strncasecmp(i8*, i8*, i64)

declare i32 @strcasecmp_l(i8*, i8*, %"cstd::s___locale_struct"*)

declare i32 @strncasecmp_l(i8*, i8*, i64, %"cstd::s___locale_struct"*)

declare void @explicit_bzero(i8*, i64)

declare i8* @strsep(i8**, i8*)

declare i8* @strsignal(i32)

declare i8* @__stpcpy(i8*, i8*)

declare i8* @stpcpy(i8*, i8*)

declare i8* @__stpncpy(i8*, i8*, i64)

declare i8* @stpncpy(i8*, i8*, i64)

declare i64 @clock()

declare i64 @time(i64*)

declare double @difftime(i64, i64)

declare i64 @mktime(%"cstd::s_tm"*)

declare i64 @strftime(i8*, i64, i8*, %"cstd::s_tm"*)

declare i64 @strftime_l(i8*, i64, i8*, %"cstd::s_tm"*, %"cstd::s___locale_struct"*)

declare %"cstd::s_tm"* @gmtime(i64*)

declare %"cstd::s_tm"* @localtime(i64*)

declare %"cstd::s_tm"* @gmtime_r(i64*, %"cstd::s_tm"*)

declare %"cstd::s_tm"* @localtime_r(i64*, %"cstd::s_tm"*)

declare i8* @asctime(%"cstd::s_tm"*)

declare i8* @ctime(i64*)

declare i8* @asctime_r(%"cstd::s_tm"*, i8*)

declare i8* @ctime_r(i64*, i8*)

declare void @tzset()

declare i64 @timegm(%"cstd::s_tm"*)

declare i64 @timelocal(%"cstd::s_tm"*)

declare i32 @dysize(i32)

declare i32 @nanosleep(%"cstd::ldiv_t"*, %"cstd::ldiv_t"*)

declare i32 @clock_getres(i32, %"cstd::ldiv_t"*)

declare i32 @clock_gettime(i32, %"cstd::ldiv_t"*)

declare i32 @clock_settime(i32, %"cstd::ldiv_t"*)

declare i32 @clock_nanosleep(i32, i32, %"cstd::ldiv_t"*, %"cstd::ldiv_t"*)

declare i32 @clock_getcpuclockid(i32, i32*)

declare i32 @timer_create(i32, %"cstd::sigevent_t"*, i8**)

declare i32 @timer_delete(i8*)

declare i32 @timer_settime(i8*, i32, %"cstd::s_itimerspec"*, %"cstd::s_itimerspec"*)

declare i32 @timer_gettime(i8*, %"cstd::s_itimerspec"*)

declare i32 @timer_getoverrun(i8*)

declare i32 @timespec_get(%"cstd::ldiv_t"*, i32)

declare i32 @__fpclassify(double)

declare i32 @__signbit(double)

declare i32 @__isinf(double)

declare i32 @__finite(double)

declare i32 @__isnan(double)

declare i32 @__iseqsig(double, double)

declare i32 @__issignaling(double)

declare double @acos(double)

declare double @asin(double)

declare double @atan(double)

declare double @atan2(double, double)

declare double @cos(double)

declare double @sin(double)

declare double @tan(double)

declare double @cosh(double)

declare double @sinh(double)

declare double @tanh(double)

declare double @acosh(double)

declare double @asinh(double)

declare double @atanh(double)

declare double @exp(double)

declare double @frexp(double, i32*)

declare double @ldexp(double, i32)

declare double @log(double)

declare double @log10(double)

declare double @modf(double, double*)

declare double @expm1(double)

declare double @log1p(double)

declare double @logb(double)

declare double @exp2(double)

declare double @log2(double)

declare double @pow(double, double)

declare double @sqrt(double)

declare double @hypot(double, double)

declare double @cbrt(double)

declare double @ceil(double)

declare double @fabs(double)

declare double @floor(double)

declare double @fmod(double, double)

declare i32 @isinf(double)

declare i32 @finite(double)

declare double @drem(double, double)

declare double @significand(double)

declare double @copysign(double, double)

declare double @nan(i8*)

declare i32 @isnan(double)

declare double @j0(double)

declare double @j1(double)

declare double @jn(i32, double)

declare double @y0(double)

declare double @y1(double)

declare double @yn(i32, double)

declare double @erf(double)

declare double @erfc(double)

declare double @lgamma(double)

declare double @tgamma(double)

declare double @gamma(double)

declare double @lgamma_r(double, i32*)

declare double @rint(double)

declare double @nextafter(double, double)

declare double @nexttoward(double, x86_fp80)

declare double @remainder(double, double)

declare double @scalbn(double, i32)

declare i32 @ilogb(double)

declare double @scalbln(double, i64)

declare double @nearbyint(double)

declare double @round(double)

declare double @trunc(double)

declare double @remquo(double, double, i32*)

declare i64 @lrint(double)

declare i64 @llrint(double)

declare i64 @lround(double)

declare i64 @llround(double)

declare double @fdim(double, double)

declare double @fmax(double, double)

declare double @fmin(double, double)

declare double @fma(double, double, double)

declare double @scalb(double, double)

declare i32 @__fpclassifyf(float)

declare i32 @__signbitf(float)

declare i32 @__isinff(float)

declare i32 @__finitef(float)

declare i32 @__isnanf(float)

declare i32 @__iseqsigf(float, float)

declare i32 @__issignalingf(float)

declare float @acosf(float)

declare float @asinf(float)

declare float @atanf(float)

declare float @atan2f(float, float)

declare float @cosf(float)

declare float @sinf(float)

declare float @tanf(float)

declare float @coshf(float)

declare float @sinhf(float)

declare float @tanhf(float)

declare float @acoshf(float)

declare float @asinhf(float)

declare float @atanhf(float)

declare float @expf(float)

declare float @frexpf(float, i32*)

declare float @ldexpf(float, i32)

declare float @logf(float)

declare float @log10f(float)

declare float @modff(float, float*)

declare float @expm1f(float)

declare float @log1pf(float)

declare float @logbf(float)

declare float @exp2f(float)

declare float @log2f(float)

declare float @powf(float, float)

declare float @sqrtf(float)

declare float @hypotf(float, float)

declare float @cbrtf(float)

declare float @ceilf(float)

declare float @fabsf(float)

declare float @floorf(float)

declare float @fmodf(float, float)

declare i32 @isinff(float)

declare i32 @finitef(float)

declare float @dremf(float, float)

declare float @significandf(float)

declare float @copysignf(float, float)

declare float @nanf(i8*)

declare i32 @isnanf(float)

declare float @j0f(float)

declare float @j1f(float)

declare float @jnf(i32, float)

declare float @y0f(float)

declare float @y1f(float)

declare float @ynf(i32, float)

declare float @erff(float)

declare float @erfcf(float)

declare float @lgammaf(float)

declare float @tgammaf(float)

declare float @gammaf(float)

declare float @lgammaf_r(float, i32*)

declare float @rintf(float)

declare float @nextafterf(float, float)

declare float @nexttowardf(float, x86_fp80)

declare float @remainderf(float, float)

declare float @scalbnf(float, i32)

declare i32 @ilogbf(float)

declare float @scalblnf(float, i64)

declare float @nearbyintf(float)

declare float @roundf(float)

declare float @truncf(float)

declare float @remquof(float, float, i32*)

declare i64 @lrintf(float)

declare i64 @llrintf(float)

declare i64 @lroundf(float)

declare i64 @llroundf(float)

declare float @fdimf(float, float)

declare float @fmaxf(float, float)

declare float @fminf(float, float)

declare float @fmaf(float, float, float)

declare float @scalbf(float, float)

declare i32 @__fpclassifyl(x86_fp80)

declare i32 @__signbitl(x86_fp80)

declare i32 @__isinfl(x86_fp80)

declare i32 @__finitel(x86_fp80)

declare i32 @__isnanl(x86_fp80)

declare i32 @__iseqsigl(x86_fp80, x86_fp80)

declare i32 @__issignalingl(x86_fp80)

declare x86_fp80 @acosl(x86_fp80)

declare x86_fp80 @asinl(x86_fp80)

declare x86_fp80 @atanl(x86_fp80)

declare x86_fp80 @atan2l(x86_fp80, x86_fp80)

declare x86_fp80 @cosl(x86_fp80)

declare x86_fp80 @sinl(x86_fp80)

declare x86_fp80 @tanl(x86_fp80)

declare x86_fp80 @coshl(x86_fp80)

declare x86_fp80 @sinhl(x86_fp80)

declare x86_fp80 @tanhl(x86_fp80)

declare x86_fp80 @acoshl(x86_fp80)

declare x86_fp80 @asinhl(x86_fp80)

declare x86_fp80 @atanhl(x86_fp80)

declare x86_fp80 @expl(x86_fp80)

declare x86_fp80 @frexpl(x86_fp80, i32*)

declare x86_fp80 @ldexpl(x86_fp80, i32)

declare x86_fp80 @logl(x86_fp80)

declare x86_fp80 @log10l(x86_fp80)

declare x86_fp80 @modfl(x86_fp80, x86_fp80*)

declare x86_fp80 @expm1l(x86_fp80)

declare x86_fp80 @log1pl(x86_fp80)

declare x86_fp80 @logbl(x86_fp80)

declare x86_fp80 @exp2l(x86_fp80)

declare x86_fp80 @log2l(x86_fp80)

declare x86_fp80 @powl(x86_fp80, x86_fp80)

declare x86_fp80 @sqrtl(x86_fp80)

declare x86_fp80 @hypotl(x86_fp80, x86_fp80)

declare x86_fp80 @cbrtl(x86_fp80)

declare x86_fp80 @ceill(x86_fp80)

declare x86_fp80 @fabsl(x86_fp80)

declare x86_fp80 @floorl(x86_fp80)

declare x86_fp80 @fmodl(x86_fp80, x86_fp80)

declare i32 @isinfl(x86_fp80)

declare i32 @finitel(x86_fp80)

declare x86_fp80 @dreml(x86_fp80, x86_fp80)

declare x86_fp80 @significandl(x86_fp80)

declare x86_fp80 @copysignl(x86_fp80, x86_fp80)

declare x86_fp80 @nanl(i8*)

declare i32 @isnanl(x86_fp80)

declare x86_fp80 @j0l(x86_fp80)

declare x86_fp80 @j1l(x86_fp80)

declare x86_fp80 @jnl(i32, x86_fp80)

declare x86_fp80 @y0l(x86_fp80)

declare x86_fp80 @y1l(x86_fp80)

declare x86_fp80 @ynl(i32, x86_fp80)

declare x86_fp80 @erfl(x86_fp80)

declare x86_fp80 @erfcl(x86_fp80)

declare x86_fp80 @lgammal(x86_fp80)

declare x86_fp80 @tgammal(x86_fp80)

declare x86_fp80 @gammal(x86_fp80)

declare x86_fp80 @lgammal_r(x86_fp80, i32*)

declare x86_fp80 @rintl(x86_fp80)

declare x86_fp80 @nextafterl(x86_fp80, x86_fp80)

declare x86_fp80 @nexttowardl(x86_fp80, x86_fp80)

declare x86_fp80 @remainderl(x86_fp80, x86_fp80)

declare x86_fp80 @scalbnl(x86_fp80, i32)

declare i32 @ilogbl(x86_fp80)

declare x86_fp80 @scalblnl(x86_fp80, i64)

declare x86_fp80 @nearbyintl(x86_fp80)

declare x86_fp80 @roundl(x86_fp80)

declare x86_fp80 @truncl(x86_fp80)

declare x86_fp80 @remquol(x86_fp80, x86_fp80, i32*)

declare i64 @lrintl(x86_fp80)

declare i64 @llrintl(x86_fp80)

declare i64 @lroundl(x86_fp80)

declare i64 @llroundl(x86_fp80)

declare x86_fp80 @fdiml(x86_fp80, x86_fp80)

declare x86_fp80 @fmaxl(x86_fp80, x86_fp80)

declare x86_fp80 @fminl(x86_fp80, x86_fp80)

declare x86_fp80 @fmal(x86_fp80, x86_fp80, x86_fp80)

declare x86_fp80 @scalbl(x86_fp80, x86_fp80)

declare void @__assert_fail(i8*, i8*, i32, i8*)

declare void @__assert_perror_fail(i32, i8*, i32, i8*)

declare void @__assert(i8*, i8*, i32)

declare i16** @__ctype_b_loc()

declare i32** @__ctype_tolower_loc()

declare i32** @__ctype_toupper_loc()

declare i32 @isalnum(i32)

declare i32 @isalpha(i32)

declare i32 @iscntrl(i32)

declare i32 @isdigit(i32)

declare i32 @islower(i32)

declare i32 @isgraph(i32)

declare i32 @isprint(i32)

declare i32 @ispunct(i32)

declare i32 @isspace(i32)

declare i32 @isupper(i32)

declare i32 @isxdigit(i32)

declare i32 @tolower(i32)

declare i32 @toupper(i32)

declare i32 @isblank(i32)

declare i32 @isascii(i32)

declare i32 @toascii(i32)

declare i32 @_toupper(i32)

declare i32 @_tolower(i32)

declare i32 @isalnum_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isalpha_l(i32, %"cstd::s___locale_struct"*)

declare i32 @iscntrl_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isdigit_l(i32, %"cstd::s___locale_struct"*)

declare i32 @islower_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isgraph_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isprint_l(i32, %"cstd::s___locale_struct"*)

declare i32 @ispunct_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isspace_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isupper_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isxdigit_l(i32, %"cstd::s___locale_struct"*)

declare i32 @isblank_l(i32, %"cstd::s___locale_struct"*)

declare i32 @__tolower_l(i32, %"cstd::s___locale_struct"*)

declare i32 @tolower_l(i32, %"cstd::s___locale_struct"*)

declare i32 @__toupper_l(i32, %"cstd::s___locale_struct"*)

declare i32 @toupper_l(i32, %"cstd::s___locale_struct"*)

declare i8* @setlocale(i32, i8*)

declare %"cstd::s_lconv"* @localeconv()

declare %"cstd::s___locale_struct"* @newlocale(i32, i8*, %"cstd::s___locale_struct"*)

declare %"cstd::s___locale_struct"* @duplocale(%"cstd::s___locale_struct"*)

declare void @freelocale(%"cstd::s___locale_struct"*)

declare %"cstd::s___locale_struct"* @uselocale(%"cstd::s___locale_struct"*)

declare i32 @setjmp(%"cstd::s___jmp_buf_tag"*)

declare i32 @__sigsetjmp(%"cstd::s___jmp_buf_tag"*, i32)

declare i32 @_setjmp(%"cstd::s___jmp_buf_tag"*)

declare void @longjmp(%"cstd::s___jmp_buf_tag"*, i32)

declare void @_longjmp(%"cstd::s___jmp_buf_tag"*, i32)

declare void @siglongjmp(%"cstd::s___jmp_buf_tag"*, i32)

declare i32* @__errno_location()

define { i64, i8* } @"to_string::(cstd::idtype_t)"(i32 %enum.value) {
start:
  switch i32 %enum.value, label %9 [
    i32 1, label %0
    i32 2, label %3
    i32 0, label %6
  ]

0:                                                ; preds = %start
  %1 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.0", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [7 x i8], [7 x i8]* @"cstd::str.1", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [6 x i8], [6 x i8]* @"cstd::str.2", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [10 x i8], [10 x i8]* @"cstd::str.3", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11
}

define i32 @"std::print::([&])"({ i64, { i64*, i8*, %"runtime::Type"* }* } %args.value) {
start:
  %args.0 = alloca { i64, { i64*, i8*, %"runtime::Type"* }* }, align 8
  %tmp.1 = alloca i32, align 4
  store { i64, { i64*, i8*, %"runtime::Type"* }* } %args.value, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, align 8
  %0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @stdout, align 8
  %1 = load { i64, { i64*, i8*, %"runtime::Type"* }* }, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, align 8
  %2 = call i32 @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %0, { i64, { i64*, i8*, %"runtime::Type"* }* } %1)
  store i32 %2, i32* %tmp.1, align 4
  %3 = load i32, i32* %tmp.1, align 4
  ret i32 %3

4:                                                ; No predecessors!
  ret i32 undef
}

define i32 @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %file.value, { i64, { i64*, i8*, %"runtime::Type"* }* } %args.value) {
start:
  %file.0 = alloca %"cstd::s__IO_FILE"*, align 8
  %args.0 = alloca { i64, { i64*, i8*, %"runtime::Type"* }* }, align 8
  %sum.0 = alloca i32, align 4
  %i.1 = alloca i32, align 4
  %arg.1 = alloca { i64*, i8*, %"runtime::Type"* }, align 8
  %tmp.70 = alloca %"runtime::Type"*, align 8
  %tmp.71 = alloca i32, align 4
  store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0, align 8
  store { i64, { i64*, i8*, %"runtime::Type"* }* } %args.value, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, align 8
  store i32 0, i32* %sum.0, align 4
  %0 = getelementptr { i64, { i64*, i8*, %"runtime::Type"* }* }, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = trunc i64 %1 to i32
  store i32 0, i32* %i.1, align 4
  br label %3

3:                                                ; preds = %67, %start
  %4 = load i32, i32* %i.1, align 4
  %5 = icmp slt i32 %4, %2
  br i1 %5, label %6, label %69

6:                                                ; preds = %3
  %7 = call i8* @malloc(i64 8)
  %8 = bitcast i8* %7 to i64*
  store i64 1, i64* %8, align 8
  %9 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 0
  store i64* %8, i64** %9, align 8
  %10 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 1
  store i8* null, i8** %10, align 8
  %11 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 2
  store %"runtime::Type"* null, %"runtime::Type"** %11, align 8
  %12 = load i32, i32* %i.1, align 4
  %13 = getelementptr { i64, { i64*, i8*, %"runtime::Type"* }* }, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, i32 0, i32 1
  %14 = load { i64*, i8*, %"runtime::Type"* }*, { i64*, i8*, %"runtime::Type"* }** %13, align 8
  %15 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %14, i32 %12
  %16 = load { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %15, align 8
  %17 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 0
  %18 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 1
  %19 = load i64*, i64** %17, align 8
  %20 = ptrtoint i64* %19 to i64
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load i64, i64* %19, align 8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %19, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = bitcast i64* %19 to i8*
  call void @free(i8* %27)
  %28 = load i8*, i8** %18, align 8
  %29 = bitcast i8* %28 to i8*
  call void @free(i8* %29)
  br label %30

30:                                               ; preds = %26, %22, %6
  store { i64*, i8*, %"runtime::Type"* } %16, { i64*, i8*, %"runtime::Type"* }* %arg.1, align 8
  %31 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* %sum.0, align 4
  %36 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %37 = load { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, align 8
  %38 = extractvalue { i64*, i8*, %"runtime::Type"* } %37, 0
  %39 = extractvalue { i64*, i8*, %"runtime::Type"* } %37, 1
  %40 = extractvalue { i64*, i8*, %"runtime::Type"* } %37, 2
  %41 = bitcast i8* %39 to i8*
  %42 = insertvalue %"runtime::Ref" undef, i64* %38, 0
  %43 = insertvalue %"runtime::Ref" %42, i8* %41, 1
  %44 = insertvalue %"runtime::Ref" %43, %"runtime::Type"* %40, 2
  %45 = call %"runtime::Type"* @"runtime::ref_type::(runtime::Ref)"(%"runtime::Ref" %44)
  store %"runtime::Type"* %45, %"runtime::Type"** %tmp.70, align 8
  %46 = load %"runtime::Type"*, %"runtime::Type"** %tmp.70, align 8
  %47 = load { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, align 8
  %48 = extractvalue { i64*, i8*, %"runtime::Type"* } %47, 1
  %49 = bitcast i8* %48 to i8*
  %50 = call i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %36, %"runtime::Type"* %46, i8* %49)
  store i32 %50, i32* %tmp.71, align 4
  %51 = load i32, i32* %tmp.71, align 4
  %52 = add i32 %35, %51
  store i32 %52, i32* %sum.0, align 4
  %53 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 0
  %54 = getelementptr { i64*, i8*, %"runtime::Type"* }, { i64*, i8*, %"runtime::Type"* }* %arg.1, i32 0, i32 1
  %55 = load i64*, i64** %53, align 8
  %56 = ptrtoint i64* %55 to i64
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %30
  %59 = load i64, i64* %55, align 8
  %60 = sub i64 %59, 1
  store i64 %60, i64* %55, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = bitcast i64* %55 to i8*
  call void @free(i8* %63)
  %64 = load i8*, i8** %54, align 8
  %65 = bitcast i8* %64 to i8*
  call void @free(i8* %65)
  br label %66

66:                                               ; preds = %62, %58, %30
  br label %67

67:                                               ; preds = %66
  %68 = add i32 %4, 1
  store i32 %68, i32* %i.1, align 4
  br label %3

69:                                               ; preds = %3
  %70 = load i32, i32* %sum.0, align 4
  ret i32 %70

71:                                               ; No predecessors!
  ret i32 undef
}

define i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %file.value, %"runtime::Type"* %tpe.value, i8* %value.value) {
start:
  %file.0 = alloca %"cstd::s__IO_FILE"*, align 8
  %tpe.0 = alloca %"runtime::Type"*, align 8
  %value.0 = alloca i8*, align 8
  %tmp.3 = alloca { i64, i8* }, align 8
  %tmp.4 = alloca i32, align 4
  %tmp.5 = alloca { i64, i8* }, align 8
  %tmp.6 = alloca i32, align 4
  %tmp.7 = alloca i1, align 1
  %tmp.8 = alloca { i64, i8* }, align 8
  %tmp.9 = alloca i32, align 4
  %tmp.10 = alloca { i64, i8* }, align 8
  %tmp.11 = alloca i32, align 4
  %tmp.12 = alloca { i64, i8* }, align 8
  %tmp.13 = alloca i32, align 4
  %tmp.14 = alloca { i64, i8* }, align 8
  %tmp.15 = alloca i32, align 4
  %tmp.16 = alloca { i64, i8* }, align 8
  %tmp.17 = alloca i32, align 4
  %tmp.18 = alloca { i64, i8* }, align 8
  %tmp.19 = alloca i32, align 4
  %tmp.20 = alloca { i64, i8* }, align 8
  %tmp.21 = alloca i32, align 4
  %tmp.22 = alloca { i64, i8* }, align 8
  %tmp.23 = alloca i32, align 4
  %tmp.24 = alloca { i64, i8* }, align 8
  %tmp.25 = alloca i32, align 4
  %tmp.26 = alloca { i64, i8* }, align 8
  %tmp.27 = alloca i32, align 4
  %tmp.28 = alloca { i64, i8* }, align 8
  %tmp.29 = alloca i32, align 4
  %tmp.30 = alloca { i64, i8* }, align 8
  %tmp.31 = alloca i32, align 4
  %tmp.32 = alloca { i64, i8* }, align 8
  %tmp.33 = alloca i32, align 4
  %tmp.34 = alloca { i64, i8* }, align 8
  %tmp.35 = alloca i32, align 4
  %tmp.36 = alloca { i64, i8* }, align 8
  %tmp.37 = alloca i32, align 4
  %tmp.38 = alloca { i64, i8* }, align 8
  %tmp.39 = alloca i32, align 4
  %tmp.40 = alloca { i64, i8* }, align 8
  %tmp.41 = alloca i32, align 4
  %v.21 = alloca %"runtime::Ref", align 8
  %tmp.42 = alloca i32, align 4
  %arr.22 = alloca { i64, i8** }, align 8
  %size.22 = alloca i64, align 8
  %elements.22 = alloca i8**, align 8
  %sum.22 = alloca i32, align 4
  %tmp.43 = alloca { i64, i8* }, align 8
  %tmp.44 = alloca i32, align 4
  %i.23 = alloca i32, align 4
  %tmp.45 = alloca i32, align 4
  %tmp.46 = alloca { i64, i8* }, align 8
  %tmp.47 = alloca i32, align 4
  %tmp.48 = alloca { i64, i8* }, align 8
  %tmp.49 = alloca i32, align 4
  %size.25 = alloca i64, align 8
  %sum.25 = alloca i32, align 4
  %tmp.50 = alloca { i64, i8* }, align 8
  %tmp.51 = alloca i32, align 4
  %i.26 = alloca i32, align 4
  %tmp.52 = alloca i32, align 4
  %tmp.53 = alloca { i64, i8* }, align 8
  %tmp.54 = alloca i32, align 4
  %tmp.55 = alloca { i64, i8* }, align 8
  %tmp.56 = alloca i32, align 4
  %tmp.57 = alloca i1, align 1
  %fields.28 = alloca { i64, %"runtime::Field"* }, align 8
  %sum.28 = alloca i32, align 4
  %tmp.58 = alloca { i64, i8* }, align 8
  %tmp.59 = alloca i32, align 4
  %i.29 = alloca i32, align 4
  %field.29 = alloca %"runtime::Field", align 8
  %tmp.60 = alloca { i64, i8* }, align 8
  %tmp.61 = alloca i32, align 4
  %tmp.62 = alloca i32, align 4
  %tmp.63 = alloca { i64, i8* }, align 8
  %tmp.64 = alloca i32, align 4
  %tmp.65 = alloca { i64, i8* }, align 8
  %tmp.66 = alloca i32, align 4
  %v.31 = alloca i64, align 8
  %i.32 = alloca i32, align 4
  %str.31 = alloca { i64, i8* }, align 8
  %tmp.67 = alloca { i64, i8* }, align 8
  %i.33 = alloca i32, align 4
  %ev.33 = alloca %"runtime::EnumValue", align 8
  %tmp.68 = alloca { i64, i8* }, align 8
  %tmp.69 = alloca i32, align 4
  store %"cstd::s__IO_FILE"* %file.value, %"cstd::s__IO_FILE"** %file.0, align 8
  store %"runtime::Type"* %tpe.value, %"runtime::Type"** %tpe.0, align 8
  store i8* %value.value, i8** %value.0, align 8
  %0 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %1 = ptrtoint %"runtime::Type"* %0 to i64
  %2 = icmp ne i64 %1, 0
  %3 = xor i1 %2, true
  br i1 %3, label %4, label %16

4:                                                ; preds = %start
  %5 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %6 = getelementptr [3 x i8], [3 x i8]* @"std::str.0", i64 0, i64 0
  %7 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %6, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp.3, align 8
  %8 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.3, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %value.0, align 8
  %11 = bitcast i8* %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %5, i8* %9, i8* %12)
  store i32 %13, i32* %tmp.4, align 4
  %14 = load i32, i32* %tmp.4, align 4
  ret i32 %14

15:                                               ; No predecessors!
  br label %650

16:                                               ; preds = %start
  %17 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %18 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %17, %"runtime::Type"* @"type::[int8]")
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %21 = getelementptr [3 x i8], [3 x i8]* @"std::str.1", i64 0, i64 0
  %22 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %21, 1
  store { i64, i8* } %22, { i64, i8* }* %tmp.5, align 8
  %23 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.5, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %value.0, align 8
  %26 = bitcast i8* %25 to { i64, i8* }*
  %27 = getelementptr { i64, i8* }, { i64, i8* }* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %20, i8* %24, i8* %28)
  store i32 %29, i32* %tmp.6, align 4
  %30 = load i32, i32* %tmp.6, align 4
  ret i32 %30

31:                                               ; No predecessors!
  br label %650

32:                                               ; preds = %16
  %33 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %34 = getelementptr %"runtime::Type", %"runtime::Type"* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i1 false, i1* %tmp.7, align 1
  br label %43

38:                                               ; preds = %32
  %39 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %40 = getelementptr %"runtime::Type", %"runtime::Type"* %39, i32 0, i32 4
  %41 = load %"runtime::Type"*, %"runtime::Type"** %40, align 8
  %42 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %41, %"runtime::Type"* @"type::int8")
  store i1 %42, i1* %tmp.7, align 1
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i1, i1* %tmp.7, align 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %47 = getelementptr [3 x i8], [3 x i8]* @"std::str.2", i64 0, i64 0
  %48 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %47, 1
  store { i64, i8* } %48, { i64, i8* }* %tmp.8, align 8
  %49 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.8, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %value.0, align 8
  %52 = bitcast i8* %51 to i8*
  %53 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %46, i8* %50, i8* %52)
  store i32 %53, i32* %tmp.9, align 4
  %54 = load i32, i32* %tmp.9, align 4
  ret i32 %54

55:                                               ; No predecessors!
  br label %650

56:                                               ; preds = %43
  %57 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %58 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %57, %"runtime::Type"* @"type::*int8")
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %61 = getelementptr [3 x i8], [3 x i8]* @"std::str.3", i64 0, i64 0
  %62 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %61, 1
  store { i64, i8* } %62, { i64, i8* }* %tmp.10, align 8
  %63 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.10, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %value.0, align 8
  %66 = bitcast i8* %65 to i8**
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %60, i8* %64, i8* %67)
  store i32 %68, i32* %tmp.11, align 4
  %69 = load i32, i32* %tmp.11, align 4
  ret i32 %69

70:                                               ; No predecessors!
  br label %650

71:                                               ; preds = %56
  %72 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %73 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %72, %"runtime::Type"* @"type::uint64")
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %76 = getelementptr [4 x i8], [4 x i8]* @"std::str.4", i64 0, i64 0
  %77 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %76, 1
  store { i64, i8* } %77, { i64, i8* }* %tmp.12, align 8
  %78 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.12, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %value.0, align 8
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %75, i8* %79, i64 %82)
  store i32 %83, i32* %tmp.13, align 4
  %84 = load i32, i32* %tmp.13, align 4
  ret i32 %84

85:                                               ; No predecessors!
  br label %650

86:                                               ; preds = %71
  %87 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %88 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %87, %"runtime::Type"* @"type::int8")
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %91 = getelementptr [3 x i8], [3 x i8]* @"std::str.5", i64 0, i64 0
  %92 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %91, 1
  store { i64, i8* } %92, { i64, i8* }* %tmp.14, align 8
  %93 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.14, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %value.0, align 8
  %96 = bitcast i8* %95 to i8*
  %97 = load i8, i8* %96, align 1
  %98 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %90, i8* %94, i8 %97)
  store i32 %98, i32* %tmp.15, align 4
  %99 = load i32, i32* %tmp.15, align 4
  ret i32 %99

100:                                              ; No predecessors!
  br label %650

101:                                              ; preds = %86
  %102 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %103 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %102, %"runtime::Type"* @"type::int8")
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %106 = getelementptr [5 x i8], [5 x i8]* @"std::str.6", i64 0, i64 0
  %107 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %106, 1
  store { i64, i8* } %107, { i64, i8* }* %tmp.16, align 8
  %108 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.16, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %value.0, align 8
  %111 = bitcast i8* %110 to i8*
  %112 = load i8, i8* %111, align 1
  %113 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %105, i8* %109, i8 %112)
  store i32 %113, i32* %tmp.17, align 4
  %114 = load i32, i32* %tmp.17, align 4
  ret i32 %114

115:                                              ; No predecessors!
  br label %650

116:                                              ; preds = %101
  %117 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %118 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %117, %"runtime::Type"* @"type::uint8")
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %121 = getelementptr [5 x i8], [5 x i8]* @"std::str.7", i64 0, i64 0
  %122 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %121, 1
  store { i64, i8* } %122, { i64, i8* }* %tmp.18, align 8
  %123 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.18, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %value.0, align 8
  %126 = bitcast i8* %125 to i8*
  %127 = load i8, i8* %126, align 1
  %128 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %120, i8* %124, i8 %127)
  store i32 %128, i32* %tmp.19, align 4
  %129 = load i32, i32* %tmp.19, align 4
  ret i32 %129

130:                                              ; No predecessors!
  br label %650

131:                                              ; preds = %116
  %132 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %133 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %132, %"runtime::Type"* @"type::int16")
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %136 = getelementptr [4 x i8], [4 x i8]* @"std::str.8", i64 0, i64 0
  %137 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %136, 1
  store { i64, i8* } %137, { i64, i8* }* %tmp.20, align 8
  %138 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.20, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %value.0, align 8
  %141 = bitcast i8* %140 to i16*
  %142 = load i16, i16* %141, align 2
  %143 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %135, i8* %139, i16 %142)
  store i32 %143, i32* %tmp.21, align 4
  %144 = load i32, i32* %tmp.21, align 4
  ret i32 %144

145:                                              ; No predecessors!
  br label %650

146:                                              ; preds = %131
  %147 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %148 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %147, %"runtime::Type"* @"type::uint16")
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %151 = getelementptr [4 x i8], [4 x i8]* @"std::str.9", i64 0, i64 0
  %152 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %151, 1
  store { i64, i8* } %152, { i64, i8* }* %tmp.22, align 8
  %153 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.22, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %value.0, align 8
  %156 = bitcast i8* %155 to i16*
  %157 = load i16, i16* %156, align 2
  %158 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %150, i8* %154, i16 %157)
  store i32 %158, i32* %tmp.23, align 4
  %159 = load i32, i32* %tmp.23, align 4
  ret i32 %159

160:                                              ; No predecessors!
  br label %650

161:                                              ; preds = %146
  %162 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %163 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %162, %"runtime::Type"* @"type::int32")
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %166 = getelementptr [3 x i8], [3 x i8]* @"std::str.10", i64 0, i64 0
  %167 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %166, 1
  store { i64, i8* } %167, { i64, i8* }* %tmp.24, align 8
  %168 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.24, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %value.0, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %165, i8* %169, i32 %172)
  store i32 %173, i32* %tmp.25, align 4
  %174 = load i32, i32* %tmp.25, align 4
  ret i32 %174

175:                                              ; No predecessors!
  br label %650

176:                                              ; preds = %161
  %177 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %178 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %177, %"runtime::Type"* @"type::uint32")
  br i1 %178, label %179, label %191

179:                                              ; preds = %176
  %180 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %181 = getelementptr [3 x i8], [3 x i8]* @"std::str.11", i64 0, i64 0
  %182 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %181, 1
  store { i64, i8* } %182, { i64, i8* }* %tmp.26, align 8
  %183 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.26, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %value.0, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %180, i8* %184, i32 %187)
  store i32 %188, i32* %tmp.27, align 4
  %189 = load i32, i32* %tmp.27, align 4
  ret i32 %189

190:                                              ; No predecessors!
  br label %650

191:                                              ; preds = %176
  %192 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %193 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %192, %"runtime::Type"* @"type::int64")
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %196 = getelementptr [4 x i8], [4 x i8]* @"std::str.12", i64 0, i64 0
  %197 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %196, 1
  store { i64, i8* } %197, { i64, i8* }* %tmp.28, align 8
  %198 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.28, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i8*, i8** %value.0, align 8
  %201 = bitcast i8* %200 to i64*
  %202 = load i64, i64* %201, align 8
  %203 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %195, i8* %199, i64 %202)
  store i32 %203, i32* %tmp.29, align 4
  %204 = load i32, i32* %tmp.29, align 4
  ret i32 %204

205:                                              ; No predecessors!
  br label %650

206:                                              ; preds = %191
  %207 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %208 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %207, %"runtime::Type"* @"type::uint64")
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %211 = getelementptr [4 x i8], [4 x i8]* @"std::str.13", i64 0, i64 0
  %212 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %211, 1
  store { i64, i8* } %212, { i64, i8* }* %tmp.30, align 8
  %213 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.30, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** %value.0, align 8
  %216 = bitcast i8* %215 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %210, i8* %214, i64 %217)
  store i32 %218, i32* %tmp.31, align 4
  %219 = load i32, i32* %tmp.31, align 4
  ret i32 %219

220:                                              ; No predecessors!
  br label %650

221:                                              ; preds = %206
  %222 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %223 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %222, %"runtime::Type"* @"type::float64")
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %226 = getelementptr [4 x i8], [4 x i8]* @"std::str.14", i64 0, i64 0
  %227 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %226, 1
  store { i64, i8* } %227, { i64, i8* }* %tmp.32, align 8
  %228 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.32, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load i8*, i8** %value.0, align 8
  %231 = bitcast i8* %230 to double*
  %232 = load double, double* %231, align 8
  %233 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %225, i8* %229, double %232)
  store i32 %233, i32* %tmp.33, align 4
  %234 = load i32, i32* %tmp.33, align 4
  ret i32 %234

235:                                              ; No predecessors!
  br label %650

236:                                              ; preds = %221
  %237 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %238 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %237, %"runtime::Type"* @"type::float32")
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %241 = getelementptr [3 x i8], [3 x i8]* @"std::str.15", i64 0, i64 0
  %242 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %241, 1
  store { i64, i8* } %242, { i64, i8* }* %tmp.34, align 8
  %243 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.34, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** %value.0, align 8
  %246 = bitcast i8* %245 to float*
  %247 = load float, float* %246, align 4
  %248 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %240, i8* %244, float %247)
  store i32 %248, i32* %tmp.35, align 4
  %249 = load i32, i32* %tmp.35, align 4
  ret i32 %249

250:                                              ; No predecessors!
  br label %650

251:                                              ; preds = %236
  %252 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %253 = call i1 @"runtime::equals::(*runtime::Type, *runtime::Type)"(%"runtime::Type"* %252, %"runtime::Type"* @"type::bool")
  br i1 %253, label %254, label %277

254:                                              ; preds = %251
  %255 = load i8*, i8** %value.0, align 8
  %256 = bitcast i8* %255 to i1*
  %257 = load i1, i1* %256, align 1
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %260 = getelementptr [5 x i8], [5 x i8]* @"std::str.16", i64 0, i64 0
  %261 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %260, 1
  store { i64, i8* } %261, { i64, i8* }* %tmp.36, align 8
  %262 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.36, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %259, i8* %263)
  store i32 %264, i32* %tmp.37, align 4
  %265 = load i32, i32* %tmp.37, align 4
  ret i32 %265

266:                                              ; No predecessors!
  br label %276

267:                                              ; preds = %254
  %268 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %269 = getelementptr [6 x i8], [6 x i8]* @"std::str.17", i64 0, i64 0
  %270 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %269, 1
  store { i64, i8* } %270, { i64, i8* }* %tmp.38, align 8
  %271 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.38, i32 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %268, i8* %272)
  store i32 %273, i32* %tmp.39, align 4
  %274 = load i32, i32* %tmp.39, align 4
  ret i32 %274

275:                                              ; No predecessors!
  br label %276

276:                                              ; preds = %275, %266
  br label %650

277:                                              ; preds = %251
  %278 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %279 = getelementptr %"runtime::Type", %"runtime::Type"* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 7
  br i1 %281, label %282, label %294

282:                                              ; preds = %277
  %283 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %284 = getelementptr [3 x i8], [3 x i8]* @"std::str.18", i64 0, i64 0
  %285 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %284, 1
  store { i64, i8* } %285, { i64, i8* }* %tmp.40, align 8
  %286 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.40, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  %288 = load i8*, i8** %value.0, align 8
  %289 = bitcast i8* %288 to i8**
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %283, i8* %287, i8* %290)
  store i32 %291, i32* %tmp.41, align 4
  %292 = load i32, i32* %tmp.41, align 4
  ret i32 %292

293:                                              ; No predecessors!
  br label %650

294:                                              ; preds = %277
  %295 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %296 = getelementptr %"runtime::Type", %"runtime::Type"* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 8
  br i1 %298, label %299, label %325

299:                                              ; preds = %294
  %300 = load i8*, i8** %value.0, align 8
  %301 = call i8* @malloc(i64 8)
  %302 = bitcast i8* %301 to i64*
  store i64 0, i64* %302, align 8
  %303 = insertvalue { i64*, i8*, %"runtime::Type"* } undef, i64* %302, 0
  %304 = call i8* @malloc(i64 8)
  %305 = bitcast i8* %304 to i8**
  store i8* %300, i8** %305, align 8
  %306 = bitcast i8** %305 to i8*
  %307 = insertvalue { i64*, i8*, %"runtime::Type"* } %303, i8* %306, 1
  %308 = insertvalue { i64*, i8*, %"runtime::Type"* } %307, %"runtime::Type"* @"type::*", 2
  %309 = extractvalue { i64*, i8*, %"runtime::Type"* } %308, 0
  %310 = extractvalue { i64*, i8*, %"runtime::Type"* } %308, 1
  %311 = extractvalue { i64*, i8*, %"runtime::Type"* } %308, 2
  %312 = bitcast i8* %310 to i8*
  %313 = insertvalue %"runtime::Ref" undef, i64* %309, 0
  %314 = insertvalue %"runtime::Ref" %313, i8* %312, 1
  %315 = insertvalue %"runtime::Ref" %314, %"runtime::Type"* %311, 2
  store %"runtime::Ref" %315, %"runtime::Ref"* %v.21, align 8
  %316 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %317 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %318 = getelementptr %"runtime::Type", %"runtime::Type"* %317, i32 0, i32 4
  %319 = load %"runtime::Type"*, %"runtime::Type"** %318, align 8
  %320 = getelementptr %"runtime::Ref", %"runtime::Ref"* %v.21, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %316, %"runtime::Type"* %319, i8* %321)
  store i32 %322, i32* %tmp.42, align 4
  %323 = load i32, i32* %tmp.42, align 4
  ret i32 %323

324:                                              ; No predecessors!
  br label %650

325:                                              ; preds = %294
  %326 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %327 = getelementptr %"runtime::Type", %"runtime::Type"* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 5
  br i1 %329, label %330, label %405

330:                                              ; preds = %325
  %331 = load i8*, i8** %value.0, align 8
  %332 = bitcast i8* %331 to { i64, i8** }*
  %333 = load { i64, i8** }, { i64, i8** }* %332, align 8
  store { i64, i8** } %333, { i64, i8** }* %arr.22, align 8
  %334 = getelementptr { i64, i8** }, { i64, i8** }* %arr.22, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %size.22, align 8
  %336 = getelementptr { i64, i8** }, { i64, i8** }* %arr.22, i32 0, i32 1
  %337 = load i8**, i8*** %336, align 8
  store i8** %337, i8*** %elements.22, align 8
  store i32 0, i32* %sum.22, align 4
  %338 = load i32, i32* %sum.22, align 4
  %339 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %340 = getelementptr [2 x i8], [2 x i8]* @"std::str.19", i64 0, i64 0
  %341 = insertvalue { i64, i8* } { i64 2, i8* undef }, i8* %340, 1
  store { i64, i8* } %341, { i64, i8* }* %tmp.43, align 8
  %342 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.43, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %339, i8* %343)
  store i32 %344, i32* %tmp.44, align 4
  %345 = load i32, i32* %tmp.44, align 4
  %346 = add i32 %338, %345
  store i32 %346, i32* %sum.22, align 4
  %347 = load i64, i64* %size.22, align 8
  %348 = trunc i64 %347 to i32
  store i32 0, i32* %i.23, align 4
  br label %349

349:                                              ; preds = %391, %330
  %350 = load i32, i32* %i.23, align 4
  %351 = icmp slt i32 %350, %348
  br i1 %351, label %352, label %393

352:                                              ; preds = %349
  %353 = load i32, i32* %sum.22, align 4
  %354 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %355 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %356 = getelementptr %"runtime::Type", %"runtime::Type"* %355, i32 0, i32 4
  %357 = load %"runtime::Type"*, %"runtime::Type"** %356, align 8
  %358 = load i8**, i8*** %elements.22, align 8
  %359 = ptrtoint i8** %358 to i64
  %360 = load i32, i32* %i.23, align 4
  %361 = zext i32 %360 to i64
  %362 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %363 = getelementptr %"runtime::Type", %"runtime::Type"* %362, i32 0, i32 4
  %364 = load %"runtime::Type"*, %"runtime::Type"** %363, align 8
  %365 = getelementptr %"runtime::Type", %"runtime::Type"* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = mul i64 %361, %366
  %368 = add i64 %359, %367
  %369 = inttoptr i64 %368 to i8**
  %370 = bitcast i8** %369 to i8*
  %371 = call i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %354, %"runtime::Type"* %357, i8* %370)
  store i32 %371, i32* %tmp.45, align 4
  %372 = load i32, i32* %tmp.45, align 4
  %373 = add i32 %353, %372
  store i32 %373, i32* %sum.22, align 4
  %374 = load i32, i32* %i.23, align 4
  %375 = load i64, i64* %size.22, align 8
  %376 = zext i32 1 to i64
  %377 = sub i64 %375, %376
  %378 = zext i32 %374 to i64
  %379 = icmp ult i64 %378, %377
  br i1 %379, label %380, label %390

380:                                              ; preds = %352
  %381 = load i32, i32* %sum.22, align 4
  %382 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %383 = getelementptr [3 x i8], [3 x i8]* @"std::str.20", i64 0, i64 0
  %384 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %383, 1
  store { i64, i8* } %384, { i64, i8* }* %tmp.46, align 8
  %385 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.46, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %382, i8* %386)
  store i32 %387, i32* %tmp.47, align 4
  %388 = load i32, i32* %tmp.47, align 4
  %389 = add i32 %381, %388
  store i32 %389, i32* %sum.22, align 4
  br label %390

390:                                              ; preds = %380, %352
  br label %391

391:                                              ; preds = %390
  %392 = add i32 %350, 1
  store i32 %392, i32* %i.23, align 4
  br label %349

393:                                              ; preds = %349
  %394 = load i32, i32* %sum.22, align 4
  %395 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %396 = getelementptr [2 x i8], [2 x i8]* @"std::str.21", i64 0, i64 0
  %397 = insertvalue { i64, i8* } { i64 2, i8* undef }, i8* %396, 1
  store { i64, i8* } %397, { i64, i8* }* %tmp.48, align 8
  %398 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.48, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %395, i8* %399)
  store i32 %400, i32* %tmp.49, align 4
  %401 = load i32, i32* %tmp.49, align 4
  %402 = add i32 %394, %401
  store i32 %402, i32* %sum.22, align 4
  %403 = load i32, i32* %sum.22, align 4
  ret i32 %403

404:                                              ; No predecessors!
  br label %650

405:                                              ; preds = %325
  %406 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %407 = getelementptr %"runtime::Type", %"runtime::Type"* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 6
  br i1 %409, label %410, label %480

410:                                              ; preds = %405
  %411 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %412 = getelementptr %"runtime::Type", %"runtime::Type"* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %size.25, align 8
  store i32 0, i32* %sum.25, align 4
  %414 = load i32, i32* %sum.25, align 4
  %415 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %416 = getelementptr [2 x i8], [2 x i8]* @"std::str.22", i64 0, i64 0
  %417 = insertvalue { i64, i8* } { i64 2, i8* undef }, i8* %416, 1
  store { i64, i8* } %417, { i64, i8* }* %tmp.50, align 8
  %418 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.50, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %415, i8* %419)
  store i32 %420, i32* %tmp.51, align 4
  %421 = load i32, i32* %tmp.51, align 4
  %422 = add i32 %414, %421
  store i32 %422, i32* %sum.25, align 4
  %423 = load i64, i64* %size.25, align 8
  %424 = trunc i64 %423 to i32
  store i32 0, i32* %i.26, align 4
  br label %425

425:                                              ; preds = %466, %410
  %426 = load i32, i32* %i.26, align 4
  %427 = icmp slt i32 %426, %424
  br i1 %427, label %428, label %468

428:                                              ; preds = %425
  %429 = load i32, i32* %sum.25, align 4
  %430 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %431 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %432 = getelementptr %"runtime::Type", %"runtime::Type"* %431, i32 0, i32 4
  %433 = load %"runtime::Type"*, %"runtime::Type"** %432, align 8
  %434 = load i8*, i8** %value.0, align 8
  %435 = ptrtoint i8* %434 to i64
  %436 = load i32, i32* %i.26, align 4
  %437 = zext i32 %436 to i64
  %438 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %439 = getelementptr %"runtime::Type", %"runtime::Type"* %438, i32 0, i32 4
  %440 = load %"runtime::Type"*, %"runtime::Type"** %439, align 8
  %441 = getelementptr %"runtime::Type", %"runtime::Type"* %440, i32 0, i32 5
  %442 = load i64, i64* %441, align 8
  %443 = mul i64 %437, %442
  %444 = add i64 %435, %443
  %445 = inttoptr i64 %444 to i8*
  %446 = call i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %430, %"runtime::Type"* %433, i8* %445)
  store i32 %446, i32* %tmp.52, align 4
  %447 = load i32, i32* %tmp.52, align 4
  %448 = add i32 %429, %447
  store i32 %448, i32* %sum.25, align 4
  %449 = load i32, i32* %i.26, align 4
  %450 = load i64, i64* %size.25, align 8
  %451 = zext i32 1 to i64
  %452 = sub i64 %450, %451
  %453 = zext i32 %449 to i64
  %454 = icmp ult i64 %453, %452
  br i1 %454, label %455, label %465

455:                                              ; preds = %428
  %456 = load i32, i32* %sum.25, align 4
  %457 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %458 = getelementptr [3 x i8], [3 x i8]* @"std::str.23", i64 0, i64 0
  %459 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %458, 1
  store { i64, i8* } %459, { i64, i8* }* %tmp.53, align 8
  %460 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.53, i32 0, i32 1
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %457, i8* %461)
  store i32 %462, i32* %tmp.54, align 4
  %463 = load i32, i32* %tmp.54, align 4
  %464 = add i32 %456, %463
  store i32 %464, i32* %sum.25, align 4
  br label %465

465:                                              ; preds = %455, %428
  br label %466

466:                                              ; preds = %465
  %467 = add i32 %426, 1
  store i32 %467, i32* %i.26, align 4
  br label %425

468:                                              ; preds = %425
  %469 = load i32, i32* %sum.25, align 4
  %470 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %471 = getelementptr [2 x i8], [2 x i8]* @"std::str.24", i64 0, i64 0
  %472 = insertvalue { i64, i8* } { i64 2, i8* undef }, i8* %471, 1
  store { i64, i8* } %472, { i64, i8* }* %tmp.55, align 8
  %473 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.55, i32 0, i32 1
  %474 = load i8*, i8** %473, align 8
  %475 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %470, i8* %474)
  store i32 %475, i32* %tmp.56, align 4
  %476 = load i32, i32* %tmp.56, align 4
  %477 = add i32 %469, %476
  store i32 %477, i32* %sum.25, align 4
  %478 = load i32, i32* %sum.25, align 4
  ret i32 %478

479:                                              ; No predecessors!
  br label %650

480:                                              ; preds = %405
  %481 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %482 = getelementptr %"runtime::Type", %"runtime::Type"* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = icmp eq i32 %483, 3
  br i1 %484, label %485, label %486

485:                                              ; preds = %480
  store i1 true, i1* %tmp.57, align 1
  br label %491

486:                                              ; preds = %480
  %487 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %488 = getelementptr %"runtime::Type", %"runtime::Type"* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = icmp eq i32 %489, 4
  store i1 %490, i1* %tmp.57, align 1
  br label %491

491:                                              ; preds = %486, %485
  %492 = load i1, i1* %tmp.57, align 1
  br i1 %492, label %493, label %576

493:                                              ; preds = %491
  %494 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %495 = getelementptr %"runtime::Type", %"runtime::Type"* %494, i32 0, i32 7
  %496 = load { i64, %"runtime::Field"* }, { i64, %"runtime::Field"* }* %495, align 8
  store { i64, %"runtime::Field"* } %496, { i64, %"runtime::Field"* }* %fields.28, align 8
  store i32 0, i32* %sum.28, align 4
  %497 = load i32, i32* %sum.28, align 4
  %498 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %499 = getelementptr [2 x i8], [2 x i8]* @"std::str.25", i64 0, i64 0
  %500 = insertvalue { i64, i8* } { i64 2, i8* undef }, i8* %499, 1
  store { i64, i8* } %500, { i64, i8* }* %tmp.58, align 8
  %501 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.58, i32 0, i32 1
  %502 = load i8*, i8** %501, align 8
  %503 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %498, i8* %502)
  store i32 %503, i32* %tmp.59, align 4
  %504 = load i32, i32* %tmp.59, align 4
  %505 = add i32 %497, %504
  store i32 %505, i32* %sum.28, align 4
  %506 = getelementptr { i64, %"runtime::Field"* }, { i64, %"runtime::Field"* }* %fields.28, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = trunc i64 %507 to i32
  store i32 0, i32* %i.29, align 4
  br label %509

509:                                              ; preds = %558, %493
  %510 = load i32, i32* %i.29, align 4
  %511 = icmp slt i32 %510, %508
  br i1 %511, label %512, label %560

512:                                              ; preds = %509
  %513 = load i32, i32* %i.29, align 4
  %514 = getelementptr { i64, %"runtime::Field"* }, { i64, %"runtime::Field"* }* %fields.28, i32 0, i32 1
  %515 = load %"runtime::Field"*, %"runtime::Field"** %514, align 8
  %516 = getelementptr %"runtime::Field", %"runtime::Field"* %515, i32 %513
  %517 = load %"runtime::Field", %"runtime::Field"* %516, align 8
  store %"runtime::Field" %517, %"runtime::Field"* %field.29, align 8
  %518 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %519 = getelementptr [6 x i8], [6 x i8]* @"std::str.26", i64 0, i64 0
  %520 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %519, 1
  store { i64, i8* } %520, { i64, i8* }* %tmp.60, align 8
  %521 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.60, i32 0, i32 1
  %522 = load i8*, i8** %521, align 8
  %523 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 0
  %524 = getelementptr { i64, i8* }, { i64, i8* }* %523, i32 0, i32 1
  %525 = load i8*, i8** %524, align 8
  %526 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %518, i8* %522, i8* %525)
  store i32 %526, i32* %tmp.61, align 4
  %527 = load i32, i32* %sum.28, align 4
  %528 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %529 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 2
  %530 = load %"runtime::Type"*, %"runtime::Type"** %529, align 8
  %531 = load i8*, i8** %value.0, align 8
  %532 = ptrtoint i8* %531 to i64
  %533 = getelementptr %"runtime::Field", %"runtime::Field"* %field.29, i32 0, i32 1
  %534 = load i64, i64* %533, align 8
  %535 = add i64 %532, %534
  %536 = inttoptr i64 %535 to i8*
  %537 = call i32 @"std::print_val::(*cstd::s__IO_FILE, *runtime::Type, *)"(%"cstd::s__IO_FILE"* %528, %"runtime::Type"* %530, i8* %536)
  store i32 %537, i32* %tmp.62, align 4
  %538 = load i32, i32* %tmp.62, align 4
  %539 = add i32 %527, %538
  store i32 %539, i32* %sum.28, align 4
  %540 = load i32, i32* %i.29, align 4
  %541 = getelementptr { i64, %"runtime::Field"* }, { i64, %"runtime::Field"* }* %fields.28, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = zext i32 1 to i64
  %544 = sub i64 %542, %543
  %545 = zext i32 %540 to i64
  %546 = icmp ult i64 %545, %544
  br i1 %546, label %547, label %557

547:                                              ; preds = %512
  %548 = load i32, i32* %sum.28, align 4
  %549 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %550 = getelementptr [3 x i8], [3 x i8]* @"std::str.27", i64 0, i64 0
  %551 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %550, 1
  store { i64, i8* } %551, { i64, i8* }* %tmp.63, align 8
  %552 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.63, i32 0, i32 1
  %553 = load i8*, i8** %552, align 8
  %554 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %549, i8* %553)
  store i32 %554, i32* %tmp.64, align 4
  %555 = load i32, i32* %tmp.64, align 4
  %556 = add i32 %548, %555
  store i32 %556, i32* %sum.28, align 4
  br label %557

557:                                              ; preds = %547, %512
  br label %558

558:                                              ; preds = %557
  %559 = add i32 %510, 1
  store i32 %559, i32* %i.29, align 4
  br label %509

560:                                              ; preds = %509
  %561 = load i32, i32* %sum.28, align 4
  %562 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %563 = getelementptr [6 x i8], [6 x i8]* @"std::str.28", i64 0, i64 0
  %564 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %563, 1
  store { i64, i8* } %564, { i64, i8* }* %tmp.65, align 8
  %565 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.65, i32 0, i32 1
  %566 = load i8*, i8** %565, align 8
  %567 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %568 = getelementptr %"runtime::Type", %"runtime::Type"* %567, i32 0, i32 1
  %569 = getelementptr { i64, i8* }, { i64, i8* }* %568, i32 0, i32 1
  %570 = load i8*, i8** %569, align 8
  %571 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %562, i8* %566, i8* %570)
  store i32 %571, i32* %tmp.66, align 4
  %572 = load i32, i32* %tmp.66, align 4
  %573 = add i32 %561, %572
  store i32 %573, i32* %sum.28, align 4
  %574 = load i32, i32* %sum.28, align 4
  ret i32 %574

575:                                              ; No predecessors!
  br label %650

576:                                              ; preds = %491
  %577 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %578 = getelementptr %"runtime::Type", %"runtime::Type"* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 10
  br i1 %580, label %581, label %650

581:                                              ; preds = %576
  store i64 0, i64* %v.31, align 8
  %582 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %583 = getelementptr %"runtime::Type", %"runtime::Type"* %582, i32 0, i32 4
  %584 = load %"runtime::Type"*, %"runtime::Type"** %583, align 8
  %585 = getelementptr %"runtime::Type", %"runtime::Type"* %584, i32 0, i32 5
  %586 = load i64, i64* %585, align 8
  %587 = trunc i64 %586 to i32
  store i32 0, i32* %i.32, align 4
  br label %588

588:                                              ; preds = %607, %581
  %589 = load i32, i32* %i.32, align 4
  %590 = icmp slt i32 %589, %587
  br i1 %590, label %591, label %609

591:                                              ; preds = %588
  %592 = load i64, i64* %v.31, align 8
  %593 = load i8*, i8** %value.0, align 8
  %594 = ptrtoint i8* %593 to i64
  %595 = load i32, i32* %i.32, align 4
  %596 = zext i32 %595 to i64
  %597 = add i64 %594, %596
  %598 = inttoptr i64 %597 to i8*
  %599 = bitcast i8* %598 to i8*
  %600 = load i8, i8* %599, align 1
  %601 = sext i8 %600 to i64
  %602 = load i32, i32* %i.32, align 4
  %603 = mul i32 %602, 8
  %604 = sext i32 %603 to i64
  %605 = shl i64 %601, %604
  %606 = or i64 %592, %605
  store i64 %606, i64* %v.31, align 8
  br label %607

607:                                              ; preds = %591
  %608 = add i32 %589, 1
  store i32 %608, i32* %i.32, align 4
  br label %588

609:                                              ; preds = %588
  %610 = getelementptr [10 x i8], [10 x i8]* @"std::str.29", i64 0, i64 0
  %611 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %610, 1
  store { i64, i8* } %611, { i64, i8* }* %tmp.67, align 8
  %612 = load { i64, i8* }, { i64, i8* }* %tmp.67, align 8
  store { i64, i8* } %612, { i64, i8* }* %str.31, align 8
  %613 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %614 = getelementptr %"runtime::Type", %"runtime::Type"* %613, i32 0, i32 10
  %615 = getelementptr { i64, %"runtime::EnumValue"* }, { i64, %"runtime::EnumValue"* }* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = trunc i64 %616 to i32
  store i32 0, i32* %i.33, align 4
  br label %618

618:                                              ; preds = %637, %609
  %619 = load i32, i32* %i.33, align 4
  %620 = icmp slt i32 %619, %617
  br i1 %620, label %621, label %639

621:                                              ; preds = %618
  %622 = load %"runtime::Type"*, %"runtime::Type"** %tpe.0, align 8
  %623 = getelementptr %"runtime::Type", %"runtime::Type"* %622, i32 0, i32 10
  %624 = load i32, i32* %i.33, align 4
  %625 = getelementptr { i64, %"runtime::EnumValue"* }, { i64, %"runtime::EnumValue"* }* %623, i32 0, i32 1
  %626 = load %"runtime::EnumValue"*, %"runtime::EnumValue"** %625, align 8
  %627 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %626, i32 %624
  %628 = load %"runtime::EnumValue", %"runtime::EnumValue"* %627, align 8
  store %"runtime::EnumValue" %628, %"runtime::EnumValue"* %ev.33, align 8
  %629 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 1
  %630 = load i64, i64* %629, align 8
  %631 = load i64, i64* %v.31, align 8
  %632 = icmp eq i64 %630, %631
  br i1 %632, label %633, label %636

633:                                              ; preds = %621
  %634 = getelementptr %"runtime::EnumValue", %"runtime::EnumValue"* %ev.33, i32 0, i32 0
  %635 = load { i64, i8* }, { i64, i8* }* %634, align 8
  store { i64, i8* } %635, { i64, i8* }* %str.31, align 8
  br label %636

636:                                              ; preds = %633, %621
  br label %637

637:                                              ; preds = %636
  %638 = add i32 %619, 1
  store i32 %638, i32* %i.33, align 4
  br label %618

639:                                              ; preds = %618
  %640 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** %file.0, align 8
  %641 = getelementptr [3 x i8], [3 x i8]* @"std::str.30", i64 0, i64 0
  %642 = insertvalue { i64, i8* } { i64 3, i8* undef }, i8* %641, 1
  store { i64, i8* } %642, { i64, i8* }* %tmp.68, align 8
  %643 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.68, i32 0, i32 1
  %644 = load i8*, i8** %643, align 8
  %645 = getelementptr { i64, i8* }, { i64, i8* }* %str.31, i32 0, i32 1
  %646 = load i8*, i8** %645, align 8
  %647 = call i32 (%"cstd::s__IO_FILE"*, i8*, ...) @fprintf(%"cstd::s__IO_FILE"* %640, i8* %644, i8* %646)
  store i32 %647, i32* %tmp.69, align 4
  %648 = load i32, i32* %tmp.69, align 4
  ret i32 %648

649:                                              ; No predecessors!
  br label %650

650:                                              ; preds = %649, %576, %575, %479, %404, %324, %293, %276, %250, %235, %220, %205, %190, %175, %160, %145, %130, %115, %100, %85, %70, %55, %31, %15
  ret i32 undef
}

define void @executable_file(i8* %resolved.value) {
start:
  %resolved.0 = alloca i8*, align 8
  %len.0 = alloca i64, align 8
  %tmp.75 = alloca { i64, i8* }, align 8
  %tmp.76 = alloca i64, align 8
  store i8* %resolved.value, i8** %resolved.0, align 8
  %0 = getelementptr [15 x i8], [15 x i8]* @"std::str.31", i64 0, i64 0
  %1 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %0, 1
  store { i64, i8* } %1, { i64, i8* }* %tmp.75, align 8
  %2 = getelementptr { i64, i8* }, { i64, i8* }* %tmp.75, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %resolved.0, align 8
  %5 = zext i32 4096 to i64
  %6 = call i64 @readlink(i8* %3, i8* %4, i64 %5)
  store i64 %6, i64* %tmp.76, align 8
  %7 = load i64, i64* %tmp.76, align 8
  store i64 %7, i64* %len.0, align 8
  %8 = load i64, i64* %len.0, align 8
  %9 = sub i32 0, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %start
  %13 = load i64, i64* %len.0, align 8
  %14 = load i8*, i8** %resolved.0, align 8
  %15 = getelementptr i8, i8* %14, i64 %13
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %12, %start
  ret void
}

declare i64 @readlink(i8*, i8*, i64)

define i8 @starts_with(i8* %str.value, i8* %pre.value) {
start:
  %str.0 = alloca i8*, align 8
  %pre.0 = alloca i8*, align 8
  %tmp.72 = alloca i64, align 8
  %tmp.73 = alloca i32, align 4
  store i8* %str.value, i8** %str.0, align 8
  store i8* %pre.value, i8** %pre.0, align 8
  %0 = load i8*, i8** %pre.0, align 8
  %1 = load i8*, i8** %str.0, align 8
  %2 = load i8*, i8** %pre.0, align 8
  %3 = call i64 @strlen(i8* %2)
  store i64 %3, i64* %tmp.72, align 8
  %4 = load i64, i64* %tmp.72, align 8
  %5 = call i32 @strncmp(i8* %0, i8* %1, i64 %4)
  store i32 %5, i32* %tmp.73, align 4
  %6 = load i32, i32* %tmp.73, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8

9:                                                ; No predecessors!
  ret i8 undef
}

define i32 @"std::error::([&])"({ i64, { i64*, i8*, %"runtime::Type"* }* } %args.value) {
start:
  %args.0 = alloca { i64, { i64*, i8*, %"runtime::Type"* }* }, align 8
  %tmp.2 = alloca i32, align 4
  store { i64, { i64*, i8*, %"runtime::Type"* }* } %args.value, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, align 8
  %0 = load %"cstd::s__IO_FILE"*, %"cstd::s__IO_FILE"** @stderr, align 8
  %1 = load { i64, { i64*, i8*, %"runtime::Type"* }* }, { i64, { i64*, i8*, %"runtime::Type"* }* }* %args.0, align 8
  %2 = call i32 @"std::fprint::(*cstd::s__IO_FILE, [&])"(%"cstd::s__IO_FILE"* %0, { i64, { i64*, i8*, %"runtime::Type"* }* } %1)
  store i32 %2, i32* %tmp.2, align 4
  %3 = load i32, i32* %tmp.2, align 4
  ret i32 %3

4:                                                ; No predecessors!
  ret i32 undef
}

define void @absolute_path(i8* %pathname.value, i8* %resolved.value) {
start:
  %pathname.0 = alloca i8*, align 8
  %resolved.0 = alloca i8*, align 8
  %tmp.74 = alloca i8*, align 8
  store i8* %pathname.value, i8** %pathname.0, align 8
  store i8* %resolved.value, i8** %resolved.0, align 8
  %0 = load i8*, i8** %pathname.0, align 8
  %1 = load i8*, i8** %resolved.0, align 8
  %2 = call i8* @realpath(i8* %0, i8* %1)
  store i8* %2, i8** %tmp.74, align 8
  ret void
}

declare i8* @realpath(i8*, i8*)

define { i64, i8* } @"std::make_string::(*int8)"(i8* %ptr.value) {
start:
  %ptr.0 = alloca i8*, align 8
  %s.0 = alloca { i64, i8* }, align 8
  %tmp.0 = alloca i64, align 8
  store i8* %ptr.value, i8** %ptr.0, align 8
  %0 = load i8*, i8** %ptr.0, align 8
  %1 = getelementptr { i64, i8* }, { i64, i8* }* %s.0, i32 0, i32 1
  store i8* %0, i8** %1, align 8
  %2 = load i8*, i8** %ptr.0, align 8
  %3 = call i64 @strlen(i8* %2)
  store i64 %3, i64* %tmp.0, align 8
  %4 = load i64, i64* %tmp.0, align 8
  %5 = zext i32 1 to i64
  %6 = add i64 %4, %5
  %7 = getelementptr { i64, i8* }, { i64, i8* }* %s.0, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load { i64, i8* }, { i64, i8* }* %s.0, align 8
  ret { i64, i8* } %8

9:                                                ; No predecessors!
  ret { i64, i8* } undef
}

define void @"std::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = load { i64, { i64, i8* }* }, { i64, { i64, i8* }* }* %args, align 8
  call void @"linux::main::([[int8]])"({ i64, { i64, i8* }* } %0)
  ret void
}

define { i64, i8* } @"to_string::(linux::idtype_t)"(i32 %enum.value) {
start:
  switch i32 %enum.value, label %9 [
    i32 1, label %0
    i32 2, label %3
    i32 0, label %6
  ]

0:                                                ; preds = %start
  %1 = getelementptr [6 x i8], [6 x i8]* @"linux::str.0", i32 0, i32 0
  %2 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1, 1
  ret { i64, i8* } %2

3:                                                ; preds = %start
  %4 = getelementptr [7 x i8], [7 x i8]* @"linux::str.1", i32 0, i32 0
  %5 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %4, 1
  ret { i64, i8* } %5

6:                                                ; preds = %start
  %7 = getelementptr [6 x i8], [6 x i8]* @"linux::str.2", i32 0, i32 0
  %8 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %7, 1
  ret { i64, i8* } %8

9:                                                ; preds = %start
  %10 = getelementptr [10 x i8], [10 x i8]* @"linux::str.3", i32 0, i32 0
  %11 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %10, 1
  ret { i64, i8* } %11
}

define void @"linux::main::([[int8]])"({ i64, { i64, i8* }* } %args.value) {
start:
  %args = alloca { i64, { i64, i8* }* }, align 8
  %tmp.0 = alloca { i64, i8* }, align 8
  %tmp.1 = alloca { i64, i8* }, align 8
  %tmp.2 = alloca { i64, i8* }, align 8
  %tmp.3 = alloca { i64, i8* }, align 8
  %tmp.4 = alloca { i64, i8* }, align 8
  %tmp.5 = alloca { i64, i8* }, align 8
  %tmp.6 = alloca { i64, i8* }, align 8
  %tmp.7 = alloca { i64, i8* }, align 8
  %tmp.8 = alloca { i64, i8* }, align 8
  %tmp.9 = alloca { i64, i8* }, align 8
  %tmp.10 = alloca { i64, i8* }, align 8
  %tmp.11 = alloca { i64, i8* }, align 8
  %tmp.12 = alloca { i64, i8* }, align 8
  %tmp.13 = alloca { i64, i8* }, align 8
  %tmp.14 = alloca { i64, i8* }, align 8
  %tmp.15 = alloca { i64, i8* }, align 8
  %tmp.16 = alloca { i64, i8* }, align 8
  %tmp.17 = alloca { i64, i8* }, align 8
  %tmp.18 = alloca { i64, i8* }, align 8
  %tmp.19 = alloca { i64, i8* }, align 8
  %tmp.20 = alloca { i64, i8* }, align 8
  %tmp.21 = alloca { i64, i8* }, align 8
  %tmp.22 = alloca { i64, i8* }, align 8
  %tmp.23 = alloca { i64, i8* }, align 8
  %tmp.24 = alloca { i64, i8* }, align 8
  %tmp.25 = alloca { i64, i8* }, align 8
  %tmp.26 = alloca { i64, i8* }, align 8
  %tmp.27 = alloca { i64, i8* }, align 8
  %tmp.28 = alloca { i64, i8* }, align 8
  %tmp.29 = alloca { i64, i8* }, align 8
  %tmp.30 = alloca { i64, i8* }, align 8
  %tmp.31 = alloca { i64, i8* }, align 8
  %tmp.32 = alloca { i64, i8* }, align 8
  %tmp.33 = alloca { i64, i8* }, align 8
  %tmp.34 = alloca { i64, i8* }, align 8
  %tmp.35 = alloca { i64, i8* }, align 8
  %tmp.36 = alloca { i64, i8* }, align 8
  %tmp.37 = alloca { i64, i8* }, align 8
  %tmp.38 = alloca { i64, i8* }, align 8
  %tmp.39 = alloca { i64, i8* }, align 8
  %tmp.40 = alloca { i64, i8* }, align 8
  %tmp.41 = alloca { i64, i8* }, align 8
  %tmp.42 = alloca { i64, i8* }, align 8
  %tmp.43 = alloca { i64, i8* }, align 8
  %tmp.44 = alloca { i64, i8* }, align 8
  %tmp.45 = alloca { i64, i8* }, align 8
  %tmp.46 = alloca { i64, i8* }, align 8
  %tmp.47 = alloca { i64, i8* }, align 8
  %tmp.48 = alloca { i64, i8* }, align 8
  %tmp.49 = alloca { i64, i8* }, align 8
  %tmp.50 = alloca { i64, i8* }, align 8
  %tmp.51 = alloca { i64, i8* }, align 8
  %tmp.52 = alloca { i64, i8* }, align 8
  %tmp.53 = alloca { i64, i8* }, align 8
  %tmp.54 = alloca { i64, i8* }, align 8
  %tmp.55 = alloca { i64, i8* }, align 8
  %tmp.56 = alloca { i64, i8* }, align 8
  %tmp.57 = alloca { i64, i8* }, align 8
  %tmp.58 = alloca { i64, i8* }, align 8
  %tmp.59 = alloca { i64, i8* }, align 8
  %tmp.60 = alloca { i64, i8* }, align 8
  %tmp.61 = alloca { i64, i8* }, align 8
  %tmp.62 = alloca { i64, i8* }, align 8
  %tmp.63 = alloca { i64, i8* }, align 8
  %tmp.64 = alloca { i64, i8* }, align 8
  %tmp.65 = alloca { i64, i8* }, align 8
  %tmp.66 = alloca { i64, i8* }, align 8
  %tmp.67 = alloca { i64, i8* }, align 8
  %tmp.68 = alloca { i64, i8* }, align 8
  %tmp.69 = alloca { i64, i8* }, align 8
  %tmp.70 = alloca { i64, i8* }, align 8
  %tmp.71 = alloca { i64, i8* }, align 8
  %tmp.72 = alloca { i64, i8* }, align 8
  %tmp.73 = alloca { i64, i8* }, align 8
  %tmp.74 = alloca { i64, i8* }, align 8
  %tmp.75 = alloca { i64, i8* }, align 8
  %tmp.76 = alloca { i64, i8* }, align 8
  %tmp.77 = alloca { i64, i8* }, align 8
  %tmp.78 = alloca { i64, i8* }, align 8
  %tmp.79 = alloca { i64, i8* }, align 8
  %tmp.80 = alloca { i64, i8* }, align 8
  %tmp.81 = alloca { i64, i8* }, align 8
  %tmp.82 = alloca { i64, i8* }, align 8
  %tmp.83 = alloca { i64, i8* }, align 8
  %tmp.84 = alloca { i64, i8* }, align 8
  %tmp.85 = alloca { i64, i8* }, align 8
  %tmp.86 = alloca { i64, i8* }, align 8
  %tmp.87 = alloca { i64, i8* }, align 8
  %tmp.88 = alloca { i64, i8* }, align 8
  %tmp.89 = alloca { i64, i8* }, align 8
  %tmp.90 = alloca { i64, i8* }, align 8
  %tmp.91 = alloca { i64, i8* }, align 8
  %tmp.92 = alloca { i64, i8* }, align 8
  %tmp.93 = alloca { i64, i8* }, align 8
  %tmp.94 = alloca { i64, i8* }, align 8
  %tmp.95 = alloca { i64, i8* }, align 8
  %tmp.96 = alloca { i64, i8* }, align 8
  %tmp.97 = alloca { i64, i8* }, align 8
  %tmp.98 = alloca { i64, i8* }, align 8
  %tmp.99 = alloca { i64, i8* }, align 8
  %tmp.100 = alloca { i64, i8* }, align 8
  %tmp.101 = alloca { i64, i8* }, align 8
  %tmp.102 = alloca { i64, i8* }, align 8
  %tmp.103 = alloca { i64, i8* }, align 8
  %tmp.104 = alloca { i64, i8* }, align 8
  %tmp.105 = alloca { i64, i8* }, align 8
  %tmp.106 = alloca { i64, i8* }, align 8
  %tmp.107 = alloca { i64, i8* }, align 8
  %tmp.108 = alloca { i64, i8* }, align 8
  %tmp.109 = alloca { i64, i8* }, align 8
  %tmp.110 = alloca { i64, i8* }, align 8
  %tmp.111 = alloca { i64, i8* }, align 8
  %tmp.112 = alloca { i64, i8* }, align 8
  %tmp.113 = alloca { i64, i8* }, align 8
  %tmp.114 = alloca { i64, i8* }, align 8
  %tmp.115 = alloca { i64, i8* }, align 8
  %tmp.116 = alloca { i64, i8* }, align 8
  %tmp.117 = alloca { i64, i8* }, align 8
  %tmp.118 = alloca { i64, i8* }, align 8
  %tmp.119 = alloca { i64, i8* }, align 8
  %tmp.120 = alloca { i64, i8* }, align 8
  %tmp.121 = alloca { i64, i8* }, align 8
  %tmp.122 = alloca { i64, i8* }, align 8
  %tmp.123 = alloca { i64, i8* }, align 8
  %tmp.124 = alloca { i64, i8* }, align 8
  %tmp.125 = alloca { i64, i8* }, align 8
  %tmp.126 = alloca { i64, i8* }, align 8
  %tmp.127 = alloca { i64, i8* }, align 8
  %tmp.128 = alloca { i64, i8* }, align 8
  %tmp.129 = alloca { i64, i8* }, align 8
  %tmp.130 = alloca { i64, i8* }, align 8
  %tmp.131 = alloca { i64, i8* }, align 8
  %tmp.132 = alloca { i64, i8* }, align 8
  %tmp.133 = alloca { i64, i8* }, align 8
  %tmp.134 = alloca { i64, i8* }, align 8
  %tmp.135 = alloca { i64, i8* }, align 8
  %tmp.136 = alloca { i64, i8* }, align 8
  %tmp.137 = alloca { i64, i8* }, align 8
  %tmp.138 = alloca { i64, i8* }, align 8
  %tmp.139 = alloca { i64, i8* }, align 8
  %tmp.140 = alloca { i64, i8* }, align 8
  %tmp.141 = alloca { i64, i8* }, align 8
  %tmp.142 = alloca { i64, i8* }, align 8
  %tmp.143 = alloca { i64, i8* }, align 8
  %tmp.144 = alloca { i64, i8* }, align 8
  %tmp.145 = alloca { i64, i8* }, align 8
  %tmp.146 = alloca { i64, i8* }, align 8
  %tmp.147 = alloca { i64, i8* }, align 8
  %tmp.148 = alloca { i64, i8* }, align 8
  %tmp.149 = alloca { i64, i8* }, align 8
  %tmp.150 = alloca { i64, i8* }, align 8
  %tmp.151 = alloca { i64, i8* }, align 8
  %tmp.152 = alloca { i64, i8* }, align 8
  %tmp.153 = alloca { i64, i8* }, align 8
  %tmp.154 = alloca { i64, i8* }, align 8
  %tmp.155 = alloca { i64, i8* }, align 8
  %tmp.156 = alloca { i64, i8* }, align 8
  %tmp.157 = alloca { i64, i8* }, align 8
  %tmp.158 = alloca { i64, i8* }, align 8
  %tmp.159 = alloca { i64, i8* }, align 8
  %tmp.160 = alloca { i64, i8* }, align 8
  %tmp.161 = alloca { i64, i8* }, align 8
  %tmp.162 = alloca { i64, i8* }, align 8
  %tmp.163 = alloca { i64, i8* }, align 8
  %tmp.164 = alloca { i64, i8* }, align 8
  %tmp.165 = alloca { i64, i8* }, align 8
  %tmp.166 = alloca { i64, i8* }, align 8
  %tmp.167 = alloca { i64, i8* }, align 8
  %tmp.168 = alloca { i64, i8* }, align 8
  %tmp.169 = alloca { i64, i8* }, align 8
  %tmp.170 = alloca { i64, i8* }, align 8
  %tmp.171 = alloca { i64, i8* }, align 8
  %tmp.172 = alloca { i64, i8* }, align 8
  %tmp.173 = alloca { i64, i8* }, align 8
  %tmp.174 = alloca { i64, i8* }, align 8
  %tmp.175 = alloca { i64, i8* }, align 8
  %tmp.176 = alloca { i64, i8* }, align 8
  %tmp.177 = alloca { i64, i8* }, align 8
  %tmp.178 = alloca { i64, i8* }, align 8
  %tmp.179 = alloca { i64, i8* }, align 8
  %tmp.180 = alloca { i64, i8* }, align 8
  %tmp.181 = alloca { i64, i8* }, align 8
  %tmp.182 = alloca { i64, i8* }, align 8
  %tmp.183 = alloca { i64, i8* }, align 8
  %tmp.184 = alloca { i64, i8* }, align 8
  %tmp.185 = alloca { i64, i8* }, align 8
  %tmp.186 = alloca { i64, i8* }, align 8
  %tmp.187 = alloca { i64, i8* }, align 8
  %tmp.188 = alloca { i64, i8* }, align 8
  %tmp.189 = alloca { i64, i8* }, align 8
  %tmp.190 = alloca { i64, i8* }, align 8
  %tmp.191 = alloca { i64, i8* }, align 8
  %tmp.192 = alloca { i64, i8* }, align 8
  %tmp.193 = alloca { i64, i8* }, align 8
  %tmp.194 = alloca { i64, i8* }, align 8
  %tmp.195 = alloca { i64, i8* }, align 8
  %tmp.196 = alloca { i64, i8* }, align 8
  %tmp.197 = alloca { i64, i8* }, align 8
  %tmp.198 = alloca { i64, i8* }, align 8
  %tmp.199 = alloca { i64, i8* }, align 8
  %tmp.200 = alloca { i64, i8* }, align 8
  %tmp.201 = alloca { i64, i8* }, align 8
  %tmp.202 = alloca { i64, i8* }, align 8
  %tmp.203 = alloca { i64, i8* }, align 8
  %tmp.204 = alloca { i64, i8* }, align 8
  %tmp.205 = alloca { i64, i8* }, align 8
  %tmp.206 = alloca { i64, i8* }, align 8
  %tmp.207 = alloca { i64, i8* }, align 8
  %tmp.208 = alloca { i64, i8* }, align 8
  %tmp.209 = alloca { i64, i8* }, align 8
  %tmp.210 = alloca { i64, i8* }, align 8
  %tmp.211 = alloca { i64, i8* }, align 8
  %tmp.212 = alloca { i64, i8* }, align 8
  %tmp.213 = alloca { i64, i8* }, align 8
  %tmp.214 = alloca { i64, i8* }, align 8
  %tmp.215 = alloca { i64, i8* }, align 8
  %tmp.216 = alloca { i64, i8* }, align 8
  %tmp.217 = alloca { i64, i8* }, align 8
  %tmp.218 = alloca { i64, i8* }, align 8
  %tmp.219 = alloca { i64, i8* }, align 8
  %tmp.220 = alloca { i64, i8* }, align 8
  %tmp.221 = alloca { i64, i8* }, align 8
  %tmp.222 = alloca { i64, i8* }, align 8
  %tmp.223 = alloca { i64, i8* }, align 8
  %tmp.224 = alloca { i64, i8* }, align 8
  %tmp.225 = alloca { i64, i8* }, align 8
  %tmp.226 = alloca { i64, i8* }, align 8
  %tmp.227 = alloca { i64, i8* }, align 8
  %tmp.228 = alloca { i64, i8* }, align 8
  %tmp.229 = alloca { i64, i8* }, align 8
  %tmp.230 = alloca { i64, i8* }, align 8
  %tmp.231 = alloca { i64, i8* }, align 8
  %tmp.232 = alloca { i64, i8* }, align 8
  %tmp.233 = alloca { i64, i8* }, align 8
  %tmp.234 = alloca { i64, i8* }, align 8
  %tmp.235 = alloca { i64, i8* }, align 8
  %tmp.236 = alloca { i64, i8* }, align 8
  %tmp.237 = alloca { i64, i8* }, align 8
  %tmp.238 = alloca { i64, i8* }, align 8
  %tmp.239 = alloca { i64, i8* }, align 8
  %tmp.240 = alloca { i64, i8* }, align 8
  %tmp.241 = alloca { i64, i8* }, align 8
  %tmp.242 = alloca { i64, i8* }, align 8
  %tmp.243 = alloca { i64, i8* }, align 8
  %tmp.244 = alloca { i64, i8* }, align 8
  %tmp.245 = alloca { i64, i8* }, align 8
  %tmp.246 = alloca { i64, i8* }, align 8
  %tmp.247 = alloca { i64, i8* }, align 8
  %tmp.248 = alloca { i64, i8* }, align 8
  %tmp.249 = alloca { i64, i8* }, align 8
  %tmp.250 = alloca { i64, i8* }, align 8
  %tmp.251 = alloca { i64, i8* }, align 8
  %tmp.252 = alloca { i64, i8* }, align 8
  %tmp.253 = alloca { i64, i8* }, align 8
  %tmp.254 = alloca { i64, i8* }, align 8
  %tmp.255 = alloca { i64, i8* }, align 8
  %tmp.256 = alloca { i64, i8* }, align 8
  %tmp.257 = alloca { i64, i8* }, align 8
  %tmp.258 = alloca { i64, i8* }, align 8
  %tmp.259 = alloca { i64, i8* }, align 8
  %tmp.260 = alloca { i64, i8* }, align 8
  %tmp.261 = alloca { i64, i8* }, align 8
  %tmp.262 = alloca { i64, i8* }, align 8
  %tmp.263 = alloca { i64, i8* }, align 8
  %tmp.264 = alloca { i64, i8* }, align 8
  store { i64, { i64, i8* }* } %args.value, { i64, { i64, i8* }* }* %args, align 8
  %0 = getelementptr [5 x i8], [5 x i8]* @"linux::str.4", i64 0, i64 0
  %1 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %0, 1
  store { i64, i8* } %1, { i64, i8* }* %tmp.0, align 8
  %2 = load { i64, i8* }, { i64, i8* }* %tmp.0, align 8
  %3 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 0
  store { i64, i8* } %2, { i64, i8* }* %3, align 8
  %4 = bitcast i32 (i8*, %"linux::s_stat"*)* @stat to void ()*
  %5 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 0
  store void ()* %4, void ()** %5, align 8
  %6 = getelementptr [6 x i8], [6 x i8]* @"linux::str.5", i64 0, i64 0
  %7 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %6, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp.1, align 8
  %8 = load { i64, i8* }, { i64, i8* }* %tmp.1, align 8
  %9 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 1
  store { i64, i8* } %8, { i64, i8* }* %9, align 8
  %10 = bitcast i32 (i32, %"linux::s_stat"*)* @fstat to void ()*
  %11 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 1
  store void ()* %10, void ()** %11, align 8
  %12 = getelementptr [8 x i8], [8 x i8]* @"linux::str.6", i64 0, i64 0
  %13 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %12, 1
  store { i64, i8* } %13, { i64, i8* }* %tmp.2, align 8
  %14 = load { i64, i8* }, { i64, i8* }* %tmp.2, align 8
  %15 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 2
  store { i64, i8* } %14, { i64, i8* }* %15, align 8
  %16 = bitcast i32 (i32, i8*, %"linux::s_stat"*, i32)* @fstatat to void ()*
  %17 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 2
  store void ()* %16, void ()** %17, align 8
  %18 = getelementptr [6 x i8], [6 x i8]* @"linux::str.7", i64 0, i64 0
  %19 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %18, 1
  store { i64, i8* } %19, { i64, i8* }* %tmp.3, align 8
  %20 = load { i64, i8* }, { i64, i8* }* %tmp.3, align 8
  %21 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 3
  store { i64, i8* } %20, { i64, i8* }* %21, align 8
  %22 = bitcast i32 (i8*, %"linux::s_stat"*)* @lstat to void ()*
  %23 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 3
  store void ()* %22, void ()** %23, align 8
  %24 = getelementptr [6 x i8], [6 x i8]* @"linux::str.8", i64 0, i64 0
  %25 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %24, 1
  store { i64, i8* } %25, { i64, i8* }* %tmp.4, align 8
  %26 = load { i64, i8* }, { i64, i8* }* %tmp.4, align 8
  %27 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 4
  store { i64, i8* } %26, { i64, i8* }* %27, align 8
  %28 = bitcast i32 (i8*, i32)* @chmod to void ()*
  %29 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 4
  store void ()* %28, void ()** %29, align 8
  %30 = getelementptr [7 x i8], [7 x i8]* @"linux::str.9", i64 0, i64 0
  %31 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %30, 1
  store { i64, i8* } %31, { i64, i8* }* %tmp.5, align 8
  %32 = load { i64, i8* }, { i64, i8* }* %tmp.5, align 8
  %33 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 5
  store { i64, i8* } %32, { i64, i8* }* %33, align 8
  %34 = bitcast i32 (i32, i32)* @fchmod to void ()*
  %35 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 5
  store void ()* %34, void ()** %35, align 8
  %36 = getelementptr [9 x i8], [9 x i8]* @"linux::str.10", i64 0, i64 0
  %37 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %36, 1
  store { i64, i8* } %37, { i64, i8* }* %tmp.6, align 8
  %38 = load { i64, i8* }, { i64, i8* }* %tmp.6, align 8
  %39 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 6
  store { i64, i8* } %38, { i64, i8* }* %39, align 8
  %40 = bitcast i32 (i32, i8*, i32, i32)* @fchmodat to void ()*
  %41 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 6
  store void ()* %40, void ()** %41, align 8
  %42 = getelementptr [6 x i8], [6 x i8]* @"linux::str.11", i64 0, i64 0
  %43 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %42, 1
  store { i64, i8* } %43, { i64, i8* }* %tmp.7, align 8
  %44 = load { i64, i8* }, { i64, i8* }* %tmp.7, align 8
  %45 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 7
  store { i64, i8* } %44, { i64, i8* }* %45, align 8
  %46 = bitcast i32 (i32)* @umask to void ()*
  %47 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 7
  store void ()* %46, void ()** %47, align 8
  %48 = getelementptr [6 x i8], [6 x i8]* @"linux::str.12", i64 0, i64 0
  %49 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %48, 1
  store { i64, i8* } %49, { i64, i8* }* %tmp.8, align 8
  %50 = load { i64, i8* }, { i64, i8* }* %tmp.8, align 8
  %51 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 8
  store { i64, i8* } %50, { i64, i8* }* %51, align 8
  %52 = bitcast i32 (i8*, i32)* @mkdir to void ()*
  %53 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 8
  store void ()* %52, void ()** %53, align 8
  %54 = getelementptr [8 x i8], [8 x i8]* @"linux::str.13", i64 0, i64 0
  %55 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %54, 1
  store { i64, i8* } %55, { i64, i8* }* %tmp.9, align 8
  %56 = load { i64, i8* }, { i64, i8* }* %tmp.9, align 8
  %57 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 9
  store { i64, i8* } %56, { i64, i8* }* %57, align 8
  %58 = bitcast i32 (i32, i8*, i32)* @mkdirat to void ()*
  %59 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 9
  store void ()* %58, void ()** %59, align 8
  %60 = getelementptr [6 x i8], [6 x i8]* @"linux::str.14", i64 0, i64 0
  %61 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %60, 1
  store { i64, i8* } %61, { i64, i8* }* %tmp.10, align 8
  %62 = load { i64, i8* }, { i64, i8* }* %tmp.10, align 8
  %63 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 10
  store { i64, i8* } %62, { i64, i8* }* %63, align 8
  %64 = bitcast i32 (i8*, i32, i64)* @mknod to void ()*
  %65 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 10
  store void ()* %64, void ()** %65, align 8
  %66 = getelementptr [8 x i8], [8 x i8]* @"linux::str.15", i64 0, i64 0
  %67 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %66, 1
  store { i64, i8* } %67, { i64, i8* }* %tmp.11, align 8
  %68 = load { i64, i8* }, { i64, i8* }* %tmp.11, align 8
  %69 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 11
  store { i64, i8* } %68, { i64, i8* }* %69, align 8
  %70 = bitcast i32 (i32, i8*, i32, i64)* @mknodat to void ()*
  %71 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 11
  store void ()* %70, void ()** %71, align 8
  %72 = getelementptr [7 x i8], [7 x i8]* @"linux::str.16", i64 0, i64 0
  %73 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %72, 1
  store { i64, i8* } %73, { i64, i8* }* %tmp.12, align 8
  %74 = load { i64, i8* }, { i64, i8* }* %tmp.12, align 8
  %75 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 12
  store { i64, i8* } %74, { i64, i8* }* %75, align 8
  %76 = bitcast i32 (i8*, i32)* @mkfifo to void ()*
  %77 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 12
  store void ()* %76, void ()** %77, align 8
  %78 = getelementptr [9 x i8], [9 x i8]* @"linux::str.17", i64 0, i64 0
  %79 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %78, 1
  store { i64, i8* } %79, { i64, i8* }* %tmp.13, align 8
  %80 = load { i64, i8* }, { i64, i8* }* %tmp.13, align 8
  %81 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 13
  store { i64, i8* } %80, { i64, i8* }* %81, align 8
  %82 = bitcast i32 (i32, i8*, i32)* @mkfifoat to void ()*
  %83 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 13
  store void ()* %82, void ()** %83, align 8
  %84 = getelementptr [10 x i8], [10 x i8]* @"linux::str.18", i64 0, i64 0
  %85 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %84, 1
  store { i64, i8* } %85, { i64, i8* }* %tmp.14, align 8
  %86 = load { i64, i8* }, { i64, i8* }* %tmp.14, align 8
  %87 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 14
  store { i64, i8* } %86, { i64, i8* }* %87, align 8
  %88 = bitcast i32 (i32, i8*, %"cstd::ldiv_t"*, i32)* @utimensat to void ()*
  %89 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 14
  store void ()* %88, void ()** %89, align 8
  %90 = getelementptr [9 x i8], [9 x i8]* @"linux::str.19", i64 0, i64 0
  %91 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %90, 1
  store { i64, i8* } %91, { i64, i8* }* %tmp.15, align 8
  %92 = load { i64, i8* }, { i64, i8* }* %tmp.15, align 8
  %93 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 15
  store { i64, i8* } %92, { i64, i8* }* %93, align 8
  %94 = bitcast i32 (i32, %"cstd::ldiv_t"*)* @futimens to void ()*
  %95 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 15
  store void ()* %94, void ()** %95, align 8
  %96 = getelementptr [9 x i8], [9 x i8]* @"linux::str.20", i64 0, i64 0
  %97 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %96, 1
  store { i64, i8* } %97, { i64, i8* }* %tmp.16, align 8
  %98 = load { i64, i8* }, { i64, i8* }* %tmp.16, align 8
  %99 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 16
  store { i64, i8* } %98, { i64, i8* }* %99, align 8
  %100 = bitcast i32 (i32, i32, %"linux::s_stat"*)* @__fxstat to void ()*
  %101 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 16
  store void ()* %100, void ()** %101, align 8
  %102 = getelementptr [8 x i8], [8 x i8]* @"linux::str.21", i64 0, i64 0
  %103 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %102, 1
  store { i64, i8* } %103, { i64, i8* }* %tmp.17, align 8
  %104 = load { i64, i8* }, { i64, i8* }* %tmp.17, align 8
  %105 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 17
  store { i64, i8* } %104, { i64, i8* }* %105, align 8
  %106 = bitcast i32 (i32, i8*, %"linux::s_stat"*)* @__xstat to void ()*
  %107 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 17
  store void ()* %106, void ()** %107, align 8
  %108 = getelementptr [9 x i8], [9 x i8]* @"linux::str.22", i64 0, i64 0
  %109 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %108, 1
  store { i64, i8* } %109, { i64, i8* }* %tmp.18, align 8
  %110 = load { i64, i8* }, { i64, i8* }* %tmp.18, align 8
  %111 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 18
  store { i64, i8* } %110, { i64, i8* }* %111, align 8
  %112 = bitcast i32 (i32, i8*, %"linux::s_stat"*)* @__lxstat to void ()*
  %113 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 18
  store void ()* %112, void ()** %113, align 8
  %114 = getelementptr [11 x i8], [11 x i8]* @"linux::str.23", i64 0, i64 0
  %115 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %114, 1
  store { i64, i8* } %115, { i64, i8* }* %tmp.19, align 8
  %116 = load { i64, i8* }, { i64, i8* }* %tmp.19, align 8
  %117 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 19
  store { i64, i8* } %116, { i64, i8* }* %117, align 8
  %118 = bitcast i32 (i32, i32, i8*, %"linux::s_stat"*, i32)* @__fxstatat to void ()*
  %119 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 19
  store void ()* %118, void ()** %119, align 8
  %120 = getelementptr [9 x i8], [9 x i8]* @"linux::str.24", i64 0, i64 0
  %121 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %120, 1
  store { i64, i8* } %121, { i64, i8* }* %tmp.20, align 8
  %122 = load { i64, i8* }, { i64, i8* }* %tmp.20, align 8
  %123 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 20
  store { i64, i8* } %122, { i64, i8* }* %123, align 8
  %124 = bitcast i32 (i32, i8*, i32, i64*)* @__xmknod to void ()*
  %125 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 20
  store void ()* %124, void ()** %125, align 8
  %126 = getelementptr [11 x i8], [11 x i8]* @"linux::str.25", i64 0, i64 0
  %127 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %126, 1
  store { i64, i8* } %127, { i64, i8* }* %tmp.21, align 8
  %128 = load { i64, i8* }, { i64, i8* }* %tmp.21, align 8
  %129 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 21
  store { i64, i8* } %128, { i64, i8* }* %129, align 8
  %130 = bitcast i32 (i32, i32, i8*, i32, i64*)* @__xmknodat to void ()*
  %131 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 21
  store void ()* %130, void ()** %131, align 8
  %132 = getelementptr [6 x i8], [6 x i8]* @"linux::str.26", i64 0, i64 0
  %133 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %132, 1
  store { i64, i8* } %133, { i64, i8* }* %tmp.22, align 8
  %134 = load { i64, i8* }, { i64, i8* }* %tmp.22, align 8
  %135 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 22
  store { i64, i8* } %134, { i64, i8* }* %135, align 8
  %136 = bitcast i32 (i32, i64, ...)* @ioctl to void ()*
  %137 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 22
  store void ()* %136, void ()** %137, align 8
  %138 = getelementptr [14 x i8], [14 x i8]* @"linux::str.27", i64 0, i64 0
  %139 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %138, 1
  store { i64, i8* } %139, { i64, i8* }* %tmp.23, align 8
  %140 = load { i64, i8* }, { i64, i8* }* %tmp.23, align 8
  %141 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 23
  store { i64, i8* } %140, { i64, i8* }* %141, align 8
  %142 = bitcast void (i32)* (i32, void (i32)*)* @__sysv_signal to void ()*
  %143 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 23
  store void ()* %142, void ()** %143, align 8
  %144 = getelementptr [7 x i8], [7 x i8]* @"linux::str.28", i64 0, i64 0
  %145 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %144, 1
  store { i64, i8* } %145, { i64, i8* }* %tmp.24, align 8
  %146 = load { i64, i8* }, { i64, i8* }* %tmp.24, align 8
  %147 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 24
  store { i64, i8* } %146, { i64, i8* }* %147, align 8
  %148 = bitcast void (i32)* (i32, void (i32)*)* @signal to void ()*
  %149 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 24
  store void ()* %148, void ()** %149, align 8
  %150 = getelementptr [5 x i8], [5 x i8]* @"linux::str.29", i64 0, i64 0
  %151 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %150, 1
  store { i64, i8* } %151, { i64, i8* }* %tmp.25, align 8
  %152 = load { i64, i8* }, { i64, i8* }* %tmp.25, align 8
  %153 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 25
  store { i64, i8* } %152, { i64, i8* }* %153, align 8
  %154 = bitcast i32 (i32, i32)* @kill to void ()*
  %155 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 25
  store void ()* %154, void ()** %155, align 8
  %156 = getelementptr [7 x i8], [7 x i8]* @"linux::str.30", i64 0, i64 0
  %157 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %156, 1
  store { i64, i8* } %157, { i64, i8* }* %tmp.26, align 8
  %158 = load { i64, i8* }, { i64, i8* }* %tmp.26, align 8
  %159 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 26
  store { i64, i8* } %158, { i64, i8* }* %159, align 8
  %160 = bitcast i32 (i32, i32)* @killpg to void ()*
  %161 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 26
  store void ()* %160, void ()** %161, align 8
  %162 = getelementptr [6 x i8], [6 x i8]* @"linux::str.31", i64 0, i64 0
  %163 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %162, 1
  store { i64, i8* } %163, { i64, i8* }* %tmp.27, align 8
  %164 = load { i64, i8* }, { i64, i8* }* %tmp.27, align 8
  %165 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 27
  store { i64, i8* } %164, { i64, i8* }* %165, align 8
  %166 = bitcast i32 (i32)* @raise to void ()*
  %167 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 27
  store void ()* %166, void ()** %167, align 8
  %168 = getelementptr [8 x i8], [8 x i8]* @"linux::str.32", i64 0, i64 0
  %169 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %168, 1
  store { i64, i8* } %169, { i64, i8* }* %tmp.28, align 8
  %170 = load { i64, i8* }, { i64, i8* }* %tmp.28, align 8
  %171 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 28
  store { i64, i8* } %170, { i64, i8* }* %171, align 8
  %172 = bitcast void (i32)* (i32, void (i32)*)* @ssignal to void ()*
  %173 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 28
  store void ()* %172, void ()** %173, align 8
  %174 = getelementptr [8 x i8], [8 x i8]* @"linux::str.33", i64 0, i64 0
  %175 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %174, 1
  store { i64, i8* } %175, { i64, i8* }* %tmp.29, align 8
  %176 = load { i64, i8* }, { i64, i8* }* %tmp.29, align 8
  %177 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 29
  store { i64, i8* } %176, { i64, i8* }* %177, align 8
  %178 = bitcast i32 (i32)* @gsignal to void ()*
  %179 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 29
  store void ()* %178, void ()** %179, align 8
  %180 = getelementptr [8 x i8], [8 x i8]* @"linux::str.34", i64 0, i64 0
  %181 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %180, 1
  store { i64, i8* } %181, { i64, i8* }* %tmp.30, align 8
  %182 = load { i64, i8* }, { i64, i8* }* %tmp.30, align 8
  %183 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 30
  store { i64, i8* } %182, { i64, i8* }* %183, align 8
  %184 = bitcast void (i32, i8*)* @psignal to void ()*
  %185 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 30
  store void ()* %184, void ()** %185, align 8
  %186 = getelementptr [9 x i8], [9 x i8]* @"linux::str.35", i64 0, i64 0
  %187 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %186, 1
  store { i64, i8* } %187, { i64, i8* }* %tmp.31, align 8
  %188 = load { i64, i8* }, { i64, i8* }* %tmp.31, align 8
  %189 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 31
  store { i64, i8* } %188, { i64, i8* }* %189, align 8
  %190 = bitcast void (%"linux::siginfo_t"*, i8*)* @psiginfo to void ()*
  %191 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 31
  store void ()* %190, void ()** %191, align 8
  %192 = getelementptr [9 x i8], [9 x i8]* @"linux::str.36", i64 0, i64 0
  %193 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %192, 1
  store { i64, i8* } %193, { i64, i8* }* %tmp.32, align 8
  %194 = load { i64, i8* }, { i64, i8* }* %tmp.32, align 8
  %195 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 32
  store { i64, i8* } %194, { i64, i8* }* %195, align 8
  %196 = bitcast i32 (i32)* @sigblock to void ()*
  %197 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 32
  store void ()* %196, void ()** %197, align 8
  %198 = getelementptr [11 x i8], [11 x i8]* @"linux::str.37", i64 0, i64 0
  %199 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %198, 1
  store { i64, i8* } %199, { i64, i8* }* %tmp.33, align 8
  %200 = load { i64, i8* }, { i64, i8* }* %tmp.33, align 8
  %201 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 33
  store { i64, i8* } %200, { i64, i8* }* %201, align 8
  %202 = bitcast i32 (i32)* @sigsetmask to void ()*
  %203 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 33
  store void ()* %202, void ()** %203, align 8
  %204 = getelementptr [12 x i8], [12 x i8]* @"linux::str.38", i64 0, i64 0
  %205 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %204, 1
  store { i64, i8* } %205, { i64, i8* }* %tmp.34, align 8
  %206 = load { i64, i8* }, { i64, i8* }* %tmp.34, align 8
  %207 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 34
  store { i64, i8* } %206, { i64, i8* }* %207, align 8
  %208 = bitcast i32 (%"cstd::__sigset_t"*)* @sigemptyset to void ()*
  %209 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 34
  store void ()* %208, void ()** %209, align 8
  %210 = getelementptr [11 x i8], [11 x i8]* @"linux::str.39", i64 0, i64 0
  %211 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %210, 1
  store { i64, i8* } %211, { i64, i8* }* %tmp.35, align 8
  %212 = load { i64, i8* }, { i64, i8* }* %tmp.35, align 8
  %213 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 35
  store { i64, i8* } %212, { i64, i8* }* %213, align 8
  %214 = bitcast i32 (%"cstd::__sigset_t"*)* @sigfillset to void ()*
  %215 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 35
  store void ()* %214, void ()** %215, align 8
  %216 = getelementptr [10 x i8], [10 x i8]* @"linux::str.40", i64 0, i64 0
  %217 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %216, 1
  store { i64, i8* } %217, { i64, i8* }* %tmp.36, align 8
  %218 = load { i64, i8* }, { i64, i8* }* %tmp.36, align 8
  %219 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 36
  store { i64, i8* } %218, { i64, i8* }* %219, align 8
  %220 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @sigaddset to void ()*
  %221 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 36
  store void ()* %220, void ()** %221, align 8
  %222 = getelementptr [10 x i8], [10 x i8]* @"linux::str.41", i64 0, i64 0
  %223 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %222, 1
  store { i64, i8* } %223, { i64, i8* }* %tmp.37, align 8
  %224 = load { i64, i8* }, { i64, i8* }* %tmp.37, align 8
  %225 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 37
  store { i64, i8* } %224, { i64, i8* }* %225, align 8
  %226 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @sigdelset to void ()*
  %227 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 37
  store void ()* %226, void ()** %227, align 8
  %228 = getelementptr [12 x i8], [12 x i8]* @"linux::str.42", i64 0, i64 0
  %229 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %228, 1
  store { i64, i8* } %229, { i64, i8* }* %tmp.38, align 8
  %230 = load { i64, i8* }, { i64, i8* }* %tmp.38, align 8
  %231 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 38
  store { i64, i8* } %230, { i64, i8* }* %231, align 8
  %232 = bitcast i32 (%"cstd::__sigset_t"*, i32)* @sigismember to void ()*
  %233 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 38
  store void ()* %232, void ()** %233, align 8
  %234 = getelementptr [12 x i8], [12 x i8]* @"linux::str.43", i64 0, i64 0
  %235 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %234, 1
  store { i64, i8* } %235, { i64, i8* }* %tmp.39, align 8
  %236 = load { i64, i8* }, { i64, i8* }* %tmp.39, align 8
  %237 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 39
  store { i64, i8* } %236, { i64, i8* }* %237, align 8
  %238 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)* @sigprocmask to void ()*
  %239 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 39
  store void ()* %238, void ()** %239, align 8
  %240 = getelementptr [11 x i8], [11 x i8]* @"linux::str.44", i64 0, i64 0
  %241 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %240, 1
  store { i64, i8* } %241, { i64, i8* }* %tmp.40, align 8
  %242 = load { i64, i8* }, { i64, i8* }* %tmp.40, align 8
  %243 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 40
  store { i64, i8* } %242, { i64, i8* }* %243, align 8
  %244 = bitcast i32 (%"cstd::__sigset_t"*)* @sigsuspend to void ()*
  %245 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 40
  store void ()* %244, void ()** %245, align 8
  %246 = getelementptr [10 x i8], [10 x i8]* @"linux::str.45", i64 0, i64 0
  %247 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %246, 1
  store { i64, i8* } %247, { i64, i8* }* %tmp.41, align 8
  %248 = load { i64, i8* }, { i64, i8* }* %tmp.41, align 8
  %249 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 41
  store { i64, i8* } %248, { i64, i8* }* %249, align 8
  %250 = bitcast i32 (i32, %"linux::s_sigaction"*, %"linux::s_sigaction"*)* @sigaction to void ()*
  %251 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 41
  store void ()* %250, void ()** %251, align 8
  %252 = getelementptr [11 x i8], [11 x i8]* @"linux::str.46", i64 0, i64 0
  %253 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %252, 1
  store { i64, i8* } %253, { i64, i8* }* %tmp.42, align 8
  %254 = load { i64, i8* }, { i64, i8* }* %tmp.42, align 8
  %255 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 42
  store { i64, i8* } %254, { i64, i8* }* %255, align 8
  %256 = bitcast i32 (%"cstd::__sigset_t"*)* @sigpending to void ()*
  %257 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 42
  store void ()* %256, void ()** %257, align 8
  %258 = getelementptr [8 x i8], [8 x i8]* @"linux::str.47", i64 0, i64 0
  %259 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %258, 1
  store { i64, i8* } %259, { i64, i8* }* %tmp.43, align 8
  %260 = load { i64, i8* }, { i64, i8* }* %tmp.43, align 8
  %261 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 43
  store { i64, i8* } %260, { i64, i8* }* %261, align 8
  %262 = bitcast i32 (%"cstd::__sigset_t"*, i32*)* @sigwait to void ()*
  %263 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 43
  store void ()* %262, void ()** %263, align 8
  %264 = getelementptr [12 x i8], [12 x i8]* @"linux::str.48", i64 0, i64 0
  %265 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %264, 1
  store { i64, i8* } %265, { i64, i8* }* %tmp.44, align 8
  %266 = load { i64, i8* }, { i64, i8* }* %tmp.44, align 8
  %267 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 44
  store { i64, i8* } %266, { i64, i8* }* %267, align 8
  %268 = bitcast i32 (%"cstd::__sigset_t"*, %"linux::siginfo_t"*)* @sigwaitinfo to void ()*
  %269 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 44
  store void ()* %268, void ()** %269, align 8
  %270 = getelementptr [13 x i8], [13 x i8]* @"linux::str.49", i64 0, i64 0
  %271 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %270, 1
  store { i64, i8* } %271, { i64, i8* }* %tmp.45, align 8
  %272 = load { i64, i8* }, { i64, i8* }* %tmp.45, align 8
  %273 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 45
  store { i64, i8* } %272, { i64, i8* }* %273, align 8
  %274 = bitcast i32 (%"cstd::__sigset_t"*, %"linux::siginfo_t"*, %"cstd::ldiv_t"*)* @sigtimedwait to void ()*
  %275 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 45
  store void ()* %274, void ()** %275, align 8
  %276 = getelementptr [9 x i8], [9 x i8]* @"linux::str.50", i64 0, i64 0
  %277 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %276, 1
  store { i64, i8* } %277, { i64, i8* }* %tmp.46, align 8
  %278 = load { i64, i8* }, { i64, i8* }* %tmp.46, align 8
  %279 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 46
  store { i64, i8* } %278, { i64, i8* }* %279, align 8
  %280 = bitcast i32 (i32, i32, %"ffi::ffi_raw")* @sigqueue to void ()*
  %281 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 46
  store void ()* %280, void ()** %281, align 8
  %282 = getelementptr [13 x i8], [13 x i8]* @"linux::str.51", i64 0, i64 0
  %283 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %282, 1
  store { i64, i8* } %283, { i64, i8* }* %tmp.47, align 8
  %284 = load { i64, i8* }, { i64, i8* }* %tmp.47, align 8
  %285 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 47
  store { i64, i8* } %284, { i64, i8* }* %285, align 8
  %286 = bitcast i32 (i32, i32)* @siginterrupt to void ()*
  %287 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 47
  store void ()* %286, void ()** %287, align 8
  %288 = getelementptr [12 x i8], [12 x i8]* @"linux::str.52", i64 0, i64 0
  %289 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %288, 1
  store { i64, i8* } %289, { i64, i8* }* %tmp.48, align 8
  %290 = load { i64, i8* }, { i64, i8* }* %tmp.48, align 8
  %291 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 48
  store { i64, i8* } %290, { i64, i8* }* %291, align 8
  %292 = bitcast i32 (%"linux::stack_t"*, %"linux::stack_t"*)* @sigaltstack to void ()*
  %293 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 48
  store void ()* %292, void ()** %293, align 8
  %294 = getelementptr [16 x i8], [16 x i8]* @"linux::str.53", i64 0, i64 0
  %295 = insertvalue { i64, i8* } { i64 16, i8* undef }, i8* %294, 1
  store { i64, i8* } %295, { i64, i8* }* %tmp.49, align 8
  %296 = load { i64, i8* }, { i64, i8* }* %tmp.49, align 8
  %297 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 49
  store { i64, i8* } %296, { i64, i8* }* %297, align 8
  %298 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)* @pthread_sigmask to void ()*
  %299 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 49
  store void ()* %298, void ()** %299, align 8
  %300 = getelementptr [13 x i8], [13 x i8]* @"linux::str.54", i64 0, i64 0
  %301 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %300, 1
  store { i64, i8* } %301, { i64, i8* }* %tmp.50, align 8
  %302 = load { i64, i8* }, { i64, i8* }* %tmp.50, align 8
  %303 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 50
  store { i64, i8* } %302, { i64, i8* }* %303, align 8
  %304 = bitcast i32 (i64, i32)* @pthread_kill to void ()*
  %305 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 50
  store void ()* %304, void ()** %305, align 8
  %306 = getelementptr [24 x i8], [24 x i8]* @"linux::str.55", i64 0, i64 0
  %307 = insertvalue { i64, i8* } { i64 24, i8* undef }, i8* %306, 1
  store { i64, i8* } %307, { i64, i8* }* %tmp.51, align 8
  %308 = load { i64, i8* }, { i64, i8* }* %tmp.51, align 8
  %309 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 51
  store { i64, i8* } %308, { i64, i8* }* %309, align 8
  %310 = bitcast i32 ()* @__libc_current_sigrtmin to void ()*
  %311 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 51
  store void ()* %310, void ()** %311, align 8
  %312 = getelementptr [24 x i8], [24 x i8]* @"linux::str.56", i64 0, i64 0
  %313 = insertvalue { i64, i8* } { i64 24, i8* undef }, i8* %312, 1
  store { i64, i8* } %313, { i64, i8* }* %tmp.52, align 8
  %314 = load { i64, i8* }, { i64, i8* }* %tmp.52, align 8
  %315 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 52
  store { i64, i8* } %314, { i64, i8* }* %315, align 8
  %316 = bitcast i32 ()* @__libc_current_sigrtmax to void ()*
  %317 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 52
  store void ()* %316, void ()** %317, align 8
  %318 = getelementptr [5 x i8], [5 x i8]* @"linux::str.57", i64 0, i64 0
  %319 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %318, 1
  store { i64, i8* } %319, { i64, i8* }* %tmp.53, align 8
  %320 = load { i64, i8* }, { i64, i8* }* %tmp.53, align 8
  %321 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 53
  store { i64, i8* } %320, { i64, i8* }* %321, align 8
  %322 = bitcast i32 (i32*)* @wait to void ()*
  %323 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 53
  store void ()* %322, void ()** %323, align 8
  %324 = getelementptr [8 x i8], [8 x i8]* @"linux::str.58", i64 0, i64 0
  %325 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %324, 1
  store { i64, i8* } %325, { i64, i8* }* %tmp.54, align 8
  %326 = load { i64, i8* }, { i64, i8* }* %tmp.54, align 8
  %327 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 54
  store { i64, i8* } %326, { i64, i8* }* %327, align 8
  %328 = bitcast i32 (i32, i32*, i32)* @waitpid to void ()*
  %329 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 54
  store void ()* %328, void ()** %329, align 8
  %330 = getelementptr [7 x i8], [7 x i8]* @"linux::str.59", i64 0, i64 0
  %331 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %330, 1
  store { i64, i8* } %331, { i64, i8* }* %tmp.55, align 8
  %332 = load { i64, i8* }, { i64, i8* }* %tmp.55, align 8
  %333 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 55
  store { i64, i8* } %332, { i64, i8* }* %333, align 8
  %334 = bitcast i32 (i32, i32, %"linux::siginfo_t"*, i32)* @waitid to void ()*
  %335 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 55
  store void ()* %334, void ()** %335, align 8
  %336 = getelementptr [6 x i8], [6 x i8]* @"linux::str.60", i64 0, i64 0
  %337 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %336, 1
  store { i64, i8* } %337, { i64, i8* }* %tmp.56, align 8
  %338 = load { i64, i8* }, { i64, i8* }* %tmp.56, align 8
  %339 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 56
  store { i64, i8* } %338, { i64, i8* }* %339, align 8
  %340 = bitcast i32 (i32*, i32, %"linux::s_rusage"*)* @wait3 to void ()*
  %341 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 56
  store void ()* %340, void ()** %341, align 8
  %342 = getelementptr [6 x i8], [6 x i8]* @"linux::str.61", i64 0, i64 0
  %343 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %342, 1
  store { i64, i8* } %343, { i64, i8* }* %tmp.57, align 8
  %344 = load { i64, i8* }, { i64, i8* }* %tmp.57, align 8
  %345 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 57
  store { i64, i8* } %344, { i64, i8* }* %345, align 8
  %346 = bitcast i32 (i32, i32*, i32, %"linux::s_rusage"*)* @wait4 to void ()*
  %347 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 57
  store void ()* %346, void ()** %347, align 8
  %348 = getelementptr [5 x i8], [5 x i8]* @"linux::str.62", i64 0, i64 0
  %349 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %348, 1
  store { i64, i8* } %349, { i64, i8* }* %tmp.58, align 8
  %350 = load { i64, i8* }, { i64, i8* }* %tmp.58, align 8
  %351 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 58
  store { i64, i8* } %350, { i64, i8* }* %351, align 8
  %352 = bitcast i8* (i8*, i64, i32, i32, i32, i64)* @mmap to void ()*
  %353 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 58
  store void ()* %352, void ()** %353, align 8
  %354 = getelementptr [7 x i8], [7 x i8]* @"linux::str.63", i64 0, i64 0
  %355 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %354, 1
  store { i64, i8* } %355, { i64, i8* }* %tmp.59, align 8
  %356 = load { i64, i8* }, { i64, i8* }* %tmp.59, align 8
  %357 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 59
  store { i64, i8* } %356, { i64, i8* }* %357, align 8
  %358 = bitcast i32 (i8*, i64)* @munmap to void ()*
  %359 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 59
  store void ()* %358, void ()** %359, align 8
  %360 = getelementptr [9 x i8], [9 x i8]* @"linux::str.64", i64 0, i64 0
  %361 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %360, 1
  store { i64, i8* } %361, { i64, i8* }* %tmp.60, align 8
  %362 = load { i64, i8* }, { i64, i8* }* %tmp.60, align 8
  %363 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 60
  store { i64, i8* } %362, { i64, i8* }* %363, align 8
  %364 = bitcast i32 (i8*, i64, i32)* @mprotect to void ()*
  %365 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 60
  store void ()* %364, void ()** %365, align 8
  %366 = getelementptr [6 x i8], [6 x i8]* @"linux::str.65", i64 0, i64 0
  %367 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %366, 1
  store { i64, i8* } %367, { i64, i8* }* %tmp.61, align 8
  %368 = load { i64, i8* }, { i64, i8* }* %tmp.61, align 8
  %369 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 61
  store { i64, i8* } %368, { i64, i8* }* %369, align 8
  %370 = bitcast i32 (i8*, i64, i32)* @msync to void ()*
  %371 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 61
  store void ()* %370, void ()** %371, align 8
  %372 = getelementptr [8 x i8], [8 x i8]* @"linux::str.66", i64 0, i64 0
  %373 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %372, 1
  store { i64, i8* } %373, { i64, i8* }* %tmp.62, align 8
  %374 = load { i64, i8* }, { i64, i8* }* %tmp.62, align 8
  %375 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 62
  store { i64, i8* } %374, { i64, i8* }* %375, align 8
  %376 = bitcast i32 (i8*, i64, i32)* @madvise to void ()*
  %377 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 62
  store void ()* %376, void ()** %377, align 8
  %378 = getelementptr [14 x i8], [14 x i8]* @"linux::str.67", i64 0, i64 0
  %379 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %378, 1
  store { i64, i8* } %379, { i64, i8* }* %tmp.63, align 8
  %380 = load { i64, i8* }, { i64, i8* }* %tmp.63, align 8
  %381 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 63
  store { i64, i8* } %380, { i64, i8* }* %381, align 8
  %382 = bitcast i32 (i8*, i64, i32)* @posix_madvise to void ()*
  %383 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 63
  store void ()* %382, void ()** %383, align 8
  %384 = getelementptr [6 x i8], [6 x i8]* @"linux::str.68", i64 0, i64 0
  %385 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %384, 1
  store { i64, i8* } %385, { i64, i8* }* %tmp.64, align 8
  %386 = load { i64, i8* }, { i64, i8* }* %tmp.64, align 8
  %387 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 64
  store { i64, i8* } %386, { i64, i8* }* %387, align 8
  %388 = bitcast i32 (i8*, i64)* @mlock to void ()*
  %389 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 64
  store void ()* %388, void ()** %389, align 8
  %390 = getelementptr [8 x i8], [8 x i8]* @"linux::str.69", i64 0, i64 0
  %391 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %390, 1
  store { i64, i8* } %391, { i64, i8* }* %tmp.65, align 8
  %392 = load { i64, i8* }, { i64, i8* }* %tmp.65, align 8
  %393 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 65
  store { i64, i8* } %392, { i64, i8* }* %393, align 8
  %394 = bitcast i32 (i8*, i64)* @munlock to void ()*
  %395 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 65
  store void ()* %394, void ()** %395, align 8
  %396 = getelementptr [9 x i8], [9 x i8]* @"linux::str.70", i64 0, i64 0
  %397 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %396, 1
  store { i64, i8* } %397, { i64, i8* }* %tmp.66, align 8
  %398 = load { i64, i8* }, { i64, i8* }* %tmp.66, align 8
  %399 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 66
  store { i64, i8* } %398, { i64, i8* }* %399, align 8
  %400 = bitcast i32 (i32)* @mlockall to void ()*
  %401 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 66
  store void ()* %400, void ()** %401, align 8
  %402 = getelementptr [11 x i8], [11 x i8]* @"linux::str.71", i64 0, i64 0
  %403 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %402, 1
  store { i64, i8* } %403, { i64, i8* }* %tmp.67, align 8
  %404 = load { i64, i8* }, { i64, i8* }* %tmp.67, align 8
  %405 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 67
  store { i64, i8* } %404, { i64, i8* }* %405, align 8
  %406 = bitcast i32 ()* @munlockall to void ()*
  %407 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 67
  store void ()* %406, void ()** %407, align 8
  %408 = getelementptr [8 x i8], [8 x i8]* @"linux::str.72", i64 0, i64 0
  %409 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %408, 1
  store { i64, i8* } %409, { i64, i8* }* %tmp.68, align 8
  %410 = load { i64, i8* }, { i64, i8* }* %tmp.68, align 8
  %411 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 68
  store { i64, i8* } %410, { i64, i8* }* %411, align 8
  %412 = bitcast i32 (i8*, i64, i8*)* @mincore to void ()*
  %413 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 68
  store void ()* %412, void ()** %413, align 8
  %414 = getelementptr [9 x i8], [9 x i8]* @"linux::str.73", i64 0, i64 0
  %415 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %414, 1
  store { i64, i8* } %415, { i64, i8* }* %tmp.69, align 8
  %416 = load { i64, i8* }, { i64, i8* }* %tmp.69, align 8
  %417 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 69
  store { i64, i8* } %416, { i64, i8* }* %417, align 8
  %418 = bitcast i32 (i8*, i32, i32)* @shm_open to void ()*
  %419 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 69
  store void ()* %418, void ()** %419, align 8
  %420 = getelementptr [11 x i8], [11 x i8]* @"linux::str.74", i64 0, i64 0
  %421 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %420, 1
  store { i64, i8* } %421, { i64, i8* }* %tmp.70, align 8
  %422 = load { i64, i8* }, { i64, i8* }* %tmp.70, align 8
  %423 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 70
  store { i64, i8* } %422, { i64, i8* }* %423, align 8
  %424 = bitcast i32 (i8*)* @shm_unlink to void ()*
  %425 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 70
  store void ()* %424, void ()** %425, align 8
  %426 = getelementptr [7 x i8], [7 x i8]* @"linux::str.75", i64 0, i64 0
  %427 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %426, 1
  store { i64, i8* } %427, { i64, i8* }* %tmp.71, align 8
  %428 = load { i64, i8* }, { i64, i8* }* %tmp.71, align 8
  %429 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 71
  store { i64, i8* } %428, { i64, i8* }* %429, align 8
  %430 = bitcast i32 (i8*, i32)* @access to void ()*
  %431 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 71
  store void ()* %430, void ()** %431, align 8
  %432 = getelementptr [10 x i8], [10 x i8]* @"linux::str.76", i64 0, i64 0
  %433 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %432, 1
  store { i64, i8* } %433, { i64, i8* }* %tmp.72, align 8
  %434 = load { i64, i8* }, { i64, i8* }* %tmp.72, align 8
  %435 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 72
  store { i64, i8* } %434, { i64, i8* }* %435, align 8
  %436 = bitcast i32 (i32, i8*, i32, i32)* @faccessat to void ()*
  %437 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 72
  store void ()* %436, void ()** %437, align 8
  %438 = getelementptr [6 x i8], [6 x i8]* @"linux::str.77", i64 0, i64 0
  %439 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %438, 1
  store { i64, i8* } %439, { i64, i8* }* %tmp.73, align 8
  %440 = load { i64, i8* }, { i64, i8* }* %tmp.73, align 8
  %441 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 73
  store { i64, i8* } %440, { i64, i8* }* %441, align 8
  %442 = bitcast i64 (i32, i64, i32)* @lseek to void ()*
  %443 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 73
  store void ()* %442, void ()** %443, align 8
  %444 = getelementptr [6 x i8], [6 x i8]* @"linux::str.78", i64 0, i64 0
  %445 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %444, 1
  store { i64, i8* } %445, { i64, i8* }* %tmp.74, align 8
  %446 = load { i64, i8* }, { i64, i8* }* %tmp.74, align 8
  %447 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 74
  store { i64, i8* } %446, { i64, i8* }* %447, align 8
  %448 = bitcast i32 (i32)* @close to void ()*
  %449 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 74
  store void ()* %448, void ()** %449, align 8
  %450 = getelementptr [5 x i8], [5 x i8]* @"linux::str.79", i64 0, i64 0
  %451 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %450, 1
  store { i64, i8* } %451, { i64, i8* }* %tmp.75, align 8
  %452 = load { i64, i8* }, { i64, i8* }* %tmp.75, align 8
  %453 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 75
  store { i64, i8* } %452, { i64, i8* }* %453, align 8
  %454 = bitcast i64 (i32, i8*, i64)* @read to void ()*
  %455 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 75
  store void ()* %454, void ()** %455, align 8
  %456 = getelementptr [6 x i8], [6 x i8]* @"linux::str.80", i64 0, i64 0
  %457 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %456, 1
  store { i64, i8* } %457, { i64, i8* }* %tmp.76, align 8
  %458 = load { i64, i8* }, { i64, i8* }* %tmp.76, align 8
  %459 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 76
  store { i64, i8* } %458, { i64, i8* }* %459, align 8
  %460 = bitcast i64 (i32, i8*, i64)* @write to void ()*
  %461 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 76
  store void ()* %460, void ()** %461, align 8
  %462 = getelementptr [6 x i8], [6 x i8]* @"linux::str.81", i64 0, i64 0
  %463 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %462, 1
  store { i64, i8* } %463, { i64, i8* }* %tmp.77, align 8
  %464 = load { i64, i8* }, { i64, i8* }* %tmp.77, align 8
  %465 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 77
  store { i64, i8* } %464, { i64, i8* }* %465, align 8
  %466 = bitcast i64 (i32, i8*, i64, i64)* @pread to void ()*
  %467 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 77
  store void ()* %466, void ()** %467, align 8
  %468 = getelementptr [7 x i8], [7 x i8]* @"linux::str.82", i64 0, i64 0
  %469 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %468, 1
  store { i64, i8* } %469, { i64, i8* }* %tmp.78, align 8
  %470 = load { i64, i8* }, { i64, i8* }* %tmp.78, align 8
  %471 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 78
  store { i64, i8* } %470, { i64, i8* }* %471, align 8
  %472 = bitcast i64 (i32, i8*, i64, i64)* @pwrite to void ()*
  %473 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 78
  store void ()* %472, void ()** %473, align 8
  %474 = getelementptr [5 x i8], [5 x i8]* @"linux::str.83", i64 0, i64 0
  %475 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %474, 1
  store { i64, i8* } %475, { i64, i8* }* %tmp.79, align 8
  %476 = load { i64, i8* }, { i64, i8* }* %tmp.79, align 8
  %477 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 79
  store { i64, i8* } %476, { i64, i8* }* %477, align 8
  %478 = bitcast i32 (i32*)* @pipe to void ()*
  %479 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 79
  store void ()* %478, void ()** %479, align 8
  %480 = getelementptr [6 x i8], [6 x i8]* @"linux::str.84", i64 0, i64 0
  %481 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %480, 1
  store { i64, i8* } %481, { i64, i8* }* %tmp.80, align 8
  %482 = load { i64, i8* }, { i64, i8* }* %tmp.80, align 8
  %483 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 80
  store { i64, i8* } %482, { i64, i8* }* %483, align 8
  %484 = bitcast i32 (i32)* @alarm to void ()*
  %485 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 80
  store void ()* %484, void ()** %485, align 8
  %486 = getelementptr [6 x i8], [6 x i8]* @"linux::str.85", i64 0, i64 0
  %487 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %486, 1
  store { i64, i8* } %487, { i64, i8* }* %tmp.81, align 8
  %488 = load { i64, i8* }, { i64, i8* }* %tmp.81, align 8
  %489 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 81
  store { i64, i8* } %488, { i64, i8* }* %489, align 8
  %490 = bitcast i32 (i32)* @sleep to void ()*
  %491 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 81
  store void ()* %490, void ()** %491, align 8
  %492 = getelementptr [7 x i8], [7 x i8]* @"linux::str.86", i64 0, i64 0
  %493 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %492, 1
  store { i64, i8* } %493, { i64, i8* }* %tmp.82, align 8
  %494 = load { i64, i8* }, { i64, i8* }* %tmp.82, align 8
  %495 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 82
  store { i64, i8* } %494, { i64, i8* }* %495, align 8
  %496 = bitcast i32 (i32, i32)* @ualarm to void ()*
  %497 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 82
  store void ()* %496, void ()** %497, align 8
  %498 = getelementptr [7 x i8], [7 x i8]* @"linux::str.87", i64 0, i64 0
  %499 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %498, 1
  store { i64, i8* } %499, { i64, i8* }* %tmp.83, align 8
  %500 = load { i64, i8* }, { i64, i8* }* %tmp.83, align 8
  %501 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 83
  store { i64, i8* } %500, { i64, i8* }* %501, align 8
  %502 = bitcast i32 (i32)* @usleep to void ()*
  %503 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 83
  store void ()* %502, void ()** %503, align 8
  %504 = getelementptr [6 x i8], [6 x i8]* @"linux::str.88", i64 0, i64 0
  %505 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %504, 1
  store { i64, i8* } %505, { i64, i8* }* %tmp.84, align 8
  %506 = load { i64, i8* }, { i64, i8* }* %tmp.84, align 8
  %507 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 84
  store { i64, i8* } %506, { i64, i8* }* %507, align 8
  %508 = bitcast i32 ()* @pause to void ()*
  %509 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 84
  store void ()* %508, void ()** %509, align 8
  %510 = getelementptr [6 x i8], [6 x i8]* @"linux::str.89", i64 0, i64 0
  %511 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %510, 1
  store { i64, i8* } %511, { i64, i8* }* %tmp.85, align 8
  %512 = load { i64, i8* }, { i64, i8* }* %tmp.85, align 8
  %513 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 85
  store { i64, i8* } %512, { i64, i8* }* %513, align 8
  %514 = bitcast i32 (i8*, i32, i32)* @chown to void ()*
  %515 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 85
  store void ()* %514, void ()** %515, align 8
  %516 = getelementptr [7 x i8], [7 x i8]* @"linux::str.90", i64 0, i64 0
  %517 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %516, 1
  store { i64, i8* } %517, { i64, i8* }* %tmp.86, align 8
  %518 = load { i64, i8* }, { i64, i8* }* %tmp.86, align 8
  %519 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 86
  store { i64, i8* } %518, { i64, i8* }* %519, align 8
  %520 = bitcast i32 (i32, i32, i32)* @fchown to void ()*
  %521 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 86
  store void ()* %520, void ()** %521, align 8
  %522 = getelementptr [7 x i8], [7 x i8]* @"linux::str.91", i64 0, i64 0
  %523 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %522, 1
  store { i64, i8* } %523, { i64, i8* }* %tmp.87, align 8
  %524 = load { i64, i8* }, { i64, i8* }* %tmp.87, align 8
  %525 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 87
  store { i64, i8* } %524, { i64, i8* }* %525, align 8
  %526 = bitcast i32 (i8*, i32, i32)* @lchown to void ()*
  %527 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 87
  store void ()* %526, void ()** %527, align 8
  %528 = getelementptr [9 x i8], [9 x i8]* @"linux::str.92", i64 0, i64 0
  %529 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %528, 1
  store { i64, i8* } %529, { i64, i8* }* %tmp.88, align 8
  %530 = load { i64, i8* }, { i64, i8* }* %tmp.88, align 8
  %531 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 88
  store { i64, i8* } %530, { i64, i8* }* %531, align 8
  %532 = bitcast i32 (i32, i8*, i32, i32, i32)* @fchownat to void ()*
  %533 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 88
  store void ()* %532, void ()** %533, align 8
  %534 = getelementptr [6 x i8], [6 x i8]* @"linux::str.93", i64 0, i64 0
  %535 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %534, 1
  store { i64, i8* } %535, { i64, i8* }* %tmp.89, align 8
  %536 = load { i64, i8* }, { i64, i8* }* %tmp.89, align 8
  %537 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 89
  store { i64, i8* } %536, { i64, i8* }* %537, align 8
  %538 = bitcast i32 (i8*)* @chdir to void ()*
  %539 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 89
  store void ()* %538, void ()** %539, align 8
  %540 = getelementptr [7 x i8], [7 x i8]* @"linux::str.94", i64 0, i64 0
  %541 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %540, 1
  store { i64, i8* } %541, { i64, i8* }* %tmp.90, align 8
  %542 = load { i64, i8* }, { i64, i8* }* %tmp.90, align 8
  %543 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 90
  store { i64, i8* } %542, { i64, i8* }* %543, align 8
  %544 = bitcast i32 (i32)* @fchdir to void ()*
  %545 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 90
  store void ()* %544, void ()** %545, align 8
  %546 = getelementptr [7 x i8], [7 x i8]* @"linux::str.95", i64 0, i64 0
  %547 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %546, 1
  store { i64, i8* } %547, { i64, i8* }* %tmp.91, align 8
  %548 = load { i64, i8* }, { i64, i8* }* %tmp.91, align 8
  %549 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 91
  store { i64, i8* } %548, { i64, i8* }* %549, align 8
  %550 = bitcast i8* (i8*, i64)* @getcwd to void ()*
  %551 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 91
  store void ()* %550, void ()** %551, align 8
  %552 = getelementptr [4 x i8], [4 x i8]* @"linux::str.96", i64 0, i64 0
  %553 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %552, 1
  store { i64, i8* } %553, { i64, i8* }* %tmp.92, align 8
  %554 = load { i64, i8* }, { i64, i8* }* %tmp.92, align 8
  %555 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 92
  store { i64, i8* } %554, { i64, i8* }* %555, align 8
  %556 = bitcast i32 (i32)* @dup to void ()*
  %557 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 92
  store void ()* %556, void ()** %557, align 8
  %558 = getelementptr [5 x i8], [5 x i8]* @"linux::str.97", i64 0, i64 0
  %559 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %558, 1
  store { i64, i8* } %559, { i64, i8* }* %tmp.93, align 8
  %560 = load { i64, i8* }, { i64, i8* }* %tmp.93, align 8
  %561 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 93
  store { i64, i8* } %560, { i64, i8* }* %561, align 8
  %562 = bitcast i32 (i32, i32)* @dup2 to void ()*
  %563 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 93
  store void ()* %562, void ()** %563, align 8
  %564 = getelementptr [7 x i8], [7 x i8]* @"linux::str.98", i64 0, i64 0
  %565 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %564, 1
  store { i64, i8* } %565, { i64, i8* }* %tmp.94, align 8
  %566 = load { i64, i8* }, { i64, i8* }* %tmp.94, align 8
  %567 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 94
  store { i64, i8* } %566, { i64, i8* }* %567, align 8
  %568 = bitcast i32 (i8*, i8**, i8**)* @execve to void ()*
  %569 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 94
  store void ()* %568, void ()** %569, align 8
  %570 = getelementptr [8 x i8], [8 x i8]* @"linux::str.99", i64 0, i64 0
  %571 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %570, 1
  store { i64, i8* } %571, { i64, i8* }* %tmp.95, align 8
  %572 = load { i64, i8* }, { i64, i8* }* %tmp.95, align 8
  %573 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 95
  store { i64, i8* } %572, { i64, i8* }* %573, align 8
  %574 = bitcast i32 (i32, i8**, i8**)* @fexecve to void ()*
  %575 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 95
  store void ()* %574, void ()** %575, align 8
  %576 = getelementptr [6 x i8], [6 x i8]* @"linux::str.100", i64 0, i64 0
  %577 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %576, 1
  store { i64, i8* } %577, { i64, i8* }* %tmp.96, align 8
  %578 = load { i64, i8* }, { i64, i8* }* %tmp.96, align 8
  %579 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 96
  store { i64, i8* } %578, { i64, i8* }* %579, align 8
  %580 = bitcast i32 (i8*, i8**)* @execv to void ()*
  %581 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 96
  store void ()* %580, void ()** %581, align 8
  %582 = getelementptr [7 x i8], [7 x i8]* @"linux::str.101", i64 0, i64 0
  %583 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %582, 1
  store { i64, i8* } %583, { i64, i8* }* %tmp.97, align 8
  %584 = load { i64, i8* }, { i64, i8* }* %tmp.97, align 8
  %585 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 97
  store { i64, i8* } %584, { i64, i8* }* %585, align 8
  %586 = bitcast i32 (i8*, i8*, ...)* @execle to void ()*
  %587 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 97
  store void ()* %586, void ()** %587, align 8
  %588 = getelementptr [6 x i8], [6 x i8]* @"linux::str.102", i64 0, i64 0
  %589 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %588, 1
  store { i64, i8* } %589, { i64, i8* }* %tmp.98, align 8
  %590 = load { i64, i8* }, { i64, i8* }* %tmp.98, align 8
  %591 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 98
  store { i64, i8* } %590, { i64, i8* }* %591, align 8
  %592 = bitcast i32 (i8*, i8*, ...)* @execl to void ()*
  %593 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 98
  store void ()* %592, void ()** %593, align 8
  %594 = getelementptr [7 x i8], [7 x i8]* @"linux::str.103", i64 0, i64 0
  %595 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %594, 1
  store { i64, i8* } %595, { i64, i8* }* %tmp.99, align 8
  %596 = load { i64, i8* }, { i64, i8* }* %tmp.99, align 8
  %597 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 99
  store { i64, i8* } %596, { i64, i8* }* %597, align 8
  %598 = bitcast i32 (i8*, i8**)* @execvp to void ()*
  %599 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 99
  store void ()* %598, void ()** %599, align 8
  %600 = getelementptr [7 x i8], [7 x i8]* @"linux::str.104", i64 0, i64 0
  %601 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %600, 1
  store { i64, i8* } %601, { i64, i8* }* %tmp.100, align 8
  %602 = load { i64, i8* }, { i64, i8* }* %tmp.100, align 8
  %603 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 100
  store { i64, i8* } %602, { i64, i8* }* %603, align 8
  %604 = bitcast i32 (i8*, i8*, ...)* @execlp to void ()*
  %605 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 100
  store void ()* %604, void ()** %605, align 8
  %606 = getelementptr [5 x i8], [5 x i8]* @"linux::str.105", i64 0, i64 0
  %607 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %606, 1
  store { i64, i8* } %607, { i64, i8* }* %tmp.101, align 8
  %608 = load { i64, i8* }, { i64, i8* }* %tmp.101, align 8
  %609 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 101
  store { i64, i8* } %608, { i64, i8* }* %609, align 8
  %610 = bitcast i32 (i32)* @nice to void ()*
  %611 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 101
  store void ()* %610, void ()** %611, align 8
  %612 = getelementptr [6 x i8], [6 x i8]* @"linux::str.106", i64 0, i64 0
  %613 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %612, 1
  store { i64, i8* } %613, { i64, i8* }* %tmp.102, align 8
  %614 = load { i64, i8* }, { i64, i8* }* %tmp.102, align 8
  %615 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 102
  store { i64, i8* } %614, { i64, i8* }* %615, align 8
  %616 = bitcast void (i32)* @_exit to void ()*
  %617 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 102
  store void ()* %616, void ()** %617, align 8
  %618 = getelementptr [9 x i8], [9 x i8]* @"linux::str.107", i64 0, i64 0
  %619 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %618, 1
  store { i64, i8* } %619, { i64, i8* }* %tmp.103, align 8
  %620 = load { i64, i8* }, { i64, i8* }* %tmp.103, align 8
  %621 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 103
  store { i64, i8* } %620, { i64, i8* }* %621, align 8
  %622 = bitcast i64 (i8*, i32)* @pathconf to void ()*
  %623 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 103
  store void ()* %622, void ()** %623, align 8
  %624 = getelementptr [10 x i8], [10 x i8]* @"linux::str.108", i64 0, i64 0
  %625 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %624, 1
  store { i64, i8* } %625, { i64, i8* }* %tmp.104, align 8
  %626 = load { i64, i8* }, { i64, i8* }* %tmp.104, align 8
  %627 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 104
  store { i64, i8* } %626, { i64, i8* }* %627, align 8
  %628 = bitcast i64 (i32, i32)* @fpathconf to void ()*
  %629 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 104
  store void ()* %628, void ()** %629, align 8
  %630 = getelementptr [8 x i8], [8 x i8]* @"linux::str.109", i64 0, i64 0
  %631 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %630, 1
  store { i64, i8* } %631, { i64, i8* }* %tmp.105, align 8
  %632 = load { i64, i8* }, { i64, i8* }* %tmp.105, align 8
  %633 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 105
  store { i64, i8* } %632, { i64, i8* }* %633, align 8
  %634 = bitcast i64 (i32)* @sysconf to void ()*
  %635 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 105
  store void ()* %634, void ()** %635, align 8
  %636 = getelementptr [8 x i8], [8 x i8]* @"linux::str.110", i64 0, i64 0
  %637 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %636, 1
  store { i64, i8* } %637, { i64, i8* }* %tmp.106, align 8
  %638 = load { i64, i8* }, { i64, i8* }* %tmp.106, align 8
  %639 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 106
  store { i64, i8* } %638, { i64, i8* }* %639, align 8
  %640 = bitcast i64 (i32, i8*, i64)* @confstr to void ()*
  %641 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 106
  store void ()* %640, void ()** %641, align 8
  %642 = getelementptr [7 x i8], [7 x i8]* @"linux::str.111", i64 0, i64 0
  %643 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %642, 1
  store { i64, i8* } %643, { i64, i8* }* %tmp.107, align 8
  %644 = load { i64, i8* }, { i64, i8* }* %tmp.107, align 8
  %645 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 107
  store { i64, i8* } %644, { i64, i8* }* %645, align 8
  %646 = bitcast i32 ()* @getpid to void ()*
  %647 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 107
  store void ()* %646, void ()** %647, align 8
  %648 = getelementptr [8 x i8], [8 x i8]* @"linux::str.112", i64 0, i64 0
  %649 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %648, 1
  store { i64, i8* } %649, { i64, i8* }* %tmp.108, align 8
  %650 = load { i64, i8* }, { i64, i8* }* %tmp.108, align 8
  %651 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 108
  store { i64, i8* } %650, { i64, i8* }* %651, align 8
  %652 = bitcast i32 ()* @getppid to void ()*
  %653 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 108
  store void ()* %652, void ()** %653, align 8
  %654 = getelementptr [8 x i8], [8 x i8]* @"linux::str.113", i64 0, i64 0
  %655 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %654, 1
  store { i64, i8* } %655, { i64, i8* }* %tmp.109, align 8
  %656 = load { i64, i8* }, { i64, i8* }* %tmp.109, align 8
  %657 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 109
  store { i64, i8* } %656, { i64, i8* }* %657, align 8
  %658 = bitcast i32 ()* @getpgrp to void ()*
  %659 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 109
  store void ()* %658, void ()** %659, align 8
  %660 = getelementptr [10 x i8], [10 x i8]* @"linux::str.114", i64 0, i64 0
  %661 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %660, 1
  store { i64, i8* } %661, { i64, i8* }* %tmp.110, align 8
  %662 = load { i64, i8* }, { i64, i8* }* %tmp.110, align 8
  %663 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 110
  store { i64, i8* } %662, { i64, i8* }* %663, align 8
  %664 = bitcast i32 (i32)* @__getpgid to void ()*
  %665 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 110
  store void ()* %664, void ()** %665, align 8
  %666 = getelementptr [8 x i8], [8 x i8]* @"linux::str.115", i64 0, i64 0
  %667 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %666, 1
  store { i64, i8* } %667, { i64, i8* }* %tmp.111, align 8
  %668 = load { i64, i8* }, { i64, i8* }* %tmp.111, align 8
  %669 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 111
  store { i64, i8* } %668, { i64, i8* }* %669, align 8
  %670 = bitcast i32 (i32)* @getpgid to void ()*
  %671 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 111
  store void ()* %670, void ()** %671, align 8
  %672 = getelementptr [8 x i8], [8 x i8]* @"linux::str.116", i64 0, i64 0
  %673 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %672, 1
  store { i64, i8* } %673, { i64, i8* }* %tmp.112, align 8
  %674 = load { i64, i8* }, { i64, i8* }* %tmp.112, align 8
  %675 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 112
  store { i64, i8* } %674, { i64, i8* }* %675, align 8
  %676 = bitcast i32 (i32, i32)* @setpgid to void ()*
  %677 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 112
  store void ()* %676, void ()** %677, align 8
  %678 = getelementptr [8 x i8], [8 x i8]* @"linux::str.117", i64 0, i64 0
  %679 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %678, 1
  store { i64, i8* } %679, { i64, i8* }* %tmp.113, align 8
  %680 = load { i64, i8* }, { i64, i8* }* %tmp.113, align 8
  %681 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 113
  store { i64, i8* } %680, { i64, i8* }* %681, align 8
  %682 = bitcast i32 ()* @setpgrp to void ()*
  %683 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 113
  store void ()* %682, void ()** %683, align 8
  %684 = getelementptr [7 x i8], [7 x i8]* @"linux::str.118", i64 0, i64 0
  %685 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %684, 1
  store { i64, i8* } %685, { i64, i8* }* %tmp.114, align 8
  %686 = load { i64, i8* }, { i64, i8* }* %tmp.114, align 8
  %687 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 114
  store { i64, i8* } %686, { i64, i8* }* %687, align 8
  %688 = bitcast i32 ()* @setsid to void ()*
  %689 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 114
  store void ()* %688, void ()** %689, align 8
  %690 = getelementptr [7 x i8], [7 x i8]* @"linux::str.119", i64 0, i64 0
  %691 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %690, 1
  store { i64, i8* } %691, { i64, i8* }* %tmp.115, align 8
  %692 = load { i64, i8* }, { i64, i8* }* %tmp.115, align 8
  %693 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 115
  store { i64, i8* } %692, { i64, i8* }* %693, align 8
  %694 = bitcast i32 (i32)* @getsid to void ()*
  %695 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 115
  store void ()* %694, void ()** %695, align 8
  %696 = getelementptr [7 x i8], [7 x i8]* @"linux::str.120", i64 0, i64 0
  %697 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %696, 1
  store { i64, i8* } %697, { i64, i8* }* %tmp.116, align 8
  %698 = load { i64, i8* }, { i64, i8* }* %tmp.116, align 8
  %699 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 116
  store { i64, i8* } %698, { i64, i8* }* %699, align 8
  %700 = bitcast i32 ()* @getuid to void ()*
  %701 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 116
  store void ()* %700, void ()** %701, align 8
  %702 = getelementptr [8 x i8], [8 x i8]* @"linux::str.121", i64 0, i64 0
  %703 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %702, 1
  store { i64, i8* } %703, { i64, i8* }* %tmp.117, align 8
  %704 = load { i64, i8* }, { i64, i8* }* %tmp.117, align 8
  %705 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 117
  store { i64, i8* } %704, { i64, i8* }* %705, align 8
  %706 = bitcast i32 ()* @geteuid to void ()*
  %707 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 117
  store void ()* %706, void ()** %707, align 8
  %708 = getelementptr [7 x i8], [7 x i8]* @"linux::str.122", i64 0, i64 0
  %709 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %708, 1
  store { i64, i8* } %709, { i64, i8* }* %tmp.118, align 8
  %710 = load { i64, i8* }, { i64, i8* }* %tmp.118, align 8
  %711 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 118
  store { i64, i8* } %710, { i64, i8* }* %711, align 8
  %712 = bitcast i32 ()* @getgid to void ()*
  %713 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 118
  store void ()* %712, void ()** %713, align 8
  %714 = getelementptr [8 x i8], [8 x i8]* @"linux::str.123", i64 0, i64 0
  %715 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %714, 1
  store { i64, i8* } %715, { i64, i8* }* %tmp.119, align 8
  %716 = load { i64, i8* }, { i64, i8* }* %tmp.119, align 8
  %717 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 119
  store { i64, i8* } %716, { i64, i8* }* %717, align 8
  %718 = bitcast i32 ()* @getegid to void ()*
  %719 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 119
  store void ()* %718, void ()** %719, align 8
  %720 = getelementptr [10 x i8], [10 x i8]* @"linux::str.124", i64 0, i64 0
  %721 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %720, 1
  store { i64, i8* } %721, { i64, i8* }* %tmp.120, align 8
  %722 = load { i64, i8* }, { i64, i8* }* %tmp.120, align 8
  %723 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 120
  store { i64, i8* } %722, { i64, i8* }* %723, align 8
  %724 = bitcast i32 (i32, i32*)* @getgroups to void ()*
  %725 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 120
  store void ()* %724, void ()** %725, align 8
  %726 = getelementptr [7 x i8], [7 x i8]* @"linux::str.125", i64 0, i64 0
  %727 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %726, 1
  store { i64, i8* } %727, { i64, i8* }* %tmp.121, align 8
  %728 = load { i64, i8* }, { i64, i8* }* %tmp.121, align 8
  %729 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 121
  store { i64, i8* } %728, { i64, i8* }* %729, align 8
  %730 = bitcast i32 (i32)* @setuid to void ()*
  %731 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 121
  store void ()* %730, void ()** %731, align 8
  %732 = getelementptr [9 x i8], [9 x i8]* @"linux::str.126", i64 0, i64 0
  %733 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %732, 1
  store { i64, i8* } %733, { i64, i8* }* %tmp.122, align 8
  %734 = load { i64, i8* }, { i64, i8* }* %tmp.122, align 8
  %735 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 122
  store { i64, i8* } %734, { i64, i8* }* %735, align 8
  %736 = bitcast i32 (i32, i32)* @setreuid to void ()*
  %737 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 122
  store void ()* %736, void ()** %737, align 8
  %738 = getelementptr [8 x i8], [8 x i8]* @"linux::str.127", i64 0, i64 0
  %739 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %738, 1
  store { i64, i8* } %739, { i64, i8* }* %tmp.123, align 8
  %740 = load { i64, i8* }, { i64, i8* }* %tmp.123, align 8
  %741 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 123
  store { i64, i8* } %740, { i64, i8* }* %741, align 8
  %742 = bitcast i32 (i32)* @seteuid to void ()*
  %743 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 123
  store void ()* %742, void ()** %743, align 8
  %744 = getelementptr [7 x i8], [7 x i8]* @"linux::str.128", i64 0, i64 0
  %745 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %744, 1
  store { i64, i8* } %745, { i64, i8* }* %tmp.124, align 8
  %746 = load { i64, i8* }, { i64, i8* }* %tmp.124, align 8
  %747 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 124
  store { i64, i8* } %746, { i64, i8* }* %747, align 8
  %748 = bitcast i32 (i32)* @setgid to void ()*
  %749 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 124
  store void ()* %748, void ()** %749, align 8
  %750 = getelementptr [9 x i8], [9 x i8]* @"linux::str.129", i64 0, i64 0
  %751 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %750, 1
  store { i64, i8* } %751, { i64, i8* }* %tmp.125, align 8
  %752 = load { i64, i8* }, { i64, i8* }* %tmp.125, align 8
  %753 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 125
  store { i64, i8* } %752, { i64, i8* }* %753, align 8
  %754 = bitcast i32 (i32, i32)* @setregid to void ()*
  %755 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 125
  store void ()* %754, void ()** %755, align 8
  %756 = getelementptr [8 x i8], [8 x i8]* @"linux::str.130", i64 0, i64 0
  %757 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %756, 1
  store { i64, i8* } %757, { i64, i8* }* %tmp.126, align 8
  %758 = load { i64, i8* }, { i64, i8* }* %tmp.126, align 8
  %759 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 126
  store { i64, i8* } %758, { i64, i8* }* %759, align 8
  %760 = bitcast i32 (i32)* @setegid to void ()*
  %761 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 126
  store void ()* %760, void ()** %761, align 8
  %762 = getelementptr [5 x i8], [5 x i8]* @"linux::str.131", i64 0, i64 0
  %763 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %762, 1
  store { i64, i8* } %763, { i64, i8* }* %tmp.127, align 8
  %764 = load { i64, i8* }, { i64, i8* }* %tmp.127, align 8
  %765 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 127
  store { i64, i8* } %764, { i64, i8* }* %765, align 8
  %766 = bitcast i32 ()* @fork to void ()*
  %767 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 127
  store void ()* %766, void ()** %767, align 8
  %768 = getelementptr [6 x i8], [6 x i8]* @"linux::str.132", i64 0, i64 0
  %769 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %768, 1
  store { i64, i8* } %769, { i64, i8* }* %tmp.128, align 8
  %770 = load { i64, i8* }, { i64, i8* }* %tmp.128, align 8
  %771 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 128
  store { i64, i8* } %770, { i64, i8* }* %771, align 8
  %772 = bitcast i32 ()* @vfork to void ()*
  %773 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 128
  store void ()* %772, void ()** %773, align 8
  %774 = getelementptr [8 x i8], [8 x i8]* @"linux::str.133", i64 0, i64 0
  %775 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %774, 1
  store { i64, i8* } %775, { i64, i8* }* %tmp.129, align 8
  %776 = load { i64, i8* }, { i64, i8* }* %tmp.129, align 8
  %777 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 129
  store { i64, i8* } %776, { i64, i8* }* %777, align 8
  %778 = bitcast i8* (i32)* @ttyname to void ()*
  %779 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 129
  store void ()* %778, void ()** %779, align 8
  %780 = getelementptr [10 x i8], [10 x i8]* @"linux::str.134", i64 0, i64 0
  %781 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %780, 1
  store { i64, i8* } %781, { i64, i8* }* %tmp.130, align 8
  %782 = load { i64, i8* }, { i64, i8* }* %tmp.130, align 8
  %783 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 130
  store { i64, i8* } %782, { i64, i8* }* %783, align 8
  %784 = bitcast i32 (i32, i8*, i64)* @ttyname_r to void ()*
  %785 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 130
  store void ()* %784, void ()** %785, align 8
  %786 = getelementptr [7 x i8], [7 x i8]* @"linux::str.135", i64 0, i64 0
  %787 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %786, 1
  store { i64, i8* } %787, { i64, i8* }* %tmp.131, align 8
  %788 = load { i64, i8* }, { i64, i8* }* %tmp.131, align 8
  %789 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 131
  store { i64, i8* } %788, { i64, i8* }* %789, align 8
  %790 = bitcast i32 (i32)* @isatty to void ()*
  %791 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 131
  store void ()* %790, void ()** %791, align 8
  %792 = getelementptr [8 x i8], [8 x i8]* @"linux::str.136", i64 0, i64 0
  %793 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %792, 1
  store { i64, i8* } %793, { i64, i8* }* %tmp.132, align 8
  %794 = load { i64, i8* }, { i64, i8* }* %tmp.132, align 8
  %795 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 132
  store { i64, i8* } %794, { i64, i8* }* %795, align 8
  %796 = bitcast i32 ()* @ttyslot to void ()*
  %797 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 132
  store void ()* %796, void ()** %797, align 8
  %798 = getelementptr [5 x i8], [5 x i8]* @"linux::str.137", i64 0, i64 0
  %799 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %798, 1
  store { i64, i8* } %799, { i64, i8* }* %tmp.133, align 8
  %800 = load { i64, i8* }, { i64, i8* }* %tmp.133, align 8
  %801 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 133
  store { i64, i8* } %800, { i64, i8* }* %801, align 8
  %802 = bitcast i32 (i8*, i8*)* @link to void ()*
  %803 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 133
  store void ()* %802, void ()** %803, align 8
  %804 = getelementptr [7 x i8], [7 x i8]* @"linux::str.138", i64 0, i64 0
  %805 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %804, 1
  store { i64, i8* } %805, { i64, i8* }* %tmp.134, align 8
  %806 = load { i64, i8* }, { i64, i8* }* %tmp.134, align 8
  %807 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 134
  store { i64, i8* } %806, { i64, i8* }* %807, align 8
  %808 = bitcast i32 (i32, i8*, i32, i8*, i32)* @linkat to void ()*
  %809 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 134
  store void ()* %808, void ()** %809, align 8
  %810 = getelementptr [8 x i8], [8 x i8]* @"linux::str.139", i64 0, i64 0
  %811 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %810, 1
  store { i64, i8* } %811, { i64, i8* }* %tmp.135, align 8
  %812 = load { i64, i8* }, { i64, i8* }* %tmp.135, align 8
  %813 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 135
  store { i64, i8* } %812, { i64, i8* }* %813, align 8
  %814 = bitcast i32 (i8*, i8*)* @symlink to void ()*
  %815 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 135
  store void ()* %814, void ()** %815, align 8
  %816 = getelementptr [9 x i8], [9 x i8]* @"linux::str.140", i64 0, i64 0
  %817 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %816, 1
  store { i64, i8* } %817, { i64, i8* }* %tmp.136, align 8
  %818 = load { i64, i8* }, { i64, i8* }* %tmp.136, align 8
  %819 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 136
  store { i64, i8* } %818, { i64, i8* }* %819, align 8
  %820 = bitcast i64 (i8*, i8*, i64)* @readlink to void ()*
  %821 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 136
  store void ()* %820, void ()** %821, align 8
  %822 = getelementptr [10 x i8], [10 x i8]* @"linux::str.141", i64 0, i64 0
  %823 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %822, 1
  store { i64, i8* } %823, { i64, i8* }* %tmp.137, align 8
  %824 = load { i64, i8* }, { i64, i8* }* %tmp.137, align 8
  %825 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 137
  store { i64, i8* } %824, { i64, i8* }* %825, align 8
  %826 = bitcast i32 (i8*, i32, i8*)* @symlinkat to void ()*
  %827 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 137
  store void ()* %826, void ()** %827, align 8
  %828 = getelementptr [11 x i8], [11 x i8]* @"linux::str.142", i64 0, i64 0
  %829 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %828, 1
  store { i64, i8* } %829, { i64, i8* }* %tmp.138, align 8
  %830 = load { i64, i8* }, { i64, i8* }* %tmp.138, align 8
  %831 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 138
  store { i64, i8* } %830, { i64, i8* }* %831, align 8
  %832 = bitcast i64 (i32, i8*, i8*, i64)* @readlinkat to void ()*
  %833 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 138
  store void ()* %832, void ()** %833, align 8
  %834 = getelementptr [7 x i8], [7 x i8]* @"linux::str.143", i64 0, i64 0
  %835 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %834, 1
  store { i64, i8* } %835, { i64, i8* }* %tmp.139, align 8
  %836 = load { i64, i8* }, { i64, i8* }* %tmp.139, align 8
  %837 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 139
  store { i64, i8* } %836, { i64, i8* }* %837, align 8
  %838 = bitcast i32 (i8*)* @unlink to void ()*
  %839 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 139
  store void ()* %838, void ()** %839, align 8
  %840 = getelementptr [9 x i8], [9 x i8]* @"linux::str.144", i64 0, i64 0
  %841 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %840, 1
  store { i64, i8* } %841, { i64, i8* }* %tmp.140, align 8
  %842 = load { i64, i8* }, { i64, i8* }* %tmp.140, align 8
  %843 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 140
  store { i64, i8* } %842, { i64, i8* }* %843, align 8
  %844 = bitcast i32 (i32, i8*, i32)* @unlinkat to void ()*
  %845 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 140
  store void ()* %844, void ()** %845, align 8
  %846 = getelementptr [6 x i8], [6 x i8]* @"linux::str.145", i64 0, i64 0
  %847 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %846, 1
  store { i64, i8* } %847, { i64, i8* }* %tmp.141, align 8
  %848 = load { i64, i8* }, { i64, i8* }* %tmp.141, align 8
  %849 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 141
  store { i64, i8* } %848, { i64, i8* }* %849, align 8
  %850 = bitcast i32 (i8*)* @rmdir to void ()*
  %851 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 141
  store void ()* %850, void ()** %851, align 8
  %852 = getelementptr [10 x i8], [10 x i8]* @"linux::str.146", i64 0, i64 0
  %853 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %852, 1
  store { i64, i8* } %853, { i64, i8* }* %tmp.142, align 8
  %854 = load { i64, i8* }, { i64, i8* }* %tmp.142, align 8
  %855 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 142
  store { i64, i8* } %854, { i64, i8* }* %855, align 8
  %856 = bitcast i32 (i32)* @tcgetpgrp to void ()*
  %857 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 142
  store void ()* %856, void ()** %857, align 8
  %858 = getelementptr [10 x i8], [10 x i8]* @"linux::str.147", i64 0, i64 0
  %859 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %858, 1
  store { i64, i8* } %859, { i64, i8* }* %tmp.143, align 8
  %860 = load { i64, i8* }, { i64, i8* }* %tmp.143, align 8
  %861 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 143
  store { i64, i8* } %860, { i64, i8* }* %861, align 8
  %862 = bitcast i32 (i32, i32)* @tcsetpgrp to void ()*
  %863 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 143
  store void ()* %862, void ()** %863, align 8
  %864 = getelementptr [9 x i8], [9 x i8]* @"linux::str.148", i64 0, i64 0
  %865 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %864, 1
  store { i64, i8* } %865, { i64, i8* }* %tmp.144, align 8
  %866 = load { i64, i8* }, { i64, i8* }* %tmp.144, align 8
  %867 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 144
  store { i64, i8* } %866, { i64, i8* }* %867, align 8
  %868 = bitcast i8* ()* @getlogin to void ()*
  %869 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 144
  store void ()* %868, void ()** %869, align 8
  %870 = getelementptr [11 x i8], [11 x i8]* @"linux::str.149", i64 0, i64 0
  %871 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %870, 1
  store { i64, i8* } %871, { i64, i8* }* %tmp.145, align 8
  %872 = load { i64, i8* }, { i64, i8* }* %tmp.145, align 8
  %873 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 145
  store { i64, i8* } %872, { i64, i8* }* %873, align 8
  %874 = bitcast i32 (i8*, i64)* @getlogin_r to void ()*
  %875 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 145
  store void ()* %874, void ()** %875, align 8
  %876 = getelementptr [7 x i8], [7 x i8]* @"linux::str.150", i64 0, i64 0
  %877 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %876, 1
  store { i64, i8* } %877, { i64, i8* }* %tmp.146, align 8
  %878 = load { i64, i8* }, { i64, i8* }* %tmp.146, align 8
  %879 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 146
  store { i64, i8* } %878, { i64, i8* }* %879, align 8
  %880 = bitcast i32 (i32, i8**, i8*)* @getopt to void ()*
  %881 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 146
  store void ()* %880, void ()** %881, align 8
  %882 = getelementptr [12 x i8], [12 x i8]* @"linux::str.151", i64 0, i64 0
  %883 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %882, 1
  store { i64, i8* } %883, { i64, i8* }* %tmp.147, align 8
  %884 = load { i64, i8* }, { i64, i8* }* %tmp.147, align 8
  %885 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 147
  store { i64, i8* } %884, { i64, i8* }* %885, align 8
  %886 = bitcast i32 (i8*, i64)* @gethostname to void ()*
  %887 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 147
  store void ()* %886, void ()** %887, align 8
  %888 = getelementptr [12 x i8], [12 x i8]* @"linux::str.152", i64 0, i64 0
  %889 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %888, 1
  store { i64, i8* } %889, { i64, i8* }* %tmp.148, align 8
  %890 = load { i64, i8* }, { i64, i8* }* %tmp.148, align 8
  %891 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 148
  store { i64, i8* } %890, { i64, i8* }* %891, align 8
  %892 = bitcast i32 (i8*, i64)* @sethostname to void ()*
  %893 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 148
  store void ()* %892, void ()** %893, align 8
  %894 = getelementptr [10 x i8], [10 x i8]* @"linux::str.153", i64 0, i64 0
  %895 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %894, 1
  store { i64, i8* } %895, { i64, i8* }* %tmp.149, align 8
  %896 = load { i64, i8* }, { i64, i8* }* %tmp.149, align 8
  %897 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 149
  store { i64, i8* } %896, { i64, i8* }* %897, align 8
  %898 = bitcast i32 (i64)* @sethostid to void ()*
  %899 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 149
  store void ()* %898, void ()** %899, align 8
  %900 = getelementptr [14 x i8], [14 x i8]* @"linux::str.154", i64 0, i64 0
  %901 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %900, 1
  store { i64, i8* } %901, { i64, i8* }* %tmp.150, align 8
  %902 = load { i64, i8* }, { i64, i8* }* %tmp.150, align 8
  %903 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 150
  store { i64, i8* } %902, { i64, i8* }* %903, align 8
  %904 = bitcast i32 (i8*, i64)* @getdomainname to void ()*
  %905 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 150
  store void ()* %904, void ()** %905, align 8
  %906 = getelementptr [14 x i8], [14 x i8]* @"linux::str.155", i64 0, i64 0
  %907 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %906, 1
  store { i64, i8* } %907, { i64, i8* }* %tmp.151, align 8
  %908 = load { i64, i8* }, { i64, i8* }* %tmp.151, align 8
  %909 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 151
  store { i64, i8* } %908, { i64, i8* }* %909, align 8
  %910 = bitcast i32 (i8*, i64)* @setdomainname to void ()*
  %911 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 151
  store void ()* %910, void ()** %911, align 8
  %912 = getelementptr [8 x i8], [8 x i8]* @"linux::str.156", i64 0, i64 0
  %913 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %912, 1
  store { i64, i8* } %913, { i64, i8* }* %tmp.152, align 8
  %914 = load { i64, i8* }, { i64, i8* }* %tmp.152, align 8
  %915 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 152
  store { i64, i8* } %914, { i64, i8* }* %915, align 8
  %916 = bitcast i32 ()* @vhangup to void ()*
  %917 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 152
  store void ()* %916, void ()** %917, align 8
  %918 = getelementptr [7 x i8], [7 x i8]* @"linux::str.157", i64 0, i64 0
  %919 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %918, 1
  store { i64, i8* } %919, { i64, i8* }* %tmp.153, align 8
  %920 = load { i64, i8* }, { i64, i8* }* %tmp.153, align 8
  %921 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 153
  store { i64, i8* } %920, { i64, i8* }* %921, align 8
  %922 = bitcast i32 (i16*, i64, i64, i32)* @profil to void ()*
  %923 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 153
  store void ()* %922, void ()** %923, align 8
  %924 = getelementptr [5 x i8], [5 x i8]* @"linux::str.158", i64 0, i64 0
  %925 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %924, 1
  store { i64, i8* } %925, { i64, i8* }* %tmp.154, align 8
  %926 = load { i64, i8* }, { i64, i8* }* %tmp.154, align 8
  %927 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 154
  store { i64, i8* } %926, { i64, i8* }* %927, align 8
  %928 = bitcast i32 (i8*)* @acct to void ()*
  %929 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 154
  store void ()* %928, void ()** %929, align 8
  %930 = getelementptr [13 x i8], [13 x i8]* @"linux::str.159", i64 0, i64 0
  %931 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %930, 1
  store { i64, i8* } %931, { i64, i8* }* %tmp.155, align 8
  %932 = load { i64, i8* }, { i64, i8* }* %tmp.155, align 8
  %933 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 155
  store { i64, i8* } %932, { i64, i8* }* %933, align 8
  %934 = bitcast i8* ()* @getusershell to void ()*
  %935 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 155
  store void ()* %934, void ()** %935, align 8
  %936 = getelementptr [13 x i8], [13 x i8]* @"linux::str.160", i64 0, i64 0
  %937 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %936, 1
  store { i64, i8* } %937, { i64, i8* }* %tmp.156, align 8
  %938 = load { i64, i8* }, { i64, i8* }* %tmp.156, align 8
  %939 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 156
  store { i64, i8* } %938, { i64, i8* }* %939, align 8
  %940 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 156
  store void ()* @endusershell, void ()** %940, align 8
  %941 = getelementptr [13 x i8], [13 x i8]* @"linux::str.161", i64 0, i64 0
  %942 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %941, 1
  store { i64, i8* } %942, { i64, i8* }* %tmp.157, align 8
  %943 = load { i64, i8* }, { i64, i8* }* %tmp.157, align 8
  %944 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 157
  store { i64, i8* } %943, { i64, i8* }* %944, align 8
  %945 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 157
  store void ()* @setusershell, void ()** %945, align 8
  %946 = getelementptr [7 x i8], [7 x i8]* @"linux::str.162", i64 0, i64 0
  %947 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %946, 1
  store { i64, i8* } %947, { i64, i8* }* %tmp.158, align 8
  %948 = load { i64, i8* }, { i64, i8* }* %tmp.158, align 8
  %949 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 158
  store { i64, i8* } %948, { i64, i8* }* %949, align 8
  %950 = bitcast i32 (i32, i32)* @daemon to void ()*
  %951 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 158
  store void ()* %950, void ()** %951, align 8
  %952 = getelementptr [7 x i8], [7 x i8]* @"linux::str.163", i64 0, i64 0
  %953 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %952, 1
  store { i64, i8* } %953, { i64, i8* }* %tmp.159, align 8
  %954 = load { i64, i8* }, { i64, i8* }* %tmp.159, align 8
  %955 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 159
  store { i64, i8* } %954, { i64, i8* }* %955, align 8
  %956 = bitcast i32 (i8*)* @chroot to void ()*
  %957 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 159
  store void ()* %956, void ()** %957, align 8
  %958 = getelementptr [8 x i8], [8 x i8]* @"linux::str.164", i64 0, i64 0
  %959 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %958, 1
  store { i64, i8* } %959, { i64, i8* }* %tmp.160, align 8
  %960 = load { i64, i8* }, { i64, i8* }* %tmp.160, align 8
  %961 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 160
  store { i64, i8* } %960, { i64, i8* }* %961, align 8
  %962 = bitcast i8* (i8*)* @getpass to void ()*
  %963 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 160
  store void ()* %962, void ()** %963, align 8
  %964 = getelementptr [6 x i8], [6 x i8]* @"linux::str.165", i64 0, i64 0
  %965 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %964, 1
  store { i64, i8* } %965, { i64, i8* }* %tmp.161, align 8
  %966 = load { i64, i8* }, { i64, i8* }* %tmp.161, align 8
  %967 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 161
  store { i64, i8* } %966, { i64, i8* }* %967, align 8
  %968 = bitcast i32 (i32)* @fsync to void ()*
  %969 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 161
  store void ()* %968, void ()** %969, align 8
  %970 = getelementptr [10 x i8], [10 x i8]* @"linux::str.166", i64 0, i64 0
  %971 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %970, 1
  store { i64, i8* } %971, { i64, i8* }* %tmp.162, align 8
  %972 = load { i64, i8* }, { i64, i8* }* %tmp.162, align 8
  %973 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 162
  store { i64, i8* } %972, { i64, i8* }* %973, align 8
  %974 = bitcast i64 ()* @gethostid to void ()*
  %975 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 162
  store void ()* %974, void ()** %975, align 8
  %976 = getelementptr [5 x i8], [5 x i8]* @"linux::str.167", i64 0, i64 0
  %977 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %976, 1
  store { i64, i8* } %977, { i64, i8* }* %tmp.163, align 8
  %978 = load { i64, i8* }, { i64, i8* }* %tmp.163, align 8
  %979 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 163
  store { i64, i8* } %978, { i64, i8* }* %979, align 8
  %980 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 163
  store void ()* @sync, void ()** %980, align 8
  %981 = getelementptr [12 x i8], [12 x i8]* @"linux::str.168", i64 0, i64 0
  %982 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %981, 1
  store { i64, i8* } %982, { i64, i8* }* %tmp.164, align 8
  %983 = load { i64, i8* }, { i64, i8* }* %tmp.164, align 8
  %984 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 164
  store { i64, i8* } %983, { i64, i8* }* %984, align 8
  %985 = bitcast i32 ()* @getpagesize to void ()*
  %986 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 164
  store void ()* %985, void ()** %986, align 8
  %987 = getelementptr [14 x i8], [14 x i8]* @"linux::str.169", i64 0, i64 0
  %988 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %987, 1
  store { i64, i8* } %988, { i64, i8* }* %tmp.165, align 8
  %989 = load { i64, i8* }, { i64, i8* }* %tmp.165, align 8
  %990 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 165
  store { i64, i8* } %989, { i64, i8* }* %990, align 8
  %991 = bitcast i32 ()* @getdtablesize to void ()*
  %992 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 165
  store void ()* %991, void ()** %992, align 8
  %993 = getelementptr [9 x i8], [9 x i8]* @"linux::str.170", i64 0, i64 0
  %994 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %993, 1
  store { i64, i8* } %994, { i64, i8* }* %tmp.166, align 8
  %995 = load { i64, i8* }, { i64, i8* }* %tmp.166, align 8
  %996 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 166
  store { i64, i8* } %995, { i64, i8* }* %996, align 8
  %997 = bitcast i32 (i8*, i64)* @truncate to void ()*
  %998 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 166
  store void ()* %997, void ()** %998, align 8
  %999 = getelementptr [10 x i8], [10 x i8]* @"linux::str.171", i64 0, i64 0
  %1000 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %999, 1
  store { i64, i8* } %1000, { i64, i8* }* %tmp.167, align 8
  %1001 = load { i64, i8* }, { i64, i8* }* %tmp.167, align 8
  %1002 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 167
  store { i64, i8* } %1001, { i64, i8* }* %1002, align 8
  %1003 = bitcast i32 (i32, i64)* @ftruncate to void ()*
  %1004 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 167
  store void ()* %1003, void ()** %1004, align 8
  %1005 = getelementptr [4 x i8], [4 x i8]* @"linux::str.172", i64 0, i64 0
  %1006 = insertvalue { i64, i8* } { i64 4, i8* undef }, i8* %1005, 1
  store { i64, i8* } %1006, { i64, i8* }* %tmp.168, align 8
  %1007 = load { i64, i8* }, { i64, i8* }* %tmp.168, align 8
  %1008 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 168
  store { i64, i8* } %1007, { i64, i8* }* %1008, align 8
  %1009 = bitcast i32 (i8*)* @brk to void ()*
  %1010 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 168
  store void ()* %1009, void ()** %1010, align 8
  %1011 = getelementptr [5 x i8], [5 x i8]* @"linux::str.173", i64 0, i64 0
  %1012 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1011, 1
  store { i64, i8* } %1012, { i64, i8* }* %tmp.169, align 8
  %1013 = load { i64, i8* }, { i64, i8* }* %tmp.169, align 8
  %1014 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 169
  store { i64, i8* } %1013, { i64, i8* }* %1014, align 8
  %1015 = bitcast i8* (i64)* @sbrk to void ()*
  %1016 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 169
  store void ()* %1015, void ()** %1016, align 8
  %1017 = getelementptr [8 x i8], [8 x i8]* @"linux::str.174", i64 0, i64 0
  %1018 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1017, 1
  store { i64, i8* } %1018, { i64, i8* }* %tmp.170, align 8
  %1019 = load { i64, i8* }, { i64, i8* }* %tmp.170, align 8
  %1020 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 170
  store { i64, i8* } %1019, { i64, i8* }* %1020, align 8
  %1021 = bitcast i64 (i64, ...)* @syscall to void ()*
  %1022 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 170
  store void ()* %1021, void ()** %1022, align 8
  %1023 = getelementptr [6 x i8], [6 x i8]* @"linux::str.175", i64 0, i64 0
  %1024 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1023, 1
  store { i64, i8* } %1024, { i64, i8* }* %tmp.171, align 8
  %1025 = load { i64, i8* }, { i64, i8* }* %tmp.171, align 8
  %1026 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 171
  store { i64, i8* } %1025, { i64, i8* }* %1026, align 8
  %1027 = bitcast i32 (i32, i32, i64)* @lockf to void ()*
  %1028 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 171
  store void ()* %1027, void ()** %1028, align 8
  %1029 = getelementptr [10 x i8], [10 x i8]* @"linux::str.176", i64 0, i64 0
  %1030 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1029, 1
  store { i64, i8* } %1030, { i64, i8* }* %tmp.172, align 8
  %1031 = load { i64, i8* }, { i64, i8* }* %tmp.172, align 8
  %1032 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 172
  store { i64, i8* } %1031, { i64, i8* }* %1032, align 8
  %1033 = bitcast i32 (i32)* @fdatasync to void ()*
  %1034 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 172
  store void ()* %1033, void ()** %1034, align 8
  %1035 = getelementptr [6 x i8], [6 x i8]* @"linux::str.177", i64 0, i64 0
  %1036 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1035, 1
  store { i64, i8* } %1036, { i64, i8* }* %tmp.173, align 8
  %1037 = load { i64, i8* }, { i64, i8* }* %tmp.173, align 8
  %1038 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 173
  store { i64, i8* } %1037, { i64, i8* }* %1038, align 8
  %1039 = bitcast i8* (i8*, i8*)* @crypt to void ()*
  %1040 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 173
  store void ()* %1039, void ()** %1040, align 8
  %1041 = getelementptr [11 x i8], [11 x i8]* @"linux::str.178", i64 0, i64 0
  %1042 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1041, 1
  store { i64, i8* } %1042, { i64, i8* }* %tmp.174, align 8
  %1043 = load { i64, i8* }, { i64, i8* }* %tmp.174, align 8
  %1044 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 174
  store { i64, i8* } %1043, { i64, i8* }* %1044, align 8
  %1045 = bitcast i32 (i8*, i64)* @getentropy to void ()*
  %1046 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 174
  store void ()* %1045, void ()** %1046, align 8
  %1047 = getelementptr [12 x i8], [12 x i8]* @"linux::str.179", i64 0, i64 0
  %1048 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1047, 1
  store { i64, i8* } %1048, { i64, i8* }* %tmp.175, align 8
  %1049 = load { i64, i8* }, { i64, i8* }* %tmp.175, align 8
  %1050 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 175
  store { i64, i8* } %1049, { i64, i8* }* %1050, align 8
  %1051 = bitcast i32 (%"linux::s_termios"*)* @cfgetospeed to void ()*
  %1052 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 175
  store void ()* %1051, void ()** %1052, align 8
  %1053 = getelementptr [12 x i8], [12 x i8]* @"linux::str.180", i64 0, i64 0
  %1054 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1053, 1
  store { i64, i8* } %1054, { i64, i8* }* %tmp.176, align 8
  %1055 = load { i64, i8* }, { i64, i8* }* %tmp.176, align 8
  %1056 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 176
  store { i64, i8* } %1055, { i64, i8* }* %1056, align 8
  %1057 = bitcast i32 (%"linux::s_termios"*)* @cfgetispeed to void ()*
  %1058 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 176
  store void ()* %1057, void ()** %1058, align 8
  %1059 = getelementptr [12 x i8], [12 x i8]* @"linux::str.181", i64 0, i64 0
  %1060 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1059, 1
  store { i64, i8* } %1060, { i64, i8* }* %tmp.177, align 8
  %1061 = load { i64, i8* }, { i64, i8* }* %tmp.177, align 8
  %1062 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 177
  store { i64, i8* } %1061, { i64, i8* }* %1062, align 8
  %1063 = bitcast i32 (%"linux::s_termios"*, i32)* @cfsetospeed to void ()*
  %1064 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 177
  store void ()* %1063, void ()** %1064, align 8
  %1065 = getelementptr [12 x i8], [12 x i8]* @"linux::str.182", i64 0, i64 0
  %1066 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1065, 1
  store { i64, i8* } %1066, { i64, i8* }* %tmp.178, align 8
  %1067 = load { i64, i8* }, { i64, i8* }* %tmp.178, align 8
  %1068 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 178
  store { i64, i8* } %1067, { i64, i8* }* %1068, align 8
  %1069 = bitcast i32 (%"linux::s_termios"*, i32)* @cfsetispeed to void ()*
  %1070 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 178
  store void ()* %1069, void ()** %1070, align 8
  %1071 = getelementptr [11 x i8], [11 x i8]* @"linux::str.183", i64 0, i64 0
  %1072 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1071, 1
  store { i64, i8* } %1072, { i64, i8* }* %tmp.179, align 8
  %1073 = load { i64, i8* }, { i64, i8* }* %tmp.179, align 8
  %1074 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 179
  store { i64, i8* } %1073, { i64, i8* }* %1074, align 8
  %1075 = bitcast i32 (%"linux::s_termios"*, i32)* @cfsetspeed to void ()*
  %1076 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 179
  store void ()* %1075, void ()** %1076, align 8
  %1077 = getelementptr [10 x i8], [10 x i8]* @"linux::str.184", i64 0, i64 0
  %1078 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1077, 1
  store { i64, i8* } %1078, { i64, i8* }* %tmp.180, align 8
  %1079 = load { i64, i8* }, { i64, i8* }* %tmp.180, align 8
  %1080 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 180
  store { i64, i8* } %1079, { i64, i8* }* %1080, align 8
  %1081 = bitcast i32 (i32, %"linux::s_termios"*)* @tcgetattr to void ()*
  %1082 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 180
  store void ()* %1081, void ()** %1082, align 8
  %1083 = getelementptr [10 x i8], [10 x i8]* @"linux::str.185", i64 0, i64 0
  %1084 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1083, 1
  store { i64, i8* } %1084, { i64, i8* }* %tmp.181, align 8
  %1085 = load { i64, i8* }, { i64, i8* }* %tmp.181, align 8
  %1086 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 181
  store { i64, i8* } %1085, { i64, i8* }* %1086, align 8
  %1087 = bitcast i32 (i32, i32, %"linux::s_termios"*)* @tcsetattr to void ()*
  %1088 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 181
  store void ()* %1087, void ()** %1088, align 8
  %1089 = getelementptr [10 x i8], [10 x i8]* @"linux::str.186", i64 0, i64 0
  %1090 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1089, 1
  store { i64, i8* } %1090, { i64, i8* }* %tmp.182, align 8
  %1091 = load { i64, i8* }, { i64, i8* }* %tmp.182, align 8
  %1092 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 182
  store { i64, i8* } %1091, { i64, i8* }* %1092, align 8
  %1093 = bitcast void (%"linux::s_termios"*)* @cfmakeraw to void ()*
  %1094 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 182
  store void ()* %1093, void ()** %1094, align 8
  %1095 = getelementptr [12 x i8], [12 x i8]* @"linux::str.187", i64 0, i64 0
  %1096 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1095, 1
  store { i64, i8* } %1096, { i64, i8* }* %tmp.183, align 8
  %1097 = load { i64, i8* }, { i64, i8* }* %tmp.183, align 8
  %1098 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 183
  store { i64, i8* } %1097, { i64, i8* }* %1098, align 8
  %1099 = bitcast i32 (i32, i32)* @tcsendbreak to void ()*
  %1100 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 183
  store void ()* %1099, void ()** %1100, align 8
  %1101 = getelementptr [8 x i8], [8 x i8]* @"linux::str.188", i64 0, i64 0
  %1102 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1101, 1
  store { i64, i8* } %1102, { i64, i8* }* %tmp.184, align 8
  %1103 = load { i64, i8* }, { i64, i8* }* %tmp.184, align 8
  %1104 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 184
  store { i64, i8* } %1103, { i64, i8* }* %1104, align 8
  %1105 = bitcast i32 (i32)* @tcdrain to void ()*
  %1106 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 184
  store void ()* %1105, void ()** %1106, align 8
  %1107 = getelementptr [8 x i8], [8 x i8]* @"linux::str.189", i64 0, i64 0
  %1108 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1107, 1
  store { i64, i8* } %1108, { i64, i8* }* %tmp.185, align 8
  %1109 = load { i64, i8* }, { i64, i8* }* %tmp.185, align 8
  %1110 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 185
  store { i64, i8* } %1109, { i64, i8* }* %1110, align 8
  %1111 = bitcast i32 (i32, i32)* @tcflush to void ()*
  %1112 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 185
  store void ()* %1111, void ()** %1112, align 8
  %1113 = getelementptr [7 x i8], [7 x i8]* @"linux::str.190", i64 0, i64 0
  %1114 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1113, 1
  store { i64, i8* } %1114, { i64, i8* }* %tmp.186, align 8
  %1115 = load { i64, i8* }, { i64, i8* }* %tmp.186, align 8
  %1116 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 186
  store { i64, i8* } %1115, { i64, i8* }* %1116, align 8
  %1117 = bitcast i32 (i32, i32)* @tcflow to void ()*
  %1118 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 186
  store void ()* %1117, void ()** %1118, align 8
  %1119 = getelementptr [9 x i8], [9 x i8]* @"linux::str.191", i64 0, i64 0
  %1120 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1119, 1
  store { i64, i8* } %1120, { i64, i8* }* %tmp.187, align 8
  %1121 = load { i64, i8* }, { i64, i8* }* %tmp.187, align 8
  %1122 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 187
  store { i64, i8* } %1121, { i64, i8* }* %1122, align 8
  %1123 = bitcast i32 (i32)* @tcgetsid to void ()*
  %1124 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 187
  store void ()* %1123, void ()** %1124, align 8
  %1125 = getelementptr [23 x i8], [23 x i8]* @"linux::str.192", i64 0, i64 0
  %1126 = insertvalue { i64, i8* } { i64 23, i8* undef }, i8* %1125, 1
  store { i64, i8* } %1126, { i64, i8* }* %tmp.188, align 8
  %1127 = load { i64, i8* }, { i64, i8* }* %tmp.188, align 8
  %1128 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 188
  store { i64, i8* } %1127, { i64, i8* }* %1128, align 8
  %1129 = bitcast i64 ()* @__ctype_get_mb_cur_max to void ()*
  %1130 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 188
  store void ()* %1129, void ()** %1130, align 8
  %1131 = getelementptr [6 x i8], [6 x i8]* @"linux::str.193", i64 0, i64 0
  %1132 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1131, 1
  store { i64, i8* } %1132, { i64, i8* }* %tmp.189, align 8
  %1133 = load { i64, i8* }, { i64, i8* }* %tmp.189, align 8
  %1134 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 189
  store { i64, i8* } %1133, { i64, i8* }* %1134, align 8
  %1135 = bitcast i64 (i8*)* @atoll to void ()*
  %1136 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 189
  store void ()* %1135, void ()** %1136, align 8
  %1137 = getelementptr [7 x i8], [7 x i8]* @"linux::str.194", i64 0, i64 0
  %1138 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1137, 1
  store { i64, i8* } %1138, { i64, i8* }* %tmp.190, align 8
  %1139 = load { i64, i8* }, { i64, i8* }* %tmp.190, align 8
  %1140 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 190
  store { i64, i8* } %1139, { i64, i8* }* %1140, align 8
  %1141 = bitcast float (i8*, i8**)* @strtof to void ()*
  %1142 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 190
  store void ()* %1141, void ()** %1142, align 8
  %1143 = getelementptr [8 x i8], [8 x i8]* @"linux::str.195", i64 0, i64 0
  %1144 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1143, 1
  store { i64, i8* } %1144, { i64, i8* }* %tmp.191, align 8
  %1145 = load { i64, i8* }, { i64, i8* }* %tmp.191, align 8
  %1146 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 191
  store { i64, i8* } %1145, { i64, i8* }* %1146, align 8
  %1147 = bitcast x86_fp80 (i8*, i8**)* @strtold to void ()*
  %1148 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 191
  store void ()* %1147, void ()** %1148, align 8
  %1149 = getelementptr [7 x i8], [7 x i8]* @"linux::str.196", i64 0, i64 0
  %1150 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1149, 1
  store { i64, i8* } %1150, { i64, i8* }* %tmp.192, align 8
  %1151 = load { i64, i8* }, { i64, i8* }* %tmp.192, align 8
  %1152 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 192
  store { i64, i8* } %1151, { i64, i8* }* %1152, align 8
  %1153 = bitcast i64 (i8*, i8**, i32)* @strtoq to void ()*
  %1154 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 192
  store void ()* %1153, void ()** %1154, align 8
  %1155 = getelementptr [8 x i8], [8 x i8]* @"linux::str.197", i64 0, i64 0
  %1156 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1155, 1
  store { i64, i8* } %1156, { i64, i8* }* %tmp.193, align 8
  %1157 = load { i64, i8* }, { i64, i8* }* %tmp.193, align 8
  %1158 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 193
  store { i64, i8* } %1157, { i64, i8* }* %1158, align 8
  %1159 = bitcast i64 (i8*, i8**, i32)* @strtouq to void ()*
  %1160 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 193
  store void ()* %1159, void ()** %1160, align 8
  %1161 = getelementptr [8 x i8], [8 x i8]* @"linux::str.198", i64 0, i64 0
  %1162 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1161, 1
  store { i64, i8* } %1162, { i64, i8* }* %tmp.194, align 8
  %1163 = load { i64, i8* }, { i64, i8* }* %tmp.194, align 8
  %1164 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 194
  store { i64, i8* } %1163, { i64, i8* }* %1164, align 8
  %1165 = bitcast i64 (i8*, i8**, i32)* @strtoll to void ()*
  %1166 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 194
  store void ()* %1165, void ()** %1166, align 8
  %1167 = getelementptr [9 x i8], [9 x i8]* @"linux::str.199", i64 0, i64 0
  %1168 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1167, 1
  store { i64, i8* } %1168, { i64, i8* }* %tmp.195, align 8
  %1169 = load { i64, i8* }, { i64, i8* }* %tmp.195, align 8
  %1170 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 195
  store { i64, i8* } %1169, { i64, i8* }* %1170, align 8
  %1171 = bitcast i64 (i8*, i8**, i32)* @strtoull to void ()*
  %1172 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 195
  store void ()* %1171, void ()** %1172, align 8
  %1173 = getelementptr [5 x i8], [5 x i8]* @"linux::str.200", i64 0, i64 0
  %1174 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1173, 1
  store { i64, i8* } %1174, { i64, i8* }* %tmp.196, align 8
  %1175 = load { i64, i8* }, { i64, i8* }* %tmp.196, align 8
  %1176 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 196
  store { i64, i8* } %1175, { i64, i8* }* %1176, align 8
  %1177 = bitcast i8* (i64)* @l64a to void ()*
  %1178 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 196
  store void ()* %1177, void ()** %1178, align 8
  %1179 = getelementptr [5 x i8], [5 x i8]* @"linux::str.201", i64 0, i64 0
  %1180 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1179, 1
  store { i64, i8* } %1180, { i64, i8* }* %tmp.197, align 8
  %1181 = load { i64, i8* }, { i64, i8* }* %tmp.197, align 8
  %1182 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 197
  store { i64, i8* } %1181, { i64, i8* }* %1182, align 8
  %1183 = bitcast i64 (i8*)* @a64l to void ()*
  %1184 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 197
  store void ()* %1183, void ()** %1184, align 8
  %1185 = getelementptr [7 x i8], [7 x i8]* @"linux::str.202", i64 0, i64 0
  %1186 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1185, 1
  store { i64, i8* } %1186, { i64, i8* }* %tmp.198, align 8
  %1187 = load { i64, i8* }, { i64, i8* }* %tmp.198, align 8
  %1188 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 198
  store { i64, i8* } %1187, { i64, i8* }* %1188, align 8
  %1189 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::ldiv_t"*)* @select to void ()*
  %1190 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 198
  store void ()* %1189, void ()** %1190, align 8
  %1191 = getelementptr [8 x i8], [8 x i8]* @"linux::str.203", i64 0, i64 0
  %1192 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1191, 1
  store { i64, i8* } %1192, { i64, i8* }* %tmp.199, align 8
  %1193 = load { i64, i8* }, { i64, i8* }* %tmp.199, align 8
  %1194 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 199
  store { i64, i8* } %1193, { i64, i8* }* %1194, align 8
  %1195 = bitcast i32 (i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::ldiv_t"*, %"cstd::__sigset_t"*)* @pselect to void ()*
  %1196 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 199
  store void ()* %1195, void ()** %1196, align 8
  %1197 = getelementptr [7 x i8], [7 x i8]* @"linux::str.204", i64 0, i64 0
  %1198 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1197, 1
  store { i64, i8* } %1198, { i64, i8* }* %tmp.200, align 8
  %1199 = load { i64, i8* }, { i64, i8* }* %tmp.200, align 8
  %1200 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 200
  store { i64, i8* } %1199, { i64, i8* }* %1200, align 8
  %1201 = bitcast i64 ()* @random to void ()*
  %1202 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 200
  store void ()* %1201, void ()** %1202, align 8
  %1203 = getelementptr [8 x i8], [8 x i8]* @"linux::str.205", i64 0, i64 0
  %1204 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1203, 1
  store { i64, i8* } %1204, { i64, i8* }* %tmp.201, align 8
  %1205 = load { i64, i8* }, { i64, i8* }* %tmp.201, align 8
  %1206 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 201
  store { i64, i8* } %1205, { i64, i8* }* %1206, align 8
  %1207 = bitcast void (i32)* @srandom to void ()*
  %1208 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 201
  store void ()* %1207, void ()** %1208, align 8
  %1209 = getelementptr [10 x i8], [10 x i8]* @"linux::str.206", i64 0, i64 0
  %1210 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1209, 1
  store { i64, i8* } %1210, { i64, i8* }* %tmp.202, align 8
  %1211 = load { i64, i8* }, { i64, i8* }* %tmp.202, align 8
  %1212 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 202
  store { i64, i8* } %1211, { i64, i8* }* %1212, align 8
  %1213 = bitcast i8* (i32, i8*, i64)* @initstate to void ()*
  %1214 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 202
  store void ()* %1213, void ()** %1214, align 8
  %1215 = getelementptr [9 x i8], [9 x i8]* @"linux::str.207", i64 0, i64 0
  %1216 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1215, 1
  store { i64, i8* } %1216, { i64, i8* }* %tmp.203, align 8
  %1217 = load { i64, i8* }, { i64, i8* }* %tmp.203, align 8
  %1218 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 203
  store { i64, i8* } %1217, { i64, i8* }* %1218, align 8
  %1219 = bitcast i8* (i8*)* @setstate to void ()*
  %1220 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 203
  store void ()* %1219, void ()** %1220, align 8
  %1221 = getelementptr [9 x i8], [9 x i8]* @"linux::str.208", i64 0, i64 0
  %1222 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1221, 1
  store { i64, i8* } %1222, { i64, i8* }* %tmp.204, align 8
  %1223 = load { i64, i8* }, { i64, i8* }* %tmp.204, align 8
  %1224 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 204
  store { i64, i8* } %1223, { i64, i8* }* %1224, align 8
  %1225 = bitcast i32 (%"linux::s_random_data"*, i32*)* @random_r to void ()*
  %1226 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 204
  store void ()* %1225, void ()** %1226, align 8
  %1227 = getelementptr [10 x i8], [10 x i8]* @"linux::str.209", i64 0, i64 0
  %1228 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1227, 1
  store { i64, i8* } %1228, { i64, i8* }* %tmp.205, align 8
  %1229 = load { i64, i8* }, { i64, i8* }* %tmp.205, align 8
  %1230 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 205
  store { i64, i8* } %1229, { i64, i8* }* %1230, align 8
  %1231 = bitcast i32 (i32, %"linux::s_random_data"*)* @srandom_r to void ()*
  %1232 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 205
  store void ()* %1231, void ()** %1232, align 8
  %1233 = getelementptr [12 x i8], [12 x i8]* @"linux::str.210", i64 0, i64 0
  %1234 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1233, 1
  store { i64, i8* } %1234, { i64, i8* }* %tmp.206, align 8
  %1235 = load { i64, i8* }, { i64, i8* }* %tmp.206, align 8
  %1236 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 206
  store { i64, i8* } %1235, { i64, i8* }* %1236, align 8
  %1237 = bitcast i32 (i32, i8*, i64, %"linux::s_random_data"*)* @initstate_r to void ()*
  %1238 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 206
  store void ()* %1237, void ()** %1238, align 8
  %1239 = getelementptr [11 x i8], [11 x i8]* @"linux::str.211", i64 0, i64 0
  %1240 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1239, 1
  store { i64, i8* } %1240, { i64, i8* }* %tmp.207, align 8
  %1241 = load { i64, i8* }, { i64, i8* }* %tmp.207, align 8
  %1242 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 207
  store { i64, i8* } %1241, { i64, i8* }* %1242, align 8
  %1243 = bitcast i32 (i8*, %"linux::s_random_data"*)* @setstate_r to void ()*
  %1244 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 207
  store void ()* %1243, void ()** %1244, align 8
  %1245 = getelementptr [7 x i8], [7 x i8]* @"linux::str.212", i64 0, i64 0
  %1246 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1245, 1
  store { i64, i8* } %1246, { i64, i8* }* %tmp.208, align 8
  %1247 = load { i64, i8* }, { i64, i8* }* %tmp.208, align 8
  %1248 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 208
  store { i64, i8* } %1247, { i64, i8* }* %1248, align 8
  %1249 = bitcast i32 (i32*)* @rand_r to void ()*
  %1250 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 208
  store void ()* %1249, void ()** %1250, align 8
  %1251 = getelementptr [8 x i8], [8 x i8]* @"linux::str.213", i64 0, i64 0
  %1252 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1251, 1
  store { i64, i8* } %1252, { i64, i8* }* %tmp.209, align 8
  %1253 = load { i64, i8* }, { i64, i8* }* %tmp.209, align 8
  %1254 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 209
  store { i64, i8* } %1253, { i64, i8* }* %1254, align 8
  %1255 = bitcast double ()* @drand48 to void ()*
  %1256 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 209
  store void ()* %1255, void ()** %1256, align 8
  %1257 = getelementptr [8 x i8], [8 x i8]* @"linux::str.214", i64 0, i64 0
  %1258 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1257, 1
  store { i64, i8* } %1258, { i64, i8* }* %tmp.210, align 8
  %1259 = load { i64, i8* }, { i64, i8* }* %tmp.210, align 8
  %1260 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 210
  store { i64, i8* } %1259, { i64, i8* }* %1260, align 8
  %1261 = bitcast double (i16*)* @erand48 to void ()*
  %1262 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 210
  store void ()* %1261, void ()** %1262, align 8
  %1263 = getelementptr [8 x i8], [8 x i8]* @"linux::str.215", i64 0, i64 0
  %1264 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1263, 1
  store { i64, i8* } %1264, { i64, i8* }* %tmp.211, align 8
  %1265 = load { i64, i8* }, { i64, i8* }* %tmp.211, align 8
  %1266 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 211
  store { i64, i8* } %1265, { i64, i8* }* %1266, align 8
  %1267 = bitcast i64 ()* @lrand48 to void ()*
  %1268 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 211
  store void ()* %1267, void ()** %1268, align 8
  %1269 = getelementptr [8 x i8], [8 x i8]* @"linux::str.216", i64 0, i64 0
  %1270 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1269, 1
  store { i64, i8* } %1270, { i64, i8* }* %tmp.212, align 8
  %1271 = load { i64, i8* }, { i64, i8* }* %tmp.212, align 8
  %1272 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 212
  store { i64, i8* } %1271, { i64, i8* }* %1272, align 8
  %1273 = bitcast i64 (i16*)* @nrand48 to void ()*
  %1274 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 212
  store void ()* %1273, void ()** %1274, align 8
  %1275 = getelementptr [8 x i8], [8 x i8]* @"linux::str.217", i64 0, i64 0
  %1276 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1275, 1
  store { i64, i8* } %1276, { i64, i8* }* %tmp.213, align 8
  %1277 = load { i64, i8* }, { i64, i8* }* %tmp.213, align 8
  %1278 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 213
  store { i64, i8* } %1277, { i64, i8* }* %1278, align 8
  %1279 = bitcast i64 ()* @mrand48 to void ()*
  %1280 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 213
  store void ()* %1279, void ()** %1280, align 8
  %1281 = getelementptr [8 x i8], [8 x i8]* @"linux::str.218", i64 0, i64 0
  %1282 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1281, 1
  store { i64, i8* } %1282, { i64, i8* }* %tmp.214, align 8
  %1283 = load { i64, i8* }, { i64, i8* }* %tmp.214, align 8
  %1284 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 214
  store { i64, i8* } %1283, { i64, i8* }* %1284, align 8
  %1285 = bitcast i64 (i16*)* @jrand48 to void ()*
  %1286 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 214
  store void ()* %1285, void ()** %1286, align 8
  %1287 = getelementptr [8 x i8], [8 x i8]* @"linux::str.219", i64 0, i64 0
  %1288 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1287, 1
  store { i64, i8* } %1288, { i64, i8* }* %tmp.215, align 8
  %1289 = load { i64, i8* }, { i64, i8* }* %tmp.215, align 8
  %1290 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 215
  store { i64, i8* } %1289, { i64, i8* }* %1290, align 8
  %1291 = bitcast void (i64)* @srand48 to void ()*
  %1292 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 215
  store void ()* %1291, void ()** %1292, align 8
  %1293 = getelementptr [7 x i8], [7 x i8]* @"linux::str.220", i64 0, i64 0
  %1294 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1293, 1
  store { i64, i8* } %1294, { i64, i8* }* %tmp.216, align 8
  %1295 = load { i64, i8* }, { i64, i8* }* %tmp.216, align 8
  %1296 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 216
  store { i64, i8* } %1295, { i64, i8* }* %1296, align 8
  %1297 = bitcast i16* (i16*)* @seed48 to void ()*
  %1298 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 216
  store void ()* %1297, void ()** %1298, align 8
  %1299 = getelementptr [8 x i8], [8 x i8]* @"linux::str.221", i64 0, i64 0
  %1300 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1299, 1
  store { i64, i8* } %1300, { i64, i8* }* %tmp.217, align 8
  %1301 = load { i64, i8* }, { i64, i8* }* %tmp.217, align 8
  %1302 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 217
  store { i64, i8* } %1301, { i64, i8* }* %1302, align 8
  %1303 = bitcast void (i16*)* @lcong48 to void ()*
  %1304 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 217
  store void ()* %1303, void ()** %1304, align 8
  %1305 = getelementptr [10 x i8], [10 x i8]* @"linux::str.222", i64 0, i64 0
  %1306 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1305, 1
  store { i64, i8* } %1306, { i64, i8* }* %tmp.218, align 8
  %1307 = load { i64, i8* }, { i64, i8* }* %tmp.218, align 8
  %1308 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 218
  store { i64, i8* } %1307, { i64, i8* }* %1308, align 8
  %1309 = bitcast i32 (%"linux::s_drand48_data"*, double*)* @drand48_r to void ()*
  %1310 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 218
  store void ()* %1309, void ()** %1310, align 8
  %1311 = getelementptr [10 x i8], [10 x i8]* @"linux::str.223", i64 0, i64 0
  %1312 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1311, 1
  store { i64, i8* } %1312, { i64, i8* }* %tmp.219, align 8
  %1313 = load { i64, i8* }, { i64, i8* }* %tmp.219, align 8
  %1314 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 219
  store { i64, i8* } %1313, { i64, i8* }* %1314, align 8
  %1315 = bitcast i32 (i16*, %"linux::s_drand48_data"*, double*)* @erand48_r to void ()*
  %1316 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 219
  store void ()* %1315, void ()** %1316, align 8
  %1317 = getelementptr [10 x i8], [10 x i8]* @"linux::str.224", i64 0, i64 0
  %1318 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1317, 1
  store { i64, i8* } %1318, { i64, i8* }* %tmp.220, align 8
  %1319 = load { i64, i8* }, { i64, i8* }* %tmp.220, align 8
  %1320 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 220
  store { i64, i8* } %1319, { i64, i8* }* %1320, align 8
  %1321 = bitcast i32 (%"linux::s_drand48_data"*, i64*)* @lrand48_r to void ()*
  %1322 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 220
  store void ()* %1321, void ()** %1322, align 8
  %1323 = getelementptr [10 x i8], [10 x i8]* @"linux::str.225", i64 0, i64 0
  %1324 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1323, 1
  store { i64, i8* } %1324, { i64, i8* }* %tmp.221, align 8
  %1325 = load { i64, i8* }, { i64, i8* }* %tmp.221, align 8
  %1326 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 221
  store { i64, i8* } %1325, { i64, i8* }* %1326, align 8
  %1327 = bitcast i32 (i16*, %"linux::s_drand48_data"*, i64*)* @nrand48_r to void ()*
  %1328 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 221
  store void ()* %1327, void ()** %1328, align 8
  %1329 = getelementptr [10 x i8], [10 x i8]* @"linux::str.226", i64 0, i64 0
  %1330 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1329, 1
  store { i64, i8* } %1330, { i64, i8* }* %tmp.222, align 8
  %1331 = load { i64, i8* }, { i64, i8* }* %tmp.222, align 8
  %1332 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 222
  store { i64, i8* } %1331, { i64, i8* }* %1332, align 8
  %1333 = bitcast i32 (%"linux::s_drand48_data"*, i64*)* @mrand48_r to void ()*
  %1334 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 222
  store void ()* %1333, void ()** %1334, align 8
  %1335 = getelementptr [10 x i8], [10 x i8]* @"linux::str.227", i64 0, i64 0
  %1336 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1335, 1
  store { i64, i8* } %1336, { i64, i8* }* %tmp.223, align 8
  %1337 = load { i64, i8* }, { i64, i8* }* %tmp.223, align 8
  %1338 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 223
  store { i64, i8* } %1337, { i64, i8* }* %1338, align 8
  %1339 = bitcast i32 (i16*, %"linux::s_drand48_data"*, i64*)* @jrand48_r to void ()*
  %1340 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 223
  store void ()* %1339, void ()** %1340, align 8
  %1341 = getelementptr [10 x i8], [10 x i8]* @"linux::str.228", i64 0, i64 0
  %1342 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1341, 1
  store { i64, i8* } %1342, { i64, i8* }* %tmp.224, align 8
  %1343 = load { i64, i8* }, { i64, i8* }* %tmp.224, align 8
  %1344 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 224
  store { i64, i8* } %1343, { i64, i8* }* %1344, align 8
  %1345 = bitcast i32 (i64, %"linux::s_drand48_data"*)* @srand48_r to void ()*
  %1346 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 224
  store void ()* %1345, void ()** %1346, align 8
  %1347 = getelementptr [9 x i8], [9 x i8]* @"linux::str.229", i64 0, i64 0
  %1348 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1347, 1
  store { i64, i8* } %1348, { i64, i8* }* %tmp.225, align 8
  %1349 = load { i64, i8* }, { i64, i8* }* %tmp.225, align 8
  %1350 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 225
  store { i64, i8* } %1349, { i64, i8* }* %1350, align 8
  %1351 = bitcast i32 (i16*, %"linux::s_drand48_data"*)* @seed48_r to void ()*
  %1352 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 225
  store void ()* %1351, void ()** %1352, align 8
  %1353 = getelementptr [10 x i8], [10 x i8]* @"linux::str.230", i64 0, i64 0
  %1354 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1353, 1
  store { i64, i8* } %1354, { i64, i8* }* %tmp.226, align 8
  %1355 = load { i64, i8* }, { i64, i8* }* %tmp.226, align 8
  %1356 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 226
  store { i64, i8* } %1355, { i64, i8* }* %1356, align 8
  %1357 = bitcast i32 (i16*, %"linux::s_drand48_data"*)* @lcong48_r to void ()*
  %1358 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 226
  store void ()* %1357, void ()** %1358, align 8
  %1359 = getelementptr [13 x i8], [13 x i8]* @"linux::str.231", i64 0, i64 0
  %1360 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1359, 1
  store { i64, i8* } %1360, { i64, i8* }* %tmp.227, align 8
  %1361 = load { i64, i8* }, { i64, i8* }* %tmp.227, align 8
  %1362 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 227
  store { i64, i8* } %1361, { i64, i8* }* %1362, align 8
  %1363 = bitcast i8* (i8*, i64, i64)* @reallocarray to void ()*
  %1364 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 227
  store void ()* %1363, void ()** %1364, align 8
  %1365 = getelementptr [7 x i8], [7 x i8]* @"linux::str.232", i64 0, i64 0
  %1366 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1365, 1
  store { i64, i8* } %1366, { i64, i8* }* %tmp.228, align 8
  %1367 = load { i64, i8* }, { i64, i8* }* %tmp.228, align 8
  %1368 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 228
  store { i64, i8* } %1367, { i64, i8* }* %1368, align 8
  %1369 = bitcast i8* (i64)* @valloc to void ()*
  %1370 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 228
  store void ()* %1369, void ()** %1370, align 8
  %1371 = getelementptr [15 x i8], [15 x i8]* @"linux::str.233", i64 0, i64 0
  %1372 = insertvalue { i64, i8* } { i64 15, i8* undef }, i8* %1371, 1
  store { i64, i8* } %1372, { i64, i8* }* %tmp.229, align 8
  %1373 = load { i64, i8* }, { i64, i8* }* %tmp.229, align 8
  %1374 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 229
  store { i64, i8* } %1373, { i64, i8* }* %1374, align 8
  %1375 = bitcast i32 (i8**, i64, i64)* @posix_memalign to void ()*
  %1376 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 229
  store void ()* %1375, void ()** %1376, align 8
  %1377 = getelementptr [14 x i8], [14 x i8]* @"linux::str.234", i64 0, i64 0
  %1378 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1377, 1
  store { i64, i8* } %1378, { i64, i8* }* %tmp.230, align 8
  %1379 = load { i64, i8* }, { i64, i8* }* %tmp.230, align 8
  %1380 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 230
  store { i64, i8* } %1379, { i64, i8* }* %1380, align 8
  %1381 = bitcast i8* (i64, i64)* @aligned_alloc to void ()*
  %1382 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 230
  store void ()* %1381, void ()** %1382, align 8
  %1383 = getelementptr [14 x i8], [14 x i8]* @"linux::str.235", i64 0, i64 0
  %1384 = insertvalue { i64, i8* } { i64 14, i8* undef }, i8* %1383, 1
  store { i64, i8* } %1384, { i64, i8* }* %tmp.231, align 8
  %1385 = load { i64, i8* }, { i64, i8* }* %tmp.231, align 8
  %1386 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 231
  store { i64, i8* } %1385, { i64, i8* }* %1386, align 8
  %1387 = bitcast i32 (void ()*)* @at_quick_exit to void ()*
  %1388 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 231
  store void ()* %1387, void ()** %1388, align 8
  %1389 = getelementptr [8 x i8], [8 x i8]* @"linux::str.236", i64 0, i64 0
  %1390 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1389, 1
  store { i64, i8* } %1390, { i64, i8* }* %tmp.232, align 8
  %1391 = load { i64, i8* }, { i64, i8* }* %tmp.232, align 8
  %1392 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 232
  store { i64, i8* } %1391, { i64, i8* }* %1392, align 8
  %1393 = bitcast i32 (void (i32, i8*)*, i8*)* @on_exit to void ()*
  %1394 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 232
  store void ()* %1393, void ()** %1394, align 8
  %1395 = getelementptr [11 x i8], [11 x i8]* @"linux::str.237", i64 0, i64 0
  %1396 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1395, 1
  store { i64, i8* } %1396, { i64, i8* }* %tmp.233, align 8
  %1397 = load { i64, i8* }, { i64, i8* }* %tmp.233, align 8
  %1398 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 233
  store { i64, i8* } %1397, { i64, i8* }* %1398, align 8
  %1399 = bitcast void (i32)* @quick_exit to void ()*
  %1400 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 233
  store void ()* %1399, void ()** %1400, align 8
  %1401 = getelementptr [6 x i8], [6 x i8]* @"linux::str.238", i64 0, i64 0
  %1402 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1401, 1
  store { i64, i8* } %1402, { i64, i8* }* %tmp.234, align 8
  %1403 = load { i64, i8* }, { i64, i8* }* %tmp.234, align 8
  %1404 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 234
  store { i64, i8* } %1403, { i64, i8* }* %1404, align 8
  %1405 = bitcast void (i32)* @_Exit to void ()*
  %1406 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 234
  store void ()* %1405, void ()** %1406, align 8
  %1407 = getelementptr [7 x i8], [7 x i8]* @"linux::str.239", i64 0, i64 0
  %1408 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1407, 1
  store { i64, i8* } %1408, { i64, i8* }* %tmp.235, align 8
  %1409 = load { i64, i8* }, { i64, i8* }* %tmp.235, align 8
  %1410 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 235
  store { i64, i8* } %1409, { i64, i8* }* %1410, align 8
  %1411 = bitcast i32 (i8*)* @putenv to void ()*
  %1412 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 235
  store void ()* %1411, void ()** %1412, align 8
  %1413 = getelementptr [7 x i8], [7 x i8]* @"linux::str.240", i64 0, i64 0
  %1414 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1413, 1
  store { i64, i8* } %1414, { i64, i8* }* %tmp.236, align 8
  %1415 = load { i64, i8* }, { i64, i8* }* %tmp.236, align 8
  %1416 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 236
  store { i64, i8* } %1415, { i64, i8* }* %1416, align 8
  %1417 = bitcast i32 (i8*, i8*, i32)* @setenv to void ()*
  %1418 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 236
  store void ()* %1417, void ()** %1418, align 8
  %1419 = getelementptr [9 x i8], [9 x i8]* @"linux::str.241", i64 0, i64 0
  %1420 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1419, 1
  store { i64, i8* } %1420, { i64, i8* }* %tmp.237, align 8
  %1421 = load { i64, i8* }, { i64, i8* }* %tmp.237, align 8
  %1422 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 237
  store { i64, i8* } %1421, { i64, i8* }* %1422, align 8
  %1423 = bitcast i32 (i8*)* @unsetenv to void ()*
  %1424 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 237
  store void ()* %1423, void ()** %1424, align 8
  %1425 = getelementptr [9 x i8], [9 x i8]* @"linux::str.242", i64 0, i64 0
  %1426 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1425, 1
  store { i64, i8* } %1426, { i64, i8* }* %tmp.238, align 8
  %1427 = load { i64, i8* }, { i64, i8* }* %tmp.238, align 8
  %1428 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 238
  store { i64, i8* } %1427, { i64, i8* }* %1428, align 8
  %1429 = bitcast i32 ()* @clearenv to void ()*
  %1430 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 238
  store void ()* %1429, void ()** %1430, align 8
  %1431 = getelementptr [8 x i8], [8 x i8]* @"linux::str.243", i64 0, i64 0
  %1432 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1431, 1
  store { i64, i8* } %1432, { i64, i8* }* %tmp.239, align 8
  %1433 = load { i64, i8* }, { i64, i8* }* %tmp.239, align 8
  %1434 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 239
  store { i64, i8* } %1433, { i64, i8* }* %1434, align 8
  %1435 = bitcast i32 (i8*)* @mkstemp to void ()*
  %1436 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 239
  store void ()* %1435, void ()** %1436, align 8
  %1437 = getelementptr [9 x i8], [9 x i8]* @"linux::str.244", i64 0, i64 0
  %1438 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1437, 1
  store { i64, i8* } %1438, { i64, i8* }* %tmp.240, align 8
  %1439 = load { i64, i8* }, { i64, i8* }* %tmp.240, align 8
  %1440 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 240
  store { i64, i8* } %1439, { i64, i8* }* %1440, align 8
  %1441 = bitcast i32 (i8*, i32)* @mkstemps to void ()*
  %1442 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 240
  store void ()* %1441, void ()** %1442, align 8
  %1443 = getelementptr [8 x i8], [8 x i8]* @"linux::str.245", i64 0, i64 0
  %1444 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1443, 1
  store { i64, i8* } %1444, { i64, i8* }* %tmp.241, align 8
  %1445 = load { i64, i8* }, { i64, i8* }* %tmp.241, align 8
  %1446 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 241
  store { i64, i8* } %1445, { i64, i8* }* %1446, align 8
  %1447 = bitcast i8* (i8*)* @mkdtemp to void ()*
  %1448 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 241
  store void ()* %1447, void ()** %1448, align 8
  %1449 = getelementptr [9 x i8], [9 x i8]* @"linux::str.246", i64 0, i64 0
  %1450 = insertvalue { i64, i8* } { i64 9, i8* undef }, i8* %1449, 1
  store { i64, i8* } %1450, { i64, i8* }* %tmp.242, align 8
  %1451 = load { i64, i8* }, { i64, i8* }* %tmp.242, align 8
  %1452 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 242
  store { i64, i8* } %1451, { i64, i8* }* %1452, align 8
  %1453 = bitcast i8* (i8*, i8*)* @realpath to void ()*
  %1454 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 242
  store void ()* %1453, void ()** %1454, align 8
  %1455 = getelementptr [6 x i8], [6 x i8]* @"linux::str.247", i64 0, i64 0
  %1456 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1455, 1
  store { i64, i8* } %1456, { i64, i8* }* %tmp.243, align 8
  %1457 = load { i64, i8* }, { i64, i8* }* %tmp.243, align 8
  %1458 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 243
  store { i64, i8* } %1457, { i64, i8* }* %1458, align 8
  %1459 = bitcast i64 (i64)* @llabs to void ()*
  %1460 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 243
  store void ()* %1459, void ()** %1460, align 8
  %1461 = getelementptr [6 x i8], [6 x i8]* @"linux::str.248", i64 0, i64 0
  %1462 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1461, 1
  store { i64, i8* } %1462, { i64, i8* }* %tmp.244, align 8
  %1463 = load { i64, i8* }, { i64, i8* }* %tmp.244, align 8
  %1464 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 244
  store { i64, i8* } %1463, { i64, i8* }* %1464, align 8
  %1465 = bitcast %"cstd::ldiv_t" (i64, i64)* @lldiv to void ()*
  %1466 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 244
  store void ()* %1465, void ()** %1466, align 8
  %1467 = getelementptr [5 x i8], [5 x i8]* @"linux::str.249", i64 0, i64 0
  %1468 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1467, 1
  store { i64, i8* } %1468, { i64, i8* }* %tmp.245, align 8
  %1469 = load { i64, i8* }, { i64, i8* }* %tmp.245, align 8
  %1470 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 245
  store { i64, i8* } %1469, { i64, i8* }* %1470, align 8
  %1471 = bitcast i8* (double, i32, i32*, i32*)* @ecvt to void ()*
  %1472 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 245
  store void ()* %1471, void ()** %1472, align 8
  %1473 = getelementptr [5 x i8], [5 x i8]* @"linux::str.250", i64 0, i64 0
  %1474 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1473, 1
  store { i64, i8* } %1474, { i64, i8* }* %tmp.246, align 8
  %1475 = load { i64, i8* }, { i64, i8* }* %tmp.246, align 8
  %1476 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 246
  store { i64, i8* } %1475, { i64, i8* }* %1476, align 8
  %1477 = bitcast i8* (double, i32, i32*, i32*)* @fcvt to void ()*
  %1478 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 246
  store void ()* %1477, void ()** %1478, align 8
  %1479 = getelementptr [5 x i8], [5 x i8]* @"linux::str.251", i64 0, i64 0
  %1480 = insertvalue { i64, i8* } { i64 5, i8* undef }, i8* %1479, 1
  store { i64, i8* } %1480, { i64, i8* }* %tmp.247, align 8
  %1481 = load { i64, i8* }, { i64, i8* }* %tmp.247, align 8
  %1482 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 247
  store { i64, i8* } %1481, { i64, i8* }* %1482, align 8
  %1483 = bitcast i8* (double, i32, i8*)* @gcvt to void ()*
  %1484 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 247
  store void ()* %1483, void ()** %1484, align 8
  %1485 = getelementptr [6 x i8], [6 x i8]* @"linux::str.252", i64 0, i64 0
  %1486 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1485, 1
  store { i64, i8* } %1486, { i64, i8* }* %tmp.248, align 8
  %1487 = load { i64, i8* }, { i64, i8* }* %tmp.248, align 8
  %1488 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 248
  store { i64, i8* } %1487, { i64, i8* }* %1488, align 8
  %1489 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @qecvt to void ()*
  %1490 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 248
  store void ()* %1489, void ()** %1490, align 8
  %1491 = getelementptr [6 x i8], [6 x i8]* @"linux::str.253", i64 0, i64 0
  %1492 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1491, 1
  store { i64, i8* } %1492, { i64, i8* }* %tmp.249, align 8
  %1493 = load { i64, i8* }, { i64, i8* }* %tmp.249, align 8
  %1494 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 249
  store { i64, i8* } %1493, { i64, i8* }* %1494, align 8
  %1495 = bitcast i8* (x86_fp80, i32, i32*, i32*)* @qfcvt to void ()*
  %1496 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 249
  store void ()* %1495, void ()** %1496, align 8
  %1497 = getelementptr [6 x i8], [6 x i8]* @"linux::str.254", i64 0, i64 0
  %1498 = insertvalue { i64, i8* } { i64 6, i8* undef }, i8* %1497, 1
  store { i64, i8* } %1498, { i64, i8* }* %tmp.250, align 8
  %1499 = load { i64, i8* }, { i64, i8* }* %tmp.250, align 8
  %1500 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 250
  store { i64, i8* } %1499, { i64, i8* }* %1500, align 8
  %1501 = bitcast i8* (x86_fp80, i32, i8*)* @qgcvt to void ()*
  %1502 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 250
  store void ()* %1501, void ()** %1502, align 8
  %1503 = getelementptr [7 x i8], [7 x i8]* @"linux::str.255", i64 0, i64 0
  %1504 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1503, 1
  store { i64, i8* } %1504, { i64, i8* }* %tmp.251, align 8
  %1505 = load { i64, i8* }, { i64, i8* }* %tmp.251, align 8
  %1506 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 251
  store { i64, i8* } %1505, { i64, i8* }* %1506, align 8
  %1507 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @ecvt_r to void ()*
  %1508 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 251
  store void ()* %1507, void ()** %1508, align 8
  %1509 = getelementptr [7 x i8], [7 x i8]* @"linux::str.256", i64 0, i64 0
  %1510 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1509, 1
  store { i64, i8* } %1510, { i64, i8* }* %tmp.252, align 8
  %1511 = load { i64, i8* }, { i64, i8* }* %tmp.252, align 8
  %1512 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 252
  store { i64, i8* } %1511, { i64, i8* }* %1512, align 8
  %1513 = bitcast i32 (double, i32, i32*, i32*, i8*, i64)* @fcvt_r to void ()*
  %1514 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 252
  store void ()* %1513, void ()** %1514, align 8
  %1515 = getelementptr [8 x i8], [8 x i8]* @"linux::str.257", i64 0, i64 0
  %1516 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1515, 1
  store { i64, i8* } %1516, { i64, i8* }* %tmp.253, align 8
  %1517 = load { i64, i8* }, { i64, i8* }* %tmp.253, align 8
  %1518 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 253
  store { i64, i8* } %1517, { i64, i8* }* %1518, align 8
  %1519 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @qecvt_r to void ()*
  %1520 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 253
  store void ()* %1519, void ()** %1520, align 8
  %1521 = getelementptr [8 x i8], [8 x i8]* @"linux::str.258", i64 0, i64 0
  %1522 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1521, 1
  store { i64, i8* } %1522, { i64, i8* }* %tmp.254, align 8
  %1523 = load { i64, i8* }, { i64, i8* }* %tmp.254, align 8
  %1524 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 254
  store { i64, i8* } %1523, { i64, i8* }* %1524, align 8
  %1525 = bitcast i32 (x86_fp80, i32, i32*, i32*, i8*, i64)* @qfcvt_r to void ()*
  %1526 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 254
  store void ()* %1525, void ()** %1526, align 8
  %1527 = getelementptr [8 x i8], [8 x i8]* @"linux::str.259", i64 0, i64 0
  %1528 = insertvalue { i64, i8* } { i64 8, i8* undef }, i8* %1527, 1
  store { i64, i8* } %1528, { i64, i8* }* %tmp.255, align 8
  %1529 = load { i64, i8* }, { i64, i8* }* %tmp.255, align 8
  %1530 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 255
  store { i64, i8* } %1529, { i64, i8* }* %1530, align 8
  %1531 = bitcast i32 (i8*)* @rpmatch to void ()*
  %1532 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 255
  store void ()* %1531, void ()** %1532, align 8
  %1533 = getelementptr [10 x i8], [10 x i8]* @"linux::str.260", i64 0, i64 0
  %1534 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1533, 1
  store { i64, i8* } %1534, { i64, i8* }* %tmp.256, align 8
  %1535 = load { i64, i8* }, { i64, i8* }* %tmp.256, align 8
  %1536 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 256
  store { i64, i8* } %1535, { i64, i8* }* %1536, align 8
  %1537 = bitcast i32 (i8**, i8**, i8**)* @getsubopt to void ()*
  %1538 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 256
  store void ()* %1537, void ()** %1538, align 8
  %1539 = getelementptr [11 x i8], [11 x i8]* @"linux::str.261", i64 0, i64 0
  %1540 = insertvalue { i64, i8* } { i64 11, i8* undef }, i8* %1539, 1
  store { i64, i8* } %1540, { i64, i8* }* %tmp.257, align 8
  %1541 = load { i64, i8* }, { i64, i8* }* %tmp.257, align 8
  %1542 = getelementptr [258 x { i64, i8* }], [258 x { i64, i8* }]* @"linux::__DEF_NAMES", i32 0, i32 257
  store { i64, i8* } %1541, { i64, i8* }* %1542, align 8
  %1543 = bitcast i32 (double*, i32)* @getloadavg to void ()*
  %1544 = getelementptr [258 x void ()*], [258 x void ()*]* @"linux::__DEFS", i32 0, i32 257
  store void ()* %1543, void ()** %1544, align 8
  %1545 = getelementptr [13 x i8], [13 x i8]* @"linux::str.262", i64 0, i64 0
  %1546 = insertvalue { i64, i8* } { i64 13, i8* undef }, i8* %1545, 1
  store { i64, i8* } %1546, { i64, i8* }* %tmp.258, align 8
  %1547 = load { i64, i8* }, { i64, i8* }* %tmp.258, align 8
  %1548 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 0
  store { i64, i8* } %1547, { i64, i8* }* %1548, align 8
  %1549 = bitcast [65 x i8*]* @_sys_siglist to i8*
  %1550 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 0
  store i8* %1549, i8** %1550, align 8
  %1551 = getelementptr [12 x i8], [12 x i8]* @"linux::str.263", i64 0, i64 0
  %1552 = insertvalue { i64, i8* } { i64 12, i8* undef }, i8* %1551, 1
  store { i64, i8* } %1552, { i64, i8* }* %tmp.259, align 8
  %1553 = load { i64, i8* }, { i64, i8* }* %tmp.259, align 8
  %1554 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 1
  store { i64, i8* } %1553, { i64, i8* }* %1554, align 8
  %1555 = bitcast [65 x i8*]* @sys_siglist to i8*
  %1556 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 1
  store i8* %1555, i8** %1556, align 8
  %1557 = getelementptr [10 x i8], [10 x i8]* @"linux::str.264", i64 0, i64 0
  %1558 = insertvalue { i64, i8* } { i64 10, i8* undef }, i8* %1557, 1
  store { i64, i8* } %1558, { i64, i8* }* %tmp.260, align 8
  %1559 = load { i64, i8* }, { i64, i8* }* %tmp.260, align 8
  %1560 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 2
  store { i64, i8* } %1559, { i64, i8* }* %1560, align 8
  %1561 = bitcast i8*** @__environ to i8*
  %1562 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 2
  store i8* %1561, i8** %1562, align 8
  %1563 = getelementptr [7 x i8], [7 x i8]* @"linux::str.265", i64 0, i64 0
  %1564 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1563, 1
  store { i64, i8* } %1564, { i64, i8* }* %tmp.261, align 8
  %1565 = load { i64, i8* }, { i64, i8* }* %tmp.261, align 8
  %1566 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 3
  store { i64, i8* } %1565, { i64, i8* }* %1566, align 8
  %1567 = bitcast i8** @optarg to i8*
  %1568 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 3
  store i8* %1567, i8** %1568, align 8
  %1569 = getelementptr [7 x i8], [7 x i8]* @"linux::str.266", i64 0, i64 0
  %1570 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1569, 1
  store { i64, i8* } %1570, { i64, i8* }* %tmp.262, align 8
  %1571 = load { i64, i8* }, { i64, i8* }* %tmp.262, align 8
  %1572 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 4
  store { i64, i8* } %1571, { i64, i8* }* %1572, align 8
  %1573 = bitcast i32* @optind to i8*
  %1574 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 4
  store i8* %1573, i8** %1574, align 8
  %1575 = getelementptr [7 x i8], [7 x i8]* @"linux::str.267", i64 0, i64 0
  %1576 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1575, 1
  store { i64, i8* } %1576, { i64, i8* }* %tmp.263, align 8
  %1577 = load { i64, i8* }, { i64, i8* }* %tmp.263, align 8
  %1578 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 5
  store { i64, i8* } %1577, { i64, i8* }* %1578, align 8
  %1579 = bitcast i32* @opterr to i8*
  %1580 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 5
  store i8* %1579, i8** %1580, align 8
  %1581 = getelementptr [7 x i8], [7 x i8]* @"linux::str.268", i64 0, i64 0
  %1582 = insertvalue { i64, i8* } { i64 7, i8* undef }, i8* %1581, 1
  store { i64, i8* } %1582, { i64, i8* }* %tmp.264, align 8
  %1583 = load { i64, i8* }, { i64, i8* }* %tmp.264, align 8
  %1584 = getelementptr [7 x { i64, i8* }], [7 x { i64, i8* }]* @"linux::__VAR_NAMES", i32 0, i32 6
  store { i64, i8* } %1583, { i64, i8* }* %1584, align 8
  %1585 = bitcast i32* @optopt to i8*
  %1586 = getelementptr [7 x i8*], [7 x i8*]* @"linux::__VARS", i32 0, i32 6
  store i8* %1585, i8** %1586, align 8
  ret void
}

declare i32 @stat(i8*, %"linux::s_stat"*)

declare i32 @fstat(i32, %"linux::s_stat"*)

declare i32 @fstatat(i32, i8*, %"linux::s_stat"*, i32)

declare i32 @lstat(i8*, %"linux::s_stat"*)

declare i32 @chmod(i8*, i32)

declare i32 @fchmod(i32, i32)

declare i32 @fchmodat(i32, i8*, i32, i32)

declare i32 @umask(i32)

declare i32 @mkdir(i8*, i32)

declare i32 @mkdirat(i32, i8*, i32)

declare i32 @mknod(i8*, i32, i64)

declare i32 @mknodat(i32, i8*, i32, i64)

declare i32 @mkfifo(i8*, i32)

declare i32 @mkfifoat(i32, i8*, i32)

declare i32 @utimensat(i32, i8*, %"cstd::ldiv_t"*, i32)

declare i32 @futimens(i32, %"cstd::ldiv_t"*)

declare i32 @__fxstat(i32, i32, %"linux::s_stat"*)

declare i32 @__xstat(i32, i8*, %"linux::s_stat"*)

declare i32 @__lxstat(i32, i8*, %"linux::s_stat"*)

declare i32 @__fxstatat(i32, i32, i8*, %"linux::s_stat"*, i32)

declare i32 @__xmknod(i32, i8*, i32, i64*)

declare i32 @__xmknodat(i32, i32, i8*, i32, i64*)

declare i32 @ioctl(i32, i64, ...)

declare void (i32)* @__sysv_signal(i32, void (i32)*)

declare void (i32)* @signal(i32, void (i32)*)

declare i32 @kill(i32, i32)

declare i32 @killpg(i32, i32)

declare i32 @raise(i32)

declare void (i32)* @ssignal(i32, void (i32)*)

declare i32 @gsignal(i32)

declare void @psignal(i32, i8*)

declare void @psiginfo(%"linux::siginfo_t"*, i8*)

declare i32 @sigblock(i32)

declare i32 @sigsetmask(i32)

declare i32 @sigemptyset(%"cstd::__sigset_t"*)

declare i32 @sigfillset(%"cstd::__sigset_t"*)

declare i32 @sigaddset(%"cstd::__sigset_t"*, i32)

declare i32 @sigdelset(%"cstd::__sigset_t"*, i32)

declare i32 @sigismember(%"cstd::__sigset_t"*, i32)

declare i32 @sigprocmask(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)

declare i32 @sigsuspend(%"cstd::__sigset_t"*)

declare i32 @sigaction(i32, %"linux::s_sigaction"*, %"linux::s_sigaction"*)

declare i32 @sigpending(%"cstd::__sigset_t"*)

declare i32 @sigwait(%"cstd::__sigset_t"*, i32*)

declare i32 @sigwaitinfo(%"cstd::__sigset_t"*, %"linux::siginfo_t"*)

declare i32 @sigtimedwait(%"cstd::__sigset_t"*, %"linux::siginfo_t"*, %"cstd::ldiv_t"*)

declare i32 @sigqueue(i32, i32, %"ffi::ffi_raw")

declare i32 @siginterrupt(i32, i32)

declare i32 @sigaltstack(%"linux::stack_t"*, %"linux::stack_t"*)

declare i32 @pthread_sigmask(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*)

declare i32 @pthread_kill(i64, i32)

declare i32 @__libc_current_sigrtmin()

declare i32 @__libc_current_sigrtmax()

declare i32 @wait(i32*)

declare i32 @waitpid(i32, i32*, i32)

declare i32 @waitid(i32, i32, %"linux::siginfo_t"*, i32)

declare i32 @wait3(i32*, i32, %"linux::s_rusage"*)

declare i32 @wait4(i32, i32*, i32, %"linux::s_rusage"*)

declare i8* @mmap(i8*, i64, i32, i32, i32, i64)

declare i32 @munmap(i8*, i64)

declare i32 @mprotect(i8*, i64, i32)

declare i32 @msync(i8*, i64, i32)

declare i32 @madvise(i8*, i64, i32)

declare i32 @posix_madvise(i8*, i64, i32)

declare i32 @mlock(i8*, i64)

declare i32 @munlock(i8*, i64)

declare i32 @mlockall(i32)

declare i32 @munlockall()

declare i32 @mincore(i8*, i64, i8*)

declare i32 @shm_open(i8*, i32, i32)

declare i32 @shm_unlink(i8*)

declare i32 @access(i8*, i32)

declare i32 @faccessat(i32, i8*, i32, i32)

declare i64 @lseek(i32, i64, i32)

declare i32 @close(i32)

declare i64 @read(i32, i8*, i64)

declare i64 @write(i32, i8*, i64)

declare i64 @pread(i32, i8*, i64, i64)

declare i64 @pwrite(i32, i8*, i64, i64)

declare i32 @pipe(i32*)

declare i32 @alarm(i32)

declare i32 @sleep(i32)

declare i32 @ualarm(i32, i32)

declare i32 @usleep(i32)

declare i32 @pause()

declare i32 @chown(i8*, i32, i32)

declare i32 @fchown(i32, i32, i32)

declare i32 @lchown(i8*, i32, i32)

declare i32 @fchownat(i32, i8*, i32, i32, i32)

declare i32 @chdir(i8*)

declare i32 @fchdir(i32)

declare i8* @getcwd(i8*, i64)

declare i32 @dup(i32)

declare i32 @dup2(i32, i32)

declare i32 @execve(i8*, i8**, i8**)

declare i32 @fexecve(i32, i8**, i8**)

declare i32 @execv(i8*, i8**)

declare i32 @execle(i8*, i8*, ...)

declare i32 @execl(i8*, i8*, ...)

declare i32 @execvp(i8*, i8**)

declare i32 @execlp(i8*, i8*, ...)

declare i32 @nice(i32)

declare void @_exit(i32)

declare i64 @pathconf(i8*, i32)

declare i64 @fpathconf(i32, i32)

declare i64 @sysconf(i32)

declare i64 @confstr(i32, i8*, i64)

declare i32 @getpid()

declare i32 @getppid()

declare i32 @getpgrp()

declare i32 @__getpgid(i32)

declare i32 @getpgid(i32)

declare i32 @setpgid(i32, i32)

declare i32 @setpgrp()

declare i32 @setsid()

declare i32 @getsid(i32)

declare i32 @getuid()

declare i32 @geteuid()

declare i32 @getgid()

declare i32 @getegid()

declare i32 @getgroups(i32, i32*)

declare i32 @setuid(i32)

declare i32 @setreuid(i32, i32)

declare i32 @seteuid(i32)

declare i32 @setgid(i32)

declare i32 @setregid(i32, i32)

declare i32 @setegid(i32)

declare i32 @fork()

declare i32 @vfork()

declare i8* @ttyname(i32)

declare i32 @ttyname_r(i32, i8*, i64)

declare i32 @isatty(i32)

declare i32 @ttyslot()

declare i32 @link(i8*, i8*)

declare i32 @linkat(i32, i8*, i32, i8*, i32)

declare i32 @symlink(i8*, i8*)

declare i32 @symlinkat(i8*, i32, i8*)

declare i64 @readlinkat(i32, i8*, i8*, i64)

declare i32 @unlink(i8*)

declare i32 @unlinkat(i32, i8*, i32)

declare i32 @rmdir(i8*)

declare i32 @tcgetpgrp(i32)

declare i32 @tcsetpgrp(i32, i32)

declare i8* @getlogin()

declare i32 @getlogin_r(i8*, i64)

declare i32 @getopt(i32, i8**, i8*)

declare i32 @gethostname(i8*, i64)

declare i32 @sethostname(i8*, i64)

declare i32 @sethostid(i64)

declare i32 @getdomainname(i8*, i64)

declare i32 @setdomainname(i8*, i64)

declare i32 @vhangup()

declare i32 @profil(i16*, i64, i64, i32)

declare i32 @acct(i8*)

declare i8* @getusershell()

declare void @endusershell()

declare void @setusershell()

declare i32 @daemon(i32, i32)

declare i32 @chroot(i8*)

declare i8* @getpass(i8*)

declare i32 @fsync(i32)

declare i64 @gethostid()

declare void @sync()

declare i32 @getpagesize()

declare i32 @getdtablesize()

declare i32 @truncate(i8*, i64)

declare i32 @ftruncate(i32, i64)

declare i32 @brk(i8*)

declare i8* @sbrk(i64)

declare i64 @syscall(i64, ...)

declare i32 @lockf(i32, i32, i64)

declare i32 @fdatasync(i32)

declare i8* @crypt(i8*, i8*)

declare i32 @getentropy(i8*, i64)

declare i32 @cfgetospeed(%"linux::s_termios"*)

declare i32 @cfgetispeed(%"linux::s_termios"*)

declare i32 @cfsetospeed(%"linux::s_termios"*, i32)

declare i32 @cfsetispeed(%"linux::s_termios"*, i32)

declare i32 @cfsetspeed(%"linux::s_termios"*, i32)

declare i32 @tcgetattr(i32, %"linux::s_termios"*)

declare i32 @tcsetattr(i32, i32, %"linux::s_termios"*)

declare void @cfmakeraw(%"linux::s_termios"*)

declare i32 @tcsendbreak(i32, i32)

declare i32 @tcdrain(i32)

declare i32 @tcflush(i32, i32)

declare i32 @tcflow(i32, i32)

declare i32 @tcgetsid(i32)

declare i64 @__ctype_get_mb_cur_max()

declare i64 @atoll(i8*)

declare float @strtof(i8*, i8**)

declare x86_fp80 @strtold(i8*, i8**)

declare i64 @strtoq(i8*, i8**, i32)

declare i64 @strtouq(i8*, i8**, i32)

declare i64 @strtoll(i8*, i8**, i32)

declare i64 @strtoull(i8*, i8**, i32)

declare i8* @l64a(i64)

declare i64 @a64l(i8*)

declare i32 @select(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::ldiv_t"*)

declare i32 @pselect(i32, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::__sigset_t"*, %"cstd::ldiv_t"*, %"cstd::__sigset_t"*)

declare i64 @random()

declare void @srandom(i32)

declare i8* @initstate(i32, i8*, i64)

declare i8* @setstate(i8*)

declare i32 @random_r(%"linux::s_random_data"*, i32*)

declare i32 @srandom_r(i32, %"linux::s_random_data"*)

declare i32 @initstate_r(i32, i8*, i64, %"linux::s_random_data"*)

declare i32 @setstate_r(i8*, %"linux::s_random_data"*)

declare i32 @rand_r(i32*)

declare double @drand48()

declare double @erand48(i16*)

declare i64 @lrand48()

declare i64 @nrand48(i16*)

declare i64 @mrand48()

declare i64 @jrand48(i16*)

declare void @srand48(i64)

declare i16* @seed48(i16*)

declare void @lcong48(i16*)

declare i32 @drand48_r(%"linux::s_drand48_data"*, double*)

declare i32 @erand48_r(i16*, %"linux::s_drand48_data"*, double*)

declare i32 @lrand48_r(%"linux::s_drand48_data"*, i64*)

declare i32 @nrand48_r(i16*, %"linux::s_drand48_data"*, i64*)

declare i32 @mrand48_r(%"linux::s_drand48_data"*, i64*)

declare i32 @jrand48_r(i16*, %"linux::s_drand48_data"*, i64*)

declare i32 @srand48_r(i64, %"linux::s_drand48_data"*)

declare i32 @seed48_r(i16*, %"linux::s_drand48_data"*)

declare i32 @lcong48_r(i16*, %"linux::s_drand48_data"*)

declare i8* @reallocarray(i8*, i64, i64)

declare i8* @valloc(i64)

declare i32 @posix_memalign(i8**, i64, i64)

declare i8* @aligned_alloc(i64, i64)

declare i32 @at_quick_exit(void ()*)

declare i32 @on_exit(void (i32, i8*)*, i8*)

declare void @quick_exit(i32)

declare void @_Exit(i32)

declare i32 @putenv(i8*)

declare i32 @setenv(i8*, i8*, i32)

declare i32 @unsetenv(i8*)

declare i32 @clearenv()

declare i32 @mkstemp(i8*)

declare i32 @mkstemps(i8*, i32)

declare i8* @mkdtemp(i8*)

declare i64 @llabs(i64)

declare %"cstd::ldiv_t" @lldiv(i64, i64)

declare i8* @ecvt(double, i32, i32*, i32*)

declare i8* @fcvt(double, i32, i32*, i32*)

declare i8* @gcvt(double, i32, i8*)

declare i8* @qecvt(x86_fp80, i32, i32*, i32*)

declare i8* @qfcvt(x86_fp80, i32, i32*, i32*)

declare i8* @qgcvt(x86_fp80, i32, i8*)

declare i32 @ecvt_r(double, i32, i32*, i32*, i8*, i64)

declare i32 @fcvt_r(double, i32, i32*, i32*, i8*, i64)

declare i32 @qecvt_r(x86_fp80, i32, i32*, i32*, i8*, i64)

declare i32 @qfcvt_r(x86_fp80, i32, i32*, i32*, i8*, i64)

declare i32 @rpmatch(i8*)

declare i32 @getsubopt(i8**, i8**, i8**)

declare i32 @getloadavg(double*, i32)

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.4"}
!1 = !{i32 1, !"wchar_size", i32 4}
