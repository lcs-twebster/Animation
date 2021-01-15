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

// T-Shirt Design


//Axis+scale
canvas.drawAxes(withScale: true, by: 50)

//adding borders
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.white
canvas.defaultBorderWidth = 5

//Setting Line colour
canvas.lineColor = Color.white





// back Right foot + leg (shape 1)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape1: [Point] = []

verticiesOfShape1.append(Point(x: 450, y: 0))
verticiesOfShape1.append(Point(x: 485, y: 250))
verticiesOfShape1.append(Point(x: 525, y: 125))
verticiesOfShape1.append(Point(x: 475, y: 25))
verticiesOfShape1.append(Point(x: 500, y: 0))
verticiesOfShape1.append(Point(x: 450, y: 0))
canvas.drawCustomShape(with: verticiesOfShape1)

canvas.drawLine(from: Point(x: 475, y: 175), to: Point(x: 500, y: 125))
canvas.drawLine(from: Point(x: 500, y: 125), to: Point(x: 475, y: 25))
canvas.drawLine(from: Point(x: 500, y: 125), to: Point(x: 463, y: 95))
canvas.drawLine(from: Point(x: 500, y: 125), to: Point(x: 518, y: 110))

// back Left foot + leg (shape 2)


var verticiesOfShape2: [Point] = []
verticiesOfShape2.append(Point(x: 375, y: 0))
verticiesOfShape2.append(Point(x: 340, y: 250))
verticiesOfShape2.append(Point(x: 300, y: 125))
verticiesOfShape2.append(Point(x: 350, y: 25))
verticiesOfShape2.append(Point(x: 325, y: 0))
verticiesOfShape2.append(Point(x: 375, y: 0))
canvas.drawCustomShape(with: verticiesOfShape2)

canvas.drawLine(from: Point(x: 350, y: 174), to: Point(x: 325, y: 125))
canvas.drawLine(from: Point(x: 325, y: 125), to: Point(x: 350, y: 25))
canvas.drawLine(from: Point(x: 325, y: 125), to: Point(x: 362, y: 95))
canvas.drawLine(from: Point(x: 325, y: 125), to: Point(x: 305, y: 110))

//Left front leg (shape 3)
canvas.fillColor = Color.init(hue: 100, saturation: 8, brightness: 45, alpha: 100)

var verticiesOfShape3: [Point] = []
verticiesOfShape3.append(Point(x: 375, y: 0))
verticiesOfShape3.append(Point(x: 330, y: 325))
verticiesOfShape3.append(Point(x: 400, y: 250))
verticiesOfShape3.append(Point(x: 400, y: 0))
verticiesOfShape3.append(Point(x: 375, y: 0))
canvas.drawCustomShape(with: verticiesOfShape3)

//right front leg (shape 4)
var verticiesOfShape4: [Point] = []
verticiesOfShape4.append(Point(x: 425, y: 0))
verticiesOfShape4.append(Point(x: 425, y: 250))
verticiesOfShape4.append(Point(x: 495, y: 325))
verticiesOfShape4.append(Point(x: 450, y: 0))
verticiesOfShape4.append(Point(x: 425, y: 0))
canvas.drawCustomShape(with: verticiesOfShape4)

//chest + head (shape 5)
canvas.fillColor = Color.init(hue: 100, saturation: 8, brightness: 45, alpha: 100)

var verticiesOfShape5: [Point] = []
verticiesOfShape5.append(Point(x: 495, y: 325))
verticiesOfShape5.append(Point(x: 450, y: 400))
verticiesOfShape5.append(Point(x: 500, y: 450))
verticiesOfShape5.append(Point(x: 485, y: 500))
verticiesOfShape5.append(Point(x: 450, y: 525))
verticiesOfShape5.append(Point(x: 412.5, y: 540))
verticiesOfShape5.append(Point(x: 375, y: 525))
verticiesOfShape5.append(Point(x: 340, y: 500))
verticiesOfShape5.append(Point(x: 325, y: 450))
verticiesOfShape5.append(Point(x: 375, y: 400))
verticiesOfShape5.append(Point(x: 330, y: 325))
verticiesOfShape5.append(Point(x: 400, y: 250))
verticiesOfShape5.append(Point(x: 412.5, y: 240))
verticiesOfShape5.append(Point(x: 425, y: 250))
verticiesOfShape5.append(Point(x: 495, y: 325))
canvas.drawCustomShape(with: verticiesOfShape5)

// inbetween front legs (shape 6)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape6: [Point] = []
verticiesOfShape6.append(Point(x: 400, y: 10))
verticiesOfShape6.append(Point(x: 425, y: 10))
verticiesOfShape6.append(Point(x: 425, y: 250))
verticiesOfShape6.append(Point(x: 412.5, y: 240))
verticiesOfShape6.append(Point(x: 400, y: 250))
verticiesOfShape6.append(Point(x: 400, y: 10))
canvas.drawCustomShape(with: verticiesOfShape6)

//left ear front (shape 7)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape7: [Point] = []
verticiesOfShape7.append(Point(x: 335, y: 485))
verticiesOfShape7.append(Point(x: 300, y: 600))
verticiesOfShape7.append(Point(x: 335, y: 570))
verticiesOfShape7.append(Point(x: 385, y: 528))
verticiesOfShape7.append(Point(x: 345, y: 500))
verticiesOfShape7.append(Point(x: 335, y: 485))
canvas.drawCustomShape(with: verticiesOfShape7)

//left ear back (shape 8)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 80, alpha: 100)

var verticiesOfShape8: [Point] = []
verticiesOfShape8.append(Point(x: 335, y: 570))
verticiesOfShape8.append(Point(x: 385, y: 528))
verticiesOfShape8.append(Point(x: 380, y: 522))
verticiesOfShape8.append(Point(x: 335, y: 570))
canvas.drawCustomShape(with: verticiesOfShape8)

//right ear front (shape 9)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape9: [Point] = []
verticiesOfShape9.append(Point(x: 490, y: 485))
verticiesOfShape9.append(Point(x: 525, y: 600))
verticiesOfShape9.append(Point(x: 490, y: 570))
verticiesOfShape9.append(Point(x: 440, y: 528))
verticiesOfShape9.append(Point(x: 480, y: 500))
verticiesOfShape9.append(Point(x: 490, y: 485))
canvas.drawCustomShape(with: verticiesOfShape9)

//right ear back (shape 10)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 80, alpha: 100)

var verticiesOfShape10: [Point] = []
verticiesOfShape10.append(Point(x: 490, y: 570))
verticiesOfShape10.append(Point(x: 440, y: 528))
verticiesOfShape10.append(Point(x: 445, y: 522))
verticiesOfShape10.append(Point(x: 490, y: 570))
canvas.drawCustomShape(with: verticiesOfShape10)

//front of chest (shape 11)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape11: [Point] = []
verticiesOfShape11.append(Point(x: 412.5, y: 240))
verticiesOfShape11.append(Point(x: 425, y: 250))
verticiesOfShape11.append(Point(x: 475, y: 325))
verticiesOfShape11.append(Point(x: 412.5, y: 300))
verticiesOfShape11.append(Point(x: 350, y: 325))
verticiesOfShape11.append(Point(x: 400, y: 250))
verticiesOfShape11.append(Point(x: 412.5, y: 240))
canvas.drawCustomShape(with: verticiesOfShape11)

canvas.drawLine(from: Point(x: 350, y: 325), to: Point(x: 375, y: 400), lineWidth: 1)
canvas.drawLine(from: Point(x: 475, y: 325), to: Point(x: 450, y: 400), lineWidth: 1)

//tail closest to body (shape 12)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 80, alpha: 100)

var verticiesOfShape12: [Point] = []
verticiesOfShape12.append(Point(x: 337, y: 50))
verticiesOfShape12.append(Point(x: 275, y: 75))
verticiesOfShape12.append(Point(x: 300, y: 325))
verticiesOfShape12.append(Point(x: 335, y: 225))
verticiesOfShape12.append(Point(x: 300, y: 125))
verticiesOfShape12.append(Point(x: 337, y: 50))
canvas.drawCustomShape(with: verticiesOfShape12)

//tail middle bottom (shape 13)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape13: [Point] = []
verticiesOfShape13.append(Point(x: 275, y: 75))
verticiesOfShape13.append(Point(x: 225, y: 275))
verticiesOfShape13.append(Point(x: 225, y: 350))
verticiesOfShape13.append(Point(x: 300, y: 325))
verticiesOfShape13.append(Point(x: 275, y: 75))
canvas.drawCustomShape(with: verticiesOfShape13)

//tail middle top left triangle (shape 14)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 80, alpha: 100)

var verticiesOfShape14: [Point] = []
verticiesOfShape14.append(Point(x: 175, y: 450))
verticiesOfShape14.append(Point(x: 275, y: 400))
verticiesOfShape14.append(Point(x: 225, y: 350))
verticiesOfShape14.append(Point(x: 175, y: 450))
canvas.drawCustomShape(with: verticiesOfShape14)

//tail middle top right triangle (shape 15)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 30, alpha: 100)

var verticiesOfShape15: [Point] = []
verticiesOfShape15.append(Point(x: 225, y: 350))
verticiesOfShape15.append(Point(x: 275, y: 400))
verticiesOfShape15.append(Point(x: 300, y: 325))
verticiesOfShape15.append(Point(x: 225, y: 350))
canvas.drawCustomShape(with: verticiesOfShape15)

//tail tip (shape 16)
canvas.fillColor = Color.black

var verticiesOfShape16: [Point] = []
verticiesOfShape16.append(Point(x: 225, y: 275))
verticiesOfShape16.append(Point(x: 225, y: 350))
verticiesOfShape16.append(Point(x: 175, y: 450))
verticiesOfShape16.append(Point(x: 50, y: 325))
verticiesOfShape16.append(Point(x: 225, y: 275))
canvas.drawCustomShape(with: verticiesOfShape16)

//left eye (shape 17)
canvas.fillColor = Color.white

var verticiesOfShape17: [Point] = []
verticiesOfShape17.append(Point(x: 374, y: 463))
verticiesOfShape17.append(Point(x: 383, y: 475))
verticiesOfShape17.append(Point(x: 363, y: 475))
verticiesOfShape17.append(Point(x: 374, y: 463))
canvas.drawCustomShape(with: verticiesOfShape17)

//right eye (shape 18)
var verticiesOfShape18: [Point] = []
verticiesOfShape18.append(Point(x: 452, y: 463))
verticiesOfShape18.append(Point(x: 463, y: 475))
verticiesOfShape18.append(Point(x: 443, y: 475))
verticiesOfShape18.append(Point(x: 452, y: 463))
canvas.drawCustomShape(with: verticiesOfShape18)

//muzzle (shape 19)
canvas.fillColor = Color.init(hue: 100, saturation: 10, brightness: 60, alpha: 100)

var verticiesOfShape19: [Point] = []
verticiesOfShape19.append(Point(x: 425, y: 460))
verticiesOfShape19.append(Point(x: 437, y: 437))
verticiesOfShape19.append(Point(x: 440, y: 420))
verticiesOfShape19.append(Point(x: 426, y: 405))
verticiesOfShape19.append(Point(x: 412.5, y: 390))
verticiesOfShape19.append(Point(x: 399, y: 405))
verticiesOfShape19.append(Point(x: 385, y: 420))
verticiesOfShape19.append(Point(x: 388, y: 437))
verticiesOfShape19.append(Point(x: 400, y: 460))
verticiesOfShape19.append(Point(x: 425, y: 460))
canvas.drawCustomShape(with: verticiesOfShape19)

canvas.drawLine(from: Point(x: 426, y: 405), to: Point(x: 437, y: 437))
canvas.drawLine(from: Point(x: 399, y: 405), to: Point(x: 388, y: 437))

//nose (shape 20)
canvas.fillColor = Color.white

var verticiesOfShape20: [Point] = []
verticiesOfShape20.append(Point(x: 426, y: 405))
verticiesOfShape20.append(Point(x: 412.5, y: 390))
verticiesOfShape20.append(Point(x: 399, y: 405))
verticiesOfShape20.append(Point(x: 405, y: 408))
verticiesOfShape20.append(Point(x: 420, y: 408))
verticiesOfShape20.append(Point(x: 426, y: 405))
canvas.drawCustomShape(with: verticiesOfShape20)






















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
