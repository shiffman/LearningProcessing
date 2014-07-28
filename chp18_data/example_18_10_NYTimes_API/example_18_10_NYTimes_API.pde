/**
 * Loading JSON Data
 * by Daniel Shiffman.  
 * 
 * to retrieve JSON data via URL
 */

void setup() {
  size(200, 200);

  // The URL for the JSON data (replace "imperial" with "metric" for celsius)
  String apiKey = "40e2ea0b3ca44563f9c62aeded0431dc:18:51513116";
  String url = "http://api.nytimes.com/svc/search/v2/articlesearch.json";
  String query = "?q=processing&sort=newest";

  // Load the XML document
  JSONObject json = loadJSONObject(url+query+"&api-key="+apiKey);
  String headline = json.getJSONObject("response").getJSONArray("docs").getJSONObject(0).getJSONObject("headline").getString("main");
  background(255);
  fill(0);
  text(headline,10,10,180,190);
}
