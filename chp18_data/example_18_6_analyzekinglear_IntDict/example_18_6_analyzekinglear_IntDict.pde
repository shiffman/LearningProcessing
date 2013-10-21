// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-6: Analyzing King Lear

String[] kinglear;    // The array to hold all of the text

// We will use spaces and punctuation as delimiters
String delimiters = " ,.?!;:[]";

IntDict words;

void setup() {
  size(360, 640);

  // Load King Lear into an array of strings
  String url = "http://www.gutenberg.org/dirs/etext97/1ws3310.txt";
  String[] rawtext = loadStrings(url);

  // Join the big array together as one long string
  String everything = join(rawtext, "" );

  // All the lines in King Lear are first joined as one big String and then split up into an array of individual words. 
  // Note the use of splitTokens() since we are using spaces and punctuation marks all as delimiters.  
  kinglear = splitTokens(everything, delimiters);

  // Make a new empty dictionary
  words = new IntDict();

  for (int i = 0; i < kinglear.length; i++) {
    String s = kinglear[i].toLowerCase();
    words.increment(s);
  }

  // Sort so that words that appear most often are first
  words.sortValuesReverse();
}

void draw() {
  background(255);

  // Display the text and total times the word appears
  int h = 20;
  String[] keys = words.keyArray();
  
  for (int i = 0; i < height/h; i++) {
    String theword = keys[i];
    int count = words.get(theword);
    
    fill(51);
    rect(0, i*20, count/4, h-4);
    fill(0);
    text(theword, 10+count/4,i*h+h/2);
    stroke(0);
  }

}

