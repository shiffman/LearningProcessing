// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-8: Brightness mirror

// Each pixel from the video source is drawn as a
// rectangle with size based on brightness.

import processing.video.*;

// Size of each cell in the grid
int videoScale = 20;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;

void setup() {
  size(640,480);
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  smooth();
  // Construct the Capture object
  video = new Capture(this,width,height);
  video.start();
}

void draw() {
  if (video.available()) {
    video.read();
  }
  background(0);

  video.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Where are we, pixel-wise?
      int x = i*videoScale;
      int y = j*videoScale;

      // Reversing x to mirror the image
      // In order to mirror the image, the column is reversed with the following formula:
      // mirrored column = width - column - 1
      int loc = (video.width - x - 1) + y*video.width;

      // Each rect is colored white with a size determined by brightness
      color c = video.pixels[loc];

      // A rectangle size is calculated as a function of the pixel's brightness. 
      // A bright pixel is a large rectangle, and a dark pixel is a small one.
      float sz = (brightness(c)/255.0)*videoScale; 
      rectMode(CENTER);
      fill(255);
      noStroke();
      rect(x + videoScale/2,y + videoScale/2,sz,sz);

    }
  }
}
