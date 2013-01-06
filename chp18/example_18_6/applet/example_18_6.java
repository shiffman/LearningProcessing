import processing.core.*; import java.applet.*; import java.awt.*; import java.awt.image.*; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.*; import java.util.*; import java.util.zip.*; public class example_18_6 extends PApplet {// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-6: Analyzing King Lear

PFont f;              // A variable to hold onto a font
String[] kinglear;    // The array to hold all of the text
int counter = 1532;   // Where are we in the text (start later b/c Project Gutenberg has licensing info at beginning)

// We will use spaces and punctuation as delimiters
String delimiters = " ,.?!;:[]";

public void setup() {
  size(200,200);
  
  // Load the font
  f = loadFont( "Georgia-Bold-16.vlw" );
  
  // Load King Lear into an array of strings
  String url = "http://www.learningprocessing.com/proxy.php?url=http://www.gutenberg.org/dirs/etext97/1ws3310.txt";
  String[] rawtext = loadStrings(url);
  
  // Join the big array together as one long string
  String everything = join(rawtext, "" );
  
  // All the lines in King Lear are first joined as one big String and then split up into an array of individual words. 
  // Note the use of splitTokens() since we are using spaces and punctuation marks all as delimiters.  
  kinglear = splitTokens(everything,delimiters);
  frameRate(5);
}

public void draw() {
  background(255);
  
  // Pick one word from King Lear
  String theword = kinglear[counter];
  
  // Count how many times that word appears in King Lear
  int total = 0;
  for (int i = 0; i < kinglear.length; i ++ ) {
    if (theword.equals(kinglear[i])) {
      total ++;
    }
  }
  
  // Display the text and total times the word appears
  textFont(f);
  fill(0);
  text(theword,10,90);
  text(total,10,110);
  stroke(0);
  fill(175);
  rect(10,50,total/4,20);
  
  // Move onto the next word
  counter = (counter + 1) % kinglear.length;
}
  static public void main(String args[]) {     PApplet.main(new String[] { "example_18_6" });  }}