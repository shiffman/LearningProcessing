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

public class exercise_13_8 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-8:  Rewrite Example 13-7 to use the noise() function instead of sin().     

// Starting "time"  
float t = 0.0f;  

public void setup()  {   
  size(200,200);  
  smooth();  
}   

public void draw()  {   
  background(255);  
  // Increment "time"
  t += 0.01f;  
  float x = t;  
  
  noStroke();  
  fill(0);  
  
  // A for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the window). 
  for (int i = 0; i <= 20; i++)  {   
    // Calculate y value based off of sine function  
    float y =  noise(x)*height;  
    // Draw an ellipse  
    ellipse(i*10,y,16,16);  
    // Move along x-axis  
    x += 0.05f;  
  }   
}   




// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-7:  Use the sine function to create a  "breathing" shape, that is, one whose size oscillates.  

class Breather  {   

  // Location and size
  float x,y;
  float rad;
  // Angle for oscillation
  float theta;  
  float dtheta;
  
  Breather()  { 
    // Initialize variables randomly
    x = random(width);
    y = random(height);  
    rad = random(6,24);
    theta = random(PI);  
    dtheta = random(0.01f,0.1f);
  }   

  // Increment theta
  public void breath()  {
    theta += dtheta;
  }   

  public void display()  { 
    // Map size based on sine function  
    float r = rad + rad * (sin(theta) + 1);
    // Display circle
    fill(175,100);
    stroke(0);
    ellipse(x,y,r,r);  
  }

}   




  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_8" });
  }
}
