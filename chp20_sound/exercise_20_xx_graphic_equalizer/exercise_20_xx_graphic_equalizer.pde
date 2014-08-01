// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

SoundFile song;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  size(512, 360);

  song = new SoundFile(this, "dragon.wav");
  song.loop();

  fft = new FFT(this);
  fft.input(song, bands);
}

void draw() {
  background(255);

  fft.analyze(spectrum);
  
  float w = width / spectrum.length;

  for (int i = 0; i < spectrum.length; i++) {
    stroke(0);
    float x = i * w;
    float h = 100;//map(spectrum[i], 0, 1, 0, height);
    rect(x, height * 0.75 - h, w, h);
  }
}
