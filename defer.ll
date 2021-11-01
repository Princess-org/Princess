def some_function {
    let a = allocate(int)
    let b = allocate(int)
    defer free(a)
    defer free(b)
}

define void @some_function() {
    %a.0 = alloca i32*
    %b.0 = alloca i32*
    ...
    %__defers = alloca %some_function.defers*
    store %some_function.defers* null, %some_function.defers** %__defers
    ...
    %0 = load i32*, i32** %a.0
    %1 = insertvalue %some_function.env { i32* undef, i32* undef }, i32* %0, 0
    %2 = load i32*, i32** %b.0
    %3 = insertvalue %some_function.env %0, i32* %2, 1 
    %4 = alloca %some_function.defers
    %5 = load %some_function.defers*, %some_function.defers** %__defers
    %6 = insertvalue %some_function.defers { %some_function.env undef, void (%some_function.env*)* undef, %some_function.defers* undef }, %some_function.env %3, 0
    %7 = insertvalue %some_function.defers %6, void (%some_function.env*)* @some_function.defer.0, 1
    %8 = insertvalue %some_function.defers %7, %some_function.defers* %5, 2
    store %insert_value.defers %8, %inser_value.defers* %4
    store %insert_value.defers* %4, %insert_value.defers** %__defers
    ...

    br label %9
9:
    %10 = load %some_function.defers*, %some_function.defers** %__defers
    %11 = ptrtoint %some_function.defers* %10 to i64
    %12 = icmp eq i64 %11, 0
    br i1 %12, label %13, label %end
13:
    %14 = getelementptr %some_function.defers, %some_function.defers* %10, i64 0, i64 0
    %15 = getelementptr %some_function.defers, %some_function.defers* %10, i64 0, i64 1
    %16 = getelementptr %some_function.defers, %some_function.defers* %10, i64 0, i64 2
    %17 = load void (%some_function.env*)*, void (%some_function.env*)** %14
    %18 = load %some_function.defers*, %some_function.defers** %15
    call void (%some_function.env*)* %17 (%some_function.env* %14)
    store %some_function.defers*, %some_function.defers** %__defers
    br label %9
end:
    ret void
}

%some_function.env = type { i32*, i32* }
%some_function.defers = type { %some_function.env, void (%some_function.env*)*, %some_function.defers* }

define void @some_function.defer.0 (%some_function.env* %env) {
    %a.0 = getelementptr %some_function.env, %some_function.env* %env, i64 0, i64 0
       
    %1 = bitcast i32* %a.0 to i8*
    call @free(%1)
}