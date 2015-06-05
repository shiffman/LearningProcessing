// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-2: Rewrite Example 15-2 in an object-oriented fashion where the data for the 
// image, location, size, rotation, and so on is contained in a class. Can you have the class swap 
// images when it hits the edge of the screen? 

Head head; // A head object!

void setup() {
  size(200, 200);
  // Load image, initialize variables
  head = new Head("face.jpg", 0, height/2);
}

void draw() {
  background(255);
  head.display();
  head.move();
}
