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

//cloud #2
canvas.drawEllipse(at: Point(x: 505, y: 565), width: 100, height: 60)

canvas.drawEllipse(at: Point(x: 545, y: 530), width: 100, height: 65)

canvas.drawEllipse(at: Point(x: 480, y: 525), width: 85, height: 55)

//cloud #3
canvas.drawEllipse(at: Point(x: 225, y: 500), width: 75, height: 50)

canvas.drawEllipse(at: Point(x: 260, y: 465), width: 80, height: 40)

canvas.drawEllipse(at: Point(x: 200, y: 460), width: 75, height: 55)

canvas.drawEllipse(at: Point(x: 265, y: 485), width: 25, height: 25)

canvas.drawEllipse(at: Point(x: 235, y: 450), width: 35, height: 30)

// tree right of sun (shape 2)
canvas.fillColor = Color.black

var verticesOfShape2: [Point] = []
verticesOfShape2.append(Point(x: 450, y: 375))
verticesOfShape2.append(Point(x: 485, y: 325))
verticesOfShape2.append(Point(x: 465, y: 325))
verticesOfShape2.append(Point(x: 500, y: 275))
verticesOfShape2.append(Point(x: 465, y: 275))
verticesOfShape2.append(Point(x: 520, y: 225))
verticesOfShape2.append(Point(x: 465, y: 225))
verticesOfShape2.append(Point(x: 550, y: 175))
verticesOfShape2.append(Point(x: 550, y: 125))
verticesOfShape2.append(Point(x: 380, y: 125))
verticesOfShape2.append(Point(x: 380, y: 225))
verticesOfShape2.append(Point(x: 435, y: 275))
verticesOfShape2.append(Point(x: 400, y: 275))
verticesOfShape2.append(Point(x: 435, y: 325))
verticesOfShape2.append(Point(x: 415, y: 325))
verticesOfShape2.append(Point(x: 450, y: 375))
canvas.drawCustomShape(with: verticesOfShape2)

//tree left of sun (shape 3)
var verticesOfShape3: [Point] = []
verticesOfShape3.append(Point(x: 250, y: 250))
verticesOfShape3.append(Point(x: 300, y: 200))
verticesOfShape3.append(Point(x: 275, y: 200))
verticesOfShape3.append(Point(x: 300, y: 150))
verticesOfShape3.append(Point(x: 200, y: 150))
verticesOfShape3.append(Point(x: 225, y: 200))
verticesOfShape3.append(Point(x: 200, y: 200))
verticesOfShape3.append(Point(x: 250, y: 250))
canvas.drawCustomShape(with: verticesOfShape3)

//sun
canvas.fillColor = Color.orange
canvas.drawEllipse(at: Point(x: 375, y: 150), width: 200, height: 200)

//landscape and trees
canvas.fillColor = Color.black

var verticiesOfShape1: [Point] = []
verticiesOfShape1.append(Point(x: 0, y: 0))
verticiesOfShape1.append(Point(x: 0, y: 150))
//left tree
verticiesOfShape1.append(Point(x: 20, y: 175))
verticiesOfShape1.append(Point(x: 10, y: 175))
verticiesOfShape1.append(Point(x: 20, y: 200))
verticiesOfShape1.append(Point(x: 15, y: 200))
verticiesOfShape1.append(Point(x: 25, y: 225))
verticiesOfShape1.append(Point(x: 35, y: 200))
verticiesOfShape1.append(Point(x: 30, y: 200))
verticiesOfShape1.append(Point(x: 40, y: 175))
verticiesOfShape1.append(Point(x: 30, y: 175))
verticiesOfShape1.append(Point(x: 50, y: 150))
//middle tree
verticiesOfShape1.append(Point(x: 125, y: 200))
verticiesOfShape1.append(Point(x: 75, y: 200))
verticiesOfShape1.append(Point(x: 125, y: 250))
verticiesOfShape1.append(Point(x: 85, y: 250))
verticiesOfShape1.append(Point(x: 125, y: 300))
verticiesOfShape1.append(Point(x: 100, y: 300))
verticiesOfShape1.append(Point(x: 150, y: 350))
verticiesOfShape1.append(Point(x: 200, y: 300))
verticiesOfShape1.append(Point(x: 175, y: 300))
verticiesOfShape1.append(Point(x: 215, y: 250))
verticiesOfShape1.append(Point(x: 175, y: 250))
verticiesOfShape1.append(Point(x: 225, y: 200))
verticiesOfShape1.append(Point(x: 175, y: 200))
verticiesOfShape1.append(Point(x: 250, y: 150))
//right tree
verticiesOfShape1.append(Point(x: 500, y: 150))
verticiesOfShape1.append(Point(x: 540, y: 200))
verticiesOfShape1.append(Point(x: 515, y: 200))
verticiesOfShape1.append(Point(x: 540, y: 250))
verticiesOfShape1.append(Point(x: 535, y: 250))
verticiesOfShape1.append(Point(x: 550, y: 300))
verticiesOfShape1.append(Point(x: 565, y: 250))
verticiesOfShape1.append(Point(x: 560, y: 250))
verticiesOfShape1.append(Point(x: 585, y: 200))
verticiesOfShape1.append(Point(x: 560, y: 200))
verticiesOfShape1.append(Point(x: 600, y: 150))

verticiesOfShape1.append(Point(x: 600, y: 0))
verticiesOfShape1.append(Point(x: 0, y: 0))
canvas.drawCustomShape(with: verticiesOfShape1)

//random tree top (shape 4)
var verticesOfShape4: [Point] = []
verticesOfShape4.append(Point(x: 75, y: 185))
verticesOfShape4.append(Point(x: 90, y: 160))
verticesOfShape4.append(Point(x: 60, y: 160))
verticesOfShape4.append(Point(x: 75, y: 185))
canvas.drawCustomShape(with: verticesOfShape4)

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
