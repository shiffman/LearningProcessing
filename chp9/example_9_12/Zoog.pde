// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-12: 200 Zoog objects in an array

class Zoog {
  // Zoog's variables
  float x,y,w,h,eyeSize;

  // Zoog constructor
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }
  
  // Move Zoog
  void jiggle() { // For simplicity we have also removed the “speed” argument from the jiggle() function. Try adding it back in as an exercise.
    // Change the location
    x = x + random(-1,1);
    y = y + random(-1,1);
    // Constrain Zoog to window
    x = constrain(x,0,width);
    y = constrain(y,0,height);
  }
  
  // Display Zoog
  void display() {
    // Set ellipses and rects to CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);  
    // Draw Zoog's arms with a for loop
    for (float i = y-h/3; i < y + h/2; i += 10) {
      stroke(0);
      line(x-w/4,i,x + w/4,i);
    }
    // Draw Zoog's body
    stroke(0);
    fill(175);
    rect(x,y,w/6,h);
    // Draw Zoog's head
    stroke(0);
    fill(255);
    ellipse(x,y-h,w,h);
    // Draw Zoog's eyes
    fill(0);
    ellipse(x-w/3,y-h,eyeSize,eyeSize*2);
    ellipse(x + w/3,y-h,eyeSize,eyeSize*2);
    // Draw Zoog's legs
    stroke(0);
    line(x-w/12,y + h/2,x-w/4,y + h/2 + 10);
    line(x + w/12,y + h/2,x + w/4,y + h/2 + 10);
  }
}        
