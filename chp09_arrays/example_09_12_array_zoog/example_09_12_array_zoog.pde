// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-12: 200 Zoog objects in an array

// The only difference between this example and the previous chapter (Example 8-3) 
// is the use of an array for multiple Zoog objects.
Zoog[] zoogies = new Zoog[200];

void setup() {
  size(480, 270);
  for (int i = 0; i < zoogies.length; i ++ ) {
    zoogies[i] = new Zoog(random(width),random(height),30,30,8);
  }
}

void draw() {
  background(255); // Draw a black background
  for (int i = 0; i < zoogies.length; i ++ ) {
    zoogies[i].display();
    zoogies[i].jiggle();
  }
}
