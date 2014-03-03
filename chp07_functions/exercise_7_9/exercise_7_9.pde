// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 7-9: Multiple Zoogs with functions

void setup() {
  size(400,200);  // Set the size of the window
  smooth();       // Enables Anti-Aliasing (smooth edges on shapes)
}

void draw() {
  background(255);  // Draw a white background 
  int y = height/2;
  // Multiple versions of Zoog are displayed by using a for loop
  for (int x = 80; x < width; x+= 80) {
    drawZoog(x,100,60,60,16);
  }
}


void drawZoog(int x, int y, int w, int h, int eyeSize) {
  // Draw Zoog's body
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(x,y,w/6,h*2);

  // Draw Zoog's head
  fill(255);
  ellipse(x,y-h/2,w,h);

  // Draw Zoog's eyes
  fill(0);
  ellipse(x-w/3,y-h/2,eyeSize,eyeSize*2);
  ellipse(x+w/3,y-h/2,eyeSize,eyeSize*2);

  // Draw Zoog's legs
  stroke(0);
  line(x-w/12,y+h,x-w/4,y+h+10);
  line(x+w/12,y+h,x+w/4,y+h+10); 
}

