// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 4-6: Ellipse with variables

// Declare and initialize your variables!
float r = 100;
float g = 150;
float b = 200;
float a = 200;
  
float diam = 20;
float x = 100;
float y = 100;
  
void setup() {
  size(480, 240);
  background(255);
}

void draw() {
  // Use those variables to draw an ellipse
  stroke(0);
  fill(r,g,b,a);  // (Remember, the fourth argument for a color is transparency.
  ellipse(x,y,diam,diam);  
}


