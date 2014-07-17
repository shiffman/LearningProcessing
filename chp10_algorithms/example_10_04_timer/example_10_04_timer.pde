// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-4: Implementing a timer

int savedTime;
int totalTime = 5000;

void setup() {
  size(200, 200);
  background(0);
  savedTime = millis();
}

void draw() {
  // Calculate how much time has passed
  int passedTime = millis() - savedTime;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    println("5 seconds have passed!");
    background(random(255)); // Color a new background
    savedTime = millis(); // Save the current time to restart the timer!
  }
}

