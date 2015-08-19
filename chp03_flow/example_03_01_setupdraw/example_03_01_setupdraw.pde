// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-1: Zoog as dynamic sketch

// setup() runs first one time.  
// size() should always be first line of setup

void setup() {
  // Set the size of the window
  size(480, 270);
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
  rect(240, 145, 20, 100);

  // Head
  fill(255);
  ellipse(240, 115, 60, 60); 

  // Eyes
  fill(0); 
  ellipse(221, 115, 16, 32); 
  ellipse(259, 115, 16, 32);

  // Legs
  stroke(0);
  line(230, 195, 220, 205);
  line(250, 195, 260, 205);
}