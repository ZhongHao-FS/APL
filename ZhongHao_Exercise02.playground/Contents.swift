// Name: Hao Zhong
import UIKit
//Part1: Simple Functions
func hello() {
    print("Hello World!")
}
hello()
func parcer(number: Int) -> String {
    return "The Int that was passed into this function was \(number)"
}
print(parcer(number: 6))

//Part2: Random Int Array Function
func comparer() {
    var greaterThanTen = 0, exactlyTen = 0, lessThanTen = 0
    var randInt = [Int]()
    for _ in 1...10 {
        randInt.append(Int.random(in: 1...20))
    }
    for number in randInt {
        if number > 10 {
            greaterThanTen += 1
        }
        else if number < 10 {
            lessThanTen += 1
        }
        else {
            exactlyTen += 1
        }
    }
    print(randInt)
    print("Numbers less than 10: \(lessThanTen), exactly 10: \(exactlyTen), greater than 10: \(greaterThanTen)")
}
comparer()

//Part3: Nested Arrays Function
let ones = [1.1, 1.2, 1.3, 1.4, 1.5]
let twos = [2.2, 2.3, 2.4, 2.5, 2.6]
let threes = [3.3, 3.4, 3.5, 3.6, 3.7]
let nested = [ones, twos, threes]
func listing(arrayofarrays: [[Double]]) -> String {
    var outPut = ""
    for array in arrayofarrays {
        for element in array {
            outPut += "\(element) "
        }
    }
    return outPut
}
print(listing(arrayofarrays: nested))

