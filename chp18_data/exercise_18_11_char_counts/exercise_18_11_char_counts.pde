// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Count the number of times each letter of the alphabet appears in King Lear
// Visualize those counts. Here is one possibility (you should be more creative). 
// Note this sketch will require the use of the  charAt() function.  

PFont f; // A variable to hold onto a font

String all;
int[] letterCounts = new int[26];
int maxCount = 0;

void setup() {
  size(390,200);
  // Load the font
  f = createFont("Georgia",16,true);
  // Load King Lear into an array of strings
  String url = "http://www.gutenberg.org/dirs/etext97/1ws3310.txt";
  String[] rawtext = loadStrings(url);
  all = join(rawtext," ");
  // Convert everything to lower case 
  all = all.toLowerCase();


  for (int i = 0; i < all.length(); i++) {
    // Look at every character
    char c = all.charAt(i);
    // Is it a-z?
    if (c > 96 && c < 123) {
      // Subtract 97 (ASCII code for 'a')
      // This maps the characters to a range of 0-25
      int index = c - 97;
      // Use that index to increase the count
      letterCounts[index]++;
    } 
  }

  // Find the highest letter count
  // We'll use this in order to normalize the values
  // for the bar graph
  for (int i = 0; i < letterCounts.length; i++) {
    if (letterCounts[i] > maxCount) {
      maxCount = letterCounts[i];
    }
  }
}

void draw() {
  background(255);
  textFont(f);
  fill(0);
  
  // Draw a bar graph
  for (int x = 0; x < letterCounts.length; x++) {
    // Height according to count
    float h = 180*(letterCounts[x] / (float)maxCount);
    stroke(0);
    strokeWeight(1);
    fill(175);
    rect(x*15,height-h,15,h); 
    fill(0);
    textAlign(CENTER);
    text((char)(x+97),x*15+15/2.0,height-h-5);
  }
}
