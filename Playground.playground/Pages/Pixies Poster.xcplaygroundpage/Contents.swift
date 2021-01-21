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

// Pixies Poster

//Axes + scale
canvas.drawAxes(withScale: true, by: 50)

//green backround
canvas.fillColor = Color.init(hue: 106,
                              saturation: 64,
                              brightness: 73,
                              alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// black background
canvas.fillColor = Color.black

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

//drawing green circles

//loop y
for y in stride(from: 0,
                through: 400,
                by: 40) {
    y
    
//loop x
    for x in stride(from: 0,
                    through: 400,
                    by: 40){
        x
    
    
    //set colour
    canvas.fillColor = Color.init(hue: 106,
                                  saturation: 64,
                                  brightness: 73,
                                  alpha: 100)
    
// draw the circles
    canvas.drawEllipse(at: Point(x: x, y: y), width: 30, height: 30)
    
    }}



//draw the PIXIES text
canvas.textColor = Color.black
canvas.drawText(message: "pixies", at: Point(x: 20, y: 420), size: 60, kerning: 3)



//with throwing muses big dipper text
canvas.textColor = Color.init(hue: 81,
                              saturation: 5,
                              brightness: 88,
                              alpha: 100)

canvas.drawText(message: "with", at: Point(x: 270, y: 455), size: 15, kerning: 0)

canvas.drawText(message: "throwing muses", at: Point(x: 270, y: 440), size: 15, kerning: 0)

canvas.drawText(message: "big dipper", at: Point(x: 270, y: 425), size: 15, kerning: 0)



//saturday december 13 1986 9pm over 21 text
canvas.textColor = Color.black

canvas.drawText(message: "saturday", at: Point(x: 20, y: 555), size: 10, kerning: 0)

canvas.drawText(message: "decmbeer 13 1986", at: Point(x: 20, y: 535), size: 10, kerning: 0)

canvas.drawText(message: "9pm over 21", at: Point(x: 20, y: 515), size: 10, kerning: 0)



//at the rat 528 commonwealth boston, mass. text
canvas.drawText(message: "at the rat", at: Point(x: 270, y: 555), size: 10, kerning: 0)

canvas.drawText(message: "528 commonwealth", at: Point(x: 270, y: 535), size: 10, kerning: 0)

canvas.drawText(message: "boston, mass.", at: Point(x: 270, y: 515), size: 10, kerning: 0)


//white circles column 1
canvas.fillColor = Color.init(hue: 81, saturation: 5, brightness: 88, alpha: 100)
//loop y
for y in stride(from: 40,
                through: 360,
                by: 40){
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 40, y: y), width: 30, height: 30)
}


//white circles column 2
//loop y
for y in stride(from: 40,
                through: 320,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 80, y: y), width: 30, height: 30)
}

//white circles column 3
//loop y
for y in stride(from: 40,
                through: 280,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 120, y: y), width: 30, height: 30)
}

//white circles column 4
//loop y
for y in stride(from: 40,
                through: 240,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 160, y: y), width: 30, height: 30)
}

//white circles column 4
//loop y
for y in stride(from: 40,
                through: 200,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 200, y: y), width: 30, height: 30)
}

//white circles column 5
//loop y
for y in stride(from: 40,
                through: 160,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 240, y: y), width: 30, height: 30)
}

//white circles column 6
//loop y
for y in stride(from: 40,
                through: 120,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 280, y: y), width: 30, height: 30)
}

//white circles column 7
//loop y
for y in stride(from: 40,
                through: 80,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 320, y: y), width: 30, height: 30)
}

// white circles column 8
//loop y
for y in stride(from: 40,
                through: 40,
                by: 40) {
    y
    //draw the circles
    canvas.drawEllipse(at: Point(x: 360, y: y), width: 30, height: 30)
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
