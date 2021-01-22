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

// Drawing a horse head

//axes and scale
canvas.drawAxes(withScale: true, by: 50)

//drawing the black outline
canvas.fillColor = Color.init(hue: 10, saturation: 10, brightness: 15, alpha: 100)

var verticesOfShape1: [Point] = []
verticesOfShape1.append(Point(x: 0, y: 85))
verticesOfShape1.append(Point(x: 165, y: 225))
verticesOfShape1.append(Point(x: 215, y: 225))
verticesOfShape1.append(Point(x: 235, y: 210))
verticesOfShape1.append(Point(x: 265, y: 205))
verticesOfShape1.append(Point(x: 365, y: 155))
verticesOfShape1.append(Point(x: 375, y: 130))
verticesOfShape1.append(Point(x: 420, y: 135))
verticesOfShape1.append(Point(x: 450, y: 150))
verticesOfShape1.append(Point(x: 475, y: 200))
verticesOfShape1.append(Point(x: 300, y: 425))
verticesOfShape1.append(Point(x: 325, y: 500))
verticesOfShape1.append(Point(x: 225, y: 435))
verticesOfShape1.append(Point(x: 165, y: 430))
verticesOfShape1.append(Point(x: 0, y: 380))
verticesOfShape1.append(Point(x: 0, y: 600))
verticesOfShape1.append(Point(x: 600, y: 600))
verticesOfShape1.append(Point(x: 600, y: 0))
verticesOfShape1.append(Point(x: 0, y: 0))
verticesOfShape1.append(Point(x: 0, y: 85))
canvas.drawCustomShape(with: verticesOfShape1)
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
