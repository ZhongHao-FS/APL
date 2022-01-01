//Name: Hao Zhong
import UIKit
// Function 1
func randDoubles() -> Double {
    return Double.random(in: 0...100)
}

// Function 2
func doubleToInt(d1: Double, d2: Double) -> Int {
    let result: Int = Int(d1 * d2.rounded())
    print("\(d1) multiplied by \(d2) equals \(result) (rounded result).")
    return result
}
doubleToInt(d1: randDoubles(), d2: randDoubles())

// Function 3
func arrayOfStrings(words: [String]) {
    var outPut = [String]()
    switch words.count {
    case 1...3:
        for word in words {
            var letters: [Character] = Array(word)
            letters.reverse()
            outPut.append(String(letters))
        }
    case 4...6:
        outPut = words.reversed()
    case 7...:
        let rearranged = words.sorted() {$0.lowercased() < $1.lowercased()}
        for word in rearranged {
            print(word)
        }
        return
    default:
        print("Sorry but the array is empty!")
        return
    }
    print(outPut)
}
var inPut = ["zebra", "JAGUAR", "apple"]
arrayOfStrings(words: inPut)
inPut.append(contentsOf: ["Blue", "eMerald"])
arrayOfStrings(words: inPut)
inPut.append(contentsOf: ["beads", "BEAR"])
arrayOfStrings(words: inPut)

// Function 4
func largeString(large: String) -> (numVowels: Int, numConsonants: Int) {
    let arrayVowels: [Character] = ["a", "e", "i", "o", "u"]
    let words: [String] = Array(large.components(separatedBy: " "))
    var vowels = 0, consonants = 0
    for word in words {
        let letters: [Character] = Array(word)
        if arrayVowels.contains(Character(letters[0].lowercased())) {
            vowels += 1
        } else {
            consonants += 1
        }
    }
    return (numVowels: vowels, numConsonants: consonants)
}
var randText = "Although moreover mistaken kindness me feelings do be marianne. Son over own nay with tell they cold upon are. Cordial village and settled she ability law herself. Finished why bringing but sir bachelor unpacked any thoughts. Unpleasing unsatiable particular inquietude did nor sir. Get his declared appetite distance his together now families. Friends am himself at on norland it viewing. Suspected elsewhere you belonging continued commanded she."
let result = largeString(large: randText)
print("There were \(result.numVowels) words that started with a vowel and \(result.numConsonants) words that started with a consonant.")
