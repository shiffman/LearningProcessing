// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-9: Loading a URL asynchronously with thread()

Timer timer = new Timer(1000);
String time = "";

// Let's only animate when we are waiting for the data
boolean loading = true;

void setup() {
  size(200, 200);
  // Execute this method asynchronously using a thread
  thread("retrieveData");
  timer.start();
}

void draw() {
  background(255);
  // Every 1 second, make a new request
  if (timer.isFinished()) {
    // In case you want to see the difference with stuttering
    // retrieveData();
    thread("retrieveData");
    loading = true;
    println("Making request!");
    timer.start();
  }

  fill(0);
  text(time, 40, 100);

  translate(20, 100);
  stroke(0);
  // Animate only when waiting for data
  if (loading) {
    rotate(frameCount*0.04);
  }
  for (int i = 0; i < 10; i++) {
    rotate(radians(36));
    line(5, 0, 10, 0);
  }
}

// Update the String variable
void retrieveData() {
  delay(500);
  JSONObject json = loadJSONObject("http://time.jsontest.com/");
  time = json.getString("time");
  loading = false;
  // This is a cheat to make it take longer
  println("Request completed!");
}
