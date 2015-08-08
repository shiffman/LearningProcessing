// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-5: Live Input with Sonia

import processing.sound.*;

AudioIn input;
FFT fft;
int bands=512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);

  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  // will be input.start();
  input.play();

  // Create and patch the rms tracker
  fft = new FFT(this);
  fft.input(input, bands);
}

void draw() {
  background(255);

  fft.analyze(spectrum);

  for (int i = 0; i < spectrum.length; i++) {
    stroke(0);
    // The result of the FFT is normalized to a range between 0 and 1
    float y = map(spectrum[i], 0, 1, height * 0.75, 0);
    line(i, height * 0.75, i, y);
  }
}
