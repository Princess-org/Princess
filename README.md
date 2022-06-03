# Princess 
[![Build Status](https://github.com/Princess-org/Princess/actions/workflows/build-and-test.yml/badge.svg)

## Goals
- The language should be at least as fast to compile as C, it should be possible to have a compiler for it run on an embedded device
- The language should provide direct access to the underlying hardware, so it should be possible to write a bootloader without using any 
stand alone assembly files
- The language is specifically meant to not perform dead code elimination but instead give a warning on such ocurrance - No surprises
- Given the above constraints, the language should try to be as "safe" as it can be
- The language should aim to define as much of the behavior as possible to eliminate (most) differences between compilers
- No forced object model with classes (or similar), instead the language should be flexible enough to provide the means of implementing such models by yourself, by use of macros and compile time code evalution
- It should be possible to implement a subset of the language (as defined later), while still being able to use the most crucial library functions
- The language should, where possible, specify a (binary) library format that is independent between compilers (but not between architectures)
- You should be able to specify what version (or featureset) of the language you are compiling against, so that the compiler can switch behavior based on that. This leaves the door open to future breaking changes of the language (Everyone makes mistakes. Always leave yourself a backdoor to be able to correct those mistakes.)

### Keywords:
```
export, type, struct, interface, def, in, null, return, break, go_to, 
case, switch, label, if, else, for, while, continue, 
const, do, word, unsigned, enum, size_of, offset_of, import, defined, 
type_of, align_of, as, loop, this, and, or, not, defer, is
```

### Compiler macros:
```
#union, #register, #inline, #no_inline, #align_as, 
#if, #run, #error, #warning, #raw_name, #asm, #no_bounds_check
#packed, #pure, #unroll
```

### Reserved for future use:
```
use, class, macro, object, new, delete
```

### Identifiers:

Identifiers with two leading underscores are reserved by the language.

All of these identifiers can be used:
`(?!__)[a-zA-Z_$]+[0-9a-zA-Z_$]*`

### Export:

In C everything is global by default and static is used to internal linkage.
In Princess internal linkage is the default and export is used for globals.

Import is used to consume an external file as module:

```
import <file_name> [as <module_name>]
```
If no module name is specified the file name is chosen.

Imports are relative to the main file location.
```
import <folder>::<file_name>
```

#### Example:
```
// in File "file_a.pr":
       def by_4(a: int) -> int = a * 4
export def by_2(a: int) -> int = a * 2

// in File "file_b.pr":
import file_a as multiply

multiply::by_2(5) // Okay
by_2(5) // Also okay, this is only allowed if there are no collisions
5.by_2() // As well as this

multiply::by_4(5) // Fail
```

You can also import functions:
`import def ... `
Just leave out the function's body.
This is useful for interop to C for example.


### Variables:
```
[export] [import] [storage specifier...] var | let | const <name>: <type>
[export] [import] [storage specifier...] var | let | const <name>: <type> = <expression>
```
- `let` is a run time constant
- `var` is a run time variable
- `const` is a compile time constant. You can't take the address of a constant, or use it with any pointer types.

### Typedef:
```
type <type> = <type>

type Matrix3d = [3; [3; double]]
```

### Grammar

- In general, a statement ends when it is finished (the statement is done parsing).
- In an ambigious case you can end a statement with `;`. Line continuation is done with `\`.
- A new statement can only start on a new line, or after `;`.
- `,` is used as delimiter inside statements.
- `;` is optional if there's a line break to clearly separate statements/expressions.
- `()` is used to group expressions, `{}` is used to group statements.
- Every expression is also a statement.

```
enum {
    A;B
    C // No semicolon needed
}
call // Equivalent to below
call()

def fun(
    par1: int,
    par2: int
) {
    foo +
        bar // Valid
    
    return a, // Comma needs to be on the same line, "return a" doesnt need more parameters
        b
}
 
```

## Types

### Basic types:
```
word(N), unsigned word(N)
byte, short, int, long
unsigned byte, unsigned short, unsigned int, unsigned long
float, double
```

### Standard types:

```
ubyte, ushort, uint, ulong

uint8, uint16, uint32, uint64, uint128
int8, int16, int32, int64, int128
float32, float64, float128

bool, string, char, size_t
```
uint and int are platform dependent, i.e 16/32/64 bit

## Overview
```
// Function types:
(->)               // No parameters, no return value
A -> B             // Takes A, returns B
(A, B) -> (C, D)   // Takes A and B, returns C and D

// Array types:
[N; let T]  == [N; let T]   == struct {let e1: T; ...; let eN: T}   // immutable static array with N elements of type T
[N; T]      == [N; var T]   == struct {e1: T; ...; eN: T}           // mutable static array with N elements of type T
[let T]     == [let T]      == struct {value: &T; size: size}       // immutable dynamic array of type T
[T]         == [var T]      == struct {value: *T; size: size}       // mutable dynamic array of type T

// Pointer types:
*  == *var     // raw pointer to a mutable value, same as void* in C
*let           // pointer to an immutable value, same as const void* in C
*T == *var T   // pointer to a mutable value, same as T* in C
*let T         // pointer to an immutable value, same as const T* in C

// Reference types:
& == &var      // mutable reference of unknown type (Compareable to Object in java)
&let           // immutable reference of unknown type
&T == &var T   // mutable reference of type T
&let T         // immutable reference of type T
```

## Functions
```
[export] def <name> [(<parameter>...)] [-> <return type>...] { ... }

def add_i(par: int, par2: int) -> int, double {
    return par + par2, 0;
}
```
A function might have multiple return values.
If that's the case you can get them like this:

```
let _, b = i_only_care_for_b()
``` 
The `_` means "discard value"

#### Shorthand:
```
def add_i(par: int, par2: int) -> int = par + par2;
```

Functions can be nested but they don't increase the lifetime
of the parent function.

### Functions that return types:
TBD

### Polymorphic functions:

A polymorphic function is any function that accepts a type argument.
Type arguments look like this:

```
def polymorph(type A, b: A, c: type C) -> C {
    // Implementation here, must return a C
    // A body is not required
}
```

A accepts a type as argument, so you can pass in "i8" for example
b is an argument that has to be specified to have the same type as passed in by A
c has the type C, this additionally defines the type C for the function

Polymorphic functions get compiled when they are called, and as such the body of a
polymorphic function can only be checked for syntax erros and erros involving any concrete types
Any #if directives are executed when the function is fully parameterized

### Polymorphic types:
```
type Polymorph(type A) = struct {
    value: A
    pointer: *A
}
```

### Structural types:
```
type S = interface {
    def a_fun -> S
    def b_fun(par: string)
}
type B = interface {
    def c_fun
}
```
### Arithmetic types:
TBD

```
type Z = S & B // everything in A and c_fun
```

### Varargs:
```
def add(args: ...) // Accepts any arguments. This can only be used for C interop
def add(args: int...) // Only accepts ints
```

The arguments are accessed like an array. You can also call a variadic function with an array as argument
to pass in varargs.

```
def foo(args: int...) {
    add(args)
}
```

If you want a function that works on any types it might be useful to accept a void reference:

```
def foo(args: &...) {
    if args.size >= 1 and ref_type(args[0]) == int {
        print("Got an int as first argument!")
    } else {
        assert
    }
}
````

### References:

To illustrate the difference between references, pointers and distinct types:

```
// Imagine we didn't leak any memory

type I = interface { def some_function(v: int) }
type S1 = struct { a: int   }
type S2 = struct { a: float }

// implementation
def some_function(this: S1, i: int) {...}
def some_function(this: S2, i: int) {...}

// I accept a structural type
def function1(a: I) {
    a.some_function(10)
    a = {} !S1 // This will only work when function1 is called with an S1.
    a = {} !I  // This will always zero initialize the value.

    // Do note that this prints for every new invocation of function1 with new types!
    #run print("function1 gets compiled with type ", (type_of a), "!\n")
}

function1({} !S1)   // some_function::(S1, int)
function1({} !S2)   // some_function::(S2, int)

// The pointer case works almost the same
def function2(a: *I) {
    (@a).some_function(20)
}

function2(zero_allocate(S1))    // some_function::(*S1, int)
function2(zero_allocate(S2))    // some_function::(*S2, int)

// References allow dynamic dispatch:

// implementation
def some_function(this: &S1, i: int) { ... }
def some_function(this: &S2, i: int) { ... }

def function3(a: &I) {
    // This is all fine
    a.some_function(30)
    print(ref_type(a).type_name)  // This will print something depending on a.
    
    a = {} !S1
    a.some_function(1) // We always call some_function::(&S1, int)
    a = {} !S2
    a.some_function(1) // We always call some_function::(&S2, int)

    // Do note that you can't dereference the reference 
    // without casting it to a concrete type first:
    let b = @a // Doesn't work
    let c = @(a !&S2) // Does work. Do note that this will crash if a is not an &S2.
    
    #run print(type_of(a).type_name) // This will print "&I" !
}
function3({1}!S1)   // prints the type of &S1
function3({}!S2)    // prints the type of &S2

// Implicitly, this function is generated to faciliate dynamic dispatch:
def some_function(a: &I, b: int) {
    let tpe = ref_type(a)
    if tpe == S1 {
        (a !&S1).some_function(b)
    } else if tpe == S2 {
        (a !&S2).some_function(b)
    }
    assert
}

```

## Operators

### Pointer arithmetic:

Pointer arithmetic is performed using the separate operators `++` and `--`.
Both exist in the form of `ptr ++ n`. You can also subtract pointers using `ptr1 -- ptr2`, here both need to be of the same concrete type.
These operators can not be overloaded, and are thus guaranteed to only do pointer arithmetic.

When comparing pointers you have to cast one of them to `*` (void pointer) to compare the pointer values (as opposed to the values that are pointed to).

```
let va, vb = 2, 3
var a, b = *va, *vb

var d: *int = a ++ 4
var e: *int = a -- 4
let f: size = a -- b // (distance, scalar)
```

### Size and Alignment:

```
// size_of:
    size_of <type>
// align_of:
    align_of <type>
```
    
Tip: If you need the size of an expression use `size_of type_of expr`

### Arrays: 

There are 2 different types of arrays,
static array and dynamic arrays

- `[int8]`: A dynamic array of integers
- `[8; int8]`: A static array of 8 integers
- `[10; [10; int8]]`: A static 2 dimensionsal array of integers (10 x 10)

Array postfix works on both: `foo[10]`

The underlying types are:

```
// Dynamic array
type [T] = struct {value: *T, size: size}
// Static array
type [N; T] = struct {x0 ... xN: T};

const my_array: [?; int] = [1, 2, 4, 6]; // this infers [4 int]
```

Static arrays are passed by value (thus, the array gets copied). Dynamic arrays
get passed by reference.

```
let array = [1, 2, 3]
def accepts_array(arr: [int]) {
    arr[0] = 20
}
accepts_array(array)
print(array) // prints [20, 2, 3]

def accepts_array(arr: [?; int]) {
    arr[0] = 30
}
accepts_array(array)
print(array) // prints [20, 2, 3]
```

Don't forget to free your memory!
All calls to `array()` create a new copy!
```
let a1 = array([1, 2, 3]) // Literal in static memory, a1 is allocated on the heap!
defer free(arr) // Don't forget this
let a2 = array(type [5; int]) // Uninitialized
let a3 = array(type [5; int], 0) // Zero initialized
let a4 = array(type [20; [5; int]]) // Also multi dimensional array
... // Just imagine we free all of them down here
```

### Pointers: 

like C but with a different syntax
```
*T

var a = 42
let b = 8

var c: *int             // Mutable pointer to a variable
let d: *int = *a        // Constant pointer to a variable
var e: *let int         // Pointer to a constant
let f: *let int = *b    // Constant pointer to a constant
```

Take the address of foo: `*foo`. Read: "pointer to foo"
Take the value of foo: `@foo`. Read: "value at foo"

Pointer arithmetic like C, by using the `--` and `++` operators.

#### Void pointer:
The void pointer is simply `*`, as well as a void reference `&`

```
// var ptr = ...
var a: *;
a = ptr !*int   // Compiles
a = ptr !*float // Compiles
a = null        // Compiles
```

### Structs:

Very similar to C:
```
struct [#union] {
    x: int // these are all implicitly var, as there's no such thing as a constructor
    y: uint = 20 // Unlike in C you may assign default values.
                 // This is a constant expression, only valid for primitive types, no pointers
                 // [not implemented]
    bar: Foo
} // No semicolon needed
```

To create a struct variable:
```
var foo: struct { x: int; y: int } // Anonymous struct here
foo.x = 10
foo.y = 30
```
or with a struct literal
```
var foo: struct { x: int; y: int } = {10, 30}
```
or by using explicit names
```
var foo: struct { x: int; y: int } = {y = 30, x = 10}
```

You can create a type for a struct:
```
type MyStruct = struct {
    ...
}
```

### Enums:
```
enum [: <type>] [#flags] { }
```

type is optional, defaults to int

#### Example:
```
type E = enum: int {
    FOO; BAR; BAZ = 10 // FOO == 1, BAR == 2, BAZ == 10
}
```

#### Unions:

Unions are just structs with a special memory layout:
```
type Union = struct #union {
    a: int16
    b: int8
}
assert(size_of(Union) == size_of(int16)) // true
```

### Function pointers:

You can take a pointer of a function with *
```
const a = *fun
a(...)
```

Similar to C, however, the types look like this:
```
var a: int ->
var b: (int8, uint) -> int // Parens required here
var c: ->
```

### Blocks [not implemented]:

```
var a:int
a = do {
       let a = 30
       a
} // Creates a new scope
```
Blocks are expressions and evaluate to the last value

### Pragma regions:

Creates a new scope for a pragma
```
#pragma { // Doesn't create a new scope, can be useful for applying pragmas
       #no_bounds_check
       // ... bounds check <off> here
}

// bounds check <on> here
```

## Control structures

### Goto [not implemented]:
goto is supported (works like C):

```
label <label>
    code
go_to <label>
```

### For loop:

```
for var a: *int in array { 
    // Can capture by reference, pointer or by value
}
for var i in 0..10 {
    // i goes from 0 to 9
}
```

It's simplified from the C++ version, for everything else use

### While loop:

```
while <condition> {...}
loop {} // Same as while true
```
### If statement:
```
if <condition> {...} else if <condition> {...} else {...}
// You can leave out the brackets for a single expression
if <condition> <expression>
else <expression>

```

### If expression:
```
<expression> if <condition> else <expression>
```

### Type Casts:
```
<expression> ! <type>
```

Example:

```
4 !float
let i = 10 !float;
let i: int = 20.5!! // Autocast, can only be used if the type is discrete,
                    // so it doesnt work on polymorphic arguments
```

Safe casts:
```
word(N) <-> word(K) // This includes all primitive types, truncates when casting down
word(N) <-> float/double // Might truncate (rounds down to whole integer) 
                         // or lose precision, but otherwise safe
*N -> * -> *N
[] -> bool // False when empty, otherwise true
*T -> bool // False when == null, otherwise true
```
Unsafe casts:
```
*N -> * -> *T // This casts bitwise, if the types are not compatible you are in trouble
*A -> *B -> B // Do this when you want to do a bitwise cast, i.e, interpret the bitpattern. 
              // No conversion is preformed here
              // Make sure that size_of(B) >= size_of(A) or else you're in trouble 
```
Implicit casts:
```
word(N) -> word(M) // Where M >= N
float -> double
floatN -> floatM // Where M >= N
[N T] -> [T]
T -> &T
```

### Switch statement:

```
switch <type> {
case <var>[,<var>...]:
    ...
    [continue] // [not implemented]
}
```

Like C, the switch statement works like a labeled goto.
No implicit fallthrough

Example:

```
switch number {
case 1, 2:
    print("This is either 1 or 2")
case 3:
    print("This is a 3")
    continue
case 4:
    print("This is a 3 or a 4")
case:
    print("This is some other number")
}
```

### Match statement (extended switch statement)

TBD

### Type inference:

There is limited type inference available in the following cases:

#### Inferring the type of a literal (int, double, string):

```
let a = 5 // a is an int
let a = 5.5 // a is a double
let a = "string" // a is [char]
```

#### For expressions:

```
let a = function_that_returns_int() // a is an int
```

#### For static array sizes:
```
let a : [?; int] = [1, 2, 3] // a is [3 int]
```

### Conditional compilation:

### #if statement
```
type A = struct {
    #if extra_info {
       foo: string
    }
    bar: int8
}
```

`#if` statements and access to file scoped variables are permitted at local scope:
File scoped variables may be read from and written to. Constants from other modules
may be read from.

```
// "file_a.pr":
export const a: bool = true;

// "file_b.pr":
import file_c
printf(my_fun()) // This prints "A is true"

// "file_c.pr":
import file_a

const b = "A is true" if a else "A is false"

export def my_fun {
    print(b)
}
```

### Extensions:
```
#<name>
#<name> (...)
```

reserved by the language for future
use, meant to aid optimization. The compiler may
or may not implement these *according to standard*

### Compiler extensions:
```
##<name>
##<name> (...)
```

reserved for the compiler, non-standard
