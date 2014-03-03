// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-5: Using Example 13-5, draw a spiral path. Start in the center and move 
// outward. Note that this can be done by changing only one line of code and adding one line 
// of code!           

// A Polar coordinate, radius now starts at 0 to spiral outwards
float r = 0;
float theta = 0;

void setup() {
  size(200,200);
  background(255);
  smooth();
}

void draw() {
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  // Adjust for center of window
  ellipse(x+width/2, y+height/2, 16, 16); 

  // Increment the angle
  theta += 0.01;
  // Increment the radius
  r += 0.05;
}
