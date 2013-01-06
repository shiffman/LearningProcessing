// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-4: Loading and saving data to text file

// An array of Bubble objects
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
    
    // Change bubbles if mouse rolls over
    if (bubbles[i].rollover(mouseX,mouseY)) {
      bubbles[i].change();
    }
  }
}

// Save new Bubble data when mouse is pressed
void mousePressed() {
  saveData();
}

void saveData() {
  
  // For each Bubble make one String to be saved
  String[] data = new String[bubbles.length];
  
  for (int i = 0; i < bubbles.length; i ++ ) {
    // Concatenate bubble variables
    data[i] = bubbles[i].r + " , " + bubbles[i].g + " , " + bubbles[i].diameter;
  }
  
  // Save to File
  // The same file is overwritten by adding the data folder path to saveStrings().
  saveStrings("data/data.txt", data); 

}
