// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-8: Recursion

void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  drawCircle(width/2, height/2, 300);
}

void drawCircle(float x, float y, float diameter) {
  ellipse(x, y, diameter, diameter);
  if (diameter > 2) {
    // drawCircle() calls itself twice, creating a branching effect. 
    // For every circle, a smaller circle is drawn to the left and right.
    drawCircle(x + diameter/2, y, diameter/2);
    drawCircle(x - diameter/2, y, diameter/2);
  }
}

