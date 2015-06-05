// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-10: Brightness threshold

PImage source;      // Source image
PImage destination; // Destination image

void setup() {
  size(768, 768);
  source = loadImage("sunflower768.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void mousePressed() {
    save("15fig12_" + frameCount + ".png");

}


void draw() {
  float threshold = 127;
  
  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();
  
  for (int x = 0; x < source.width; x++ ) {
    for (int y = 0; y < source.height; y++ ) {
      int loc = x + y*source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold){
        destination.pixels[loc] = color(255); // White
      } else {
        destination.pixels[loc] = color(0);   // Black
      }
    }
  }
  
  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination,0,0);
}