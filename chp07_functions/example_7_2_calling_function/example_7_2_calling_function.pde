// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 7-2: Calling a function

void setup() {
 size(100,100);
}

void draw() {
  background(255);
  drawBlackCircle();
}

void drawBlackCircle() {
  fill(0);
  ellipse(50,50,20,20);
}
