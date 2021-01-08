//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 300
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

// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawAxes(withScale: true, by: 50)
canvas.drawRectangle(at: Point(x: 50, y: 75), width: 100, height: 200)

canvas.drawShapesWithBorders = true
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 150, y: 415), width: 150, height: 140)

canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 125, y: 425), width: 25, height: 25)

canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 125, y: 420), width: 10, height: 10)

canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 175, y: 425), width: 25, height: 25)

canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 175, y: 420), width: 10, height: 10)

canvas.drawCurve(from: Point(x: 145, y: 400), to: Point(x: 155, y: 400), control1: Point(x: 147, y: 405), control2: Point(x: 152, y: 405))

canvas.drawLine(from: Point(x: 150, y: 403), to: Point(x: 150, y: 390))

canvas.drawLine(from: Point(x: 145, y: 385), to: Point(x: 150, y: 390))

canvas.drawLine(from: Point(x: 150, y: 390), to: Point(x: 155, y: 385))

canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 85, y: 465), width: 40, height: 45)

canvas.drawEllipse(at: Point(x: 215, y: 465), width: 40, height: 45)


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
