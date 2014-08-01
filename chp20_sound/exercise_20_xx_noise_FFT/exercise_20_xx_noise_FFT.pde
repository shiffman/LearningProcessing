// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

WhiteNoise noise;
FFT fft;
int bands=512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);

  noise = new WhiteNoise(this);
  noise.play();

  // Create and patch the rms tracker
  fft = new FFT(this);
  fft.input(noise, bands);
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
