import UIKit

// Sean Allen iOS Dev Launchpad
// Self Challenge

// Below is code that works. Go ahead and run the code to see the results.

// I didn't say it was pretty code though. In fact, it's ugly on purpose.
// You might need to watch the video on classes and come back to do this challenge, but really, all you need to focus on is the keyword 'self'.

// Your task is to remove the keyword self everywhere in the code that it's not needed. You must do so without Xcode throwing an error at you. If you remove 'self' and cause Xcode to throw an error, your computer will spontaneously combust and your house will burn to the ground. *
// * These statements have not be evaluated and may in fact be wildly inaccurate.

// When you're done, answer the questions below the code.

class Cat {
    var isFurry = true
    var name: String
    var weight: Float?
    
    // The init() is the initializer. It is what you call when you make an instance of this class, as seen in the example code below.
    init(name: String) {
        self.name = name
        
        if self.isFurry {
            print("\(name) is furry.")
        }
    }
    
    func getWeight() {
        if let weight = weight {
            print("\(name)'s weight is \(weight) pounds.")
        } else {
            print("\(name)'s weight has not yet been determined.")
        }
    }
    
    func weightGainedPerMonth(weight: Float, numberOfMonths: Int) {
        let weightGain = weight * Float(numberOfMonths)
        
        if let weight = self.weight {
            self.weight = weight + weightGain
        } else {
            print("Can't add weight because \(name) doesn't have a weight.")
        }
    }
}

let garfield = Cat.init(name: "Garfield")
garfield.getWeight()
garfield.weight = 9
garfield.getWeight()
garfield.weightGainedPerMonth(weight: 1, numberOfMonths: 12)
garfield.getWeight()

// Where could you remove self? Where could you not remove self?
// Answer: You can remove self from all of the name references, except in the initalizer, you could remove self from the if let weight = self.weight in the getWeight function



// Why was self needed some places and not needed in other places?
// Answer: You need self in order to let swift know that you're talking about setting the value of whatever variable to belong to the current class. So, self.name (Cats name, is Garfield)
// Without allowing swift to know that you're giving that value to the current Class, it would confuse swift, because it doesn't know who is supposed to get that name value



