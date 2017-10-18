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

for i in stride(from: 0, through: canvas.height, by: 1)
{
    //Decide line height
    let toY = random(from: 0, toButNotIncluding: canvas.height+1)
    //Draw a vertical line
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: toY)
}

//Learn about data types

var name = "Lakefield" //Assignment statement
name = "Lakefield College School"

//Create a number

let value = 4 //Type interface guesses integer
let anotherValue : Int = 5

//Create a number that isnt an integer

var decimalValue = 4.5
decimalValue = 5
let anotherDecimalValue : Double = 5.5

Int.min

//What are the maximum and mininum possible value

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

