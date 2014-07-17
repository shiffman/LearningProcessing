// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-1: A growing rectangle, or a rectangle moving toward you?

float r = 8;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);

  // Display a rectangle in the middle of the screen
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(width/2, height/2, r, r);

  // Increase the rectangle size
  r++ ;

  // Start rectangle over
  if (r > width) {
    r = 0;
  }
}

