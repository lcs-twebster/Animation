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
for y in stride(from: 200, through: 600, by: 1){
    y
    
    //set brightness
    let brightness = map(value: Double(y), fromLower: 200, fromUpper: 600, toLower: 0, toUpper: 25)
    
    //set colour
    let color = Color.init(hue: 0, saturation: 0, brightness: Int(brightness), alpha: 100)
    canvas.lineColor = color
    
    //draw the lines
    canvas.defaultLineWidth = 15
    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
}

//draw the white background
canvas.fillColor = Color.white
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 200)



//drawing lightning bolt background pattern
//loop y
for y in stride(from: 0,
                through: 600, by:
                    100){
    y
//loop x
for x in stride(from: 0,
                through: 400,
                by: 75){
    x
    
//"if" statements for different reds (x)
    if x == 70 || x == 220 || x == 370{
        canvas.fillColor = Color.init(hue: 0, saturation: 100, brightness: 80, alpha: 100)
    } else { canvas.fillColor = Color.init(hue: 0, saturation: 100, brightness: 70, alpha: 100)}

//if statements for different reds (y)
    if y == 15 || y == 215 || y == 415{
        canvas.fillColor = Color.init(hue: 0, saturation: 100, brightness: 100, alpha: 100)
    } else {
        canvas.fillColor = Color.init(hue: 0, saturation: 80, brightness: 90, alpha: 50)
    }
    
    //draw the lightning bolt
var verticesOfShape1: [Point] = []
verticesOfShape1.append(Point(x: x + 70, y: y + 15))
verticesOfShape1.append(Point(x: x + 45, y: y + 40))
verticesOfShape1.append(Point(x: x + 65, y: y + 50))
verticesOfShape1.append(Point(x: x + 15, y: y + 85))
verticesOfShape1.append(Point(x: x + 35, y: y + 55))
verticesOfShape1.append(Point(x: x + 25, y: y + 45))
verticesOfShape1.append(Point(x: x + 70, y: y + 15))
canvas.drawCustomShape(with: verticesOfShape1)
    
}}













//Draw the "Pearl" text
canvas.textColor = Color.init(hue: 0, saturation: 100, brightness: 90, alpha: 100)
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
canvas.defaultLineWidth = 20
canvas.fillColor = Color.white
canvas.drawLine(from: Point(x: 100, y: 400), to: Point(x: 300, y: 400))
canvas.drawLine(from: Point(x: 110, y: 390), to: Point(x: 290, y: 390))
canvas.drawLine(from: Point(x: 120, y: 380), to: Point(x: 280, y: 380))
canvas.drawLine(from: Point(x: 140, y: 370), to: Point(x: 260, y: 370))
canvas.drawLine(from: Point(x: 150, y: 360), to: Point(x: 240, y: 360))
canvas.drawEllipse(at: Point(x: 200, y: 350), width: 100, height: 25)
canvas.drawLine(from: Point(x: 110, y: 410), to: Point(x: 290, y: 410))
canvas.drawLine(from: Point(x: 120, y: 420), to: Point(x: 280, y: 420))
canvas.drawLine(from: Point(x: 140, y: 430), to: Point(x: 260, y: 430))
canvas.drawLine(from: Point(x: 160, y: 440), to: Point(x: 240, y: 440))
canvas.drawEllipse(at: Point(x: 200, y: 450), width: 100, height: 25)
canvas.drawLine(from: Point(x: 75, y: 400), to: Point(x: 125, y: 430))
canvas.drawLine(from: Point(x: 75, y: 400), to: Point(x: 125, y: 370))
canvas.drawEllipse(at: Point(x: 70, y: 400), width: 30, height: 14)
canvas.drawEllipse(at: Point(x: 135, y: 435), width: 35, height: 20)
canvas.drawEllipse(at: Point(x: 145, y: 440), width: 22, height: 22)
canvas.drawEllipse(at: Point(x: 135, y: 365), width: 22, height: 22)
canvas.drawLine(from: Point(x: 240, y: 353), to: Point(x: 325, y: 395))
canvas.drawLine(from: Point(x: 240, y: 445), to: Point(x: 325, y: 405))
canvas.drawEllipse(at: Point(x: 275, y: 400), width: 150, height: 30)

//draw outer eye circle
canvas.fillColor = Color.init(hue: 0, saturation: 75, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 125, height: 125)

//drawing middle eye circle
canvas.fillColor = Color.init(hue: 0, saturation: 100, brightness: 50, alpha: 100)
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 100, height: 100)

// drawing center eye circle
canvas.fillColor = Color.black
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 75, height: 75)













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
