// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-3: Creating objects from a text file

Bubble[] bubbles;

void setup() {
  size(200,200);
  smooth();
  
  // Load text file as an array of Strings
  String[] data = loadStrings("data.txt");
  
  // The size of the array of Bubble objects is determined by the total number of lines in the text file.
  bubbles = new Bubble[data.length]; 
  for (int i = 0; i < bubbles.length; i ++ ) {
    // Each line is split into an array of floating point numbers.
    float[] values = float(split(data[i], "," )); 
    // The values in the array are passed into the Bubble class constructor.
    bubbles[i] = new Bubble(values[0],values[1],values[2]); 
  }
}

void draw() {
  background(255);
  
  // Display and move all bubbles
  for (int i = 0; i < bubbles.length; i ++ ) {
    bubbles[i].display();
    bubbles[i].drift();
  }

}
