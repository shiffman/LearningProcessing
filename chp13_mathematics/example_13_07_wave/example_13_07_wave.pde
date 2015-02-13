// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-7: Wave

// Starting angle
float theta = 0.0;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  // Increment theta (try different values for "angular velocity " here)
  theta += 0.02;
  noStroke();
  fill(0);
  float angle = theta;

  // A for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the window).
  for (int x = 0; x <= width; x += 10) {
    // Calculate y value based off of sine function
    float y = map(sin(angle), -1, 1, 0, height);
    // Draw an ellipse
    ellipse(x, y, 16, 16);
    // Increment angle
    angle += 0.1;
  }
}
