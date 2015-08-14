// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-1: Simple Sound Playback

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

Amplitude analyzer;


void setup() {
  size(480, 240);
  song = new SoundFile(this, "beat.mp3");
  song.loop();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(song);
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