//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 320, height: 320)

//Line 1
canvas.fillColor = Color.white
for _ in 1...32
{
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
    canvas.translate(byX: 10, byY: 0)
}
canvas.translate(byX: -320, byY: 10)

//Line 2
canvas.fillColor = Color.white
for _ in 1...11
{
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
        canvas.translate(byX: 10, byY: 0)
}
canvas.fillColor = Color.black
for _ in 1...12
{
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
    canvas.translate(byX: 10, byY: 0)
}
canvas.fillColor = Color.white
canvas.translate(byX: -230, byY: 10)

//Line 3
for _ in 1...8
{
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
    canvas.translate(byX: 10, byY: 0)
}
canvas.fillColor = Color.black
for _ in 1...3
{
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
    canvas.translate(byX: 10, byY: 0)
}
canvas.fillColor = Color.white
for _ in 1...12
{
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 10, height: 10)
    canvas.translate(byX: 10, byY: 0)
}




// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

