//Name: Hao Zhong
import UIKit
//Part1: Dictionary Declarations
let order = ["water": true, "bread": true, "olive oil": false]
let menu = [String: Double]()
let farm: [String: Int?] = ["cows": 20, "bulls": 5, "horses": 8]
let rpg = [String: (String, Int, Bool)]()
let timeZones = ["East": ["FL", "GA", "NY"], "Central": ["IL", "WI", "TX"], "West": ["CA", "WA", "NV"]]

//Part2: Optional Declarations
let price: Double? = 3.14
let nickName: String?
let player: (Int, String, String?, Bool) = (60, "Druid", "premium", true)
let data = [[Int?]?]()

//Part3: Random Values Dictionary
var keysToSearch = ["Key_00", "Key_01", "Orange", "Key_153", "Key_05", "Key_10", "Key_25", "Key_15", "Portal", "Key_20"]
var kvd = [String: Int]()
for i in 0...2 {
    for j in 0...9 {
        kvd["Key_\(i)\(j)"] = Int.random(in: 0...100)
    }
}
for key in keysToSearch {
    if let result = kvd[key] {
        if result % 2 == 0 {
            kvd.updateValue(0, forKey: key)
            print("The previous value associated with \(key) was \(result), but now its value is 0.")
        } else {
            kvd.removeValue(forKey: key)
            print("The previous value associated with \(key) was \(result), but since it was odd, it has been removed from the dictionary.")
        }
    } else {
        print("Key \(key) not found.")
    }
}

