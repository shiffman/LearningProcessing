// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-8: Loading XML with simpleML

import simpleML.*;

XMLRequest xmlRequest;

void setup() {
  size(200,200);
  
  // Creating and starting the request
  // An array of XML elements can be retrieved using getElementArray. 
  // This only works for elements with the same name that appear multiple times in the XML document.
  xmlRequest = new XMLRequest(this, "http://rss.news.yahoo.com/rss/topstories" );
  xmlRequest.makeRequest();
}

void draw() {
  noLoop(); // Nothing to see here
}

// When the request is complete
void netEvent(XMLRequest ml) {
  
  // Retrieving an array of all XML elements inside"  title*  "tags
  String[] headlines = ml.getElementArray( "title" );
  for (int i = 0; i < headlines.length; i++ ) {
    println(headlines[i]);
  }

}
