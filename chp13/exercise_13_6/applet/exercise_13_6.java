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

public class exercise_13_6 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-6: Encapsulate Example 13-6 into an Oscillator object. Create an array 
// of Oscillators, each moving at diff erent rates along the x and y axes. Here is some code for the 
// Oscillator class to help you get started.  

// An array of objects
Oscillator[] oscillators = new Oscillator[10];

public void setup()  {   
  size(200,200);  
  smooth();  
  // Initialize all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
}   

public void draw() {   
  background(255);  
  // Run all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}   



// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-6: Encapsulate Example 13-6 into an Oscillator object. Create an array 
// of Oscillators, each moving at diff erent rates along the x and y axes. Here is some code for the 
// Oscillator class to help you get started.  

class Oscillator  {   

  // Two angles
  float xtheta;  
  float ytheta;
  // Increment value for both angles  
  float dxtheta;
  float dytheta;

  Oscillator()  {   
    xtheta = 0;  
    ytheta = 0;  
    // Start randomly
    dxtheta = random(-0.05f,0.05f);
    dytheta = random(-0.05f,0.05f);
  }   

  public void oscillate()  {
    // Increment angles   
    xtheta += dxtheta;
    ytheta += dytheta;
  }   

  public void display()  {   
    // Map results of sine / cosine to width and height of window
    float x = (sin(xtheta) + 1) * width/2;   
    float y = (cos(ytheta) + 1) * height/2;
    stroke(0);
    fill(175);
    // draw circle and line
    line(width/2,height/2,x,y);  
    ellipse(x,y,16,16);  
  }

}   




  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_6" });
  }
}
