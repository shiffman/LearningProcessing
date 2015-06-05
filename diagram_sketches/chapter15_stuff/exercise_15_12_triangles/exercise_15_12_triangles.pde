// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-12: Create a sketch that uses shapes to 
// display a pattern that covers an entire window. Load 
// an image and color the shapes according to the pixels 
// of that image. The following image, for example, uses 
// triangles.

float scl = 3.84;

// Image variable
PImage img;
int sz = int(5*3.84);

void setup() {
  size(768, 768);
  img = loadImage( "sunflower768.jpg" ); // Load the image
  println(sz);
}



void mousePressed() {
  save("15exercise12_trianglemosaic.png");
}
void draw() {
  background(255);

  // Call loadPixels before we deal with pixels
  loadPixels();  
  // Loop through all pixels, skip every 10 pixels along the y-axis
  for (int y = 0; y < img.height; y+=sz*2 ) {
    // skip every 5 pixels along the x-axis
    for (int x = 0; x < img.width+sz; x+=sz) {
      // Calculate the 1D location from a 2D grid
      int loc = x + y*img.width;
      // Color according to the image
      stroke(img.pixels[loc]);
      fill(img.pixels[loc]);
      // Draw a triangle pointing up or pointing down
      if (x % 2 == 0) triangle(x-sz, y, x, y+sz*2, x+sz, y);
      else triangle(x-sz, y+sz*2, x, y, x+sz, y+sz*2);
    }
  }
}

