// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-3: Rollovers
void setup() {
  size(640,360);
}

void draw() {
  background(255);
  stroke(0);
  line(320,0,320,360);
  line(0,180,640,180);
  
  // Fill a black color
  noStroke();
  fill(0);

  // Depending on the mouse location, a different rectangle is displayed.    
  if (mouseX < 320 && mouseY < 180) {
    rect(0,0,320,180);
  } else if (mouseX > 320 && mouseY < 180) {
    rect(320,0,320,180);
  } else if (mouseX < 320 && mouseY > 180) {
    rect(0,180,320,180);
  } else if (mouseX > 320 && mouseY > 180) {
    rect(320,180,320,180);
  }
}






