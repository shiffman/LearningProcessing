// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-2b: Rewrite Exercise 6-1b using a for loop.

void setup(){
  size(200,200);
  smooth();
}

void draw(){
  background(255);
  for (float w = width; w > 0; w -= 20) {
    stroke(0);
    fill(w);
    ellipse(width/2,height/2,w,w);
  }
}

