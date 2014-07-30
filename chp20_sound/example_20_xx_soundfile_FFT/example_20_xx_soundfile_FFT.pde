// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

FFT fft;
int bands=512;
float[] spectrum = new float[bands];

void setup() {
  size(640, 360);

  // Create a new sample object.
  song = new SoundFile(this, "dragon.wav");

  // Loop the sound forever
  // (well, at least until stop() is called)
  song.loop();

  // Create and patch the rms tracker
  fft = new FFT(this);
  fft.input(song, bands);
}

void draw() {
  //if (tone.isPlaying()) {
  background(255);
  //} else {
  //background(100);
  //}
  // Set the rate to a range between 0.1 and 4
  // Changing the rate alters the pitch
  song.rate(map(mouseX, 0, width, 0, 2));

  // Draw some rectangles to show what is going on
  stroke(51);
  fill(51);
  ellipse(mouseX, height/2, 64, 64);

  fft.analyze(spectrum);

  for (int i = 0; i < bands; i++) {
    // The result of the FFT is normalized
    // draw the line for frequency band i scaling it up by 5 to get more amplitude.
    line( i, height, i, height - spectrum[i]*height*5 );
  }

}

// Pressing the mouse stops and starts the sound
void mousePressed() {
  //if (tone.isPlaying()) {
  song.stop(); //   The sound can be stopped with the function stop().
  //} else {
  //tone.loop();
  //}
}

void keyPressed() {
  song.loop();
}
