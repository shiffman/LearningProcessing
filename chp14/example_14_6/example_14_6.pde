// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-6: rotateZ
float theta = 0.0;

void setup() {
  size(200,200,P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  translate(width/2, height/2);
  rotateZ(theta);
  rectMode(CENTER);
  rect(0,0,100,100);
  theta += 0.02;
}