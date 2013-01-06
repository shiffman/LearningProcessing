// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-9: Rotate around more than one axis

void setup() {
  size(200,200,P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  translate(width/2,height/2);
  rotateX(PI*mouseY/height);
  rotateY(PI*mouseX/width);
  rectMode(CENTER);
  rect(0,0,100,100);
}