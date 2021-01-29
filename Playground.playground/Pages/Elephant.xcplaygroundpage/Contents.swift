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

// Drawing an Elephant

//axes and scale
canvas.drawAxes(withScale: true, by: 50)

//grass
canvas.fillColor = Color.init(hue: 130, saturation: 80, brightness: 80, alpha: 90)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 600, height: 325)

//sky
canvas.fillColor = Color.init(hue: 200, saturation: 100, brightness: 100, alpha: 90)
canvas.drawRectangle(at: Point(x: 0, y: 325), width: 600, height: 275)

//body
canvas.fillColor = Color.init(hue: 0, saturation: 0, brightness: 40, alpha: 100)
canvas.drawEllipse(at: Point(x: 400, y: 250), width: 300, height: 300)

//head
canvas.drawEllipse(at: Point(x: 225, y: 325), width: 175, height: 200)

//front foot
canvas.drawRoundedRectangle(at: Point(x: 300, y: 90), width: 50, height: 100)

//back foot
canvas.drawRoundedRectangle(at: Point(x: 475, y: 90), width: 50, height: 100)

//front toes
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 304, y: 95), width: 8, height: 10)
canvas.drawEllipse(at: Point(x: 310, y: 95), width: 8, height: 10)

//back toes
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 479, y: 95), width: 8, height: 10)
canvas.drawEllipse(at: Point(x: 485, y: 95), width: 8, height: 10)

//eye
canvas.drawEllipse(at: Point(x: 200, y: 350), width: 20, height: 25)
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 196, y: 352), width: 9, height: 9)
canvas.drawEllipse(at: Point(x: 201, y: 348), width: 4, height: 4)

//ear
canvas.defaultLineWidth = 10
canvas.lineColor = Color.init(hue: 0, saturation: 0, brightness: 50, alpha: 100)
canvas.drawCurve(from: Point(x: 250, y: 375), to: Point(x: 250, y: 275), control1: Point(x: 300, y: 350), control2: Point(x: 275, y: 300))

//trunk
canvas.defaultLineWidth = 20
canvas.drawCurve(from: Point(x: 135, y: 325), to: Point(x: 150, y: 175), control1: Point(x: 100, y: 300), control2: Point(x: 100, y: 200))

//mouth
canvas.lineColor = Color.black
canvas.defaultLineWidth = 2
canvas.drawCurve(from: Point(x: 167, y: 250), to: Point(x: 192, y: 260), control1: Point(x: 172, y: 245), control2: Point(x: 182, y: 245))

//tail

canvas.drawCurve(from: Point(x: 525, y: 275), to: Point(x: 560, y: 200), control1: Point(x: 570, y: 210), control2: Point(x: 500, y: 265))
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
