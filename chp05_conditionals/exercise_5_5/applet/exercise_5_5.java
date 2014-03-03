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

public class exercise_5_5 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-5: Write a program that implements a simple rollover. 
// In other words, if the mouse is over a rectangle, the rectangle changes color. 

int x = 50;
int y = 50;
int w = 100;
int h = 75;

public void setup() {
  size(200,200);
}

public void draw() {
  background(255);
  stroke(0);
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(0);
  } else {
    fill(175);
  }
  rect(x,y,w,h);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "exercise_5_5" });
  }
}
