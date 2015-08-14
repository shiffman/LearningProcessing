// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-8:  Rewrite Example 13-7 to use the noise() function instead of sin().     

// Starting "time"  
float t = 0.0;  

void setup() {   
  size(480, 270);
}   

void draw() {   
  background(255);  
  // Increment "time"
  t += 0.01;  
  float x = t;  

  noStroke();  
  fill(0, 100);  

  // A for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the window). 
  for (int i = 0; i <= width; i+=16) {   
    // Calculate y value based off of sine function  
    float y =  noise(x)*height;  
    // Draw an ellipse  
    ellipse(i, y, 32, 32);  
    // Move along x-axis  
    x += 0.05;
  }
}   



