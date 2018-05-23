//: Playground - noun: a place where people can play

import Cocoa

/*
 * 7.1 Hello, plaground
 */
let playground = "Hello, playground"


/*
 * 7.2 Creating a mutable string
 */
var mutablePlayground = "Hello, mutable playground"


/*
 * 7.3 Adding to a mutable string
 */
mutablePlayground += "!"


/*
 * 7.4 mutablePlayground's Characters
 */
for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}


/*
 * 7.5 Using a Unicode scalar
 * Unicode scalars are 21-bit numbers that represent a specific character in the Unicode standard.
 */
let oneCoolDude = "\u{1F60E}"


/*
 * 7.6 Using a combining scalar
 */
let aAcute = "\u{0061}\u{0301}"


/*
 * 7.7 Revealing the Unicode scalars behind a string
 */
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}


/*
 * 7.8 Using a precomposed character
 */
let aAcutePrecomposed = "\u{00E1}"


/*
 * 7.9 Check equivalence
 */
let b = (aAcute == aAcutePrecomposed)


/*
 * 7.10 Counting characters
 */
print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")


/*
 * 7.11 Finding the fifth character
 */
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]


/*
 * 7.12 Pulling out a range
 */
let range = start...end
let firstFive = playground[range]
