// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-1: User input
import processing.pdf.*;

// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String saved = "4 8 15 16 23 42";

void setup() {
  size(300, 200);
}

void draw() {
  beginRecord(PDF, "18fig01_user_input.pdf"); 
  background(255);
  int indent = 20;

  // Set the font and fill for text
  textSize(16);
  fill(0);

  // Display everything
  text("Click in this sketch and type. \nHit return to save what you typed.", 
    indent, 40);
  text(typing, indent, 90);
  text(saved, indent, 130);
  endRecord();
  noLoop();
}