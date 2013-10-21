// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-7: Loading a URL with simpleML

// Timer Class from Chapter 10

class Timer {
  
  int savedTime;
  boolean running = false;
  int totalTime;
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  void start() {
    running = true;
    savedTime = millis();
  }
  
  boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (running && passedTime > totalTime) {
      running = false;
      return true;
    } else {
      return false;
    }
  }

}
