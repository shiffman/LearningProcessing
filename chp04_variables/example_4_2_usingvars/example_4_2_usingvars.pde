// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 4-2: Using variables

// Declare and initialize two integer variables at the top of the code.
int circleX = 100;
int circleY = 100;

void setup() {
  size(640,360);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  // Use the variables to specify the location of an ellipse.
  ellipse(circleX,circleY,50,50);
}

