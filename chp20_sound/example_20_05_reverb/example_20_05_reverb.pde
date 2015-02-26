// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

SoundFile song;
Reverb reverb;

void setup() {
  size(200, 200);

  // Load a sound file
  song = new SoundFile(this, "beat.mp3");
  song.loop();

  reverb = new Reverb(this);
  reverb.process(song);

}

void draw() {
  background(255);

  // Set the volume to a range between 0 and 1.0
  float room = map(mouseX, 0, width, 0, 1);
  reverb.room(room);

  // Draw some circles to show what is going on
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
}