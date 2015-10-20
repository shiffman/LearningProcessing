// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-3: Rollovers
void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);
  line(240, 0, 240, 270);
  line(0, 135, 480, 135);

  // Fill a black color
  noStroke();
  fill(0);

  // Depending on the mouse location, a different rectangle is displayed.    
  if (mouseX < 240 && mouseY < 135) {
    rect(0, 0, 240, 135);
  } else if (mouseX > 240 && mouseY < 135) {
    rect(240, 0, 240, 135);
  } else if (mouseX < 240 && mouseY > 135) {
    rect(0, 135, 240, 135);
  } else if (mouseX > 240 && mouseY > 135) {
    rect(240, 135, 240, 135);
  }
}