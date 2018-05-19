//: Playground - noun: a place where people can play

import Cocoa

print("----USING IF/ELSE----")
for i in 0...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("Fizz Buzz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else {
        print(i)
    }
}

print("----USING SWITCH STATEMENT----")
for i in 0...100 {
    let conditional = (i % 5, i % 3)
    
    switch(conditional) {
    case (0,0):
        print("Fizz Buzz")
    case (0,_):
        print("Buzz")
    case (_,0):
        print("Fizz")
    default:
        print(i)
    }
}
