// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-3: Zoog as dynamic sketch with variation
void setup() {
  size(480, 270);  // Set the size of the window
}

void draw() {
  background(255);  // Draw a white background 
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(175);
  // Zoog's body is drawn at the location (mouseX, mouseY).
  rect(mouseX,mouseY,20,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  // Zoog�s head is drawn above the body at the location (mouseX, mouseY - 30).
  ellipse(mouseX,mouseY-30,60,60); 

  // Eyes
  fill(0); 
  ellipse(301, 160, 16, 32); 
  ellipse(339, 160, 16, 32);

  // Legs
  stroke(0);
  line(310, 240, 300, 250);
  line(330, 240, 340, 250);
}

