// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 18-6: Rewrite Example 17-3 so that it loads the headlines from a text file.

/*
// Example 17-3: Scrolling headlines 

// An array of news headlines
String[] headlines = {
  "Processing downloads break downloading record." , //   Multiple Strings are stored in an array.
  "New study shows computer programming lowers cholesterol." ,
};
PFont f; // Global font variable
float x; // Horizontal location
int index = 0;

void setup() {
  size(400,200);
  f = createFont( "Arial" ,16,true);
  // Initialize headline offscreen
  x = width;
}

void draw() {
  background(255);
  fill (0);
  // Display headline at x location
  textFont(f,16);
  textAlign (LEFT);
  text(headlines[index],x,180); // A specific String from the array is displayed according to the value of the “index” variable.
  // Decrement x
  x = x - 3;
  // If x is less than the negative width,
  // then it is off the screen
  float w = textWidth(headlines[index]); // textWidth() is used to calculate the width of the current String.
  if (x < -w) {
    x = width;
    index = (index + 1) % headlines.length; // “index"is incremented when the current String has left the screen in order to display a new String.
  }
}
*/