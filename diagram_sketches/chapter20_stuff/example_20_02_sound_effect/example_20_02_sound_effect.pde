// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

import processing.sound.*;

// Example 20-2: Doorbell with Sonia

// A sound file object
SoundFile dingdong;

// A doorbell object (that will trigger the sound)
Doorbell doorbell;

void setup() {
  size(200, 200);

  // Load the sound file
  dingdong = new SoundFile(this, "doorbell.mp3");

  // Create a new doorbell
  doorbell = new Doorbell(width/2, height/2, 64);
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