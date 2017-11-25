//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 200)


func askQuestion(question:String)
{
    canvas.drawText(message: question, size: 50, x: 0, y: 150)
    let rando = random(from: 1, toButNotIncluding: 3)
    if rando == 1
    {
        canvas.drawText(message: "ask 3 before u ask me", size: 50, x: 0, y: 0)
    }
    else
    {
        canvas.drawText(message: "come to grove time", size: 50, x: 0, y: 0)
    }
    
}

askQuestion(question: "how are u doing?")


PlaygroundPage.current.liveView = canvas.imageView

