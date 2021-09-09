; This file was compiled by the grace of your highness Princess Vic Nightfall
source_filename = "/mnt/c/Users/Vic/Programming/Princess/bin//../include/std.pr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
%__va_list_tag = type { i32, i32, i8*, i8* }
define void @"_F9std::main__AAi8"({i64, {i64, i8*}*} %args.value) {
start:
	%args = alloca {i64, {i64, i8*}*}
	store {i64, {i64, i8*}*} %args.value, {i64, {i64, i8*}*}* %args
	ret void
}
