// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-1: Simple Sound Playback

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

void setup() {
  size(480, 270);
  song = new SoundFile(this, "beat.mp3");
  song.play();
}

void draw() {
  background(255);
  noLoop();
}

boolean playing = true;

void mousePressed() {
  //if (song.isPlaying()) {
  if (playing) {
    song.stop();
    playing = false;
  } else {
    song.play();
    playing = true;
  }
}