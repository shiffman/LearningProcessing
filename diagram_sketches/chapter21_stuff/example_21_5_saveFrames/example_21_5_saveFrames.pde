// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-5: Making a QuickTime movie

// The MovieMaker class is part of Processing's video library.

void setup() {
  size(320, 240);
  background(255);
}

void draw() {
  stroke(0);
  strokeWeight(4);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  saveFrame("render/drawing####.png");
  
}


