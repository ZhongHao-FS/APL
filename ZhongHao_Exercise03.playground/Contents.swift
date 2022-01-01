// Name: Hao Zhong
import UIKit
// Intermediate Functions

// Function 1
func coinToss() -> Bool {
    return Bool.random()
}

// Function 2
func converter(upLow: Bool, input: String) -> String {
    if upLow {
        return input.uppercased()
    }
    else {
        return input.lowercased()
    }
}
print(converter(upLow: coinToss(), input: "oNe"))
print(converter(upLow: coinToss(), input: "TwO"))
print(converter(upLow: coinToss(), input: "tHrEe"))

// Function 3
func chaos() -> [Int] {
    var data = [Int]()
    for _ in 1...10 {
        data.append(Int.random(in: 1...100))
    }
    return data
}
print(chaos())

// Function 4
func counter(data: [Int]) -> (smallest: Int, largest: Int, median: Double) {
    let sortedData = data.sorted()
    let min = sortedData[0], max = sortedData[sortedData.count - 1]
    var median: Double = Double(sortedData[sortedData.count / 2])
    if data.count % 2 == 0 {
        median = (median + Double(sortedData[(sortedData.count / 2) - 1])) / 2
    }
    return (smallest: min, largest: max, median: median)
}
let result = counter(data: chaos())
print("The largest value found was \(result.largest), the smallest value found was \(result.smallest), and the median value found was \(result.median)")

// Function 5
func logger(hit: [Int]) {
    var caseOne = 0, caseTwo = 0, caseThree = 0
    for number in hit {
        switch number {
        case 1...33:
            caseOne += 1
        case 34...66:
            caseTwo += 1
        case 67...100:
            caseThree += 1
        default:
            print("\(number) is out of range, error!")
        }
    }
    print("The first case was hit \(caseOne) times, the second case was hit \(caseTwo) times, and the third case was hit \(caseThree) times.")
}
logger(hit: chaos())
