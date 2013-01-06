// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-12: Pixel neighbor differences (edges)

PImage img;         // Source image
PImage destination; // Destination image

void setup() {
  size(200,200);
  img = loadImage("sunflower.jpg");
  destination = createImage(img.width, img.height, RGB);
}

void draw() {
  
  // We are going to look at both image's pixels
  img.loadPixels();
  destination.loadPixels();
  
  // Since we are looking at left neighbors
  // We skip the first column
  for (int x = 1; x < width; x++ ) {
    for (int y = 0; y < height; y++ ) {
      
      // Pixel location and color
      int loc = x + y*img.width;
      color pix = img.pixels[loc];
      
      // Pixel to the left location and color
      int leftLoc = (x - 1) + y*img.width;
      color leftPix = img.pixels[leftLoc];
      
      // New color is difference between pixel and left neighbor
      float diff = abs(brightness(pix) - brightness(leftPix));
      destination.pixels[loc] = color(diff); 
    }
  }
  
  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination,0,0);
}
