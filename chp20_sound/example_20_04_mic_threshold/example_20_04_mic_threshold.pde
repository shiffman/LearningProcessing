// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-6: Sound threshold with Sonia
import processing.sound.*;

AudioIn input;
Amplitude rms;

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

  // If the volume is greater than 0.5 a rectangle is drawn at a random location in the window. 
  // The louder the volume, the larger the rectangle.
  if (vol > 0.5) {
    stroke(0);
    fill(0, 100);
    rect(random(width), random(height), vol*20, vol*20);
  }

  // Graph the overall volume
  // First draw a background strip
  fill(175);
  rect(0, 0, 20, height);
  // Then draw a rectangle size according to volume
  fill(0);
  rect(0, height-vol*height/2, 20, vol*height/2);
}
