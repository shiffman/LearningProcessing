// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-5: Parsing Yahoo's XML weather feed manually

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
    String url = "http://www.learningprocessing.com/proxy.php?url=http://xml.weather.yahoo.com/forecastrss?p=" + zip;
    String[] lines = loadStrings(url);
    
    // Turn array into one long String
    String xml = join(lines, "" ); 
    
    // Searching for weather condition
    String lookfor = "<yweather:condition  text=\"";
    String end = "\"";
    weather = giveMeTextBetween(xml,lookfor,end);
    
    // Searching for temperature
    lookfor = "temp=\"";
    temperature = int(giveMeTextBetween (xml,lookfor,end));
  }
  
  // A function that returns a substring between two substrings
  String giveMeTextBetween(String s, String before, String after) {
    String found = "";
    int start = s.indexOf(before);    // Find the index of the beginning tag
    if (start == - 1) return"";       // If we don't find anything, send back a blank String
    start += before.length();         // Move to the end of the beginning tag
    int end = s.indexOf(after,start); // Find the index of the end tag
    if (end == -1) return"";          // If we don't find the end tag, send back a blank String
    return s.substring(start,end);    // Return the text in between
  }
  
}
