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

// Exercise 4-4a: 

void setup() {
  size(200,200); 
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(50,50,50,50);
  ellipse(150,50,50,50);
  ellipse(50,150,50,50);
  ellipse(150,150,50,50);
}
