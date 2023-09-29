import UIKit
//Write a function that calculates and displays all the Fibonacci numbers from 0 to 1000

func calculateFibonacci() {
    var a = 0
    var b = 1
    
    while a <= 1000 {
        print(a)
        
        
        let updatedFibonacci = a + b
        a = b
        b = updatedFibonacci
    }
}

calculateFibonacci()
