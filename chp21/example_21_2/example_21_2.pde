// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-2: PDF using beginRecord()

import processing.pdf.*;

void setup() {
  size(400, 400);
  
  // beginRecord() starts the process. 
  // The first argument should read PDF and the second is the filename
  beginRecord(PDF, "filename.pdf" ); 
}

void draw() {
  
  // Draw some stuff!
  smooth();
  background(100);
  fill(0);
  stroke(255);
  ellipse(width/2,height/2,160,160);
  
  // endRecord( ) is called to finish the PDF.
  endRecord();
 
 // There's no reason to loop any more since the PDF is finished. 
  noLoop(); 
}
