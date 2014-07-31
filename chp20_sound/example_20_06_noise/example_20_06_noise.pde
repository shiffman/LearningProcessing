// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

WhiteNoise noise;

void setup() {
  size(200, 200);
  noise = new WhiteNoise(this);
  noise.play();
}

void draw() {
  background(255);
  
  float vol = map(mouseX, 0, width, 0, 1);
  noise.amp(vol);
  ellipse(mouseX, 100, 32, 32);
}
