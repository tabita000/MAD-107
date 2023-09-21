/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let dailyReels = [
    "Morning coffee ",
    "Sunrise",
    "Cute puppy playing",
    "Homemade lunch",
    "Flowers in the garden",
    "Funny cat video",
    "Afternoon walk in the park",
    "Day at the beach",
    "Cooking dinner",
    "Sunset view",
    "Reading a book",
    "Gym",
    "Cozy evening by the fireplace",
    "Listening to music",
    "Baking cookies ",
    "Hiking",
    "Painting in progress",
    "Long drive",
    "Walk in the rain",
    "Cute kittens"
]
dailyReels.count
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func dailyActivityMessage(dailySent: Int) -> String {
    let dailyGoal = 15
    
    if dailySent < dailyGoal {
        return "Tsk Tsk Tsk!!! You did not send enough reels today!"
    } else if dailySent == dailyGoal {
        return "You have met your daily goal!"
    } else {
        return "you have exceeded your daily goal for today"
    }
}

print(dailyActivityMessage(dailySent: 20))
//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for reel in dailyReels {
    let outcomeMessage = dailyActivityMessage(dailySent: 20)
    
    print("You sent these reels today: \(reel)")
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
