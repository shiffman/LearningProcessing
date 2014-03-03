// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 18-8: Expand Example 18-5 to also search for the next day's high and low temperature.

/*
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-5: Parsing Yahoo's XML weather feed manually

PFont f;
String[] zips = { "10003" , "21209" , "90210" };
int counter = 0;
// The WeatherGrabber object does the work for us!
WeatherGrabber wg;

void setup() {
  size(200,200);
  // Make a WeatherGrabber object
  wg = new WeatherGrabber(zips[counter]);
  // Tell it to request the weather
  wg.requestWeather();
  f = createFont( "Georgia" ,16,true);
}

void draw() {
  background(255);
  textFont(f);
  fill(0);
  // Get the values to display
  String weather = wg.getWeather();
  int temp = wg.getTemp();
  // Display all the stuff we want to display
  text(zips[counter],10,160);
  text(weather,10,90);
  text(temp,10,40);
  text("Click to change zip. " ,10,180);
  // Draw a little thermometer based on the temperature
  stroke(0);
  fill(175);
  rect(10,50,temp*2,20);
}

void mousePressed() {
  // Increment the counter and get the weather at the next zip code
  counter = (counter + 1) % zips.length;
  wg.setZip(zips[counter]);
  wg.requestWeather(); // The data is requested again with a new zip code every time the mouse is pressed.
}

// A WeatherGrabber class
class WeatherGrabber {
  int temperature = 0;
  String weather = "";
  String zip;
  
  WeatherGrabber(String tempZip) {
    zip = tempZip;
  }
  
  // Set a new Zip code
  void setZip(String tempZip) {
    zip = tempZip;
  }
  
  // Get the temperature
  int getTemp() {
    return temperature;
  }
  
  // Get the weather
  String getWeather() {
    return weather;
  }
  
  // Make the actual XML request
  void requestWeather() {
    // Get all the HTML/XML source code into an array of strings
    // (each line is one element in the array)
    String url = "http://xml.weather.yahoo.com/forecastrss?p=" + zip;
    String[] lines = loadStrings(url);
    String xml = join(lines, "" ); // Turn array into one long String
    // Searching for weather condition
    String lookfor = " <yweather:condition text=\"";
    String end = "\"";
    weather = giveMeTextBetween(xml,lookfor,end);
    // Searching for temperature
    lookfor = "temp=\"";
    temperature = int(giveMeTextBetween (xml,lookfor,end));
  }
  
  // A function that returns a substring between two substrings
  String giveMeTextBetween(String s, String before, String after) {
    String found = "";
    int start = s.indexOf(before); // Find the index of the beginning tag
    if (start == - 1) return""; // If we don't find anything, send back a blank
    // String
    start += before.length(); // Move to the end of the beginning tag
    int end = s.indexOf(after,start); // Find the index of the end tag
    if (end == -1) return""; // If we don't find the end tag, send back a blank String
    return s.substring(start,end); // Return the text in between
  }
}
*/