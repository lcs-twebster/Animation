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

//Right foot + leg

var verticiesOfSomeShape: [Point] = []

verticiesOfSomeShape.append(Point(x: 450, y: 0))
verticiesOfSomeShape.append(Point(x: 485, y: 250))
verticiesOfSomeShape.append(Point(x: 525, y: 125))
verticiesOfSomeShape.append(Point(x: 475, y: 25))
verticiesOfSomeShape.append(Point(x: 500, y: 0))
verticiesOfSomeShape.append(Point(x: 450, y: 0))
canvas.drawCustomShape(with: verticiesOfSomeShape)

//Left foot + leg

verticiesOfSomeShape.append(Point(x: 375, y: 0))
verticiesOfSomeShape.append(Point(x: 340, y: 250))
verticiesOfSomeShape.append(Point(x: 300, y: 125))
verticiesOfSomeShape.append(Point(x: 350, y: 25))
verticiesOfSomeShape.append(Point(x: 325, y: 0))
verticiesOfSomeShape.append(Point(x: 375, y: 0))
canvas.drawCustomShape(with: verticiesOfSomeShape)

//Left front leg

verticiesOfSomeShape.append(Point(x: 375, y: 0))
verticiesOfSomeShape.append(Point(x: 330, y: 325))
verticiesOfSomeShape.append(Point(x: 400, y: 250))
verticiesOfSomeShape.append(Point(x: 400, y: 0))
verticiesOfSomeShape.append(Point(x: 375, y: 0))
canvas.drawCustomShape(with: verticiesOfSomeShape)

//right front leg

verticiesOfSomeShape.append(Point(x: 425, y: 0))
verticiesOfSomeShape.append(Point(x: 425, y: 250))
verticiesOfSomeShape.append(Point(x: 495, y: 325))
verticiesOfSomeShape.append(Point(x: 450, y: 0))
verticiesOfSomeShape.append(Point(x: 425, y: 0))
canvas.drawCustomShape(with: verticiesOfSomeShape)

//chest + head

verticiesOfSomeShape.append(Point(x: 495, y: 325))
verticiesOfSomeShape.append(Point(x: 450, y: 400))
verticiesOfSomeShape.append(Point(x: 500, y: 450))
verticiesOfSomeShape.append(Point(x: 485, y: 500))
verticiesOfSomeShape.append(Point(x: 450, y: 525))
verticiesOfSomeShape.append(Point(x: 412.5, y: 540))
verticiesOfSomeShape.append(Point(x: 375, y: 525))
verticiesOfSomeShape.append(Point(x: 340, y: 500))
verticiesOfSomeShape.append(Point(x: 325, y: 450))
verticiesOfSomeShape.append(Point(x: 375, y: 400))
verticiesOfSomeShape.append(Point(x: 330, y: 325))
verticiesOfSomeShape.append(Point(x: 400, y: 250))
verticiesOfSomeShape.append(Point(x: 412.5, y: 240))
verticiesOfSomeShape.append(Point(x: 425, y: 250))
verticiesOfSomeShape.append(Point(x: 495, y: 325))
canvas.drawCustomShape(with: verticiesOfSomeShape)

// inbetween front legs

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
