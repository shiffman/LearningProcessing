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

public class exercise_15_11 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-10: Using the framework established by our image processing examples, create 
// two images as input and generates one output image. In other words, each 
// pixel displayed should be a function of the color values from two pixels, one from one image 
// and one from another. For example, can you write the code to blend two images together 
// (without using tint())? 

// Two source images
PImage source0;      // Source image 1
PImage source1;      // Source image 2

// A percentage (10% one image, 90% the other, etc.  starts at 0%);
float p = 0;

public void setup() {
  size(200,200);
  frameRate(30);
  source0 = loadImage("animal0.jpg");
  source1 = loadImage("animal1.jpg");
}

public void draw() {
  // Percetange goes from 0 to 1 then back to 0
  p += 0.01f;
  if (p > 1.0f) p = 0;
  
  loadPixels();
  // We are going to look at both image's pixels
  source0.loadPixels();
  source1.loadPixels();
  
  for (int x = 0; x < source0.width; x++ ) {
    for (int y = 0; y < source0.height; y++ ) {
      int loc = x + y*source0.width;
      // Two colors
      int c0 = source0.pixels[loc];
      int c1 = source1.pixels[loc];
      
      // Separate out r,g,b components
      float r0 = red(c0); float g0 = green(c0); float b0 = blue(c0);
      float r1 = red(c1); float g1 = green(c1); float b1 = blue(c1);
      
      // Combine each image's color
      float r = p*r0+(1.0f-p)*r1;
      float g = p*g0+(1.0f-p)*g1;
      float b = p*b0+(1.0f-p)*b1;
      
      // Set the new color
      pixels[loc] = color(r,g,b);
      
    }
  }
  
  updatePixels();
 
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "exercise_15_11" });
  }
}
