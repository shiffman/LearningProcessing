// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-9: An array of Car objects


// The Car class does not change whether we are making one car, 100 cars or 1,000 cars!
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color c_, float xpos_, float ypos_, float xspeed_) {
    c = c_;
    xpos = xpos_;
    ypos = ypos_;
    xspeed = xspeed_;
  }

  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos,ypos,20,10);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
