// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-8: Adjust the brightness of the red, green, and blue color components separately according to mouse interaction. For example, let mouseX control red, mouseY green, distance blue, and so on.

// Example 15-9: Adjusting image brightness based on pixel location

PImage img;

void setup() {
  size(200,200);
  img = loadImage( "sunflower.jpg" );
}

void draw() {
  loadPixels();
  // Since we are going to access the image's pixels too
  img.loadPixels(); // We must also call loadPixels() on the PImage since we are going to read its pixels.
  for (int x = 0; x < img.width; x++ ) {
    for (int y = 0; y < img.height; y++ ) {
      // Calculate the 1D pixel location
      int loc = x + y*img.width;
      // Get the R,G,B values from image
      float r = red (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      // Calculate an amount to change brightness
      // based on proximity to the mouse
      float distance = dist(x,y,mouseX,mouseY);
      // The closer the pixel is to the mouse, the lower the value of “distance” is. We want closer pixels to be brighter, however, so we invert the value with the formula: 
      // adjustBrightness = (50-distance)/50 
      // Pixels with a distance of 50 (or greater) have a brightness of 0.0 (or negative which is equivalent to 0 here) and pixels wit  h a distance of 0 have a brightness of 1.0.
      float adjustBrightness = (50-distance)/50;
      r *= adjustBrightness;
      g *= adjustBrightness;
      b *= adjustBrightness;
      // Constrain RGB to between 0-255
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
      // Make a new color and set pixel in the window
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();  
}