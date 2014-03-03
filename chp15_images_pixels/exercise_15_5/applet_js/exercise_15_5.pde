// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-5: Create multiple instances of an image sequence onscreen. 
// Have them start at different times within the sequence so that they are out of sync. 
// Hint: Use object-oriented programming to place the image sequence in a class.

// An array of "Animation" objects
Animation[] animations = new Animation[10];

void setup() {
  size(400,300);
  frameRate(30);

  for (int i = 0; i < animations.length; i ++ ) {
    animations[i] = new Animation();
  }
}

void draw() {

  background(50);
  for (int i = 0; i < animations.length; i ++ ) {
    animations[i].display();
    animations[i].next();
  }
}


// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-5: Create multiple instances of an image sequence onscreen. 
// Have them start at different times within the sequence so that they are out of sync. 
// Hint: Use object-oriented programming to place the image sequence in a class.

class Animation {
  float x;  // location for Animation
  float y;  // location for Animation

  int maxImages = 15; // Total # of images
  int imageIndex = 0; // Initial image to be displayed is the first

  // Declaring an array of images.
  PImage[] images = new PImage[maxImages];

  Animation() {
    x = random(width);
    y = random(height);
    
    // Loading the images into the array
    // Don't forget to put the JPG files in the data folder!
    for (int i = 0; i < images.length; i ++ ) {
      images[i] = loadImage( "seq/seq" + (i+1) + ".jpg" ); 
    }
    
    // This is the key, start each animation on a different image!
    imageIndex = int(random(images.length));
  }

  void display() {
    image(images[imageIndex],x,y);
  }

  void next() {
    // increment image index by one each cycle
    // use modulo " % "to return to 0 once the end of the array is reached
    imageIndex = (imageIndex + 1) % images.length;
  }



}



