//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 500
let preferredHeight = 650
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

// Drawing A Panda (class #2-4)

//adding borders
canvas.drawShapesWithBorders = true

//sky
canvas.fillColor = Color.init(hue: 170, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 295), width: 500, height: 650)

//grass
canvas.fillColor = Color.init(hue: 140, saturation: 100, brightness: 40, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 295)

//grid+scale
canvas.drawAxes(withScale: true, by: 50)

//sun

canvas.fillColor = Color.yellow

canvas.drawEllipse(at: Point(x: 375, y: 525), width: 100, height: 100)

canvas.drawCurve(from: Point(x: 373, y: 475), to: Point(x: 377, y: 475), control1: Point(x: 375, y: 430), control2: Point(x: 375, y: 430))

canvas.drawCurve(from: Point(x: 325, y: 523), to: Point(x: 325, y: 527), control1: Point(x: 275, y: 525), control2: Point(x: 275, y: 525))

canvas.drawCurve(from: Point(x: 373, y: 575), to: Point(x: 377, y: 575), control1: Point(x: 375, y: 625), control2: Point(x: 375, y: 625))

canvas.drawCurve(from: Point(x: 425, y: 523), to: Point(x: 425, y: 527), control1: Point(x: 470, y: 525), control2: Point(x: 470, y: 525))

canvas.drawCurve(from: Point(x: 405, y: 565), to: Point(x: 410, y: 560), control1: Point(x: 450, y: 600), control2: Point(x: 450, y: 600))

canvas.drawCurve(from: Point(x: 405, y: 485), to: Point(x: 410, y: 488), control1: Point(x: 450, y: 445), control2: Point(x: 450, y: 445))

canvas.drawCurve(from: Point(x: 345, y: 485), to: Point(x: 340, y: 490), control1: Point(x: 300, y: 465), control2: Point(x: 300, y: 465))

canvas.drawCurve(from: Point(x: 335, y: 555), to: Point(x: 340, y: 560), control1: Point(x: 305, y: 600), control2: Point(x: 305, y: 600))


//Head
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 150, y: 415), width: 150, height: 140)

//Left eye black
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 125, y: 425), width: 25, height: 25)

//Left eye white
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 125, y: 420), width: 10, height: 10)

//Right eye black
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 175, y: 425), width: 25, height: 25)

//Right eye whight
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 175, y: 420), width: 10, height: 10)

//Top of nose
canvas.drawCurve(from: Point(x: 145, y: 400), to: Point(x: 155, y: 400), control1: Point(x: 147, y: 405), control2: Point(x: 152, y: 405))

//vertical line from nose
canvas.drawLine(from: Point(x: 150, y: 403), to: Point(x: 150, y: 390))

//left mouth
canvas.drawLine(from: Point(x: 145, y: 385), to: Point(x: 150, y: 390))

//right mouth
canvas.drawLine(from: Point(x: 150, y: 390), to: Point(x: 155, y: 385))

//left ear
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 85, y: 465), width: 40, height: 45)

//right ear
canvas.drawEllipse(at: Point(x: 215, y: 465), width: 40, height: 45)

//body
canvas.drawEllipse(at: Point(x: 150, y: 280), width: 125, height: 130)

//white tummy
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 150, y: 280), width: 50, height: 80)

//left arm
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 95, y: 310), width: 50, height: 50)

//right arm
canvas.drawEllipse(at: Point(x: 205, y: 310), width: 50, height: 50)

//left foot
canvas.drawEllipse(at: Point(x: 120, y: 220), width: 50, height: 50)

//right foot
canvas.drawEllipse(at: Point(x: 180, y: 220), width: 50, height: 50)

//left foot white
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 120, y: 205), width: 15, height: 10)

//left toes
canvas.drawEllipse(at: Point(x: 120, y: 215), width: 4, height: 4)

canvas.drawEllipse(at: Point(x: 125, y: 213), width: 4, height: 4)

canvas.drawEllipse(at: Point(x: 115, y: 213), width: 4, height: 4)

//right foot white
canvas.drawEllipse(at: Point(x: 180, y: 205), width: 15, height: 10)

//right toes
canvas.drawEllipse(at: Point(x: 180, y: 215), width: 4, height: 4)

canvas.drawEllipse(at: Point(x: 185, y: 213), width: 4, height: 4)

canvas.drawEllipse(at: Point(x: 175, y: 213), width: 4, height: 4)

//Bamboo Stick
canvas.fillColor = Color.green
canvas.drawRectangle(at: Point(x: 220, y: 245), width: 10, height: 35)

canvas.drawRectangle(at: Point(x: 220, y: 282), width: 10, height: 35)

canvas.drawRectangle(at: Point(x: 220, y: 319), width: 10, height: 35)

canvas.drawRectangle(at: Point(x: 220, y: 356), width: 10, height: 17)

canvas.drawRectangle(at: Point(x: 220, y: 225), width: 10, height: 17)

//baby panda

//body
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 360, y: 150), width: 125, height: 75)

//head
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 300, y: 200), width: 75, height: 75)

//ear
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 300, y: 235), width: 25, height: 30)

//eye
canvas.drawEllipse(at: Point(x: 280, y: 200), width: 15, height: 15)

//eye white
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 278, y: 199), width: 5, height: 6)

//mouth
canvas.drawCurve(from: Point(x: 272, y: 175), to: Point(x: 286, y: 179), control1: Point(x: 275, y: 173), control2: Point(x: 276, y: 174))

//feet
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 325, y: 115), width: 25, height: 35)

canvas.drawEllipse(at: Point(x: 400, y: 115), width: 25, height: 35)

//Tail
canvas.drawEllipse(at: Point(x: 418, y: 165), width: 25, height: 40)

//white tummy
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 362, y: 115), width: 45, height: 7)


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
