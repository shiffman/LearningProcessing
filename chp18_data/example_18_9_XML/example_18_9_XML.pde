// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Using Processing's XML object

// An array of Bubble objects
Bubble[] bubbles;

void setup() {
  size(640,360);
  // Load an XML document
  XML xml = loadXML("bubbles.xml");
  
  // Get all the child elements
  XML[] children = xml.getChildren("bubble");

  // Getting the total number of Bubble objects with getChildCount().  
  int totalBubbles = children.length; 
 
  // Make an array the same size
  bubbles = new Bubble[totalBubbles];
  
  for (int i = 0; i < children.length; i ++ ) {
    
    // The diameter is child 0
    XML diameterElement = children[i].getChild("diameter");
    
    // The diameter is the content of the first element while red and green are attributes of the second.
    int diameter = diameterElement.getIntContent();
    
    // Color is child 1
    XML colorElement = children[i].getChild("color");
    int r = colorElement.getInt("red");
    int g = colorElement.getInt("green");
    
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
