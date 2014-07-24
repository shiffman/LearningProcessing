// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-5: Parsing IMDB manually

String name = "Mary Poppins";
String runningtime;
PImage poster;

void setup() {
  size(300, 350);
  loadData();
}

void draw() {
  background(255);

  // Display all the stuff we want to display
  image(poster, 10, 10, 164, 250);
  fill(0);
  text("Mary Poppins", 10, 300);
  text(runningtime, 10, 320);
}

// Grab the data from IMDB
void loadData() {
  // Get the raw HTML source into an array of strings
  // (each line is one element in the array)
  String url = "http://www.imdb.com/title/tt0058331/";
  String[] lines = loadStrings(url);

  // Turn array into one long String
  String html = join(lines, ""); 

  // Searching for running time
  String start = "<time itemprop=\"duration\" datetime=\"PT139M\">";
  String end = "</time>";
  runningtime = giveMeTextBetween(html, start, end);

  // Searching for poster image
  start = "<link rel='image_src' href=\"";
  end = "\">";
  String imgUrl = giveMeTextBetween(html, start, end);
  poster = loadImage(imgUrl);
}

// A function that returns a substring between two substrings
String giveMeTextBetween(String s, String before, String after) {
  String found = "";
  int start = s.indexOf(before);     // Find the index of the beginning tag
  if (start == -1) {
    return "";   // If we don't find anything, send back a blank String
  }    
  start += before.length();          // Move to the end of the beginning tag
  int end = s.indexOf(after, start); // Find the index of the end tag
  if (end == -1) {
    return "";          // If we don't find the end tag, send back a blank String
  }
  return s.substring(start, end);    // Return the text in between
}

