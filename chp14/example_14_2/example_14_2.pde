// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-2: Multiple translations

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  // Grab mouse coordinates, constrained to window
  int mx = constrain(mouseX,0,width);
  int my = constrain(mouseY,0,height);
  
  // Translate to the mouse location
  translate(mx,my);
  ellipse(0,0,8,8);
  
  // Translate 100 pixels to the right
  translate(100,0);
  ellipse(0,0,8,8);
  
  // Translate 100 pixels down
  translate(0,100);
  ellipse(0,0,8,8);
  
  // Translate 100 pixels left
  translate(-100,0);
  ellipse(0,0,8,8);
}
