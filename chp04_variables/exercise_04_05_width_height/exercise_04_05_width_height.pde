// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 4-5: 
// Using width and height, recreate the following 
// screenshot. Here’s the catch: the shapes must resize 
// themselves relative to the window size. (In other 
// words, no matter what you specify for size(), the 
// result should look identical.)

void setup() {
  size(200,200);
}


void draw() {
  background(255);
  stroke(0);
  fill(175);
  line(0,0,width,height);
  line(width,0,0,height);
  rectMode(CENTER);
  ellipse(width/2,height/2,width/2,height/2);
  rect(width/8,height/2,width/8,height/8);
  rect(7*width/8,height/2,width/8,height/8);
}
