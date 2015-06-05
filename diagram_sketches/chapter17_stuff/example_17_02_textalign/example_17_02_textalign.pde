// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.pdf.*;

PFont f;  

void setup() {
  size(400, 200);

  // Step 3: Create Font
  f = createFont("Georgia", 16);
} 

void draw() {
  beginRecord(PDF, "17fig03_textalign.pdf"); 
  background(255);
  stroke(175);
  line(width/2, 0, width/2, height);
  textFont(f);
  fill(0);

  // textAlign() sets the alignment for displaying text. It takes one argument: CENTER, LEFT, or RIGHT.
  textAlign(CENTER);
  text("This text is centered.", width/2, 60);
  textAlign(LEFT);
  text("This text is left aligned.", width/2, 100);
  textAlign(RIGHT);
  text("This text is right aligned.", width/2, 140);
  endRecord();
  noLoop();
}