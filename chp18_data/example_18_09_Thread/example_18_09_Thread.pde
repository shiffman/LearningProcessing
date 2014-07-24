// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-7: Loading a URL asynchronously

Timer timer = new Timer(5000);

final String URL = "http://www.yahoo.com";
String html = ""; // String to hold data from request
int counter = 0;  // Counter to animate rectangle across window
int back = 255;   // Background brightness

void setup() {
  size(400, 400);
  // Execute this method asynchronously using a thread
  thread("retrieveData");
  timer.start();
}

void draw() {
  background(back);
  // Every 5 seconds, make a new request
  if (timer.isFinished()) {
    thread("retrieveData");
    println("Making request!");
    timer.start();
  }

  // Draw some lines with colors based on characters from data retrieved
  for (int i = 0; i < width; i++) {
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

// Update the String variable
void retrieveData() {
  String[] response = loadStrings(URL);
  html = join(response, "");
  back = 255;
  println("Request completed!");
}
