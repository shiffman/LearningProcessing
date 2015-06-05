// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 16-3: Adjust video brightness

// Step 1. Import the video library
import processing.video.*;

// Step 2. Declare a Capture object
Capture video;

void setup() {
  size(640, 480);

  // Step 3. Initialize Capture object via Constructor
  video = new Capture(this, width, height); 
  video.start();
}

// An event for when a new frame is available
void captureEvent(Capture video) {
  // Step 4. Read the image from the camera.
  video.read();
}
void draw() {

  loadPixels();
  video.loadPixels();

  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {

      // Calculate the 1D location from a 2D grid
      int loc = x + y*video.width;

      // Get the R,G,B values from image
      float r, g, b;
      r = red  (video.pixels[loc]);
      g = green(video.pixels[loc]);
      b = blue (video.pixels[loc]);

      // Calculate an amount to change brightness based on proximity to the mouse
      float d = dist(x, y, mouseX, mouseY);
      float adjustbrightness = map(d, 0, 200, 4, 0);
      r *= adjustbrightness;
      g *= adjustbrightness;
      b *= adjustbrightness;

      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);

      // Make a new color and set pixel in the window
      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}

void mousePressed() {
  
  save("16fig03_flashlight.png");
  
}