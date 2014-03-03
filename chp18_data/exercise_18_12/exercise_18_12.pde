import simpleML.*;

// Variables for temperature and weather 
int temperature = 0; 
String weather = "";

void setup() { 
  size(200,200);
  XMLRequest xreq = new XMLRequest(this,"http://xml.weather.yahoo.com/forecastrss?p=10025");
  xreq.makeRequest();
  // FILL THIS IN HOWEVER YOU LIKE!
  textFont(createFont("Arial",16,true));
}
void draw() { 
  background(255);
  // FILL THIS IN HOWEVER YOU LIKE!
  
  textAlign(CENTER);
  fill(0);
  text(temperature + "\n" + weather,100,50);
  
}
// Function that makes the weather request with a Zip Code 
void getWeather(String zip) {
  String url = "http://xml.weather.yahoo.com/ forecastrss?p="+zip;
  XMLRequest req = new XMLRequest(this,url); 
  req.makeRequest();
}
void netEvent(XMLRequest ml) { // Get the specific XML content we want
  temperature = int(ml.getElementAttributeText("yweather:condition","temp"));
  weather = ml.getElementAttributeText("yweather:condition","text");
  println(temperature);
  println(weather);
}

