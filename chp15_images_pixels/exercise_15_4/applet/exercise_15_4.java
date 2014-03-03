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

public class exercise_15_4 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-4: Image sequence

int maxImages = 10; // Total # of images

// Declaring an array of images.
PImage[] images = new PImage[maxImages];

public void setup() {
  size(200,200);
  
  // Loading the images into the array
  // Don't forget to put the JPG files in the data folder!
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "animal" + i + ".jpg" ); 
  }
}

public void draw() {
  
  background(0);
  
  for (int i = 0; i < images.length; i++) {
    // There are many more sophisticated ways of doing this
    // For example an ArrayList of objects that keep track of their
    // own alpha values would be flexible and scalable.
    // But here is a quick trick to just cycle through alphas
    // with frameCount
    tint(255,(frameCount + i*20) % 255);
    image(images[i],0,0);
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_15_4" });
  }
}
