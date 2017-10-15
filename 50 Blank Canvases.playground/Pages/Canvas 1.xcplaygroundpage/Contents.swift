//: [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
//

import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//Change linepercolumn and lineperrow as needed. These numbers must be smaller than the canvas width and height. For square lines, use numbers that multiply directly into the canvas width/height.

var linepercolumn = 25
var lineperrow = 25
var l = canvas.width/lineperrow
var h = canvas.height/linepercolumn

for _ in 1...linepercolumn
{
    for _ in 1...lineperrow
    {
        let i = random(from: 1, toButNotIncluding: 3)
        if i == 1
        {
            canvas.drawLine(fromX: 0, fromY: 0, toX:l, toY: h)
            
        }
        else
        {
            canvas.drawLine(fromX: 0, fromY: h, toX: l, toY: 0)
            
        }
        canvas.translate(byX: l, byY: 0)
    }
    canvas.translate(byX: -canvas.width, byY: h)
}

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


