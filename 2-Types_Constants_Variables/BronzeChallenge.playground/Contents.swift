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

// Bronze Challenge
// Add a new variable to your playground representing Knowhere’s level of unemployment.
// Which data type should you use? Give this variable a value and update townDescription
// to use this new information.

var unemployment: Int = 120

// We are using string interpolation to combine the defined
// constants and variables into a sentence
let townDescription =
"\(townName) has a population of \(population) and \(numberOfStoplights) stoplights and an uemployment of \(unemployment)."

print(townDescription)
