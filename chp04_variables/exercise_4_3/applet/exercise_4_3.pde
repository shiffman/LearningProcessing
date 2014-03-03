// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 4-3: Change Example 4-3 so that instead of the circle moving from left to right, the circle grows in size. 
// What would you change to have the circle follow the mouse as it grows? How could you vary the speed at which the circle grows?

int circleSize = 0;
int circleX = 100;
int circleY = 100;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  // Use the variables to specify the location of an ellipse.
  ellipse(circleX,circleY,circleSize,circleSize);
  
  // An assignment operation that increments the value of circleSize by 1.
  circleSize = circleSize + 1;

}
