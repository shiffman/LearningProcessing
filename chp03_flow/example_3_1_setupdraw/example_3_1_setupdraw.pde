// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-1: Zoog as dynamic sketch

// setup() runs first one time.  
// size() should always be first line of setup

void setup() {
  // Set the size of the window
  size(640, 360);
}

// draw() loops continuously until you close the sketch window.
void draw() {
  // Draw a white background
  background(255);   

  // Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 

  // Body
  stroke(0);
  fill(150);
  rect(320, 190, 20, 100);

  // Head
  fill(255);
  ellipse(320, 160, 60, 60); 

  // Eyes
  fill(0); 
  ellipse(301, 160, 16, 32); 
  ellipse(339, 160, 16, 32);

  // Legs
  stroke(0);
  line(310, 240, 300, 250);
  line(330, 240, 340, 250);
}

