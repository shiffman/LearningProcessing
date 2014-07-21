// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-10: Create a sketch that starts with characters randomly 
// scattered (and rotated). Have them slowly move back toward their "home" 
// location. Use an object-oriented approach as seen in Example 17-6.

PFont f;
String message = "random characters flying home!";
// An array of Letter objects
Letter[] letters;

void setup() {
  size(400, 200);
  // Load the font
  f = createFont("Georgia", 20);
  textFont(f);

  // Create the array the same size as the String
  letters = new Letter[message.length()];
  // Initialize Letters at the correct x location
  int x = 50;
  for (int i = 0; i < message.length (); i++) {
    letters[i] = new Letter(x, height/2, message.charAt(i)); 
    x += textWidth(message.charAt(i));
  }
}

void draw() { 
  background(255);
  for (int i = 0; i < letters.length; i++) {
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

