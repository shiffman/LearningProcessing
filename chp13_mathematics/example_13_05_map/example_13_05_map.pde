// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-4: Using map()

void setup() {
  size(480, 240);
}

void draw() {

  float r = map(mouseX, 0, width, 0, 255);
  float b = map(mouseY, 0, height, 255, 0);
  background(r, 0, b);
}
