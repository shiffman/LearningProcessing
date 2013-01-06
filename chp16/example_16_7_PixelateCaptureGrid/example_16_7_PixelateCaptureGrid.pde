
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-7: Video pixelation

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 8;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto Capture object
Capture video;

void setup() {
  size(640,480);
  
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  video = new Capture(this,width,height);
  video.start();
}

void draw() {
  // Read image from the camera
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      
      // Where are we, pixel-wise?
      int x = i*videoScale;
      int y = j*videoScale;
      // Looking up the appropriate color in the pixel array
      color c = video.pixels[x + y*video.width];
      fill(c);
      stroke(0);
      rect(x,y,videoScale,videoScale);
    }
  }
}
