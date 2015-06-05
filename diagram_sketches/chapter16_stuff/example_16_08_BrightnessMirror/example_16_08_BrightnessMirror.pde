// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-8: Brightness mirror

// Each pixel from the video source is drawn as a
// rectangle with size based on brightness.

import processing.video.*;
import processing.pdf.*;

// Size of each cell in the grid
int videoScale = 10;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;
boolean record;
void mousePressed() {
  record = true;
}
void setup() {
  size(640, 480);
  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  // Construct the Capture object
  video = new Capture(this, cols, rows);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}


void draw() {
  if (record) {
    beginRecord(PDF, "16fig06_pixelated.pdf");
  }  background(0);
  video.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Where are we, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;

      // Reversing x to mirror the image
      // In order to mirror the image, the column is reversed with the following formula:
      // mirrored column = width - column - 1
      int loc = (video.width - i - 1) + j*video.width;

      // Each rect is colored white with a size determined by brightness
      color c = video.pixels[loc];

      // A rectangle size is calculated as a function of the pixel's brightness. 
      // A bright pixel is a large rectangle, and a dark pixel is a small one.
      float sz = (brightness(c)/255)*videoScale; 
      rectMode(CENTER);
      fill(255);
      noStroke();
      rect(x + videoScale/2, y + videoScale/2, sz, sz);
    }
  }
  if (record) {
    endRecord();
    record = false;
  }}