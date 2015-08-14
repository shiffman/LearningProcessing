// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-5: Write a program that implements a simple 
// rollover. In other words, if the mouse is over a 
// rectangle, the rectangle changes color. 

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  stroke(0);
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(0);
  } else {
    fill(175);
  }
  rect(x,y,w,h);
}
