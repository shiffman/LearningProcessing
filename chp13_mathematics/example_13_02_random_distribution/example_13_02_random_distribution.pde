// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-2: Random number distribution

// An array to keep track of how often random numbers are picked.
float[] randomCounts;

void setup() {
  size(480, 240);
  randomCounts = new float[width/20];
}

void draw() {
  background(255);

  // Pick a random number and increase the count
  int index = int(random(randomCounts.length));
  randomCounts[index]++;

  // Draw a rectangle to graph results
  stroke(0);
  fill(175);
  for (int x = 0; x < randomCounts.length; x ++ ) {
    rect(x * 20, 0, 19, randomCounts[x]);
  }
}

