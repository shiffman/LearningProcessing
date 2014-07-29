// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

// Example 20-2: Doorbell with Sonia

// A sample object (for a sound)
SoundFile dingdong;

// A doorbell object (that will trigger the sound)
Doorbell doorbell;

void setup() {
  size(200, 200);

  // Create a new sample object.
  dingdong = new SoundFile(this, "dingdong.wav");

  // Create a new doorbell
  doorbell = new Doorbell(150, 100, 32);
}

void draw() {
  background(255);
  // Show the doorbell
  doorbell.display(mouseX, mouseY);
}

void mousePressed() {
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
