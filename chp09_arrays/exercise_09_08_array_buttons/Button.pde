// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 9-8: Write a Button class (see Example 5-5 for a non-object-oriented button). The button 
// class should register when a mouse is pressed over the button and change color.  Create button objects 
// of different sizes and locations using an array. Before writing the main program, sketch out the 
// Button class. Assume the button is off  when it first appears.  

// Button class

class Button  {    

  // Button location and size
  float x;   
  float y;   
  float w;   
  float h;   
  // Is the button on or off?
  boolean on;  

  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH)  {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH;   
    on = false;  // Button always starts as off
  }    

  void click(int mx, int my) {
    // Check to see if a point is inside the rectangle
    if (mx > x && mx < x + w && my > y && my < y + h) {
      on = !on;
    }
  }

  // Draw the rectangle
  void display() {
    rectMode(CORNER);
    stroke(0);
    // The color changes based on the state of the button
    if (on) {
      fill(175);
    } else {
      fill(0);
    }
    rect(x,y,w,h);
  }
  
} 
