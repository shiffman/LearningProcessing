// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-2: Text align 

PFont f;

void setup() {
  size(480, 270);
  f = createFont("Arial", 16);
}

void draw() {
  background(255);
  stroke(175);
  line(width/2, 0, width/2, height);
  textFont(f);
  fill(0);

  // textAlign() sets the alignment for displaying text. It takes one argument: CENTER, LEFT, or RIGHT.
  textAlign(CENTER);
  text("This text is centered.", width/2, 160);
  textAlign (LEFT) ;
  text("This text is left aligned.", width/2, 200);
  textAlign(RIGHT);
  text("This text is right aligned.", width/2, 240);
}

