//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

canvas.drawShapesWithBorders = false

var start = 0.0
let p = PerlinGenerator()



for x in stride(from: 50, to: 500, by: 100)
{
    for y in stride(from: 50, to: 500, by: 100)
    {
        for z in stride(from: 100, to: 0, by: -20)
        {
            start += 0.05
            let randomvalue = p.perlinNoise(x: start)
            let processedRandom = map(value: randomvalue, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 360)
            canvas.fillColor = Color(hue: Int(processedRandom), saturation: 80, brightness: 100, alpha: 100)
            canvas.drawEllipse(centreX: x, centreY: y, width: z, height: z)
        }
    }
}



//canvas.translate(byX: 50, byY: 50)
//for _ in 1...5
//{
//    for _ in 1...5
//    {
//        for i in 1...5
//        {
//            canvas.drawEllipse(centreX: 0, centreY: 0, width: i*20, height: i*20)
//        }
//        canvas.translate(byX: 100, byY: 0)
//    }
//    canvas.translate(byX: -500, byY: 100)
//}




// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

