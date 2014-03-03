// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 4-4b: 

void setup() {
  size(200,200); 
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  line(100,0,100,100);
  line(100,100,0,200);
  line(100,100,200,200);
}

