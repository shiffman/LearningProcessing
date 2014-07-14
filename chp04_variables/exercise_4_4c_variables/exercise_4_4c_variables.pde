// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Step 1: Write code that draws the following screenshots 
// with hard-coded values. (Feel free to use colors 
// instead of grayscale.)

// Step 2: Replace all of the hard-coded numbers with 
// variables.

// Step 3: Write assignment operations in draw() that 
// change the value of the variables.
// For example, “variable1 = variable1 + 2;”. 
// Try different expressions and see what happens!

void setup() {
  size(200,200); 
}

void draw() {
  background(255);
  stroke(0);
  rectMode(CENTER);
  fill(175);
  rect(100,100,175,175);
  fill(255);
  ellipse(100,100,75,75);
}
