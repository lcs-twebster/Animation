//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
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

// Pearl Jam Poster

// Axes + Scale
canvas.drawAxes(withScale: true, by: 50)

//Draw the black background
canvas.drawRectangle(at: Point(x: 0, y: 200), width: 400, height: 400)

//draw the white background
canvas.fillColor = Color.white
//canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 200)

//Draw the "Pearl" text
canvas.textColor = Color.red
canvas.drawText(message: "PEARL", at: Point(x: 25, y: 110), size: 70, kerning: 2)

//Draw the "Jam" text
canvas.drawText(message: "JAM", at: Point(x: 220, y: 40), size: 70, kerning: 2)

//draw the top eye white curve
canvas.lineColor = Color.white
canvas.defaultLineWidth = 5
canvas.drawCurve(from: Point(x: 50, y: 400), to: Point(x: 350, y: 400), control1: Point(x: 200, y: 485), control2: Point(x: 200, y: 485))

//draw bottom eye white curve
canvas.drawCurve(from: Point(x: 50, y: 400), to: Point(x: 350, y: 400), control1: Point(x: 200, y: 315), control2: Point(x: 200, y: 315))

//Fill in the eye white
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 200, height: 100)
canvas.drawEllipse(at: Point(x: 100, y: 400), width: 70, height: 45)
canvas.drawEllipse(at: Point(x: 65, y: 400), width: 20, height: 20)
















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
