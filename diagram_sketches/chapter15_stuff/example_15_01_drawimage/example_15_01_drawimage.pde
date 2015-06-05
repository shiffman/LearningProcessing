// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-1: "Hello World" images

// Declaring a variable of type PImage
// PImage is a class available from the Processing core library.
PImage img; 

void setup() {
  size(320, 240);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("runde_bird_cliffs.jpg");
}

void draw() {
  background(0);
  // The image() function displays the image at a location
  // in this case the point (0,0).
  image(img, 0, 0, width, height);
}