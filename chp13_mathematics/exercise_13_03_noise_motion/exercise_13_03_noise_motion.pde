// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-3: Complete the following code which uses Perlin noise to set the location of 
// a circle. Run the code. Does the circle appear to be moving  "naturally"?  

// Noise "time" variables  
// In this sketch, we want to use noise for two different values. So that the output 
// of the noise function is not identical, we start at two different points in time. 
float xtime = 0.0;  
float ytime = 100.0;
float increment = 0.01;  

void setup() {   
  size(480, 270);  
}   

void draw() {   
  background(255);  
  float x = noise(xtime) * width;  
  float y = noise(ytime) * height;  
  xtime += increment;  
  ytime += increment;  
  // Draw the ellipse with size determined by Perlin noise  
  stroke(0);
  fill(175);  
  ellipse(x, y, 32, 32);
}    


