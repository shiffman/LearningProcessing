// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-6: Analyzing Text

String[] allwords;    // The array to hold all of the text

// We will use spaces and punctuation as delimiters
String delimiters = " ,.?!;:[]";
import processing.pdf.*;
IntDict concordance;

void setup() {
  size(220, 260);

  // Load A Midsummer Night's Dream into an array of strings
  String url = "http://www.gutenberg.org/cache/epub/1514/pg1514.txt";
  String[] rawtext = loadStrings(url);

  // Join the big array together as one long string
  String everything = join(rawtext, "" );

  // All the lines in King Lear are first joined as one big String and then split up into an array of individual words. 
  // Note the use of splitTokens() since we are using spaces and punctuation marks all as delimiters.  
  allwords = splitTokens(everything, delimiters);

  // Make a new empty dictionary
  concordance = new IntDict();

  for (int i = 0; i < allwords.length; i++) {
    String s = allwords[i].toLowerCase();
    concordance.increment(s);
  }

  // Sort so that words that appear most often are first
  concordance.sortValuesReverse();
}

void draw() {
  background(255);
  beginRecord(PDF, "18fig12_concordance_viz.pdf"); 

  // Display the text and total times the word appears
  int h = 20;
  String[] keys = concordance.keyArray();

  for (int i = 0; i < height/h; i++) {
    String word = keys[i];
    int count = concordance.get(word);

    fill(51);
    rect(0, i*20, count/4, h-4);
    fill(0);
    text(word + ": " + count, 10+count/4, i*h+h/2);
    stroke(0);
  }
  endRecord();
  noLoop();
}