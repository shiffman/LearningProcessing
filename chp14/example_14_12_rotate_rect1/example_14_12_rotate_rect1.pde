// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-12: Rotating one square

float theta1 = 0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  rectMode(CENTER);

  translate(50, 50);
  rotateZ(theta1);
  rect(0, 0, 60, 60);

  theta1 += 0.02;
}

