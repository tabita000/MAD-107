import UIKit
// below is the code for a program called bills burgers. This program will display a menu using enumerations, structures and optionals.


// Define an enumeration for burger options
enum BurgerType {
    case classic
    case cheese
    case veggie
}

// Define a structure for a burger item
struct Burger {
    var name: String
    var type: BurgerType
    var price: Double
}

// Create some burger items
let classicBurger = Burger(name: "Classic Burger", type: .classic, price: 8.99)
let cheeseBurger = Burger(name: "Cheeseburger", type: .cheese, price: 9.99)
let veggieBurger = Burger(name: "Veggie Burger", type: .veggie, price: 7.99)

// Create an optional for the user's choice
var userChoice: Burger?

// Display the menu options
print("Welcome to Bill's Gourmet Burger Bistro.")
print("1. Classic Burger - $8.99")
print("2. Cheeseburger - $9.99")
print("3. Veggie Burger - $7.99")

let DemoInput = 2 // Can be changed to test different scenarios

// Use simulated input to set userChoice
switch DemoInput {
case 1:
    userChoice = classicBurger
case 2:
    userChoice = cheeseBurger
case 3:
    userChoice = veggieBurger
default:
    print("Invalid choice. Please select a valid option.")
}

// Check if the user made a choice
if let selectedBurger = userChoice {
    print("")
    print("You've selected: \(selectedBurger.name)")
    print("Price: $\(selectedBurger.price)")
} else {
    print("No selection made!")
}
