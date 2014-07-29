// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-7: Sound events (double threshold) with Sonia

// Import the Sonia library
import processing.sound.*;

AudioIn input;
Amplitude rms;

float clapLevel = 0.5;  // How loud is a clap
float threshold = 0.25; // How quiet is silence
boolean clapping = false;

void setup() {
  size(200, 200);
  background(255);
  

  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.play();

  // create a new Amplitude analyzer
  rms = new Amplitude(this);

  // Patch the input to an volume analyzer
  rms.input(input);  
  
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float vol = rms.analyze();

  // If the volume is greater than 0.5, and we were not previously clapping, then we are clapping! 
  if (vol > clapLevel && !clapping) { 
    stroke(0);
    fill(0, 100);
    rect(random(width), random(height), vol*20, vol*20);
    clapping = true; // We are now clapping!
  } else if (clapping && vol < threshold) { 
    // Otherwise, if we were just clapping and the volume level has gone down below 0.25, then we are no longer clapping!
    clapping = false;
  }

  // Graph the overall volume
  // First draw a background strip
  noStroke();
  fill(200);
  rect(0, 0, 20, height);

  // Then draw a rectangle size according to volume
  fill(100);
  rect(0, height-vol*height/2, 20, vol*height/2);

  // Draw lines at the threshold levels
  stroke(0);
  line(0, height-clapLevel*height/2, 19, height-clapLevel*height/2 );
  line(0, height-threshold*height/2, 19, height-threshold*height/2 );
}
