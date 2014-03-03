import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class exercise_15_3 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-1: "Hello World" images

// Declaring a variable of type PImage, a class available to us from the Processing core library.
PImage img; 

public void setup() {
  size(320,240);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("mysummervacation.jpg");
}

public void draw() {
  background(0);
  
  float r = map(mouseX,0,width,0,255);
  float g = map(mouseY,0,height,0,255);
  
  float d = dist(mouseX,mouseY,width/2,height/2);
  float b = map(d,0,width/2,0,255);
  
  tint(r,g,b);
  
  image(img,0,0);
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_15_3" });
  }
}
