// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 18-13:  Use the XML document (blobs.xml) to initialize an array of objects. 
// Design the objects to use all of the values in each XML element. 
// (Feel free to rewrite the XML document to include more or less data.)   

import processing.xml.*;

// An array of Blob objects
Blob[] blobs;

void setup() {
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

void draw() {
  background(255);

  // Display and move all blobs
  for (int i = 0; i < blobs.length; i++ ) {
    blobs[i].display();
    blobs[i].move();
  }
}

