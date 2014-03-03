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

public class exercise_7_6 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 7-6: Here is the bouncing ball from Example 5-6 combined with 
// the drawCar() function. Fill in the blanks so that you now have a bouncing
// car with parameter passing! (Note that the global variables are now named 
// globalX and globalY to avoid confusion with the local variables x and y in 
// drawCar()).


int globalX = 0;
int globalY = 100;
int speed = 1;

public void setup() {
  size(200,200);
  smooth();
}

public void draw() {
  background(255);
  move();
  bounce();
  drawCar(globalX,globalY,24,color(100));
}

public void move() {
  // Change the x location by speed
  globalX = globalX + speed;
}

public void bounce() {
  if ((globalX > width) || (globalX < 0)) {
    speed = speed * -1;
  }
}

public void drawCar(int x, int y, int thesize, int c) {
  int offset = thesize / 4;
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(x,y,thesize,thesize/2);
  fill(200);
  rect(x - offset,y - offset,offset,offset/2);
  rect(x + offset,y - offset,offset,offset/2);
  rect(x - offset,y + offset,offset,offset/2);
  rect(x + offset,y + offset,offset,offset/2);
}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "exercise_7_6" });
  }
}
