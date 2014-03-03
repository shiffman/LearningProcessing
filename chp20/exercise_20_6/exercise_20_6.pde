// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 20-6: Trigger the event from Example 20-7 after a sequence of two claps. Here is some code to get you started that assumes the existence of a variable named "clapCount" .

/*
if (vol > c lapLevel && !clapping) {
  clapCount___;
  if (_______________) {
    _______________;
    _______________;
    _______________;
  }
  ________________;
} else if (clapping && vol < 0.5) {
  clapping = false;
}


// Example 20-7: Sound events (double threshold) with Sonia

// Import the Sonia library
import pitaru.sonia_v2_9.*;
float clapLevel = 0.5; // How loud is a clap
float threshold = 0.25; // How quiet is silence
boolean clapping = false;

void setup() {
  size(200,200);
  Sonia.start(this); // Start Sonia engine.
  LiveInput.start(); // Start listening to the microphone
  smooth();
  background(255);
}

void draw() {
  // Get the overall volume (between 0 and 2.0)
  float vol = LiveInput.getLevel();
  // If the volume is greater than 0.5 and
  // we are not clapping, draw a rectangle
  if (vol > clapLevel && !clapping) { // If the volume is greater than 1.0, and we were not previously clapping, then we are clapping!
    stroke(0);
    fill(0,100);
    rect(random(width),random(height),vol*20,vol*20);
    clapping = true; // We are now clapping!
    // If we are finished clapping
  } else if (clapping && vol < threshold) { // Otherwise, if we were just clapping and the volume level has gone down below 0.25, then we are no longer clapping!
    clapping = false;
  }
  // Graph the overall volume
  // First draw a background strip
  noStroke();
  fill(200);
  rect(0,0,20,height);
  // Then draw a rectangle size according to volume
  fill(100);
  rect(0,height-vol*height/2,20,vol*height/2);
  // Draw lines at the threshold levels
  stroke(0);
  line(0,height-clapLevel*height/2,19,height-clapLevel*height/2 );
  line(0,height-threshold*height/2,19,height-threshold*height/2 );
}

// Close the sound engine
public void stop() {
  Sonia.stop();
  super.stop();
}
*/