// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 20-5: Rewrite Example 20-5 with left and right volume levels mapped to different circles.

/*
// Example 20-5: Live Input with Sonia

// Import the Sonia library
import pitaru.sonia_v2_9.*;

void setup() {
  size(200,200);
  Sonia.start(this);
  // Start listening to the microphone
  LiveInput.start(); // All functions for sound input are static, meaning they are called from the class name itself, LiveInput, rather than an object instance.
  smooth();
}

void draw() {
  background(255,120,0);
  // Get the overall volume (between 0 and 1.0)
  float level = LiveInput.getLevel();
  fill(200);
  stroke(50);
  // Draw an ellipse with size based on volume
  ellipse(width/2,height/2,level*200,level*200); // The variable that stores the volume (“level”) is used as the size of an ellipse.
}

// Close the sound engine
public void stop() {
  Sonia.stop();
  super.stop();
}
*/