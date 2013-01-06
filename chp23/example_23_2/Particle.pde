// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-2: Simple particle system with ArrayList

// A simple Particle class
class Particle {
  
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  Particle() {
    x = mouseX;
    y = mouseY;
    xspeed = random(-1,1);
    yspeed = random(-2,0);
  }
  
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void gravity() {
    yspeed += 0.1;
  }
  
  void display() {
    stroke(0);
    fill(0,75);
    ellipse(x,y,10,10);
  }
}
