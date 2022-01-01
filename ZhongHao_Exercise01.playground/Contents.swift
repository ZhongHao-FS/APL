//Name: Hao Zhong
import UIKit
// Part1: Variable Declarations
let flipper: Bool = true
var profit: Float = 1.2345
let digiTal: UInt = 32
var sizes = ["small", "median", "large"]
var numbers = [Int]()
var doubles = [
    [1.23, 2.34],
    [3.45, 4,56, 5,67],
    [6.78, 7.89]
]

//Part2: String Concatenation
var cityName = "Shenzhen"
var stateName = "China"
var hometown = cityName + "," + stateName
var population = 12590000
print("I live in \(hometown), which has \(population) people that live there.")

//Part3: Arrays, Conditionals, and Loops
var arrayOfStrings: [String] = []
for i in 1...5 {
    arrayOfStrings.append("Swift_\(i)")
}
if arrayOfStrings.count == 5 {
    for swiftIndex in arrayOfStrings {
        print(swiftIndex)
    }
}
else {
    print("Here is my array: \(arrayOfStrings). I must have added the wrong number of elements to it.")
}

//Part4: Random and Shuffle
var random = Int.random(in: 1...1000)
var ranDouble = Double.random(in: 0.0...1.5)
var digit = Int.random(in: 0...10)
var rounded = digit > 4 ? 10 : 0
var travelLog = ["DC", "VA", "IL", "MD", "DE", "NY", "FL", "CA", "PA", "OH"]
travelLog = travelLog.sorted()
travelLog.shuffle()
for i in 1...10 {
    print("The number \(i) state in our array is \(travelLog[i-1]).")
}

//Part5: Documentation Scavenger Hunt
/*5.1 From the Swift Standard Library: Creates an array containing the elements of a sequence.
 https://developer.apple.com/documentation/swift/array/2907560-init
 */
var fiveStrings = Array(arrayOfStrings)
/*5.2 From the Swift Programming Guide: Strings and Characters
 https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
 Substring is a part of an existing string, which can be modified basically like a string. A substring is usually only needed temporarily and saves us time and effort from declaring a new string. Otherwise, we could create a new instance of string and store it for long-term usage.
 */
/*5.3 Bool
 From the Swift Standard Library: Inspecting a String
 https://developer.apple.com/documentation/swift/string
 */
/*5.4 ++ and ??
 From the Swift Programming Guide: Basic Operators
 https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
 */
/*5.5 2,147,483,647
 From the Swift Programming Guide: The Basics
 https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
 */















