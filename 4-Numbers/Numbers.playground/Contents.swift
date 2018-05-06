//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Signed integer: power of 2 represented by the top-most bit (2^7 for 8-bit) is negative
// Unsigned integer: power of 2 represented by the top-most bit (2^7 for 8-bit) is positive

print("The maximum Int value is \(Int.max)")
print("The minimum Int value is \(Int.min)")
print("The maximum value for a 32-bit integer is \(Int32.max)")
print("The minimum value for a 32-bit integer is \(Int32.min)")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max)")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min)")


/*
 * CreatingInteger Instances
 */

let numberOfPages: Int = 10 // Declares the type explicitly
let numberOfChapters = 3 // Delcares the type implicitly

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000


/*
 * Operations on Integers
 */

print(10+20)
print(30-5)
print(5*6)

print((10 + 2) * 5)
print(30 - (5 - 5))

print(11/3)
print(11%3)
print(-11%3)

var x = 10;
x += 10 // Is equivalent to: x = x + 10
print("x has had 10 added to it and is now \(x)")
x -= 5
print("x has had 5 subtracted from it and is now \(x)")

let y: Int8 =  120
//let z = y + 10 // Running this line creates a trap as the result is greater than the allowed storage range of an 8 bit integer (-127:127)
let z = y &+ 10 // This is an overflow wrapper, when reaching the min / max  of the type it wraps (overflow / underflow)
print("120 &+ 10 is \(z)")


/*
 * Converting Between Integers
 */

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // ERROR!
let c = a + Int16(b)


/*
 * Floating-Point Numbers
 *
 * Swift has two basic floating-point numbers:
 * Float (32bit)
 * Double (64bit / More precise / Swift's default inferred type)
 */

let d1 = 1.1
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 - 3.0)

if d1 == d2 {
    print("d1 and d2 are the same")
}

print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    // Will not be true because the way computer stores a floating number, it is not precise
    // Adding d1 + 0.1 will be more like 1.200000001, whereas the literal declaration is 1.1999999
    // Swift will round these two numbers to 1.2 when printed, thus why the if statement will not be true
    print("d1 + 0.1 is equal to 1.2")
}

// NEVER USE FLOATS FOR PRECISE NUMBER CALCULATIONS LIKE MONEY!
