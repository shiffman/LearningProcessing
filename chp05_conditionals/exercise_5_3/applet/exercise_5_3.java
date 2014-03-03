import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class exercise_5_3 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-3: Move a rectangle across a window by incrementing a variable. Start the shape at x coordinate 0 and use an if statement to have it stop at coordinate 100. Rewrite the sketch to use constrain( ) instead of the if statement. Fill in the missing code.

// Rectangle starts at location x
float x = 0;

public void setup() {
  size(200,200);
}

public void draw() {
  background(255);
  
  // Display object
  fill(0);
  rect(x,100,20,20);
  
  // Increment x
  x = x + 1;
  
  // If x is greater than 100
  if (x > 100) {
    // Set it back to 100
    x = 100;
  }
  
  // Using constrain instead
  // x = constrain(x,0,100);
  
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "exercise_5_3" });
  }
}
