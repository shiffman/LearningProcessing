// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// A class to describe a single Letter
class Letter {
  char letter;
  // The object knows its original "home" location
  float homex,homey;
  // As well as its current location
  float x,y;
  // And an angle of rotation
  float theta;

  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    x = random(width);
    y = random(height);
    theta = random(TWO_PI);
    letter = letter_; 
  }

  // Display the letter
  void display() {
    fill(0);
    textAlign(LEFT);
    // User translate and rotate to draw the letter
    pushMatrix();
    translate(x,y);
    rotate(theta);
    text(letter,0,0);
    popMatrix();
  }

  // Move the letter randomly
  void shake() {
    x += random(-2,2);
    y += random(-2,2);
    theta += random(-0.5,0.5);
  }

  // Return the letter home using lerp!
  void home() {
    x = lerp(x,homex,0.05);
    y = lerp(y,homey,0.05);
    theta = lerp(theta,0,0.05);
  }
}
