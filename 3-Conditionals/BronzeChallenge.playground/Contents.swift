//: Playground - noun: a place where people can play

import Cocoa

var population: Int = 475422
var message: String
var hasPostOfice: Bool = true

// Bronze Challenge
// Add an additional else if statement to the town-sizing code to see if your town’s population is very large.
// Choose your own population thresholds. Set the message variable accordingly.

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 5000 && population < 100000 {
    message = "\(population) is very large"
} else {
    message = "\(population) is pretty big!"
}

print(message)

if !hasPostOfice {
    print("Where do we buy stamps?")
}
