// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

SinOsc osc;

void setup() {
  size(200, 200);
  osc = new SinOsc(this);
  osc.play();
}

void draw() {
  background(255);
  
  float freq = map(mouseX, 0, width, 150, 880);
  osc.freq(freq);
  ellipse(mouseX, 100, 32, 32);
}