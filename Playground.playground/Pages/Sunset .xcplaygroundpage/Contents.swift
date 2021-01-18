//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Drawing a Sunset

//Grid + Scale
canvas.drawAxes(withScale: true, by: 50)

//Iterate over the y values to draw horizontal lines
for value in stride(from: 150,
                through: 600,
                by: 1) {
    //see the y values for reference
    value
    
    //set the colours
    let currentColor = Color.init(hue: 240 + value, saturation: 80, brightness: 80, alpha: 100)
    
    canvas.lineColor = currentColor
    
    //draw the lines
    canvas.drawLine(from: Point(x: 0, y: value), to: Point(x: 600, y: value))
    
}

// cloud #1
canvas.fillColor = Color.white

canvas.drawEllipse(at: Point(x: 100, y: 550), width: 75, height: 50)

canvas.drawEllipse(at: Point(x: 130, y: 515), width: 80, height: 40)

canvas.drawEllipse(at: Point(x: 75, y: 510), width: 75, height: 55)

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
