import UIKit

//Write a playground to do something useful for you in your daily life that contains the following items; function, couser

// example of a function
func kgToLb(_ kg: Double) -> Double {
    let pounds = kg * 2.2046
    return pounds
}
var weightInKg = 74.0
let weightInLb = kgToLb(weightInKg)

print("The weight in pounds will be: \(String(format: "%.2f", weightInLb))")

// example of closure

let theSum: (Int, Int) -> Int = { (a, b) in
    return a + b
    
}
let result = theSum(10, 10)
print("The sum of 10 and 10 is \(result)")
