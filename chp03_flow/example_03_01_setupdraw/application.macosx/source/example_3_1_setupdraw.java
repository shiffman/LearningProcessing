import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class example_3_1_setupdraw extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-1: Zoog as dynamic sketch

// setup() runs first one time.  
// size() should always be first line of setup

public void setup() {
  // Set the size of the window
  size(480, 270);
}

// draw() loops continuously until you close the sketch window.
public void draw() {
  // Draw a white background
  background(255);   

  // Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 

  // Body
  stroke(0);
  fill(150);
  rect(320, 190, 20, 100);

  // Head
  fill(255);
  ellipse(320, 160, 60, 60); 

  // Eyes
  fill(0); 
  ellipse(301, 160, 16, 32); 
  ellipse(339, 160, 16, 32);

  // Legs
  stroke(0);
  line(310, 240, 300, 250);
  line(330, 240, 340, 250);
}
  public int sketchWidth() { return 640; }
  public int sketchHeight() { return 360; }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "example_3_1_setupdraw" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
