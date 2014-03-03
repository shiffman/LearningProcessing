// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 4-4a: 

void setup() {
  size(200,200); 
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(50,50,50,50);
  ellipse(150,50,50,50);
  ellipse(50,150,50,50);
  ellipse(150,150,50,50);
}

