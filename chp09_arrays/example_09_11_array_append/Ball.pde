// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-11: Resizing an array using append()

class Ball {
  float x;
  float y;
  float speed;
  float w;
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }
  
  void gravity() {
    // Add gravity to speed
    speed = speed + gravity;
  }
  
  void move() {
    // Add speed to y location
    y = y + speed;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
  
  void display() {
    // Display the circle
    fill(101);
    stroke(0);
    ellipse(x,y,w,w);
  }
}  