// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-7: Loading a URL asynchronously with thread()


String time = "";

void setup() {
  size(200, 200);
}

void draw() {
  thread("requestData");
  text(time, 40, 100);
  println(frameRate);
}

void requestData() {
  JSONObject json = loadJSONObject("http://time.jsontest.com/");
  time = json.getString("time");
  text(time, 40, 100);
}
