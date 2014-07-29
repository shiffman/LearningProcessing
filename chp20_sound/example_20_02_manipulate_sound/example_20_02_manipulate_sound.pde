// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

// A Sample object (for a sound)
SoundFile tone;

void setup() {
  size(200, 200);

  // Create a new sample object.
  tone = new SoundFile(this, "tone.wav");
  
  // Loop the sound forever
  // (well, at least until stop() is called)
  tone.loop();
}

void draw() {
  //if (tone.isPlaying()) {
    background(255);
  //} else {
    background(100);
  //}

  // Set the volume to a range between 0 and 1.0
  tone.amp(map(mouseX, 0, width, 0, 1));

  // Set the rate to a range between 0.1 and 4
  // Changing the rate alters the pitch
  tone.rate(map(mouseY, 0, height, 0.1, 4));

  // Draw some rectangles to show what is going on
  stroke(0);
  fill(175);
  rect(0, 160, mouseX, 20);
  stroke(0);
  fill(175);
  rect(160, 0, 20, mouseY);
}

// Pressing the mouse stops and starts the sound
void mousePressed() {
  //if (tone.isPlaying()) {
    tone.stop(); //   The sound can be stopped with the function stop().
  //} else {
    //tone.loop();
  //}
}

void keyPressed() {
  tone.loop(); 
}
