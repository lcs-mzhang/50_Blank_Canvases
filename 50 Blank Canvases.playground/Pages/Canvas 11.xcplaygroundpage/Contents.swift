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

for _ in 1...canvas.height/50
{
let rando = random(from: 0, toButNotIncluding: 2)
if rando == 1
{
    let text = "da herro"
    canvas.drawText(message: text, size: 50, x: 0, y: 0)
}
else
{
    let text = "ching chong"
    canvas.drawText(message: text, size: 50, x: 0, y: 0)
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

