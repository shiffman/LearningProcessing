// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-5: Rectangle rotating around center

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  // Translate origin to center
  translate(width/2,height/2);
  
  // The greek letter, theta, is often used as the name of a variable to store an angle
  // The angle ranges from 0 to PI, based on the ratio of mouseX location to the sketch's width.
  float theta = PI*mouseX / width; 
  
  // Rotate by the angle theta
  rotate(theta);
  
  // Display rectangle with CENTER mode
  rectMode(CENTER);
  rect(0,0,100,100);
}
