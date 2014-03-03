// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-7:  Use the sine function to create a  "breathing" shape, that is, one whose size oscillates.  

class Breather  {   

  // Location and size
  float x,y;
  float rad;
  // Angle for oscillation
  float theta;  
  float dtheta;
  
  Breather()  { 
    // Initialize variables randomly
    x = random(width);
    y = random(height);  
    rad = random(6,24);
    theta = random(PI);  
    dtheta = random(0.01,0.1);
  }   

  // Increment theta
  void breath()  {
    theta += dtheta;
  }   

  void display()  { 
    // Map size based on sine function  
    float r = rad + rad * (sin(theta) + 1);
    // Display circle
    fill(175,100);
    stroke(0);
    ellipse(x,y,r,r);  
  }

}   



