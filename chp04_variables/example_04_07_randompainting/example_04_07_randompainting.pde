// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 4-7: Filling variables with random values

float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
  size(640,360);
  background(255);
}

void draw() {
  // Each time through draw(), new random numbers are picked for a new ellipse.
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  x = random(width);
  y = random(height);
  
  // Use values to draw an ellipse
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,diam,diam);
}



