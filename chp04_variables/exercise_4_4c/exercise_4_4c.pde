// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 4-4c: 

void setup() {
  size(200,200); 
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  rectMode(CENTER);
  fill(175);
  rect(100,100,175,175);
  fill(255);
  ellipse(100,100,75,75);
}
