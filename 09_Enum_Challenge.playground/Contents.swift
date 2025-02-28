import UIKit

// Sean Allen iOS Dev Launchpad
// Enumerations Challenge

// Create an enumeration for all 12 months of the year. Give January a rawValue of 1.
enum MonthsOfYear: Int {
    case January = 1
    case February, March, April, May, June, July, August, September, October, November, December
}



// What are the rawValues for the other 11 months?
// It goes up by one each time, so 1...12


// What would the rawValues be if we had not set January to 1?
// The value would start at 0 and go up so 0...11



// What happens if we forget to declare the enum as being of type Int?
// we wouldn't have a rawValue, and it would throw an error, saying value has no rawValue



// Create a constant named currentMonth and set its value to the current month.
let currentMonth = MonthsOfYear.July



// Print a message with the number that represents the current month
print("It is currently month number \(currentMonth.rawValue)")



// Print a message with how many months are left in the year after the current month
print("There are currently \(MonthsOfYear.December.rawValue - currentMonth.rawValue) months left in the year")



// Go deeper

// Want a harder challenge? If you get stuck, it's totally fine to skip ahead to the solution and move on to the next video!

// You may have noticed that your instructor has a beard. But have you noticed that it's changed over time? Your challenge today is to create an enumeration to model the types of beards your instructor has.

// Instructions
// 1. Review the videos below to see the different lengths of Sean's beards.

        // Swift Classes and Structures Explained
        // https://www.youtube.com/watch?v=ObIxxHy8yY8

        // Swift Tutorial - Haptic Feedback - Taptic Engine
        // https://www.youtube.com/watch?v=kUBpgFmVdNU

        // LIVE: Subscriber Code Review and Q&A
        // https://www.youtube.com/watch?v=3gPcaUfCUgE

        // 90-90 Rule
        // https://www.youtube.com/watch?v=T1v_E0yuVBw

// 2. Create an enumeration called Beards. Use at least four cases to describe the different levels of beards. Make up whatever names you'd like.
// 3. Create a function named compareBeards that takes two parameters (both of type Beards) and prints out which beard is better or if the two beards are equal. (Want a hint? You'll need to use the rawValue of your Enum...)
// 4. Review the two videos below. Make two variables of type Beard (one for each video) and assign a value that most closely matches the types of beards you defined in your enumeration.

    // Beard in Video 1
    // https://www.youtube.com/watch?v=rnJxpuPyLNA

    // Beard in Video 2
    // https://www.youtube.com/watch?v=6U_wgT5ekrc

// 5. Run your function and make sure that it works.




