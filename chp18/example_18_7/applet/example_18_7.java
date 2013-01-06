import processing.core.*; import simpleML.*; import java.applet.*; import java.awt.*; import java.awt.image.*; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.*; import java.util.*; import java.util.zip.*; public class example_18_7 extends PApplet {// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-7: Loading a URL with simpleML



// A Request object, from the library
HTMLRequest htmlRequest;
Timer timer = new Timer(5000);

String html = ""; // String to hold data from request
int counter = 0;  // Counter to animate rectangle across window
int back = 255;   // Background brightness

public void setup() {
  size(200,200);
  
  // Create and make an asynchronous request
  htmlRequest = new HTMLRequest(this, "http://www.learningprocessing.com/proxy.php?url=http://www.yahoo.com" ); 
  htmlRequest.makeRequest();
  timer.start();
  background(0);
}

public void draw() {
  background(back);
  
  // A request is made every 5s. The data is not received here, however, this is only the request.  
  if (timer.isFinished()) { 
    htmlRequest.makeRequest();
    println( "Making request! " );
    timer.start();
  }
  
  // Draw some lines with colors based on characters from data retrieved
  for (int i = 0; i < width; i ++ ) {
    if (i < html.length()) {
      int c = html.charAt(i);
      stroke(c,150);
      line(i,0,i,height);
    }
  }
  
  // Animate rectangle and dim rectangle
  fill(255);
  noStroke();
  rect(counter,0,10,height);
  counter = (counter + 1) % width;
  back = constrain(back - 1,0,255);
}

// When a request is finished
// The data is received in the netEvent() function which is automatically called whenever data is ready.
public void netEvent(HTMLRequest ml) { 
  html = ml.readRawSource();        // Read the raw data
  back = 255;                       // Reset background
  println( "Request completed! " ); // Print message
}
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
  
  public void start() {
    running = true;
    savedTime = millis();
  }
  
  public boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (running && passedTime > totalTime) {
      running = false;
      return true;
    } else {
      return false;
    }
  }

}
  static public void main(String args[]) {     PApplet.main(new String[] { "example_18_7" });  }}