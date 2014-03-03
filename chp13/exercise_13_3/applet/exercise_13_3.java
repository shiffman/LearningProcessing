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

public class exercise_13_3 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-3: Complete the following code which uses Perlin noise to set the location of 
// a circle. Run the code. Does the circle appear to be moving  "naturally"?  

// Noise "time" variables  
// In this sketch, we want to use noise for two different values. So that the output 
// of the noise function is not identical, we start at two different points in time. 
float xtime = 0.0f;  
float ytime = 100.0f;
float increment = 0.01f;  

public void setup()  {   
  size(200,200);  
  smooth();  
}   

public void draw() {   
  background(255);  
  float x = noise(xtime)*width;  
  float y = noise(ytime)*height;  
  xtime += increment;  
  ytime += increment;  
  // Draw the ellipse with size determined by Perlin noise  
  stroke(0);
  fill(175);  
  ellipse(x,y,16,16);  
}    




  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_3" });
  }
}
