import Cocoa

// variables and constants
// captures values

// variables can be changed
//var highScore = 0
//highScore = 55

var currentActiveUsers = 124
currentActiveUsers = 1458

// constants can not be changed
// safer
// gives better performance
let myname = "Joe"


// Arrays --------
// container or list of objects
//var ages = [21, 55, 19, 47, 22, 37, 88, 71]
//
//// array methods
//ages.count
//ages.first // first element
//ages.last // last element
//ages[2]
//ages.append(99) // add to end
//ages.insert(44, at: 0) // add to specific index
//ages.sort()
//ages.reverse()
//ages.shuffle()
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


// if/else statements
var isDarkModeOn = true

if isDarkModeOn {
    print("That's how it should be")
} else {
    print("You are a psycho.")
}

var highScore = 555

if highScore > 500 {
    print("You're the best")
} else if highScore > 250 {
    print("You're average")
} else if highScore > 100 {
    print("You need improvement")
} else {
    print("Yikes")
}


// For Loops
let allStars = ["James", "Davis", "Hardin", "Doncic", "Leonard"]

for player in allStars where player == "Hardin" {
    print(player)
}

var randomInts = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print(randomInts)


// Enums & Switch Statements
// group of related values
enum Phone {
    case iPhone11Pro, iPhoneSE, pixel, nokia
}

func getSeansOpinion(on phone: Phone) {
    switch phone {
    case .iPhone11Pro:
        print("This will be my next phone.")
    case .iPhoneSE:
        print("I dislike this phone size, it makes design hard.")
    case .pixel:
        print("Hardware is great. Android is ewww")
    case .nokia:
        print("Can't be broken. Classic")
    }
}
getSeansOpinion(on: .iPhoneSE)

let matchMakingRank = 35

func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in bronze league")
    case 50..<100:
        print("You are in silver league")
    case 100..<200:
        print("You are in gold league")
    default:
        print("You are in a league of your own. We don't know where you are")
    }
}

determinePlayerLeague(from: matchMakingRank)


// Optionals
var ages = [Int]()
ages.sort()

// if let
//if let oldestAge = ages.last {
//    print("The oldest age is \(oldestAge)")
//} else {
//    print("There is no oldest age. You must have no students.")
//}

// nil coalescing
//let oldestAge = ages.last ?? 99

// guard statement -- must be in a function -- makes oldestAge available for the entire function
func getOldestAge() {
    guard let oldestAge = ages.last else {
        return
    }
    
    // if ages.last doesn't have a value, nothing below that guard statement will ever be ran
}

// force unwrap
let oldestAge = ages.last! // <-- don't use force unwrap. if there is nothing in there, it will crash
