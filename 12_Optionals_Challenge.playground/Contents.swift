import UIKit

// Sean Allen iOS Dev Launchpad
// Optionals Challenge

// Optionals are a little tricky for beginning developers.
// Let's do some challenges designed to review the different methods of handing optionals.
// This challenge has more comments in the solution to clarify and explain what's happening in the code.
// You can also watch the video again while trying to write and understand the code.


        // Before we start our challenges, I want to try and clarify something. All five example functions below do the same thing. They print an optional number.
        // When I first started developing, one of THE most confusing things about optionals in Swift was a pattern of code I saw over and over.
        // Take a look at example 1 and notice the code that reads: if let number = number
        // Huh?????? This made me very confused.
        func printOptional_Example1(number: Int?) {
            if let number = number {
                print("The number is \(number).")
            } else {
                print("The optional is empty! It doesn't contain a number.")
            }
        }

        // Example 2 is exactly the same function as example 1. All I've done is rename the variables in a way that I hope explains what's actually happening.
        func printOptional_Example2(numberPassedIntoTheFunction: Int?) {
            if let numberUsedInIfStatement = numberPassedIntoTheFunction {
                print("The number is \(numberUsedInIfStatement).")
            } else {
                print("The optional is empty! It doesn't contain a number.")
            }
        }
        // So, when you see: let number = number, the number on the left of the equal sign is used inside the if statement. The number on the right of the equal sign is the number that was passed into the function. You don't have to give them both the same name (like example 1), but a lot developers do because it keeps the code cleaner by reducing the number of variable names.
        // By the way, you should know this method is called optional binding, because we're binding the optional to a constant that can be used later in the if or guard statement.

        // Perhaps it would help to see it written in still a different way. Again, it's the same function as Example 1 and 2, just with different variable names.
        func printOptional_Example3(optionalNumber: Int?) {
            if let unWrappedOptional = optionalNumber {
                print("The number is \(unWrappedOptional).")
            } else {
                print("The optional is empty! It doesn't contain a number.")
            }
        }

        // The same pattern is used in guard statements.
        func printOptional_Example4(number: Int?) {
            guard let number = number else {
                print("The optional is empty! It doesn't contain a number.")
                return
            }

            print("The number is \(number).")
        }

        // Example 4 above is the exactly the same as Example 5, just with different variable names.
        func printOptional_Example5(numberPassedIntoTheFunction: Int?) {
            guard let numberUsedBelowGuardStatement = numberPassedIntoTheFunction else {
                print("The optional is empty! It doesn't contain a number.")
                return
            }

            print("The number is \(numberUsedBelowGuardStatement).")
        }

        // You can verify these functions work by calling one of the functions with a number or passing in nil.
        printOptional_Example1(number: 42)

        // I sincerely hope this helps someone!


// On to the challenge!

// Because a person might not have a license number, change the constant below to be an OPTIONAL Integer.
// Give it a value of either a number or nil. Up to you.
let licenseNumber: Int? = 1234567


// Let's print out our license number in four different ways, as explained in the video.
// Below are four empty functions. Finish the functions so that, in each case, they print out:
// "My license number is [1234567]." OR, if no license is provided, "I do not have a license yet!"

// Complete this function using the if let method (known as optional binding) to handle the optional value.
func printLicenseIfLet(number: Int?) {
    if let number = number {
        print("My license number is: \(number)")
    } else {
        print("I don't have a license yet!")
    }
}

// Complete this function using Nil Coalescing operator to handle the optional value.
// This technique is really not the best for our purpose -- printing out a message.
// Can you figure out a way to use this method and still print out the desired message?
func printLicenseNilCoalescing(number: Int?) {
    let licenseNumber = number ?? -1
    
    if licenseNumber >= 0 {
        print("My license number is: \(licenseNumber)")
    } else {
        print("I don't have a license yet!")
    }
}

// Compelete this function using the guard statement to handle the optional value.
func printLicenseGuard(number: Int?) {
    guard let number = number else {
        print("I don't have a license yet!")
        return
    }
    print("My license number is: \(number)")
}

// Complete the function by force unwrapping the optional value.
func printLicenseForceUnwrap(number: Int?) {
    print("My license number is: \(number!)")
}

// Now we call the four functions using the license number set above. They should all print the same message.
printLicenseIfLet(number: licenseNumber)
printLicenseNilCoalescing(number: licenseNumber)
printLicenseGuard(number: licenseNumber)
printLicenseForceUnwrap(number: licenseNumber)



// Why is it so dangerous to force unwrap optionals?
// Answer: Because if the value is nil, your program crashes and your users uninstall your app. Weeping and sadness wash over the earth.



// What is the difference between variable1 and variable2?
var variable1: [Int?] = [7]
var variable2: [Int?]? = [7]
// Answer: variable1 is an array with an optional int in it, variable two is the same, but the array is also optional, and if it's not there, just make an array with 7 inside it


// If you can write all the functions above, you're on your way to mastering optionals!



// But you want one more challenge, right?
// If you've never heard of the famous thought experiment involving Schrodinger's Cat, consider yourself lucky. Your luck ends today though.
// Essentially what Mr. Schrodinger did was develop a thought experient to show that one kind of physics (quantum mechanics) doesn't make sense applied to larger scales. He suggested an absurd experiment where a cat would be both alive and dead at the same time according to the rules of quantum mechanics.
// Here are two good overviews:
// If you like reading:  https://whatis.techtarget.com/definition/Schrodingers-cat
// If you like watching: https://www.youtube.com/watch?v=uWMTOrux0LM

// Let's handle Mr. Schrodinger's cat using the power of Swift optionals.
// Change the variable called schrodingersCat to an optional string. After all, the cat might be dead.
var schrodingersCat: String? = "black"



// Write a function named killTheCat. It takes no parameters. It returns no parameters.
// The function should change the value of schrodingersCat to nil, but only 50% of the time the function is run.
// The other 50% of the time, it should leave the value of schrodingersCat unchanged.
// Hint: Bool.random() will return true 50% of the time and false 50% of the time.
func killTheCat() {
    let isDead = Bool.random()
    
    if !isDead {
        schrodingersCat = nil
    }
}

// Call the function
killTheCat()

// Now, print a messsage if the cat is still alive and tell us the color of the cat.
// Or print a message telling us the cat has died.
if let schrodingersCat = schrodingersCat {
    print("The \(schrodingersCat) cat is still alive")
} else {
    print("The cat is dead")
}
