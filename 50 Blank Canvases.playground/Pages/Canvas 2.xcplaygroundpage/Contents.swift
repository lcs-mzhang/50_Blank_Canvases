//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

canvas.drawShapesWithFill = false

canvas.translate(byX: 50, byY: 50)

let ringpercircle = 10
let circlesize = 10
let circleperrow = 5


for _ in 1...circleperrow
{
    for _ in 1...circleperrow
    {
        for i in 1...ringpercircle
        {
            canvas.drawEllipse(centreX: 0, centreY: 0, width: i*circlesize, height: i*circlesize)
            
        }
        canvas.translate(byX: ringpercircle*circlesize, byY: 0)
    }
    canvas.translate(byX: -ringpercircle*circlesize*circleperrow, byY: ringpercircle*circlesize)
}



// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

