// A class
class Car {
  // Variables
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  // Constructor
  Car() {
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