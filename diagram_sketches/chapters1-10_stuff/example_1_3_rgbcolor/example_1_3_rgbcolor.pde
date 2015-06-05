// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com
import processing.pdf.*;

// Example 1-3: RGB Color
void setup() {
  size(80, 40);
  beginRecord(PDF, "fig_01_18.pdf");
  background(255);
  noStroke();

  // Bright red
  fill(255, 0, 0);
  ellipse(20, 20, 16, 16);

  // Dark red
  fill(127, 0, 0);
  ellipse(40, 20, 16, 16);

  // Pink (pale red)
  fill(255, 200, 200);
  ellipse(60, 20, 16, 16);
  endRecord();
}