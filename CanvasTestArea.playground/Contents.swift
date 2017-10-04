/*:
 
 # playground
 
 *noun*: a place where people can play
 
 ##
 
 Use this playground to experiment with the Canvas class.
 
 Your goals are to:
 
 * learn something about order of statements (does order matter?)
 * get familiar with using a Playground
 
 Have fun!
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 500, height: 700)

// Draw a circle at the origin with radius of 50 pixels

// Show where the origin is

canvas.translate(byX: 300, byY: 0)
canvas.drawAxes()

// This code is necessary to see the result in the Assistant Editor at right
PlaygroundPage.current.liveView = canvas.imageView


canvas.fillColor = Color.black
//Ears (Right ear)

canvas.translate(byX: 90, byY: 310)
canvas.rotate(by: 45)
canvas.drawEllipse(centreX: 0, centreY: 0, width: 65, height:90, borderWidth: 3)

canvas.rotate(by: -45)
canvas.translate(byX: -90, byY: -310)

//Left ear
canvas.translate(byX: -140, byY: 310)
canvas.rotate(by: -45)
canvas.drawEllipse(centreX: 0, centreY: 0, width: 65, height:90, borderWidth: 3)
canvas.rotate(by: 45)
canvas.translate(byX: 140, byY: -310)


// White part that erases part of ear
canvas.borderColor = Color.white
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: -23, centreY: 260, width: 290, height: 160, borderWidth: 0)

// This is the eye of the panda (the black part)
canvas.translate(byX: -300, byY: 0)
canvas.drawAxes()
canvas.fillColor = Color.black
canvas.rotate(by: 25)
canvas.translate(byX: 300, byY: -150)
canvas.drawEllipse(centreX: 100, centreY: 200, width: 65, height:90, borderWidth: 3)


//The Mouth
canvas.fillColor = Color.white
canvas.borderColor = Color.black
canvas.drawEllipse(centreX: 27,centreY: 176, width: 30, height: 30, borderWidth: 8)

canvas.drawEllipse(centreX: -5,centreY: 190, width: 30, height: 30, borderWidth: 8)

//The White cover for the mouth
canvas.borderColor = .white
canvas.rotate(by: -25)
canvas.drawEllipse(centreX: -100,centreY: 180, width: 50, height: 30, borderWidth: 0)
canvas.drawEllipse(centreX: -32,centreY: 180, width: 50, height: 35, borderWidth: 0)
canvas.rotate(by: 25)


// This part is the black nose circle
canvas.borderColor = Color.black
canvas.fillColor = Color.black
canvas.translate(byX: -50, byY: 60)
canvas.rotate(by: -25)
canvas.drawEllipse(centreX: 3, centreY: 150, width: 30, height: 20)
canvas.translate(byX: -100, byY: 190)
canvas.drawAxes()
canvas.fillColor = Color.black
canvas.rotate(by: -25)

// This part is the eyes that is white
canvas.drawEllipse(centreX: 35, centreY: 15, width: 65, height:90, borderWidth: 3)
canvas.rotate(by: 25)
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 65, centreY: 20, width: 10, height: 10)
canvas.rotate(by: 0)
canvas.drawEllipse(centreX: 150, centreY: 20, width: 10, height: 10)


//AND FINALLY, The Cheeks
canvas.borderColor = .white
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 50)

canvas.drawEllipse(centreX: 16, centreY: -60, width: 50, height: 30, borderWidth: 0)
canvas.drawEllipse(centreX: 190, centreY: -58, width: 50, height: 30, borderWidth: 0)



