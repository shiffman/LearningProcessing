// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-5: Object-oriented timer

Timer timer;

void setup() {
  size(200, 200);
  background(0);
  timer = new Timer(5000);
  timer.start();
}

void draw() {
  if (timer.isFinished()) {
    background(random(255));
    timer.start();
  }
}

