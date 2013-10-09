// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-10: Interactive stripes

class Stripe {
  
  float x;     // horizontal location of stripe
  float speed; // speed of stripe
  float w;     // width of stripe
  
  // A boolean variable keeps track of the object's state.
  boolean mouse; // state of stripe (mouse is over or not?)

  Stripe() {
    // All stripes start at 0
    x = 0; 
    // All stripes have a random positive speed
    speed = random(1); 
    w = random(10,30);
    mouse = false;
  }

  // Draw stripe
  void display() {
    
    // Boolean variable determines Stripe color.
    if (mouse) { 
      fill(255);
    } else {
      fill(255,100);
    }
    
    noStroke();
    rect(x,0,w,height);
  }

  // Move stripe
  void move() {
    x += speed;
    if (x > width + 20) x = -20;
  }

// Check to see if point (mx,my) is inside the Stripe.
  void rollover(int mx, int my) { 
    // Left edge is x, Right edge is x + w
    if (mx > x && mx < x + w) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
