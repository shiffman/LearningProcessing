// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-7: Using Example 15-7, change the values of r, g, and b before displaying them.

/*
// Example 15-7: Displaying the pixels of an image

PImage img;

void setup() {
  size(200,200);
  img = loadImage( "sunflower.jpg" );
}

void draw() {
  loadPixels();
  // Since we are going to access the image's pixels too
  img.loadPixels(); // We must also call loadPixels() on the PImage since we are going to read its pixels.
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // Image Processing Algorithm would go here
      float r = red(img.pixels [loc]); // The functions red(), green(), and blue() pull out the three color components from a pixel.
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Image Processing would go here
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.

      // Set the display pixel to the image pixel
      pixels[loc] = color(r,g,b);
    }
  }
  updatePixels();
}
*/