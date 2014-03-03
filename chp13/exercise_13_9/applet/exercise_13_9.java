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

public class exercise_13_9 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-9:  Complete the code which generates the following pattern (Note: the solution 
// uses lines, although it would also be possible to create the image using rotated rectangles, 
// which is covered in Chapter 14).         

public void setup()  {   
  size(400,200);  
  smooth();
}   

public void draw()  {   
  background(255);  
  stroke(0);  
  branch(width/2,height,100);  
}   

public void branch(float x, float y, float h)  {   
  line(x,y,x-h,y-h);
  line(x,y,x+h,y-h);
  if (h > 2) {
    branch(x-h,y-h,h/2);
    branch(x+h,y-h,h/2);
  }   
}    






  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_9" });
  }
}
