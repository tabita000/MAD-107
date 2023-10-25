import UIKit
import Foundation

func CurrentTime() {
    let currenttime = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "HH:mm:ss"
    print("Current Time: \(timeFormatter.string(from: currenttime))")
    
    
}

//Create a timer that calls 'CurrentTime' every 1 second
let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
    CurrentTime()
}

// import Foundation: This imports the Foundation framework, which includes the Date and DateFormatter classes we need. --func currentTime(): This is your function that fetches and formats the current time. We use --Date() to get the current date and time and DateFormatter to format it.--Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in: This sets up a timer that calls currentTime every second (withTimeInterval: 1). The repeats: true part means that the timer will keep firing indefinitely.

