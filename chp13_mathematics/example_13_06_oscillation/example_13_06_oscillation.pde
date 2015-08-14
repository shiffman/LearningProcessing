// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-6: Oscillation

float theta = 0.0;

void setup() {
  size(480, 270);
}

void draw() {
  background(255);

  // The output of the sin() function oscillates smoothly between 1 and 1. 
  // By adding 1 we get values between 0 and 2. 
  // By multiplying by 100, we get values between 0 and 200 which can be used as the ellipse's x location.
  float x = (sin(theta) + 1) * width/2; 

  // With each cycle, increment theta
  theta += 0.05;

  // Draw the ellipse at the value produced by sine
  fill(0);
  stroke(0);
  line(width/2, 0, x, height/2);
  ellipse(x, height/2, 32, 32);
}

