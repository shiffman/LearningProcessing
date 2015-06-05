// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-9: Using textWidth(), redo Example 17-4 (the text "mirror") to use a 
// non-fixed-width font with proper character spacing.


import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 20;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto capture object
Capture video;
import processing.pdf.*;

// A String and Font
String chars = "itwasadarkandstormynightthequickbrownfoxjumpedoverthelazydog";
PFont f;
boolean record;
void mousePressed() {
  record = true;
}
void setup() {
  size(640, 480);
  //set up columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  video = new Capture(this, cols, rows);
  video.start();

  // Load the font
  f = createFont("Georgia", 24);
}

void draw() { 
  // Read image from the camera
  if (video.available()) {
    video.read();
  }
  if (record) {
    beginRecord(PDF, "17exericse09_textwidthmirror.pdf");
  }    
  video.loadPixels();
  //image(video,0,0,width,height);

  background(255);
  textFont(f);

  // Use a variable to count through chars in String
  int charcount = 0;

  // Begin loop for rows
  for ( int j = 0; j < rows; j++) {
    // Begin loop for columns, instead of pixel by pixel now
    // we move with a variable floating point x,  based on character width
    float x = 0;
    while (x < width) {
      // Where are we, pixel-wise for y?
      int y = j*videoScale;
      // Where are we pixel-wise for x? Convert to int, scale down, and make sure we don't go offscreen 
      int pix = constrain((int) (x / videoScale), 0, cols-1);

      // Looking up the appropriate color in the pixel array
      color c = video.pixels[pix+j*video.width]; 

      // Displaying an individual character from the String
      // Instead of a rectangle
      textFont(f);
      fill(c);
      char ch = chars.charAt(charcount);
      text(ch, x, y+12);
      // Go on to the next character, loop back to zero at end
      charcount = (charcount + 1) % chars.length();
      // Move x according to character's widt
      x += textWidth(ch);
    }
  }
  if (record) {
    endRecord();
    record = false;
  }
}