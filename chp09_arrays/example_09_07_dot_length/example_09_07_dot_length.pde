// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-7: An array operation using dot length

float[] values = new float[100];

for (int i = 0; i < values.length; i++ ) {
  values[i] = random(0,10);
}

for (int i = 0; i < values.length; i ++ ) {
  values[i] = 0;
}  
