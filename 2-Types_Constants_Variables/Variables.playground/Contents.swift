//: Playground - noun: a place where people can play

import Cocoa

// Constants are declared with "let"
// Constant values cannot be changed
let numberOfStoplights: Int = 4

// Variables are declaired with "var"
// Variable values can be changed
var population: Int
population = 5422

let townName: String = "Knowhere"

// We are using string interpolation to combine the defined
// constants and variables into a sentence
let townDescription =
"\(townName) has a population of \(population) and \(numberOfStoplights) stoplights."
print(townDescription)
