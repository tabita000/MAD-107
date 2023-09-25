import SwiftUI


// Define a dictionary of team members with their numbers as keys
var teamPlayers: [Int: [String: Any]] = [
    15: ["name": "Joey Anderson", "age": 25, "country": "USA", "height": 6.0, "birthday": "1998-06-19"],
    89: ["name": "Andreas Athanasiou", "age": 31, "country": "Canada", "height": 6.2, "birthday": "1994-08-06"],
    98: ["name": "Connor Bedard", "age": 24, "country": "Canada", "height": 6.1, "birthday": "1998-04-20"],
    42: ["name": "Nolan Allan", "age": 20, "country": "CANADA", "height": 6.2, "birthday": "2003-04-03"],
    46: ["name": "Louis Crevier", "age": 22, "country": "CANADA", "height": 6.0, "birthday": "2001-05-01"],
    38: ["name": "Ethan Del Mastro", "age": 20, "country": "CANADA", "height": 6.4, "birthday": "2003-03-15"],
    04: ["name": "Seth Jones", "age": 28, "country": "USA", "height": 6.4, "birthday": "1994-10-03"],
    44: ["name": "Wyatt Kaiser", "age": 21, "country": "USA", "height": 6.0, "birthday": "2002-07-31"],
    55: ["name": "Kevin Korchinski", "age": 19, "country": "CANADA", "height": 6.1, "birthday": "2004-06-21"],
    29: ["name": "Drew Commesso", "age": 21, "country": "USA", "height": 6.2, "birthday": "2002-07-19"]
    
    
    
    
]

//Initialize variables
var playersByAge: [[String: Any]] = []
var playersByCountry: [[String: Any]] = []
var birthdaysByMonth: [String: Int] = [:]
var totalAge = 0
var totalHeight = 0.0

for (_, player) in teamPlayers {
    playersByAge.append(player)
    playersByCountry.append(player)
    
    totalAge += player["age"] as! Int
    totalHeight += player["height"] as! Double
}

// function to Sort by age
func sortByAge(player1: [String: Any], player2: [String: Any]) -> Bool {
    let age1 = player1["age"] as! Int
    let age2 = player2["age"] as! Int
    return age1 < age2
}

// function to Sort by country
func sortByCountry(player1: [String: Any], player2: [String: Any]) -> Bool {
    let country1 = player1["country"] as! String
    let country2 = player2["country"] as! String
    return country1 < country2
}

// Sort players by age and country using custom sorting functions
playersByAge.sort(by: sortByAge)
playersByCountry.sort(by: sortByCountry)

// Calculate average age and height
let averageAge = Double(totalAge) / Double(teamPlayers.count)
let averageHeight = totalHeight / Double(teamPlayers.count)

// Determine the month with the most birthdays
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"

var maxMonthCount = 0
var mostCommonMonth = ""

for (_, player) in teamPlayers {
    if let birthdayString = player["birthday"] as? String,
       let birthdayDate = dateFormatter.date(from: birthdayString) {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: birthdayDate)
        let monthName = DateFormatter().monthSymbols[month - 1]

        if let count = birthdaysByMonth[monthName] {
            birthdaysByMonth[monthName] = count + 1
            if count + 1 > maxMonthCount {
                maxMonthCount = count + 1
                mostCommonMonth = monthName
            }
        } else {
            birthdaysByMonth[monthName] = 1
        }
    }
}

// Print results
print("Players sorted by age:")
for player in playersByAge {
    print("\(player["name"] ?? "") - Age: \(player["age"] ?? "")")
}

print("\nPlayers sorted by country:")
for player in playersByCountry {
    print("\(player["name"] ?? "") - Country: \(player["country"] ?? "")")
}

print("\nAverage Age of Players: \(String(format: "%.2f", averageAge))")
print("Average Height of Players: \(String(format: "%.2f", averageHeight))")

print("\nMonth with Most Birthdays: \(mostCommonMonth)")

