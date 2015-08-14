// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-5: Polar to Cartesian

// Polar coordinates (r, theta) are converted to Cartesian (x,y) 
// for use in the ellipse() function.
float r = 160; 
float theta = 0;

void setup() {
  size(480, 270);
  background(255);
}

void draw() {

  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  ellipse(x + width/2, y + height/2, 16, 16); // Adjust for center of window

  // Increment the angle
  theta += 0.01;
}

