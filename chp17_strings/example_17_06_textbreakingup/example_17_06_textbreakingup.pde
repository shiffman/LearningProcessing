// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-6: Text breaking up 

PFont f;
String message = "click mouse to shake it up";

// An array of Letter objects
Letter[] letters;

void setup() {
  size(480, 240);

  // Load the font
  f = createFont("Arial", 20);
  textFont(f);

  // Create the array the same size as the String
  letters = new Letter[message.length()];

  // Initialize Letters at the correct x location
  int x = 216;
  for (int i = 0; i < message.length (); i ++ ) {
    // Letter objects are initialized with their location within the String as well as what character they should display.
    letters[i] = new Letter(x, 180, message.charAt(i)); 
    x += textWidth(message.charAt(i));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < letters.length; i ++ ) {

    // Display all letters
    letters[i].display();

    // If the mouse is pressed the letters shake
    // If not, they return to their original location
    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}

