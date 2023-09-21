/*:
 ## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise):
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songs = [String]()
songs.append("Haven't Met You Yet")
songs.append("Can't Help Falling in Love")
songs.append("My Way")
songs.append("Fly Me To The Moon")



/*:
 - callout(Exercise):
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
songs += ["Feeling Good", "Jailhouse Rock", "The Way You Look Tonight"]




/*:
 - callout(Exercise):
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */


for song in songs {
    let theSingers = "\(song)"
    print("The next song to be performed will be \(theSingers)")
}





/*:
 - callout(Exercise):
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
songs.removeAll()



//: [Previous](@previous)  |  page 14 of 17  |  [Next: Exercise: Counting Votes](@next)
