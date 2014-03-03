// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Using Processing's XML library

// A Bubble class
class Blob {

  float x,y;
  float xspeed, yspeed;
  float w,h;

  Blob(float x_, float y_, float xspeed_, float yspeed_, float w_, float h_) {
    x = x_;
    y = y_;
    xspeed = xspeed_;
    yspeed = yspeed_;
    w = w_;
    h = h_;
  }

  // Display Bubble
  void display() {
    stroke(0);
    fill(0,50);
    ellipse(x,y,w,h);
  }

  // Bubble drifts upwards
  void move() {
    x += xspeed;
    y += yspeed;
    if (x > width+w) x = -w;
    if (x < -w) x = width+w;
    if (y > height+h) y = -h;
    if (y < -h) y = height+h;
  }

}

