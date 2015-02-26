// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);

  // Create a new sample object.
  song = new SoundFile(this, "beat.mp3");

  // Loop the sound forever
  // (well, at least until stop() is called)
  song.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this);
  fft.input(song, bands);
}

void draw() {
  background(255);

  fft.analyze(spectrum);

  for (int i = 0; i < spectrum.length; i++) {
    stroke(0);
    // The FFT range is between 0 and 1, we map it to pixels
    float y = map(spectrum[i], 0, 1, height * 0.75, 0);
    line(i, height * 0.75, i, y);
  }
}