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


let hue = random(from: 0, toButNotIncluding: 361)
let largehue = hue+20
let smallhue = hue-20
if hue <= smallhue || hue >= largehue
{
    canvas.fillColor = Color(hue: hue, saturation: 100, brightness: 100, alpha: 100)
}
else
{
    //restart loop
}

//generate number until out of range
//set color

//generate number
//check colour
//if it failed the check, generate again
//else set colour


for x in stride(from: 50, to: 500, by: 100)
{
    for y in stride(from: 50, to: 500, by: 100)
    {
        for z in stride(from: 100, to: 0, by: -20)
        {
            let hue = random(from: 0, toButNotIncluding: 361)
            let largehue = hue+20
            let smallhue = hue-20
            if hue >= smallhue && hue <= largehue
            {
                //let hue = random(from: 0, toButNotIncluding: 361)
            }
            canvas.fillColor = Color(hue: hue, saturation: 100, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        }
    }
}


// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


