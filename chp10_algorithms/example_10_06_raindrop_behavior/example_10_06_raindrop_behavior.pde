// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-6: Simple raindrop behavior

// Variables for drop location
float x, y; 

void setup() {
  size(480, 240);
  background(0);
  x = width/2;
  y = 0;
}

void draw() {
  background(255);
  // Display the drop
  fill(50, 100, 150);
  noStroke();
  ellipse(x, y, 16, 16);
  // Move the drop
  y++ ;
}

