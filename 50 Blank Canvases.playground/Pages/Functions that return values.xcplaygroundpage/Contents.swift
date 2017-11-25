//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 200)

func divide(this: Double, by: Double) -> Double?
{
    if by != 0
    {
        return this/by
    }
    else
    {
        return nil
    }
}

divide(this:10, by:0)




// Replace this comment with your first comment – what is the goal of the code you're about to write?


PlaygroundPage.current.liveView = canvas.imageView

