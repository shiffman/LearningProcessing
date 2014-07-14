// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-1b: Fill in the blanks in the code to 
// recreate the following screenshots.

size(200, 200); 
background(255);

float w = width; 
while (w > 0) { 
  stroke(0); 
  fill(w); 
  ellipse(width/2, height/2, w, w); 
  w = w - 20;
} 
