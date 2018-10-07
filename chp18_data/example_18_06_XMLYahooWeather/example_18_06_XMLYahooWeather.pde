/**
 * Loading XML Data
 * by Daniel Shiffman.
 *
 * This example demonstrates how to use loadXML()
 * to retrieve data from an XML document via a URL
 */

// We're going to store the temperature
int temperature = 0;
// We're going to store text about the weather
String weather = "";
// We're going to store the location name
String city = "";

// The woeid (where on earth id) we'll check for.
// Search for "woeid lookup" to find your own.
String woeid = "638242";

void setup() {
  size(600, 360);

  // The URL for the XML document
  String url = "http://query.yahooapis.com/v1/public/yql?format=xml&q=select+*+from+weather.forecast+where+woeid=" + woeid + "+and+u='C'";
  println(url);

  // Load the XML document
  XML xml = loadXML(url);

  // Grab the elements we want
  XML location = xml.getChild("results/channel/yweather:location");
  XML forecast = xml.getChild("results/channel/item/yweather:condition");

  // Get the attributes we want
  city = location.getString("city");
  temperature = forecast.getInt("temp");
  weather = forecast.getString("text");
}

void draw() {
  background(255);
  fill(0);

  // Display all the stuff we want to display
  textSize(28);
  text("Location: " + city, width*0.15, height*0.33);
  text("Today’s high: " + temperature, width*0.15, height*0.5);
  text("Forecast: " + weather, width*0.15, height*0.66);
}
