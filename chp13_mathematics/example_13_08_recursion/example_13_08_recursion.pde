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

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    // drawCircle() calls itself twice, creating a branching effect. 
    // For every circle, a smaller circle is drawn to the left and right.
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
  }
}

