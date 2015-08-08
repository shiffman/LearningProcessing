import processing.pdf.*;

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

SoundFile song;

FFT fft;

void setup() {
  size(512, 360);

  song = new SoundFile(this, "beat.mp3");
  song.loop();

  fft = new FFT(this, 64);
  fft.input(song);
}

void draw() {

  fft.analyze();

  float w = width / (fft.size()/2);
  

  beginRecord(PDF,"lp/lp-figure-####.pdf");
  background(255);
  for (int i = 0; i < fft.size()/2; i++) {
    stroke(0);
    float x = i * w;
    float h = map(fft.spectrum[i], 0, 1, 0, height * 25);
    fill(i*20 % 255);
    rect(x, height - h - 2, w-2, h);
  }
  endRecord();
}