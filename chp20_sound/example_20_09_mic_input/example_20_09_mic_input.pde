// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-5: Live Input with Sonia

import processing.sound.*;

AudioIn input;
Amplitude analyzer;

void setup() {
  size(200, 200);

  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
}

void draw() {
  background(255);

  // Get the overall volume (between 0 and 1.0)
  float vol = analyzer.analyze();
  fill(127);
  stroke(0);

  // Draw an ellipse with size based on volume
  ellipse(width/2, height/2, 10+vol*200, 10+vol*200);
}