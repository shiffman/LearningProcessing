// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

SinOsc osc;

Env envelope;

int[] scale = { 
  60, 62, 64, 65, 67, 69, 71, 72
}; 


int note = 0;
void setup() {
  size(200, 200);
  osc = new SinOsc(this);
  envelope = new Env(this);
}

void draw() {
  background(255);
  PVector v = new PVector();
    
  if (frameCount % 60 == 0) {
    osc.play(translateMIDI(scale[note]), 1);
    envelope.play(osc, 0.01, 0.5, 1, 0.5);
    note = (note + 1) % scale.length;
  }
}

float translateMIDI(int note) {
  return pow(2, ((note-69)/12.0))*440;
}
