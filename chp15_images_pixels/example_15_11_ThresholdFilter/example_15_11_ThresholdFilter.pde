// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-11: Brightness threshold with filter

PImage img;

void setup() {
  size(200,200);
  img = loadImage("sunflower.jpg");
}

void draw() {
  // Draw the image
  image(img,0,0);
  // Filter the window with a threshold effect
  // 0.5 means threshold is 50% brightness
  filter(THRESHOLD,0.5);
}
