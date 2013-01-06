// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-1: Simple sound with video library

import processing.video.*;

Movie movie;

void setup() {
  size(200, 200);
  movie = new Movie (this, "dingdong.wav");
}

void draw() {
  
  background(0);
  noLoop();
}

void mousePressed() {
  movie.stop();
  movie.play();
}
