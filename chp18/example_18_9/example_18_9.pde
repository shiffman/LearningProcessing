// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Using Processing's XML library

import processing.xml.*;

// An array of Bubble objects
Bubble[] bubbles;

void setup() {
  size(200,200);
  smooth();
  // Load an XML document
  XMLElement xml = new XMLElement(this, "bubbles.xml" );
  
  // Getting the total number of Bubble objects with getChildCount().  
  int totalBubbles = xml.getChildCount(); 
  
  // Make an array the same size
  bubbles = new Bubble[totalBubbles];
  
  // Get all the child elements
  XMLElement[] children = xml.getChildren();
  
  for (int i = 0; i < children.length; i ++ ) {
    
    // The diameter is child 0
    XMLElement diameterElement = children[i].getChild(0);
    
    // The diameter is the content of the first element while red and green are attributes of the second.
    int diameter = int(diameterElement.getContent());
    
    // Color is child 1
    XMLElement colorElement = children[i].getChild(1);
    int r = colorElement.getIntAttribute("red");
    int g = colorElement.getIntAttribute("green");
    
    // Make a new Bubble object with values from XML document
    bubbles[i] = new Bubble(r,g,diameter);
  }
  
}

void draw() {
  background(255);
  
  // Display and move all bubbles
  for (int i = 0; i < bubbles.length; i++ ) {
    bubbles[i].display();
    bubbles[i].drift();
  }
}
