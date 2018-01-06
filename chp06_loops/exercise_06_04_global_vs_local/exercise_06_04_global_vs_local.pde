// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-4: Predict the results of the following two
// programs. Test your theory by running them.

/*
//SKETCH #1: Global "count"
int count = 0;

void setup() {
  size(200,200);
}

void draw() {
  count = count + 1;
  background(count);
}
________


*/
//SKETCH #2: Local "count"

void setup() {
  size(200,200);
}

void draw() {
  int count = 0;
  count = count + 1;
  background(count);
}
/*
________
*/
