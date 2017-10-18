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
let canvas = Canvas(width: 200, height: 100)

//Create a starting point for travelling through Perlin noise space
var start = 0.0
//Create a Perlin noise generator
let p = PerlinGenerator()

for i in stride(from: 0, through: 200, by: 1)
{
    //Move through Perlin noise space
    start += 0.05
    //Larger means more variation, smaller means less
    
    
    //Get Perlin noise (gives us a number always between -1 and 1)
    let randomValue = p.perlinNoise(x: start)


    //convert to a range from 0 to 100
    
    let height = map(value: randomValue, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 100)
    
    
    canvas.lineColor = Color.init(hue: 0, saturation: 80, brightness: Int(height), alpha: 100)
    
    
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: Int(height))
}

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

