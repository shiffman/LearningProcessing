// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-3: Move a rectangle across a window by 
// incrementing a variable. Start the shape at x 
// coordinate 0 and use an if statement to have it stop 
// at coordinate 100. Rewrite the sketch to use 
// constrain() instead of the if statement. 
// Fill in the missing code.

// Rectangle starts at location x
float x = 0;

void setup() {
  size(200,200);
}

void draw() {
  background(255);
  
  // Display object
  fill(0);
  rect(x,100,20,20);
  
  // Increment x
  x = x + 1;
  
  // If x is greater than 100
  if (x > 100) {
    // Set it back to 100
    x = 100;
  }
  
  // Using constrain instead
  // x = constrain(x,0,100);
  
}
