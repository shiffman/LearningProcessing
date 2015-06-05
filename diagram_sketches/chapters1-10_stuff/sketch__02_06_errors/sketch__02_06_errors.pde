import processing.pdf.*;

void setup() {
  size(200, 200);
  noLoop();
  beginRecord(PDF, "01fig20_alpha.pdf");
}

void draw() {
  // Draw something good here
  background(0);
  noStroke();
  fill(0, 0, 255);
  rect(0, 0, 100, 200);
  fill(255, 0, 0, 255);
  rect(0, 0, 200, 40);
  fill(255, 0, 0, 191);
  rect(0, 50, 200, 40);
  fill(255, 0, 0, 127);
  rect(0, 100, 200, 40);
  fill(255, 0, 0, 63);
  rect(0, 150, 200, 40);
  endRecord();
}