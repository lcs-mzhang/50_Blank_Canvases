import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

let x1 = 300.0
let x2 = 450.0
let y1 = 100.0
let y2 = 500.0

let result = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))

//get difference of the x's

let deltaX = x1 - x2
let deltaY = y1 - y2

let sumOfSquares = pow(deltaX, 2) + pow(deltaY, 2)

let otherResult = sqrt(sumOfSquares)


// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

