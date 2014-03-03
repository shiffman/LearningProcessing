import processing.core.*; 
import processing.xml.*; 

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

public class exercise_18_13 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 18-13:  Use the XML document (blobs.xml) to initialize an array of objects. 
// Design the objects to use all of the values in each XML element. 
// (Feel free to rewrite the XML document to include more or less data.)   



// An array of Blob objects
Blob[] blobs;

public void setup() {
  size(200,200);
  smooth();
  // Load an XML document
  XMLElement xml = new XMLElement(this, "blobs.xml" );

  // Getting the total number of Blob objects with getChildCount().  
  int totalblobs = xml.getChildCount(); 

  // Make an array the same size
  blobs = new Blob[totalblobs];

  // Get all the child elements
  XMLElement[] children = xml.getChildren();

  for (int i = 0; i < children.length; i ++ ) {

    // The location is child 0
    XMLElement locationElement = children[i].getChild(0);
    float x = locationElement.getFloatAttribute("x");
    float y = locationElement.getFloatAttribute("y");

    // The speed is child 1
    XMLElement speedElement = children[i].getChild(1);
    float xspeed = speedElement.getFloatAttribute("x");
    float yspeed = speedElement.getFloatAttribute("y");

    // The size is child 2
    XMLElement sizeElement = children[i].getChild(2);
    float w = sizeElement.getFloatAttribute("w");
    float h = sizeElement.getFloatAttribute("h");

    // Make a new Blob object with values from XML document
    blobs[i] = new Blob(x,y,xspeed,yspeed,w,h);
  }

}

public void draw() {
  background(255);

  // Display and move all blobs
  for (int i = 0; i < blobs.length; i++ ) {
    blobs[i].display();
    blobs[i].move();
  }
}

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Using Processing's XML library

// A Bubble class
class Blob {

  float x,y;
  float xspeed, yspeed;
  float w,h;

  Blob(float x_, float y_, float xspeed_, float yspeed_, float w_, float h_) {
    x = x_;
    y = y_;
    xspeed = xspeed_;
    yspeed = yspeed_;
    w = w_;
    h = h_;
  }

  // Display Bubble
  public void display() {
    stroke(0);
    fill(0,50);
    ellipse(x,y,w,h);
  }

  // Bubble drifts upwards
  public void move() {
    x += xspeed;
    y += yspeed;
    if (x > width+w) x = -w;
    if (x < -w) x = width+w;
    if (y > height+h) y = -h;
    if (y < -h) y = height+h;
  }

}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_18_13" });
  }
}
