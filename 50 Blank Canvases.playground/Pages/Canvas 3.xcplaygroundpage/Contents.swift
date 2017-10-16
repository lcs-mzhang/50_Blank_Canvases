//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false


for x in stride(from: 50, to: 500, by: 50)
{
    for y in stride(from: 50, to: 500, by: 50)
    {
        for z in stride(from: 100, to: 0, by: -5)
        {
            canvas.fillColor = Color.init(hue: z, saturation: 100-z, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        }
    }
}


// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

