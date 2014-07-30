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
  size(200, 200);

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

  for (int i = 0; i < bands; i++) {
    // The result of the FFT is normalized
    // draw the line for frequency band i scaling it up by 5 to get more amplitude.
    line( i, height, i, height - spectrum[i]*height*5 );
  }
}
