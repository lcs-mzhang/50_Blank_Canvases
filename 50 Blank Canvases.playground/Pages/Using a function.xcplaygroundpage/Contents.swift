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
let canvas = Canvas(width: 400, height: 300)

//Example of a function

func funInFunction(firstParameterName : Int, secondParameterName : Int)
{
    //in the function body(in the curly brackets), firstParameterName and secondParameterName refers to the values provided when the fuction was called.
    print(firstParameterName)
    print("-------")
    print(secondParameterName)
    print("=======")
}

funInFunction(firstParameterName: 5, secondParameterName: 10)


func drawRegularPolygon(numberOfSides : Int, sideLength : Int, startX : Int, startY : Int)
{
    let interior = (numberOfSides - 2) * 180 / (numberOfSides)
    let exterior = 180 - interior
    
    canvas.translate(byX: startX, byY: startY)
    
    for _ in 1...numberOfSides
    {
        canvas.drawLine(fromX: 0, fromY: 0, toX: sideLength, toY: 0)
        canvas.translate(byX: sideLength, byY: 0)
        canvas.rotate(by: Degrees(exterior))
    }
}



drawRegularPolygon(numberOfSides: 50, sideLength: 10, startX: 0, startY: 0)






//let numberSide = 5
//let lineLength = 25
//let sideDegrees = Int((numberSide-2) * 180)
//
//canvas.translate(byX: 250, byY: 250)
//
//for _ in 1...numberSide
//{
//    canvas.drawLine(fromX: 0, fromY: 0, toX: lineLength, toY: 0)
//    canvas.translate(byX: lineLength, byY: 0)
//    canvas.rotate(by: CGFloat(180-sideDegrees/numberSide))
//}

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

