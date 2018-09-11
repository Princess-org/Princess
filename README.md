# Princess [![Build Status](https://travis-ci.com/Victorious3/Princess.svg?token=GCuZsys2sc7hxCMZKs2a&branch=master)](https://travis-ci.com/Victorious3/Princess)
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
export, type, struct, def, in, null, return, break, go_to, 
case, switch, label, if, else, for, while, continue, 
const, do, word, unsigned, float, byte, short, int, long, float,
double, enum, size_of, import, defined, type_of, as, loop, this,
auto, and, or, not, defer, is
```

### Compiler macros:
```
#union, #register, #inline, #no_inline, #align_as, #align_of, #fall_through, 
#location, #if, #static, #error, #warning, #label, #runtime_types, 
#raw_name, #asm, #language, #no_bounds_check, #no_destructor,
#packed, #pure, #label, #offset_of, #unroll, #define
```

### Reserved for future use:
```
use, class, macro, object, new, delete, method
Maybe:
namespace
```

### Identifiers:

Identifiers with two leading underscores are reserved by the language.

All of these identifiers can be used:
`(?!__)[a-zA-Z_$]+[0-9a-zA-Z_$]*`

### Export:

In C everything is global by default and static is used to internal linkage.
In ++C internal linkage is the default and export is used for globals.

Import is used to consume an external file as module:

```
import "<file_name>" [as <module_name>]
```
If no module name is specified the file name is chosen.

```
import <std_module> [as <module_name>]
```
This tries to find the module from a list of pre-imported libraries specified
by the compiler. This includes the standard library, the exact behavior is
implementation defined.

#### Example:
```
// in File "file_a.ppc":
       def by_4(a: int) -> int = a * 4
export def by_2(a: int) -> int = a * 2

// in File "file_b.ppc":
import "file_a" as multiply

def main {
    multiply::by_2(5) // Okay
    by_2(5) // Also okay, this is only allowed if there are no collisions
    5.by_2() // As well as this
    
    multiply::by_4(5) // Fail
}
```

Exported symbols get mangled for the linker:
TODO

You can also import functions:
`import def ... [as <name>]`
Just leave out the function's body.


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

type Matrix3d = [3 [3 double]]
```

### Grammar

- In general, a statement ends when it is finished (the statement is done parsing).
- In an ambigious case you can end a statement with `;`.
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
    
    return a, // Comma needed here, "return a" doesnt need more parameters
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

bool, string, char, size
```

### Extended types:

```
register_size, databus_size, address_size

(type bool = int, type string = [char])
```

uint and int are platform dependent, i.e 16/32/64 bit

## Overview
```
// Function types:
(->)               // No parameters, no return value
A -> B             // Takes A, returns B
(A, B) -> (C, D)   // Takes A and B, returns C and D

// Array types:
[N let T] == [N let T] == struct {let e1: T; ...; let eN: T}   // immutable static array with N elements of type T
[N T]     == [N var T] == struct {e1: T; ...; eN: T}           // mutable static array with N elements of type T
[let T]   == [let T]   == struct {value: &T; size: size}       // immutable dynamic array of type T
[T]       == [var T]   == struct {value: *T; size: size}       // mutable dynamic array of type T
[let]     == [let]     == struct {value: &, size: size}        // immutable dynamic array of unknown type (void*)
[]        == [var]     == struct {value: *, size: size}        // mutable dynamic array of unknown type (void*)

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

A function that returns a type is implicitly `#static` (Unless `#runtime_types` is specified)
Be aware of name collisions, as such functions can be used in place of a type.
Expressions take precidence over types, disambiguate with `type(T)`

### Polymorphic functions:

A polymorphic function is any function that accepts a type argument.
Type arguments look like this:

```
def polymorph(type A, b: A, c: type C) -> C {
    // Implementation here, must return a C
    // A body is not required
}
def polymorph(a) { ... } // This is the same as a: type A
```

A accepts a type as argument, so you can pass in "i8" for example
b is an argument that has to be specified to have the same type as passed in by A
c has the type C, this additionally defines the type C for the function

Polymorphic functions get compiled when they are called, and as such the body of a
polymorphic function can only be checked for syntax erros and erros involving any concrete types
Any #if directives are executed when the function is fully parameterized

Type arguments may or may not be available at runtime, but they are required to be available at compile time
Polymorphic functions may not be exported as part of a shared library (subject to change)

Polymorphic functions can be parameterized by other definitions, either partially or completely
The order in which they get parameterized does not matter.
The function that is the most parameterized wins when a call is made

```
def polymorph(type A, b: A, c: type *C) -> C
// Imp 1, Parameterized A and b
def polymorph(type A = int, b: A, c: type *C) -> C {
    ...
}
// Imp 2, fully parameterized, not polymorphic, may be exported in binary form
def polymorph(type A = int, b: A, c: *string) -> string {
    ...
}
const number = 20
polymorph(double, 20.0, number) // Error, defined but not implemented
polymorph(int, 10, number) // Compiles, returns an int, refers to Imp 1
polymorph(int, 10, "this is a string") // Compiles, returns a string, refers to Imp 2
```
### Polymorphic types:
```
type polymorph(type A) = struct {
     #error("Not implemented")
}
type polymorph(type A = int) = struct {
    a: A
}
// Works much like polymophic functions
// Can obviously be used for enums as well
```

### Structural types:
```
type S = type {
    value: int
    def a_fun(this)            // `this` refers to this type
    def b_fun(this, string)
}
type B = type {
    def c_fun(this)
}
type Z = S + B // everything in A and c_fun
type Q = S - B // everything in A but not c_fun
```

### Varargs:
```
def add(args: ...) // Accepts any arguments
def add(args: int...) // Only accepts ints

let a = [1, 2, 3] // TODO: Alternative syntax: #{1, 2, 3}
add(a...) // Splat operator
add(1, 2)
```
The arguments are accessed like an array, expect that in the first case they might
all have different types. Use `type_of(arg[i])` to figure out what a type is.
Do note that this makes a function polymorphic, and thus it cant be exported to a binary file.
A function that accepts a known type as vararg can be exported, however, this is treated like a
dynamic array or a static array, depending on the context

### References:

To illustrate the difference between references, pointers and distinct types:
```
// Imagine we didn't leak any memory

type I = { def some_function(this, int) }
type S1 = struct {a: int} // size_of(S1) == size_of(int)
type S2 = struct {}       // size_of(S2) == 0

// implementation
def some_function(this: S1, i: int) {...}
def some_function(this: S2, i: int) {...}

// I accept a strutural type
def function1(a: I) {
       a = {}!S2 // This doesn't compile, I is a distinct type!
       // Imagine what would happen down here
       a = {1}!S1 // Oops, a now has two different sizes?!
}
def function2(a: *I) {
       a = allocate(S1) // This is legal
       a = allocate(S2) // This too     
       // a = allocate(int) // Type error!

       // So far so good, but what about this?
       a.some_function(2) // What function do we call now??
       // This call will blow up if we don't call function2 with a pointer to S2!
}
function2({1}!S1)    // some_function::(S1)
function2({}!S2)     // some_function::(S2)

def function3(a: &I) {
       // This is all fine
       a.some_function()
       print(type_of(a))  // This will print something depending on a
       
       a = allocate(&S1)
       a.a = 20 // set instance variable
       a.some_function(1) // We always call some_function::(S1)
       a = allocate(&S2)
       a.some_function(1) // We always call some_function::(S2)
       
       #static print(type_of(a)) // This will print "&I" !
}
function3({1}!S1)   // prints the type of S1
function3({}!S2)    // prints the type of S2

```

## Operators

### Pointer arithmetic:

Pointer arithmetic is performed using the separate operators `++` and `--`.
Both exist in the forms `ptr++`, `++ptr` and `ptr ++ n`. You can also subtract pointers using `ptr1 -- ptr2`, here both need to be of the same concrete type.
These operators can not be overloaded, and are thus guaranteed to only do pointer arithmetic. Consequently, `++` and `--` can not be used on numeric values. Use `+= 1` or `-= 1` instead.

When comparing pointers you have to cast one of them to `*` (void pointer) to compare the pointer values (as opposed to the values that are pointed to).

```
let va, vb = 2, 3
var a, b = *va, *vb

var b: *int = a++
var c: *int = ++a
var d: *int = a ++ 4
var e: *int = a -- 4
let f: size = a -- b // (distance, scalar)

let g = a + b // this is 5
let h = a - b // this is -1
let i = a += 1 // this would be (*a)++ in C
```

### Size and Alignment:

```
// size_of:
    size_of(<type>)
    size_of(<expression>)
// align_of:
    align_of(<type>)
    align_of(<expression>)
```
    
Tip: In case of ambigiouty, expression is always preferred, use "type(T)" to specifically treat something as a type

### Arrays: 

There are 2 different types of arrays,
static array and dynamic arrays

- `[int8]`: A dynamic array of integers
- `[8 int8]`: A static array of 8 integers
- `[10 [10 int8]]`: A static 2 dimensionsal array of integers (10 x 10)

Array postfix works on both: `foo[10]`

The underlying types are:

```
// Dynamic array
type [T] = struct {value: *T, size: size}
// Static array
type [N T] = struct {x0 ... xN: T};
```

Referencing a dynamic array of unknown type is possible and looks like this:
```
type [] = struct {value: *, size: size}

const my_array: [? int] = [1, 2, 4, 6]; // this infers [4 int]
```

Conversion between the types can be done like this:

```
import memory as mem
import array

var int_5: [5 int] = ...
var int_N: [int] = ...
var int_ptr: *int = ...
var size: size = ...

int_5 = [1, 2, 3, 4, 5] // Works, copy, same size
int_N = [1, 2] // Works, no copy, can't change the elements!
int_N = array([1, 2]) // Works, copy, needs to be freed
defer free(int_N)

int_ptr = [1, 2, 3] // Works, no copy, can't change the elements!

// int_ptr <-> int_5 
int_ptr = *int_5
mem::copy(int_ptr, &int_5, int_5.size) 
size = int_5.size

// int_ptr <-> int_N
int_ptr = int_N.value
int_N = array(int_ptr, size)
size = int_N.size

// int_5 <-> int_N
array::copy(*int_5, int_N)
int_N = int_5 // Gets copied
```

static arrays are passed by value (thus, the array gets copied). Dynamic arrays
get passed by reference.

```
let array =  [1, 2, 3]
def accepts_array(arr: [int]) {
    arr[0] = 20
}
accepts_array(array)
print(array) // prints [1, 2, 3]
```

Don't forget to free your memory!
All calls to `array()` create a new copy!
```
let a1 = array([1, 2, 3]) // Literal in static memory, a1 is allocated on the heap!
defer free(arr) // Don't forget this
let a2 = array([5 int]) // Uninitialized
let a3 = array([5 int], 0) // Zero initialized
let a4 = array([20 [5 int]]) // Also multi dimensional array
... // Just imagine we free all of them down here
```

### Pointers: 

like C but with a different syntax
```
*T

var a = 42
let b = 8

var c: *int // Can be reassigned
var d: &int
let e: *int // Can not be reassigned, would have to be initialized here!
let f: &int

c = d = e = f = *a // Allowed
d = f = *b // Allowed
c = e = *b // Not allowed

// TLDR: You can make &int point to a var, but *int can't point to a let

```

Take the address of foo: `*foo`. Read: "pointer to foo"
Take the value of foo: `@foo`. Read: "value at foo"

Pointer arithmetic like C.
Pointes can be used with array postfix notation.

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
struct [#align_as([type]/0..N)] [#union] {
    x: int // these are all implicitly var, as there's no such thing as a constructor
    y: uint = 20 // Unlike in C you may assign default values.
                 // This is a constant expression, only valid for primitive types, no pointers
    bar: Foo
} // No semicolon needed
```

To create a struct variable:
```
foo: struct { x, y: int } // Anonymous struct here
foo.x = 10
foo.y = 30

// On heap
bar: & = mem::allocate(foo)
bar.x = 10
bar.y = 30
```
or with an array literal
```
foo: struct { x, y: int } = {10, 30} // TODO: Like this? Or maybe [10, 30]
bar = {10, 30}
```
or by using explicit names
```
foo: struct { x, y: int } = {y = 30, x = 10}
bar = {y = 30, x = 10}
```

Struct initializers can only be used in the following contexts:
```
return <struct-initializer>
<struct-initializer> ! <type>
<name>([<name> =] <struct-initializer>) // Call
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
enum: int {
    FOO; BAR; BAZ = 10 // FOO == 1, BAR == 2, BAZ == 10
}
```
If an enum is assigned to a type, the members will be accessible under
that type, otherwise they are exported as identifiers into the containing
scope. This can be useful as arguments to a functions, if you want to have a simple
means of defining switches:

```
def f_takes_flags(a: enum {SWITCH_A; SWITCH_B; SWITCH_C}) {...}

f_takes_flags(SWITCH_A) // This refers to the enum
f_takes_flags(1!!) // The only other way to call the function
```
Such a function would potentially benefit form being `#static`

#### Unions:

Unions are just structs with a special memory layout:
```
type union = struct #union {
    a: i16
    b: i8
}
assert(size_of(union) == size_of(i16)) // true
```

### Function pointers:

You can take a pointer of a function with *
```
const a = *fun
a(...);
```

Similar to C, however, the types look like this:
```
var a: int ->
var b: (int8, uint) -> int // Brackets required here
var c: ->
```

### Blocks:
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

### Goto:
goto is supported (works like C):

```
label <label>: statement
go_to <label>
```

### For loop:

```
for var a: &int in array { // Can capture by reference, pointer or by value

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
```

### Switch statement:

```
switch [#fallthrough] <type> {
case <var>[,<var>...]:
    ...
    [break | continue]
}
```

Like C, the switch statement works like a labeled goto.
No implicit fallthrough

Example:

```
switch number [#fallthrough] {
case 1, 2:
    printf("This is either 1 or 2")
case 3:
    printf("This is a 3")
    continue
case 4:
    printf("This is a 3 or a 4")
case:
    printf("This is some other number")
}
```

TODO: match statement (extended switch statement)

### Type inference:

There is limited type inference available in the following cases:

#### Inferring the type of a literal (int, double, string):

```
let a = 5 // a is an int
let a = 5.5 // a is a double
let a = "string" // a is [6 uint8]
```

#### For expressions:

```
let a = function_that_returns_int() // a is an int
```

#### For static array sizes:
```
let a : [? int] = [1, 2, 3] // a is [3 int]
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
// "file_a.ppc":
export const a: bool = true;

// "file_b.ppc":
import "file_c"
printf(my_fun()) // This prints "A is true"

// "file_c.ppc":
import "file_a"

const b = a #if "A is true" else "A is false";

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
