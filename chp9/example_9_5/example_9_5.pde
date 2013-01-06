// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-5: Using a for loop to initialize all elements of an array

float[] values = new float[1000];

for (int n = 0; n < 1000; n ++ ) {
  values[n] = random(0,10);
}