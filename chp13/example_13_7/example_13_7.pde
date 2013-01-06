// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-7: Wave

// Starting angle
float theta = 0.0;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);
  
  // Increment theta (try different values for " angular velocity " here)
  theta += 0.02;
  noStroke();
  fill(0);
  float x = theta;
  
   // A for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the window).
  for (int i = 0; i <= 20; i++) {
    // Calculate y value based off of sine function
    float y = sin(x)*height/2;
    // Draw an ellipse
    ellipse(i*10,y + height/2,16,16);
    // Move along x-axis
    x += 0.2;
  }
}
