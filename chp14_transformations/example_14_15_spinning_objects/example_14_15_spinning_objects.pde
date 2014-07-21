// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-15: Rotating many things using objects

// An array of Rotater objects
Rotater[] rotaters;

void setup() {
  size(640, 360);

  rotaters = new Rotater[20];

  // Rotaters are made randomly
  for (int i = 0; i < rotaters.length; i++ ) {
    rotaters[i] = new Rotater(random(width), random(height), random(-0.1, 0.1), random(48));
  }
}

void draw() {
  background(255);

  // All Rotaters spin and are displayed
  for (int i = 0; i < rotaters.length; i++ ) {
    rotaters[i].spin();
    rotaters[i].display();
  }
}

