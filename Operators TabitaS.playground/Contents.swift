import UIKit
//short bread cookies calculator
let butter = 2 //cuo
let sugar = 2 //cup
let vanilla = 1 //tsp
let flour = 4 //cup
let milk = 3 //cup
let serving = 12 //This recipe is for 12 people

var desired_serving = 55 // How much user wants to make

let total_butter = (butter * desired_serving) / serving
let total_sugar = (sugar * desired_serving) / serving
let total_vanilla = (vanilla * desired_serving) / serving
let total_flour = (flour * desired_serving) / serving
let total_milk = (milk * desired_serving) / serving

print("To make short bread cookies for", desired_serving, "people you will need the following quantities of items:")
print(total_butter, "cup of butter")
print(total_sugar, "cup of sugar")
print(total_vanilla, "tsp of vanilla")
print(total_flour, "cup of flour")
print(total_milk, "cup of milk")


