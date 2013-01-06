// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-1: Modulo

// 4 random numbers
float[] randoms = new float[4];
// Which number are we using
int index = 0; 

void setup() {
  size(200,200);
  
  // Fill array with random values
  for (int i = 0; i < randoms.length; i ++ ) {
    randoms[i] = random(0,256);
  }
  
  frameRate(1);
}

void draw() {
  
  // Every frame we access one element of the array
  background(randoms[index]);
  
  // And then go on to the next one
  index = (index + 1) % randoms.length; // Using the modulo operator to cycle a counter back to 0.
}
