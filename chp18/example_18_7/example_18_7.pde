// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-7: Loading a URL with simpleML

import simpleML.*;

// A Request object, from the library
HTMLRequest htmlRequest;
Timer timer = new Timer(5000);

String html = ""; // String to hold data from request
int counter = 0;  // Counter to animate rectangle across window
int back = 255;   // Background brightness

void setup() {
  size(200,200);
  
  // Create and make an asynchronous request
  htmlRequest = new HTMLRequest(this, "http://www.learningprocessing.com/proxy.php?url=http://www.yahoo.com" ); 
  htmlRequest.makeRequest();
  timer.start();
  background(0);
}

void draw() {
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
void netEvent(HTMLRequest ml) { 
  html = ml.readRawSource();        // Read the raw data
  back = 255;                       // Reset background
  println( "Request completed! " ); // Print message
}
