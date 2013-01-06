// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-1: Catcher

Catcher catcher;

void setup() {
  size(400,400);
  catcher = new Catcher(32);
  smooth();
}

void draw() {
  background(255);
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
}

