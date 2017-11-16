//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Abstrations with Functions
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//draw triange w/ metaphor

canvas.translate(byX: 75, byY: 100)

//draw da side and do da rotation one
for _ in 1...3
{
canvas.drawLine(fromX: 0, fromY: 0, toX: 200, toY: 0, lineWidth: 10)
canvas.translate(byX: 200, byY: 0)
canvas.rotate(by: 120)
}



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

