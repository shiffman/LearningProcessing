
/**
 * PrimitivePShape. 
 * 
 * Using a PShape to display a custom polygon. 
 */

// The PShape object
PShape star;

import processing.pdf.*;

void setup() {
  size(200, 200);
  // First create the shape
  star = createShape();
  star.beginShape();
  // You can set fill and stroke
  star.fill(102);
  star.stroke(0);
  star.strokeWeight(2);
  // Here, we are hardcoding a series of vertices
  star.vertex(0, -50);
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape(CLOSE);
}

void draw() {
  
  beginRecord(PDF,"fig_14_32_pshape.pdf");
  background(255);
  // We can use translate to move the PShape
  translate(width/2, height/2);
  // Display the shape
  shape(star);
  endRecord();
  noLoop();
}