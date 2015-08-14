// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-1: Using java.util.Random instead of random()

import java.util.Random;

Random r;

void setup() {
  size(640, 360);
  // Declaring a Random object and calling the constructor as found at:
  // http://docs.oracle.com/javase/8/docs/api/java/util/Random.html
  r = new Random(); 
  frameRate(5);
}

void draw() {

  // Calling a function found at:
  // http://docs.oracle.com/javase/8/docs/api/java/util/Random.html
  boolean trueorfalse = r.nextBoolean(); 
  if (trueorfalse) {
    background(0);
  } else {
    background(255);
  }
}
