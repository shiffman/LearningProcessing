// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-1: Simple displaying text

// Step 2: Declare PFont variable
import processing.pdf.*;

PFont f;  

void setup() {
  size(200, 200);

  // Step 3: Create Font
  f = createFont("Georgia", 16);
} 

void draw() {
  beginRecord(PDF, "17fig02_drawtext.pdf"); 
  background(255);
  textFont(f);     // Step 4: Specify font to be used
  fill(0);         // Step 5: Specify font color

  // Step 6: Display Text
  text("To be or not to be.", 10, height/2);
  endRecord();
  noLoop();
}