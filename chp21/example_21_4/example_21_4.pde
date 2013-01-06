// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-4: PDF and openGL

// Using OPENGL
import processing.opengl.*;
import processing.pdf.*;

// Cube rotation
float yTheta = 0.0;
float xTheta = 0.0;

// A boolean variable that when set to true triggers the PDF recording process
boolean recordPDF = false; 

void setup() {
  // OPENGL or P3D mode requires the use of beginRaw() and endRaw() instead of beginRecord() and endRecord().
  size(400, 400, OPENGL); 
  smooth();
}

void draw() {
  // Begin making the PDF
  if (recordPDF) {
    beginRaw(PDF, "3D.pdf" ); // If you include "####" in the filename -- "3D-####.pdf" -- separate, numbered PDFs will be made for each frame that is rendered.
  }
  
  background(255);
  stroke(0);
  noFill();
  translate(width/2,height/2);
  rotateX(xTheta);
  rotateY(yTheta);
  box(100);
  xTheta += 0.02;
  yTheta += 0.03;
  
  // End making the PDF
  if (recordPDF) {
    endRaw();
    recordPDF = false;
  }
}

// Make the PDF when the mouse is pressed
void mousePressed() {
  recordPDF = true;
}
