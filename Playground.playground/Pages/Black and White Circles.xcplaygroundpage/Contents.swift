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

// Making the funky circle design

//axes + scale
canvas.drawAxes(withScale: true, by: 50)


// draw the background bottom left
for value in stride(from: 0,
                    through: 300,
                    by: 1) {
    value
//set hue
    let hue = map(value: Double(value),
                  fromLower: 0,
                  fromUpper: 300,
                  toLower: 0,
                  toUpper: 50)
//set brightness
    let brightness = map(value: Double(value),
                         fromLower: 0,
                         fromUpper: 300,
                         toLower: 75,
                         toUpper: 85)
//set colour
    let color = Color(hue: Int(hue), saturation: 100, brightness: Int(brightness), alpha: 100)
    
//set line colour
    canvas.lineColor = color
    
//draw he lines
    canvas.drawLine(from: Point(x: 0, y: value), to: Point(x: 300, y: value))
}




//drawing the background bottom right
for value in stride(from: 0,
                    through: 300,
                    by: 1) {
    value
//set hue
    let hue = map(value: Double(value),
                  fromLower: 0,
                  fromUpper: 300,
                  toLower: 50,
                  toUpper: 100)
//set brightness
    let brightness = map(value: Double(value),
                         fromLower: 0,
                         fromUpper: 300,
                         toLower: 75,
                         toUpper: 85)
//set colour
    let color = Color(hue: Int(hue), saturation: 100, brightness: Int(brightness), alpha: 100)
    
//set line colour
    canvas.lineColor = color
    
//draw he lines
    canvas.drawLine(from: Point(x: 300, y: value), to: Point(x: 600, y: value))
}




// background top right
for value in stride(from: 300,
                    through: 600,
                    by: 1) {
    value
//set hue
    let hue = map(value: Double(value),
                  fromLower: 300,
                  fromUpper: 600,
                  toLower: 150,
                  toUpper: 250)
//set brightness
    let brightness = map(value: Double(value),
                         fromLower: 300,
                         fromUpper: 600,
                         toLower: 75,
                         toUpper: 85)
//set colour
    let color = Color(hue: Int(hue), saturation: 100, brightness: Int(brightness), alpha: 100)
    
//set line colour
    canvas.lineColor = color
    
//draw he lines
    canvas.drawLine(from: Point(x: 300, y: value), to: Point(x: 600, y: value))
}




// top left background
for value in stride(from: 300,
                    through: 600,
                    by: 1) {
    value
//set hue
    let hue = map(value: Double(value),
                  fromLower: 300,
                  fromUpper: 600,
                  toLower: 300,
                  toUpper: 350)
//set brightness
    let brightness = map(value: Double(value),
                         fromLower: 300,
                         fromUpper: 600,
                         toLower: 75,
                         toUpper: 85)
//set colour
    let color = Color(hue: Int(hue), saturation: 100, brightness: Int(brightness), alpha: 100)
    
//set line colour
    canvas.lineColor = color
    
//draw he lines
    canvas.drawLine(from: Point(x: 0, y: value), to: Point(x: 300, y: value))
}



//Drawing funky circles
// loop y
for y in stride(from: 0,
                to: 600,
                by: 50) {
//loop x
for x in stride(from: 0,
                to: 600,
                by: 50) {
//draw black circle
    canvas.fillColor = Color.black
    canvas.drawEllipse(at: Point(x: x + 25, y: y + 25), width: 50, height: 50)
    
    // create random size
    let size = Int.random(in: 10...40)
//draw white circle
    canvas.fillColor = Color.white
    canvas.drawEllipse(at: Point(x: x + 25, y: y + 25), width: size, height: size)
    
}
}


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
