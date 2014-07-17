// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-2: Fill in the blanks in the following code so that the circle has a 10% chance of 
// moving up, a 20% chance of moving down, and a 70% chance of doing nothing.

float y = 100;  

void setup() {   
  size(200, 200);
}   


void draw() {   
  background(255);  
  float r = random(1);  
  if (r < 0.1) {
    y--;
  } else if (r < 0.3) {
    y++;
  } 
  stroke(0);
  fill(175);
  ellipse(width/2, y, 16, 16);
}

