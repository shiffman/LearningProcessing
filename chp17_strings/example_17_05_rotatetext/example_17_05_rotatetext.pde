// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-5: Rotating text 

PFont f;
String message = "this text is spinning";
float theta;

void setup() {
  size(640, 360);
  f = createFont("Arial", 20);
}

void draw() {

  background(255);
  fill(0);
  textFont(f);                 // Set the font
  translate(width/2, height/2); // Translate to the center
  rotate(theta);               // Rotate by theta
  textAlign(CENTER);

  // The text is center aligned and displayed at (0,0) after translating and rotating. 
  // See Chapter 14 or a review of translation and rotation.
  text(message, 0, 0); 

  // Increase rotation
  theta += 0.02;
}

