void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);

  // Draw everything relative to (mouseX, mouseY)
  translate(mouseX, mouseY);

  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(0, 0, 20, 100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(0, -30, 60, 60);
  // Draw Zoog's eyes
  stroke(0);
  fill(0);
  ellipse(-19, -30, 16, 32);
  ellipse( 19, -30, 16, 32);

  // Draw Zoog's legs
  stroke(0);
  line(-10, 50, -20, 60);
  line( 10, 50, 20, 60);
}