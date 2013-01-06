// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-5: Making a QuickTime movie

// The MovieMaker class is part of Processing's video library.
import processing.video.*; 

// Declare MovieMaker object
MovieMaker mm; 

void setup() {
  size(320, 240);
  // Create MovieMaker object with size, filename,
  // framerate, compression codec and quality
  mm = new MovieMaker(this, width, height, "drawing.mov" , 30, MovieMaker.H263,
  MovieMaker.HIGH);
  background(255);
}

void draw() {
  stroke(0);
  strokeWeight(4);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  // A new frame is added to the movie every cycle through draw().
  mm.addFrame();
}

void keyPressed() {
  // Finish the movie if space bar is pressed!
  if (key == ' ' ) {
    println( "finishing movie" );
    // Do not forget to finish the movie! Otherwise, it will not play properly.
    mm.finish(); 
  }
}
