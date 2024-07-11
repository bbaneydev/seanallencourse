import UIKit

// Sean Allen iOS Dev Launchpad
// Loops Challenge

// Given the following dictionary
let famousNumbers = [
    "pi": 3.1415926535,
    "luckiest": 7,
    "unluckiest": 13,
    "e": 2.71828,
    "everything": 42,
    "year": 365,
    "circle": 360,
    "zero": 0
]

// Write a loop to print out all the numbers in the dictionary
for number in famousNumbers {
    print("The famous numbers in the dictonary are: \(number)")
}

// If you run the loop above several times, why does the order of the numbers keep changing?
// Answer: dictionaries don't have a defined order, there is no need for one since they are defined using a key



// Write a function that:
// takes an array of integers as a parameter
// adds up all integers in the array (takes of the sum of all the numbers)
// returns that sum as an integer
let arrayOfNumbers = [80, 18, 20, 67, 11, 3, 92, 26, 83, 39, 66]

func getSum(of arr: [Int]) -> Int {
    var sum = 0
    for num in arrayOfNumbers {
       sum += num
    }
    return sum
}

// Call the function and get the sum of all the numbers in the arrayOfNumbers.
getSum(of: arrayOfNumbers)



// In our last challenge, we created a recursive function to count to 100. It's postive to do the same thing with a loop.
// Make a loop to change the value of the count to 2, then 3, then 4 all the way up to 100. In other words, count from 1 to 100.
var count = 1
for i in 2...100 {
    count += 1
}
// Print the count
print(count)



// Write a function named removeNegativeNumbers that:
// takes one parameter, an array of integers
// return an array of integers with all the negative numbers removed from the array passed in.
let allNumbers = [85, -31, -15, -45, -34, -19, -32, -4, -9, 86, 16, 12, -37, -11, 67, 15, 98, 8, 21, -86, -47, -92, -82, -15, -86, 46, 29, -55, -70, -28, 92, 89, -67, -75, 9, -39, 60, 61, -7, 2, 10, -47, -34, 92, -3, 54, 37, 73, -43, 31]

func removeNegativeNumbers(from arr: [Int]) -> [Int] {
    var newArr = [Int]()
    for entry in arr {
        if entry > 0 {
            newArr.append(entry)
        }
    }
    return newArr
}

// Call the function to make sure it works.
removeNegativeNumbers(from: allNumbers)



// Go Deeper

// There are two other kinds of loops: the while loop, and the repeat-while loop.

// The while loop does loops UNTIL a condition is met.
// Let's count to 100 using a while loop.

// Here we are reusing the count variable that we defined above and setting it back to 1.
count = 100

// The while loop keeps running the code as long as the number hasn't yet reached 100. Once the number does reach 100, the loop stops.
while count < 100 {
    count = count + 1
}
print(count)



// Very similar to the while loop is the repeat-while loop. Instead of checking the condition before running the code inside the loop, it checks the condition AFTER running the code. Again, let's count to 100.
count = 100
repeat {
    count = count + 1
} while count < 100
print(count)


// Use Repeat-while when you want to guarantee that the loop will run at least once.
// Other programming languages often call the repeat-while loop a do-while loop.


// While they may seem to be the same, change the value of the count to 100 before each loop and run the code again. What happens? Why?
// Answer: while loop = count is already 100, so the condition has been met, it doesn't run
// Answer: repeat-while = it HAS to run once, so even though it's already 100, it runs it once, changing the value to 101

// Depending on your needs, one of the three types of loops may be more helpful than the others!
