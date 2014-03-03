// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 16-2: Recreate Example 15-14 (pointillism) to work with live video.

import processing.video.*;

Capture video;
int pointillize = 16;

void setup() {
  size(320,240);
  background(0);
  video = new Capture(this,width,height,30);
  smooth();
}

void draw() {
  
  if (video.available()) {
    video.read();
  }
  
  // Pick a random point
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y*video.width;
  // Look up the RGB color in the source image
  video.loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);
  noStroke();
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize); // Back to shapes! Instead of setting a pixel, we use the color from a pixel to draw a circle.

}
