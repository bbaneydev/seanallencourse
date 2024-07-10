import Cocoa

// variables and constants
// captures values

// variables can be changed
var highScore = 0
highScore = 55

var currentActiveUsers = 124
currentActiveUsers = 1458

// constants can not be changed
// safer
// gives better performance
let myname = "Joe"


// Arrays --------
// container or list of objects
var ages = [21, 55, 19, 47, 22, 37, 88, 71]

// array methods
ages.count
ages.first // first element
ages.last // last element
ages[2]
ages.append(99) // add to end
ages.insert(44, at: 0) // add to specific index
ages.sort()
ages.reverse()
ages.shuffle()
//print(ages)


// Sets --------
// similar to arrays, unordered, no duplicate values, significantly faster than an array
var setAges = [18, 33, 55, 17, 94, 26, 33, 17]

var agesSet = Set(setAges)
print(agesSet)

// much faster, because it's hashable -- constant time lookup -- 17 has a place in storage with a pointer, allowing the set to grab it much faster immediately from storage
agesSet.contains(17)

// sets don't have an append, you just throw the item into the set
agesSet.insert(101)


// Dictionary ---------
// key value pairs
// very fast, also has constant time lookup
let devices: [String: String] = [
    "phone": "iPhone X",
    "laptop": "2016 MacBook Pro",
    "tablet": "2018 iPad Pro",
    "desktop": "2017 iMac Pro"
]
devices["laptop"]


// Functions ----------
// resuable chunks of code
func printInstructors(name: String) {
    print(name)
}

printInstructors(name: "Joe")


func add(firstNumber: Int, to secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

add(firstNumber: 5, to: 6)
