// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 8-1: A Car class and a Car object

Car myCar; // Declare car object as a globle variable.

void setup() {
  size(480, 240);
  // Initialize Car object
  myCar = new Car(); // Initialize car object in setup() by calling constructor.
}

void draw() {
  background(255);
  // Operate Car object.
  myCar.move(); // Operate the car object in draw( ) by calling object methods using the dots syntax.
  myCar.display();
}

class Car { // Define a class below the rest of the program.
  color c; // Variables.
  float xpos;
  float ypos;
  float xspeed;

  Car() { // A constructor.
    c = color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }

  void display() { // Function.
    // The car is just a square
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos,ypos,20,10);
  }

  void move() { // Function.
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
