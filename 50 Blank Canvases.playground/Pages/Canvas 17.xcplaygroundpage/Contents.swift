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

struct Point
{
    var x : Double = 0.0
    var y : Double = 0.0
}

struct Slope
{
    var rise : Double = 0.0
    var run : Double = 0.0
    var yInt : Double = 0.0
}

var point1 = Point(x: 60, y: 15)
var slope1 = Slope(rise: -10, run: 20, yInt: 95)

func Solve(between lineWithSlope: Slope, Position: Point) -> Double
{
    
    
    let m = -1*(lineWithSlope.run/lineWithSlope.rise)
    let b = (-1 * m * Position.x) + Position.y
    
    let otherM = lineWithSlope.rise/lineWithSlope.run
    let otherB = lineWithSlope.yInt
    let xInt = -(otherB/otherM)
    
    
//    let poiX = (otherM * Position.x + otherB - b)/m
//    let poiY = otherM * poiX + otherB
    
    let poiX = (b-otherB)/(otherM-m)
    let poiY = otherM * poiX + otherB
    
    canvas.translate(byX: 250, byY: 250)
    canvas.drawAxes()
    
    canvas.drawEllipse(centreX: Int(Position.x), centreY: Int(Position.y), width: 4, height: 4)
    canvas.drawEllipse(centreX: Int(poiX), centreY: Int(poiY), width: 4, height: 4)
    canvas.drawLine(fromX: 0, fromY: Int(otherB), toX: Int(xInt), toY: 0)
    canvas.drawLine(fromX: Int(poiX), fromY: Int(poiY), toX: Int(Position.x), toY: Int(Position.y))
    
    canvas.drawText(message: "(\(poiX),\(poiY))", size: 10, x: Int(poiX), y: Int(poiY))
    canvas.drawText(message: "(\(Position.x),\(Position.y))", size: 10, x: Int(Position.x), y: Int(Position.y))
    
    let farY = (otherM * -250) + otherB
    let farY2 = (otherM * 250) + otherB
    
    canvas.drawLine(fromX: -250, fromY: Int(farY), toX: 250, toY: Int(farY2))
    
    let distance = sqrt(pow(Position.x - poiX, 2)+pow(Position.y - poiY, 2))

    canvas.translate(byX: -250, byY: -250)
    canvas.drawText(message: "The distance is \(distance)", size: 20, x: 0, y: 480)
    return distance
}


Solve(between: slope1, Position: point1)





//find perp slope
//sub in point
//find poi
//calculate line distance



// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

