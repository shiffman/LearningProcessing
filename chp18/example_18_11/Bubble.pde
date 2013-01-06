// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-11: Yahoo search visualization

// Simple "Bubble" class to represent each search
class Bubble {
  
  String search;
  float x,y,r;
  
  Bubble(String search_, float r_, float x_, float y_) {
    search = search_;
    r = r_;
    x = x_;
    y = y_;
  }
  
  void display() {
    stroke(0);
    fill(0,50);
    ellipse(x, y, r, r);
    textAlign(CENTER);
    fill(0);
    text(search,x,y);
  }
}
