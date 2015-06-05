// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-2: Manipulate video image

// Step 1. Import the video library
import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(255);

  // Tinting using mouse location
  tint(mouseX, mouseY, 255);

  // A video image can also be moved, rotated, tinted, resized just as with a PImage.
  translate(width/2,height/2);
  imageMode(CENTER);
  rotate(PI/4);
  image(video, 0, 0, mouseX, mouseY);
}

void mousePressed() {
  
  save("16fig02_manipulate.png");
  
}