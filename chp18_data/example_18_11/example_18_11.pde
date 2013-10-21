// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-11: Yahoo search visualization

import pyahoo.*;

YahooSearch yahoo;
PFont f;

// The names to search, an array of"Bubble"objects
String[] names = { "Aliki" , "Cleopatra" , "Penelope" , "Daniel" , "Peter" };
Bubble[] bubbles = new Bubble[names.length];

int searchCount = 0;

void setup() {
  size(500,300);
  yahoo = new YahooSearch(this, "YOUR API KEY HERE" );
  f = createFont("Georgia", 20, true);
  textFont(f);
  smooth();
  
  // Search for all names
  for (int i = 0; i < names.length; i++) {
    // The search() function is called for each name in the array.
    yahoo.search(names[i]); 
  }
}

void draw() {
  background(255);
  
  // Show all bubbles
  for (int i = 0; i < searchCount; i++) {
    bubbles[i].display();
  }
}

// Searches come in one at a time
void searchEvent(YahooSearch yahoo) {
  
  // Total # of results for each search
  // getTotalResultsAvailable() returns the total number of web pages that Yahoo found containing the search phrase. 
  // These numbers can be quite large so they are scaled down before being used as an ellipse size.
  int total = yahoo.getTotalResultsAvailable(); 
  
  // Scale down the number so that it can be viewable
  float r = sqrt(total)/75;
  
  // Make a new bubble object
  // The search data is used to make a Bubble object for the visualization.
  Bubble b = new Bubble(yahoo.getSearchString(), r,50 + searchCount*100,height/2);
  bubbles[searchCount] = b;
  searchCount++;
}

