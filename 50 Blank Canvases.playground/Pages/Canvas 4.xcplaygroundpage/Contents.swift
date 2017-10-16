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

//Colour generator


for x in stride(from: 50, to: 500, by: 100)
{
    for y in stride(from: 50, to: 500, by: 100)
    {
        //# of rings per circle
        for z in stride(from: 100, to: 0, by: -5)
        {
            let hue = random(from: 120, toButNotIncluding: 361)
            canvas.fillColor = Color.init(hue: hue, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        }
    }
}


// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

