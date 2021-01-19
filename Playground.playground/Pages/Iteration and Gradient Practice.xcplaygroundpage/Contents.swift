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

// Practicing using iteration and gradient

//Axes + Scale
canvas.drawAxes(withScale: true, by: 50)

// Drawing the square that goes from green to black
//iterate over the y values to draw horizontal lines
for y in stride(from: 100,
                through: 200,
                by: 1) {
 //see the y values for reference
    y
    
// set the colours (high to low brightness)
    let currentColor = Color.init(hue: 150, saturation: 100, brightness: y, alpha: 100)
    canvas.lineColor = currentColor
    
// change line width
    canvas.defaultLineWidth = 2
    
// draw the lines
    canvas.drawLine(from: Point(x: 50, y: y), to: Point(x: 150, y: y))
    
}


//Drawing a rectangle that goes from blue to black
//iterate over the x values to draw vertical lines
for x in stride(from: 150,
                through: 350,
                by: 1) {
    
    //see the x values for reference
    x
    
    //set the colours
    let currentColor = Color.init(hue: 240, saturation: 100, brightness: x, alpha: 100)
    canvas.lineColor = currentColor
    
    //change line width
    canvas.defaultLineWidth = 100
    
    //draw the lines
    canvas.drawLine(from: Point(x: x, y: 350), to: Point(x: x, y: 350))
}
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
