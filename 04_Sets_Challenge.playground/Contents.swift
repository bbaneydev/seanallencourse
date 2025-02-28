import UIKit

// Sean Allen iOS Dev Launchpad
// Sets Challenge

// Swift provides three main data types for storing collections of items:
// 1) Arrays are ordered collections of items.
// 2) Sets are _unordered_ collections of _unique_ items.
// 3) Dictionaries are unordered collections of key-value pairs.


// Create a variable named daysOfWeek as a set that holds the following values:
// Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

// Hints:   1) You'll need to declare the variable as a set of strings.
//          2) Remember that you might need to put something around the value of the strings...

var daysOfWeek = Set(["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"])


// Remove Monday from the set. No one likes Mondays anyway.
daysOfWeek.remove("Monday")

// Add a new day of the week to the set called Codeday
daysOfWeek.insert("Codeday")


// All joking aside, the days of the week should probably not change. How could we create a set but make sure that it's value cannot be changed later?




// Create a new constant named weekendDays that holds the values Saturday and Sunday
let weekendDays = Set(["Saturday", "Sunday"])



// What are the main advantage to using sets?
// faster, no duplicate values, constant time, allocates memory for that specific entry -- making it quicker to retrieve



// What are the main disadvantages?
// no duplicates, no order



// Go deeper

// Swift comes with methods for comparing sets.
// Given set1 and set2:

// intersection()           - makes a new set with values that are present in both set1 and set2
// symmetricDifference()    - makes a new set with values that NOT in both set1 and set2.
// union()                  - makes a new set with all the values in both set1 and set2.
// subtracting()            - makes a new set where the values in set2 are taken out of set1 (if present).


// Create a new set called weekDays by using the subtracting method to remove the weekendDays from the daysOfWeek set.
var weekDays = daysOfWeek.subtracting(weekendDays)



// Print the weekDays. It should read Codeday, Tuesday, Wednesday, Thursday, Friday (but probably not in that order).
print(weekDays)
