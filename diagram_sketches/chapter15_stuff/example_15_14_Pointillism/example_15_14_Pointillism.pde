// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-14: "Pointillism"

PImage img;
float pointillize = 16*3.84;

void setup() {
  size(768, 768);
  img = loadImage("sunflower768.jpg");
  background(255);
}

void mousePressed() {
  save("15fig15_" + frameCount + ".png");
}


void draw() {

  for (int i = 0; i < 10; i++) {
    // Pick a random point
    int x = int(random(img.width));
    int y = int(random(img.height));
    int loc = x + y*img.width;

    // Look up the RGB color in the source image
    loadPixels();
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
    noStroke();

    // Back to shapes! Instead of setting a pixel, we use the color 
    // from a pixel to draw a circle.
    fill(r, g, b, 100);
    ellipse(x, y, pointillize, pointillize);
  }
}