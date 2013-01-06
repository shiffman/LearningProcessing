// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-13: Simple motion detection

import processing.video.*;
// Variable for capture device
Capture video;
// Previous Frame
PImage prevFrame;
// How different must a pixel be to be a "motion" pixel
float threshold = 50;

void setup() {
  size(320,240);
  video = new Capture(this, width, height, 30);
  video.start();
  // Create an empty image the same size as the video
  prevFrame = createImage(video.width,video.height,RGB);
}

void draw() {
  
  // Capture video
  if (video.available()) {
    // Save previous frame for motion detection!!
    prevFrame.copy(video,0,0,video.width,video.height,0,0,video.width,video.height); // Before we read the new frame, we always save the previous frame for comparison!
    prevFrame.updatePixels();
    video.read();
  }
  
  loadPixels();
  video.loadPixels();
  prevFrame.loadPixels();
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      
      int loc = x + y*video.width;            // Step 1, what is the 1D pixel location
      color current = video.pixels[loc];      // Step 2, what is the current color
      color previous = prevFrame.pixels[loc]; // Step 3, what is the previous color
      
      // Step 4, compare colors (previous vs. current)
      float r1 = red(current); float g1 = green(current); float b1 = blue(current);
      float r2 = red(previous); float g2 = green(previous); float b2 = blue(previous);
      float diff = dist(r1,g1,b1,r2,g2,b2);
      
      // Step 5, How different are the colors?
      // If the color at that pixel has changed, then there is motion at that pixel.
      if (diff > threshold) { 
        // If motion, display black
        pixels[loc] = color(0);
      } else {
        // If not, display white
        pixels[loc] = color(255);
      }
    }
  }
  updatePixels();
}
