// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-3: Swapping images

int maxImages = 10; // Total # of images
int imageIndex = 0; // Initial image to be displayed is the first

// Declaring an array of images.
PImage[] images = new PImage[maxImages]; 

void setup() {
  size(200, 200);

  // Loading the images into the array
  // Don't forget to put the JPG files in the data folder!
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "animal" + i + ".jpg" );
  }
}

void draw() {
  // Displaying one image
  image(images[imageIndex], 0, 0);
}

void mousePressed() {
  // A new image is picked randomly when the mouse is clicked
  // Note the index to the array must be an integer!
  imageIndex = int(random(images.length));
}
