// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 6-9: Simple while loop with interactivity

void setup() {
  size(255,255);
}

void draw() {
  background(0);

  // Start with i as 0
  int i = 0;

  // While i is less than the width of the window
  while (i < width) {
    noStroke();
    // The distance between the current rectangle and the mouse is equal to the absolute value of the difference between i and mouseX.
    float distance = abs(mouseX - i); 
    // That distance is used to fill the color of a rectangle at horizontal location i.
    fill(distance);
    rect(i,0,10,height);
    // Increase i by 10
    i += 10;
  }
}
