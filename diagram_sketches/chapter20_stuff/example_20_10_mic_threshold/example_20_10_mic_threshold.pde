// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-6: Sound threshold with Sonia
import processing.sound.*;

AudioIn input;
Amplitude analyzer;

void setup() {
  size(200, 200);
  background(255);

  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.play();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();

  // If the volume is greater than 0.5 a rectangle is drawn at a random location in the window. 
  // The louder the volume, the larger the rectangle.
  float threshold = 0.1;
  if (volume > threshold) {
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), 20, 20);
  }

  // Graph the overall volume and show threshold
  float y = map(volume, 0, 1, height, 0);
  float ythreshold = map(threshold, 0, 1, height, 0);

  noStroke();
  fill(175);
  rect(0, 0, 20, height);
  // Then draw a rectangle size according to volume
  fill(0);
  rect(0, y, 20, y);
  stroke(0);
  line(0, ythreshold, 19, ythreshold);
}
