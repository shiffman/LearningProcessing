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


