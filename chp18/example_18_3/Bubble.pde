// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-3: Creating objects from a text file

// A Class to describe a "Bubble"

class Bubble {
  float x,y;
  float diameter;
  float speed;
  float r,g;
  
  // The constructor initializes color and size
  // Location is filled randomly
  Bubble(float r_, float g_, float diameter_) {
    x = random(width);
    y = height;
    r = r_;
    g = g_;
    diameter = diameter_;
  }
  
  // Display the Bubble
  void display() {
    stroke(0);
    fill(r,g,255,150);
    ellipse(x,y,diameter,diameter);
  }
  
  // Move the bubble
  void drift() {
    y += random(-3,-0.1);
    x += random(-1,1);
    if (y < -diameter*2) {
      y = height + diameter*2;
    }
  }

}
