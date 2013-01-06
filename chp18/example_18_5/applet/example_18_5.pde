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
  // The data is requested again with a new zip code every time the mouse is pressed.
  wg.requestWeather(); 
}
