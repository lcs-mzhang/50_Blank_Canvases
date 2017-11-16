//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)


//var numberside = 10
//var linelength = 25
//
//
//canvas.translate(byX: canvas.width/2, byY: canvas.height/2)
//for _ in 1...numberside
//{
//    canvas.drawLine(fromX: 0, fromY: 0, toX: linelength, toY: 0)
//    canvas.translate(byX: linelength, byY: 0)
//    canvas.drawLine(fromX: 0, fromY: 0, toX: linelength, toY: 0)
//    canvas.translate(byX: linelength, byY: 0)
//    canvas.rotate(by: Degrees(360/numberside))
//}

let numberSide = 5
let lineLength = 25
let sideDegrees = Int((numberSide-2) * 180)

canvas.translate(byX: 250, byY: 250)

for _ in 1...numberSide
{
    canvas.drawLine(fromX: 0, fromY: 0, toX: lineLength, toY: 0)
    canvas.translate(byX: lineLength, byY: 0)
    canvas.rotate(by: CGFloat(180-sideDegrees/numberSide))
}


//for _ in 1...sides {
//    canvas.drawLine(fromX: 0, fromY: 0, toX: 750/sides, toY: 0)
//    canvas.translate(byX: 750/sides, byY: 0)
//    canvas.rotate(by: CGFloat(180-sideDegrees/sides))
//}
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



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

