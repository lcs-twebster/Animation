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


//background
//iterate over the y values to draw horizontal lines
for value in stride(from: 0,
                    through: 600,
                    by: 1) {
    // see the y values for reference
    value
    
    //set the hue
let hue = map(value: Double(value),
              fromLower: 0,
              fromUpper: 600,
              toLower: 120,
              toUpper: 240)
    
    //set the brightness
let brightness = map(value: Double(value),
                     fromLower: 0,
                     fromUpper: 600,
                     toLower: 70,
                     toUpper: 80)

    //set the colour
let color = Color(hue: Int(hue), saturation: 100, brightness: Int(brightness), alpha: 80)
    
    // set the line colour
    canvas.lineColor = color
    
    //draw the lines
    canvas.drawLine(from: Point(x: 0, y: value), to: Point(x: 600, y: value))
}

//left top wing
//iterate over the x values to draw vertical lines
for x in stride(from: 100,
                through: 250,
                by: 1) {
    
    //see the x values for reference
    x
    
    //set the colours
    let currentColor = Color.init(hue: 240, saturation: 100, brightness: x, alpha: 100)
    canvas.lineColor = currentColor
    
    //change line width
    canvas.defaultLineWidth = 80
    
    //draw the lines
    canvas.drawLine(from: Point(x: x, y: 350), to: Point(x: x, y: 350))
}

//right top wing
//iterate over the x values to draw vertical lines
for x in stride(from: 350,
                through: 500,
                by: 1) {
    
    //see the x values for reference
    x
    
    //set the colours
    let currentColor = Color.init(hue: 240, saturation: 100, brightness: x, alpha: 100)
    canvas.lineColor = currentColor
    
    //change line width
    canvas.defaultLineWidth = 80
    
    //draw the lines
    canvas.drawLine(from: Point(x: x, y: 350), to: Point(x: x, y: 350))
}

//right bottom wing
//iterate over the x values to draw vertical lines
for x in stride(from: 350,
                through: 500,
                by: 1) {
    
    //see the x values for reference
    x
    
    //set the colours
    let currentColor = Color.init(hue: 240, saturation: 100, brightness: x, alpha: 100)
    canvas.lineColor = currentColor
    
    //change line width
    canvas.defaultLineWidth = 40
    
    //draw the lines
    canvas.drawLine(from: Point(x: x, y: 260), to: Point(x: x, y: 260))
}

//left bottom wing
//iterate over the x values to draw vertical lines
for x in stride(from: 100,
                through: 250,
                by: 1) {
    
    //see the x values for reference
    x
    
    //set the colours
    let currentColor = Color.init(hue: 240, saturation: 100, brightness: x, alpha: 100)
    canvas.lineColor = currentColor
    
    //change line width
    canvas.defaultLineWidth = 40
    
    //draw the lines
    canvas.drawLine(from: Point(x: x, y: 260), to: Point(x: x, y: 260))
}

//body
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 300, y: 250), width: 50, height: 450)

//eyes
canvas.drawEllipse(at: Point(x: 285, y: 435), width: 25, height: 25)
canvas.drawEllipse(at: Point(x: 315, y: 435), width: 25, height: 25)
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
