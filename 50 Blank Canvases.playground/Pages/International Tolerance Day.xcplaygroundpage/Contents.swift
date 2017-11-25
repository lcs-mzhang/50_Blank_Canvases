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

let textSize = 50

for _ in 1...canvas.height/textSize
{
let rando = random(from: 1, toButNotIncluding: 4)
if rando == 1
{
    canvas.drawText(message: "ask 3 before u ask me", size: textSize, x: 0, y: 0)
}
if rando == 2
{
    canvas.drawText(message: "come to grove time", size: textSize, x: 0, y: 0)
}
if rando == 3
{
    canvas.drawText(message: "gents and ladies", size: textSize, x: 0, y: 0)
}
canvas.translate(byX: 0, byY: 50)
}
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?




PlaygroundPage.current.liveView = canvas.imageView

