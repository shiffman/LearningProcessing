// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-2: Graphing comma separated numbers from a text file

int[] data;

void setup() { 
  size(480, 240);
  // The text from the file is loaded into an array. 
  String[] stuff = loadStrings("data.txt");
  // This array has one element because the file only has one line. 
  // Convert String into an array of integers using ',' as a delimiter

  // Later we'll see how we can do this with the Table class
  data = int(split(stuff[0], ',' ));
}

void draw() {
  background(255);
  stroke(0);

  for (int i = 0; i < data.length; i ++ ) {
    // The array of ints is used to set the color and height of each rectangle.
    fill(data[i]); 
    rect(i*64, 0, 20, data[i]);
  }
}

