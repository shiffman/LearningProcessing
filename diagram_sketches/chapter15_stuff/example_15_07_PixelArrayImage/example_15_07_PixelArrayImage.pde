// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-7: Displaying the pixels of an image

PImage img;

void setup() {
  size(768, 768);
  img = loadImage("sunflower768.jpg");
}

void draw() {
  loadPixels();

  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      int loc = x + y*width;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      float r = red(img.pixels [loc]); 
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      // Image Processing would go here
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.

      // Set the display pixel to the image pixel
      pixels[loc] = color(r, g, b);
    }
  }

  updatePixels();
  
  noLoop();
  
  save("15fig09.png");
  
}