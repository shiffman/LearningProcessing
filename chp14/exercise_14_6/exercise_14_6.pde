// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 14-6: Create a line that spins around its center (like twirling a baton). 
// Draw a circle at both endpoints.

float angle = 0.0;

void setup() {
  size(200,200);
  smooth(); 
}

void draw() {
  background(255);
  fill(175);
  stroke(0);

  translate(width/2,height/2);
  rotate(angle);
  line(-75,0,75,0);
  ellipse(-75,0,8,8);
  ellipse( 75,0,8,8);

  angle += 0.05;
}

