// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-1: Using java.util.Random instead of random()

Random r;

void setup() {
  size(200,200);
  // Declaring a Random object and calling the constructor as found at:
  // http://java.sun.com/j2se/1.4.2/ docs/api/java/util/Random.html
  r = new Random(); 
  frameRate(5);
}

void draw() {
  
  // Calling a function found at:
  // http://java.sun.com/j2se/1.4.2/docs/api/java/util/Random.html
  boolean trueorfalse = r.nextBoolean(); 
  if (trueorfalse) {
    background(0);
  } else {
    background(255);
  }
  
}
