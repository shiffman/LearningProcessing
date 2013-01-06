// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-3: Multiple frames into one PDF

import processing.pdf.*;

float x = 0;
float y = 0;

void setup() {
  size(400, 400);
  smooth();
  beginRecord(PDF, "scribbler.pdf" );
  
  // background() should be in setup(). 
  // If background() is placed in draw() the PDF would accumulate a lot of graphics elements only to erase them over and over again.
  background(255); 
}

void draw() {
  // Pick a new x and y
  float newx = constrain(x + random( - 20,20),0,width);
  float newy = constrain(y + random( - 20,20),0,height);
  // Draw a line from x,y to the newx,newy
  stroke(frameCount%255,frameCount*3%255,frameCount*11%255,100);
  strokeWeight(4);
  line(x,y,newx,newy);
  // Save newx, newy in x,y
  x = newx;
  y = newy;
}

// When the mouse is pressed, we finish the PDF
void mousePressed() {
  // In this example, the user chooses when to finish rendering the PDF by clicking the mouse.
  endRecord(); 
  // We can also tell Processing to open the PDF
  open(sketchPath( "scribbler.pdf" ));
  noLoop();
}
