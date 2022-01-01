import UIKit

var greeting = "Hello, playground"
Int(5.5)
func take(numbers: Int...) {
    print(numbers)
}
take(numbers: 1, 2, 3)
let a = 15
let b = 45.5


let theString = "This is a string."
var letters = [Character](theString)

let alpha = ["a", "b", "c", "d", "e", "f", "g"]
for inde in alpha.indices {
    if inde % 2 != 0 {
        print(alpha[inde])
    }
}

var smallDictionary: [String: Int] = ["First":100,"Second":150,"Third":200]
var num = smallDictionary.updateValue(500, forKey:"Scnd")

var age: UInt32? = 12

var opt = Bool.random()
var digit: Int? = nil
if opt == true {
    digit = Int.random(in: 1...10)
}
if let txt = digit {
    print("\(txt)")
} else {
    print("The variable is nil")
}
struct Person {
  var name: String = "John Smith"
  var age: Int = 24
  func printInfo() {
    print("\(name) is \(age) years old.")
  }
}
//Creating an instance of a person
var personObject = Person()
personObject.printInfo()
var otherPerson = personObject
otherPerson.name = "Rick"
otherPerson.age = 57
personObject.printInfo()
var names = ["Chris", "Alex", "Ewan", "Barry", "Danielle"]
let newNames = names.sorted(by: { $0 > $1 })
print(newNames)

var mallDictionary:[String:Int] = ["First":100,"Second":150,"Third":200]
var numbb = mallDictionary.updateValue(500, forKey:"Second")
Int(5.5)
