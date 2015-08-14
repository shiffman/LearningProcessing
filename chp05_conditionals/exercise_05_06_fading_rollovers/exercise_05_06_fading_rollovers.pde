// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-6: Rewrite Example 5-3 so that the squares 
// fade from white to black when the mouse leaves their 
// area. 
// Hint: you need four variables, one for each 
// rectangle's color.

// Four variables, one for each square's brightness level
float bright0 = 0;
float bright1 = 0;
float bright2 = 0;
float bright3 = 0;

void setup() { 
  size(200,200); 
} 

void draw() { 
  // Draw the background
  background(0); 

  // Depending on the mouse location, a 
  // different rectangle is set to brightness 255
  if (mouseX < 100 && mouseY < 100) { 
    bright0 = 255;
  } 
  else if (mouseX > 100 && mouseY < 100) { 
    bright1 = 255;
  } 
  else if (mouseX < 100 && mouseY > 100) { 
    bright2 = 255;
  } 
  else if (mouseX > 100 && mouseY > 100) { 
    bright3 = 255;
  } 

  // All rectangles always fade
  bright0 = bright0 - 1;
  bright1 = bright1 - 1;
  bright2 = bright2 - 1;
  bright3 = bright3 - 1;

  // Fill color and draw each rectangle
  noStroke(); 
  fill(bright0);
  rect(0,0,100,100); 
  fill(bright1);
  rect(100,0,100,100); 
  fill(bright2);
  rect(0,100,100,100); 
  fill(bright3);
  rect(100,100,100,100); 
  
  // Draw grid lines
  stroke(255); 
  line(100,0,100,200); 
  line(0,100,200,100); 

} 
