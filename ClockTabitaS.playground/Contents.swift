import UIKit
import PlaygroundSupport

func CurrentTime() {
    let currenttime = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "HH:mm:ss"
    print("Current Time: \(timeFormatter.string(from: currenttime))")
    
    DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
        CurrentTime()
    }
}

CurrentTime()

PlaygroundPage.current.needsIndefiniteExecution = true

