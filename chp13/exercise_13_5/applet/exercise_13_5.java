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

public class exercise_13_5 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-5: Using Example 13-5, draw a spiral path. Start in the center and move 
// outward. Note that this can be done by changing only one line of code and adding one line 
// of code!           

// A Polar coordinate, radius now starts at 0 to spiral outwards
float r = 0;
float theta = 0;

public void setup() {
  size(200,200);
  background(255);
  smooth();
}

public void draw() {
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  fill(0);
  // Adjust for center of window
  ellipse(x+width/2, y+height/2, 16, 16); 

  // Increment the angle
  theta += 0.01f;
  // Increment the radius
  r += 0.05f;
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_5" });
  }
}
