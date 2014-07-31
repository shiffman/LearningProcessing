// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

SinOsc osc;

float freq = 261.63;

float[] scale = {
  1, 1.125, 1.25, 1.33, 1.5, 1.67, 1.875, 2
};
int note = 0;
void setup() {
  size(200, 200);
  osc = new SinOsc(this);
  osc.play();
  osc.freq(freq);
}

void draw() {
  background(255);
  
  
  if (frameCount % 30 == 0) {
    note = (note + 1) % scale.length;
    osc.freq(freq*scale[note]);
  }
}
