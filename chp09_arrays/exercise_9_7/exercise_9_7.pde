// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 9-7: Rewrite the snake example in an object-oriented fashion with a Snake class. 
// Can you make snakes with slightly different looks (different shapes, colors, sizes)? 
// (For an advanced problem, create a Point class that stores an x and y coordinate as part of the sketch. 
// Each snake object will have an array of Point objects, instead of two separate arrays of x and y values. 
// This involves arrays of objects, covered in the next section.)

// Two snake objects (this would be better as an array!)
Snake s0;
Snake s1;

void setup() {
  size(400,200);
  smooth();
  // Initialize
  s0 = new Snake(50);
  s1 = new Snake(25);
}

void draw() {
  background(255);
  
  // Update and display
  s0.update(mouseX-30,mouseY);
  s0.display();

  // Update and display
  s1.update(mouseX+30,mouseY);
  s1.display();  
}

