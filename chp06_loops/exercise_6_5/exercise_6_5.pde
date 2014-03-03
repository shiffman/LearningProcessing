// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-5: It is possible to achieve the effect of rendering one line at a time using a for loop. 
// See if you can figure out how this is done. Part of the code is below.

// A variable that controls how much of the loop we do
int endY;

void setup() {
  size(200,200);
  frameRate(5);
  endY = 0;
}

void draw() {
  background(255);
  // y goes from 0 to whatever endY is
  for (int y = 0; y < endY; y+=10) {
    stroke(0);
    line(0,y,width,y);
  }

  // Increment endY
  endY += 10;

  // reset endY back to 0 if it gets to the end
  if (endY > height) {
    endY = 0;
  }
}

