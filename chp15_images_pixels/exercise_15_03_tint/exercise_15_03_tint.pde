// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-3: Display an image using tint(). Use the 
// mouse location to control the amount of red, green, 
// and blue tint. Also try using the distance of the 
// mouse from the corners or center.


// Declaring a variable of type PImage, a class available to us from the Processing core library.
PImage img; 

void setup() {
  size(320, 240);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("mysummervacation.jpg");
}

void draw() {
  background(0);

  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, height, 0, 255);

  float d = dist(mouseX, mouseY, width/2, height/2);
  float b = map(d, 0, width/2, 0, 255);

  tint(r, g, b);

  image(img, 0, 0);
}
