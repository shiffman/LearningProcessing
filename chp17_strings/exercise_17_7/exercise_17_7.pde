// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-7: Create a video text mosaic where each letter is colored white, 
// but the size of each letter is determined by a pixel's brightness. 
// The brighter the pixel, the bigger it is. Here is a little bit of code from the 
// inside of the pixel loop (with some blank spots) to get you started.

/*
 float b = brightness(video.pixels[i + j*video.width]);
 float fontSize = ____ * (_____ / _____);
 textSize(fontSize);
 */

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 14;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto capture object
Capture video;

// The source text used in the mosaic pattern. A longer String might produce more interesting results.
String chars = "helloworld" ; 

PFont f;

void setup() {
  size(640,480);
  // Set up columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  video = new Capture(this,cols,rows,15);

  // Load the font
  // Using a fixed-width font. In most fonts, individual characters have different widths. 
  // In a fixed-width font, all characters have the same width. 
  // This is useful here since we intend to display the letters one at a time spaced out evenly. 
  // See Section 17.7 for how to display text character by character with a nonfixed width font.
  f = createFont("Courier",20,true);
  textFont(f);
}

void draw() {
  background(0);

  // Read image from the camera
  if (video.available()) {
    video.read();
  }
  video.loadPixels();

  // Use a variable to count through chars in String
  int charcount = 0;
  // Begin loop for rows
  for (int j = 0; j < rows; j ++ ) {
    // Begin loop for columns
    for (int i = 0; i < cols; i ++ ) {

      // Where are we, pixel-wise?
      int x = i*videoScale;
      int y = j*videoScale;

      // Map the brightness of a pixel to the size of a font
      float b = brightness(video.pixels[i + j*video.width]);
      float fontSize = 36 * (b / 255);
      textSize(fontSize);

      // One character from the source text is displayed colored accordingly to the pixel location. 
      // A counter variable -- charcount -- is used to walk through the source String one character at a time.
      text(chars.charAt(charcount),x,y);

      // Go on to the next character
      charcount = (charcount + 1) % chars.length();
    }
  }
}


