// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-3: Scrolling headlines 

// An array of news headlines
String[] headlines = {
  "Processing downloads break downloading record.", 
  "New study shows computer programming lowers cholesterol.",
};

PFont f; // Global font variable
float x; // Horizontal location
int index = 0;

void setup() {
  size(480, 270);
  f = createFont( "Arial", 16);

  // Initialize headline offscreen
  x = width;
}

void draw() {
  background(255);
  fill(0);

  // Display headline at x location
  textFont(f, 16);
  textAlign (LEFT);

  // A specific String from the array is displayed according to the value of the "index" variable.
  text(headlines[index], x, height-20); 

  // Decrement x
  x = x - 3;

  // If x is less than the negative width, then it is off the screen
  // textWidth() is used to calculate the width of the current String.
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length;
  }
}

