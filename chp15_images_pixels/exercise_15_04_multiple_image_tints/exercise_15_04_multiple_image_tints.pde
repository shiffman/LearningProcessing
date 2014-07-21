// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-4: Using tint(), create a montage of blended images. What happens when 
// you layer a large number of images, each with different alpha transparency, 
// on top of each other? Can you make it interactive so that different images 
// fade in and out?


int maxImages = 10; // Total # of images

// Declaring an array of images.
PImage[] images = new PImage[maxImages];

void setup() {
  size(200,200);
  
  // Loading the images into the array
  // Don't forget to put the JPG files in the data folder!
  for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "animal" + i + ".jpg" ); 
  }
}

void draw() {
  
  background(0);
  
  for (int i = 0; i < images.length; i++) {
    // There are many more sophisticated ways of doing this
    // For example an ArrayList of objects that keep track of their
    // own alpha values would be flexible and scalable.
    // But here is a quick trick to just cycle through alphas
    // with frameCount
    tint(255,(frameCount + i*20) % 255);
    image(images[i],0,0);
  }
}
