// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-5: Rotating text 

PFont f;
String message = "this text is spinning";
float theta;

void setup() {
  size(480, 270);
  f = createFont("Arial", 20);
}

void draw() {

  background(255);
  fill(0);
  textFont(f);                  // Set the font
  textAlign(CENTER);
  pushMatrix();
  translate(width/2, height/2); // Translate to the center
  rotate(theta);                // Rotate by theta

  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text(message, 0, 0); 
  popMatrix();

  // Increase rotation
  theta += 0.02;
}