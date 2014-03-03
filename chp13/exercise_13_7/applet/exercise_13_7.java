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

public class exercise_13_7 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-7:  Use the sine function to create a  "breathing" shape, that is, one whose size oscillates.  

// An array of objects
Breather[] breathers = new Breather[20];

public void setup()  {   
  size(200,200);  
  smooth();  
  // Initialize all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i] = new Breather();
  }
}   

public void draw() {   
  background(255);  
  // Run all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i].breath();
    breathers[i].display();
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
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_7" });
  }
}
