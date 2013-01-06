// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-3: Doorbell with Minim

import ddf.minim.*;

// A doorbell object (that will trigger the sound)
Doorbell doorbell;
Minim minim;

void setup() {
  size(200,200);
  // start up Minim
  minim = new Minim(this);
  
  // Create a new doorbell
  doorbell = new Doorbell(150,100,32, "dingdong.wav");
  smooth();
}

void draw() {
  background(100,100,126);
  
  // Show the doorbell
  doorbell.display(mouseX,mouseY);
  doorbell.jiggle();
}

void mousePressed() {
  
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX,mouseY)) {
    doorbell.ring();
  }
}

// Close the sound files
public void stop() {
  // The doorbell object must close its sound.
  doorbell.close(); 
  super.stop();
}
