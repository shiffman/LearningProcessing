// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-6: Sound threshold with Sonia

// Import the Sonia library
import pitaru.sonia_v2_9.*;

void setup() {
  size(200,200);
  Sonia.start(this); // Start Sonia engine.
  LiveInput.start(); // Start listening to the microphone
  smooth();
  background(255);
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float vol = LiveInput.getLevel();

  // If the volume is greater than 0.5 a rectangle is drawn at a random location in the window. 
  // The louder the volume, the larger the rectangle.
  if (vol > 0.5) {
    stroke(0);
    fill(0,100);
    rect(random(width),random(height),vol*20,vol*20);
  }

  // Graph the overall volume
  // First draw a background strip
  fill(175);
  rect(0,0,20,height);
  // Then draw a rectangle size according to volume
  fill(0);
  rect(0,height-vol*height/2,20,vol*height/2); 
}

// Close the sound engine
public void stop() {
  Sonia.stop();
  super.stop();
}
