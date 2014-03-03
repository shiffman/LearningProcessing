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

public class exercise_15_2 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-2: Rewrite Example 15-2 in an object-oriented fashion where the data for the 
// image, location, size, rotation, and so on is contained in a class. Can you have the class swap 
// images when it hits the edge of the screen? 

Head head; // A head object!

public void setup() {
  size(200,200);
  // Load image, initialize variables
  head = new Head("face.jpg",0,height/2);
}

public void draw() {
  background(255);
  head.display();
  head.move();
}
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-2: Rewrite Example 15-2 in an object-oriented fashion where the data for the 
// image, location, size, rotation, and so on is contained in a class. Can you have the class swap 
// images when it hits the edge of the screen? 

class Head  {   
  PImage head; // A variable for the image file
  float x,y;   // Variables for image location
  float rot;   // A variable for image rotation

  Head(String filename, float x_, float y_) { 
    // Load image, initialize variables 
    head = loadImage(filename);
    x = x_;
    y = y_;
    rot = 0.0f;
  }   

  public void display()  {   
    // Translate and rotate
    translate(x,y);
    rotate(rot);

    // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
    image(head,0,0); 

  }   

  public void move()  {   
    // Adjust variables for animation
    x += 1.0f;
    rot += 0.02f;
    if (x > width+head.width) {
      x = -head.width;
    }

  }   
}    





  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_15_2" });
  }
}
