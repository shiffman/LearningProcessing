// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Using Processing's XML library

// A Bubble class
class Bubble {
  
  float x,y;
  float diameter;
  float speed;
  float r,g;
  
  Bubble(float r_,float g_, float diameter_) {
    x = random(width);
    y = height;
    r = r_;
    g = g_;
    diameter = diameter_;
  }
  
  // True or False if point is inside circle
  boolean rollover(int mx, int my) {
    if (dist(mx,my,x,y) < diameter/2) {
      return true;
    } else {
      return false;
    }
  }
  
  // Change Bubble variables
  void change() {
    r = constrain(r + random(-10,10),0,255);
    g = constrain(g + random(-10,10),0,255);
    diameter = constrain(diameter + random(-2,4),4,72);
  }
  
  // Display Bubble
  void display() {
    stroke(0);
    fill(r,g,255,150);
    ellipse(x,y,diameter,diameter);
  }
  
  // Bubble drifts upwards
  void drift() {
    y += random(-3,-0.1);
    x += random(-1,1);
    if (y < -diameter*2) {
      y = height + diameter*2;
    }
  }
}
