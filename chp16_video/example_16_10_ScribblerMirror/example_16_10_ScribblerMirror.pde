// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-10: The scribbler mirror

import processing.video.*;

// Two global variables
float x;
float y;

// Variable to hold onto Capture object
Capture video;

void setup() {
  size(320, 240);
  background(255);

  // Start x and y in the center
  x = width/2;
  y = height/2;

  // Start the capture process
  // If the window were larger (say 800 x 600), we might want to introduce a videoScale variable so that we do not have to capture such a large image.
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();

  // Pick a new x and y
  float newx = constrain(x + random(-20, 20), 0, width-1);
  float newy = constrain(y + random(-20, 20), 0, height-1);

  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);

  // Pick the color from the video, reversing x
  color c = video.pixels[(width-1-midx) + midy*video.width];

  // Draw a line from x,y to the newx,newy
  stroke(c);
  strokeWeight(4);
  line(x, y, newx, newy);

  // Save newx, newy in x,y
  x = newx;
  y = newy;
}

