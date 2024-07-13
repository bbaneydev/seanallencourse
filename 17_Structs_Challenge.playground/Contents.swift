import UIKit

// Sean Allen iOS Dev Launchpad
// Structs Challenge

// Let's start with a simple challenge:
// Make a struct called Glass, to represent a glass with water in it.
//  It should have one property:
//      waterLevel, a variable of type double.
//      (We'll use 1.0 to mean a glass that's 100% full,
//      0.5 for 50%, and 0 will be a glass that's empty.)
// It should have one method:
//  isEmpty(), that prints a message:
//      "The glass is empty." when the waterLevel is 0.
//      "There's still some water in the glass." when the waterLevel is greater than 0.
struct Glass {
    var waterLevel: Double
    
    func isEmpty() {
        if waterLevel > 0 {
            print("There's still some water in the glass")
        } else {
            print("The glass is empty")
        }
    }
}



// Make variable called myGlass and set it's value to an instance of the Glass struct. At the time of initialization, set it's waterLevel to 1.
// Change the value of myGlass to represent drinking half the glass.
// Check if the glass is empty.
// Change the value of myGlass to represent drinking the second half of the glass.
// Check if the glass is empty.
var myGlass = Glass(waterLevel: 1)
myGlass.waterLevel -= 0.5
myGlass.isEmpty()
myGlass.waterLevel -= 0.5
myGlass.isEmpty()


// Read the code below very carefully. I've tried to make it as simple as possible. Basically, I have a struct and a class doing exactly the same thing: defining a point with x and y coordinates.
struct Point {
    var x = 0
    var y = 0
}

class MakingMyPoint {
    var x = 0
    var y = 0
}

var point1 = Point()            // point1 is an instance of Point (a struct)
var point2 = point1             // copy point1 to make point2
point1.x = 5                    // change point1
point1.y = 7


var point3 = MakingMyPoint()    // point3 is an instance of MakingMyPoint (a class)
var point4 = point3             // copy point3 to make point4
point3.x = 5                    // change point3
point3.y = 7

print("Point 2 is \(point2.x), \(point2.y)")
print("Point 4 is \(point4.x), \(point4.y)")

// BEFORE running the code above, can you read the lines to correctly determine what is going to get printed out? What are the values of Point 2 and Point 4?
// Answer: point2 will be 0, 0, since point1 wasn't changed until after copying point1 to point2, point3 and point4 will both equal 5, 7


// What are the main advantages of using Structs instead of classes? Not sure? Don't worry. Just complete the rest of the challenge and check out the solution.
// Answer: Structs don't reference the same spot in memory, it allows you to create your own struct, copy it, and change the values and they remain difference, it doesn't change the initial value



// Read 17_Structs_Solution.playground to see more information and examples about Structs, including a Go Deeper section.
