// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

FFT fft;
int bands = 256;

void setup() {
  size(256, 200);
  // Create a new sample object.
  song = new SoundFile(this, "beat.mp3");

  // Loop the sound forever
  // (well, at least until stop() is called)
  song.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this);
  fft.input(song, bands);
}
import processing.pdf.*;
boolean record;
void mousePressed() {
  record = true;
}
void draw() {


  float[] spectrum = new float[bands];
  fft.analyze(spectrum);
  //if (spectrum[50] > 0.2) {
    beginRecord(PDF, "pdf"+frameCount+".pdf");
  //}  

  background(255);

  for (int i = 0; i < bands; i++) {
    stroke(0);
    // The FFT range is between 0 and 1, we map it to pixels
    float y = map(spectrum[i], 0, 1, height * 0.75, -400);
    line(i, height * 0.75, i, y);
  }

  //if (record) {
    endRecord();
    record = false;
  //}
}