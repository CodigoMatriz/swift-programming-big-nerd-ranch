//: Playground - noun: a place where people can play

import Cocoa


/*
 * 6.1 A for-in loop
 */

var myFirstInt: Int = 0
for i in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}


/*
 * 6.2 Printing the changing value of i to the console
 */

myFirstInt =  0
for i in 1...5 {
    myFirstInt += 1
    myFirstInt
    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}


/*
 * 6.3 Replacing i with _
 * If no need to declare (explicit) an iterator we can use _ for a wildcard
 * An explicit iterator would be used if we wanted to refer to it within the loop code block
 */

myFirstInt =  0
for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print("myFirstInt")
}


/*
 * 6.4 A for-in loop with a where clause
 */

for i in 1...100 where i % 3 == 0 {
    print(i)
}


/*
 * 6.5 A while loop
 */

myFirstInt = 0
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

// repeat-while loops
// Will execute the block code once and then execute it so long as the while statement is true
// Since i is 6, from the example above, the code block is only executed once as the while
// loop returns false
repeat {
    print("Fire Blasters!")
} while i < 6


/*
 * 6.6 Using continue
 * 6.7 Using break
 */
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    //Fire blasters!
    print("Fire blasters!")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
