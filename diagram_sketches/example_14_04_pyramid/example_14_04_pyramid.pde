// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-4: Pyramid using beginShape(TRIANGLES)
import processing.pdf.*;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  beginRaw(PDF, "fig_14_12_pyramid.pdf");
  background(255);

  // The pyramid's vertices are drawn relative to a centerpoint.
  // Therefore, we call translate() to place the pyramid properly in the window.
  // A slightly better option might be to include the translate in the drawPyramid() function and pass in x,y,z as arguments
  translate(100, 100, 0);
  //scale(10);
  stroke(0);
  drawPyramid(150);
  endRaw();
  //saveFrame("fig_14_12_pyramid.png");
  noLoop();
}

// The function sets the vertices for the pyramid around the centerpoint at a flexible distance, 
// depending on the number passed in as an argument.
void drawPyramid(int t) { 

  stroke(0);

  // this pyramid has 4 sides, each drawn as a separate triangle
  // each side has 3 vertices, making up a triangle shape
  // the parameter " t " determines the size of the pyramid
  beginShape(TRIANGLES);

  fill(255, 150); // Note that each polygon can have its own color.
  vertex(-t, -t, -t);
  vertex( t, -t, -t);
  vertex( 0, 0, t);

  fill(150, 150);
  vertex( t, -t, -t);
  vertex( t, t, -t);
  vertex( 0, 0, t);

  fill(255, 150);
  vertex( t, t, -t);
  vertex(-t, t, -t);
  vertex( 0, 0, t);

  fill(150, 150);
  vertex(-t, t, -t);
  vertex(-t, -t, -t);
  vertex( 0, 0, t);

  endShape();
}