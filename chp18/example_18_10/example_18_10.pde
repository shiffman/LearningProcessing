// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-10: A Yahoo search

import pyahoo.*;

// Create a YahooSearch object. You have to pass in the API key given to you by Yahoo.
YahooSearch yahoo; 

void setup() {
  size(400,400);
  
  // Make a search object, pass in your key
  yahoo = new YahooSearch(this, "YOUR API KEY HERE");
}

void mousePressed() {
  // Search for a String. By default you will get back 10 results. 
  // If you want more (or less), you can request a specific number by saying: yahoo.search("processing.org", 30);
  yahoo.search("processing.org"); 
}

void draw() {
  noLoop();
}

// When the search is complete
void searchEvent(YahooSearch yahoo) {
  
  // Get Titles and URLs
  String[] titles = yahoo.getTitles();
  // Search results arrive as an array of Strings. 
  // You can also get the summaries with getSummaries().
  String[] urls = yahoo.getUrls(); 
  
  for (int i = 0; i < titles.length; i++) {
    println( "__________" );
    println(titles[i]);
    println(urls[i]);
  }
  
}
