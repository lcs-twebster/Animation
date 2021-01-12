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

// Geometric Line Pattern

//Axis + scale
canvas.drawAxes(withScale: true, by: 50)

//Background color
canvas.fillColor = Color.init(hue: 100, saturation: 100, brightness: 0, alpha: 70)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

//Lines Bottom Right

//1
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 0, y: 0), to: Point(x: 600, y: 50))

//2
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 50, y: 0), to: Point(x: 600, y: 100))

//3
canvas.lineColor = Color.init(hue: 170, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(from: Point(x: 100, y: 0), to: Point(x: 600, y: 150))

//4
canvas.lineColor = Color.init(hue: 280, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 150, y: 0), to: Point(x: 600, y: 200))

//5
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 45, alpha: 100)
canvas.drawLine(from: Point(x: 200, y: 0), to: Point(x: 600, y: 250))

//6
canvas.lineColor = Color.red
canvas.drawLine(from: Point(x: 250, y: 0), to: Point(x: 600, y: 300))

//7
canvas.lineColor = Color.init(hue: 220, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 300, y: 0), to: Point(x: 600, y: 350))

//8
canvas.lineColor = Color.init(hue: 359, saturation: 45, brightness: 75, alpha: 100)
canvas.drawLine(from: Point(x: 350, y: 0), to: Point(x: 600, y: 400))

//9
canvas.lineColor = Color.init(hue: 140, saturation: 50, brightness: 30, alpha: 100)
canvas.drawLine(from: Point(x: 400, y: 0), to: Point(x: 600, y: 450))

//10
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 90, alpha: 100)
canvas.drawLine(from: Point(x: 450, y: 0), to: Point(x: 600, y: 500))

//11
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 500, y: 0), to: Point(x: 600, y: 550))

//12
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 550, y: 0), to: Point(x: 600, y: 600))

//Lines Top Left

//1
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 600, y: 600), to: Point(x: 0, y: 550))

//2
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 550, y: 600), to: Point(x: 0, y: 500))

//3
canvas.lineColor = Color.init(hue: 170, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(from: Point(x: 500, y: 600), to: Point(x: 0, y: 450))

//4
canvas.lineColor = Color.init(hue: 280, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 450, y: 600), to: Point(x: 0, y: 400))

//5
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 45, alpha: 100)
canvas.drawLine(from: Point(x: 400, y: 600), to: Point(x: 0, y: 350))

//6
canvas.lineColor = Color.red
canvas.drawLine(from: Point(x: 350, y: 600), to: Point(x: 0, y: 300))

//7
canvas.lineColor = Color.init(hue: 220, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 300, y: 600), to: Point(x: 0, y: 250))

//8
canvas.lineColor = Color.init(hue: 359, saturation: 45, brightness: 75, alpha: 100)
canvas.drawLine(from: Point(x: 250, y: 600), to: Point(x: 0, y: 200))

//9
canvas.lineColor = Color.init(hue: 140, saturation: 50, brightness: 30, alpha: 100)
canvas.drawLine(from: Point(x: 200, y: 600), to: Point(x: 0, y: 150))

//10
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 90, alpha: 100)
canvas.drawLine(from: Point(x: 150, y: 600), to: Point(x: 0, y: 100))

//11
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 100, y: 600), to: Point(x: 0, y: 50))

//12
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 50, y: 600), to: Point(x: 0, y: 0))

//Lines Bottom Left

//1
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 0, y: 600), to: Point(x: 50, y: 0))

//2
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 0, y: 550), to: Point(x: 100, y: 0))

//3
canvas.lineColor = Color.init(hue: 170, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 500), to: Point(x: 150, y: 0))

//4
canvas.lineColor = Color.init(hue: 280, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 450), to: Point(x: 200, y: 0))

//5
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 45, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 400), to: Point(x: 250, y: 0))

//6
canvas.lineColor = Color.red
canvas.drawLine(from: Point(x: 0, y: 350), to: Point(x: 300, y: 0))

//7
canvas.lineColor = Color.init(hue: 220, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 300), to: Point(x: 350, y: 0))

//8
canvas.lineColor = Color.init(hue: 359, saturation: 45, brightness: 75, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 250), to: Point(x: 400, y: 0))

//9
canvas.lineColor = Color.init(hue: 140, saturation: 50, brightness: 30, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 200), to: Point(x: 450, y: 0))

//10
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 90, alpha: 100)
canvas.drawLine(from: Point(x: 0, y: 150), to: Point(x: 500, y: 0))

//11
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 0, y: 100), to: Point(x: 550, y: 0))

//12
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 0, y: 50), to: Point(x: 600, y: 0))

//Lines Top Right

//1
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 600, y: 0), to: Point(x: 550, y: 600))

//2
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 600, y: 50), to: Point(x: 500, y: 600))

//3
canvas.lineColor = Color.init(hue: 170, saturation: 100, brightness: 100, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 100), to: Point(x: 450, y: 600))

//4
canvas.lineColor = Color.init(hue: 280, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 150), to: Point(x: 400, y: 600))

//5
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 45, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 200), to: Point(x: 350, y: 600))

//6
canvas.lineColor = Color.red
canvas.drawLine(from: Point(x: 600, y: 250), to: Point(x: 300, y: 600))

//7
canvas.lineColor = Color.init(hue: 220, saturation: 100, brightness: 50, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 300), to: Point(x: 250, y: 600))

//8
canvas.lineColor = Color.init(hue: 359, saturation: 45, brightness: 75, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 350), to: Point(x: 200, y: 600))

//9
canvas.lineColor = Color.init(hue: 140, saturation: 50, brightness: 30, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 400), to: Point(x: 150, y: 600))

//10
canvas.lineColor = Color.init(hue: 240, saturation: 100, brightness: 90, alpha: 100)
canvas.drawLine(from: Point(x: 600, y: 450), to: Point(x: 100, y: 600))

//11
canvas.lineColor = Color.yellow
canvas.drawLine(from: Point(x: 600, y: 500), to: Point(x: 50, y: 600))

//12
canvas.lineColor = Color.green
canvas.drawLine(from: Point(x: 600, y: 550), to: Point(x: 0, y: 600))
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
