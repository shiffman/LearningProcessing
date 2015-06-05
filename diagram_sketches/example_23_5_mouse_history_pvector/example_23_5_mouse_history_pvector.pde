// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-5: A snake following the mouse
// Using an ArrayList of PVector objects

// Declare an ArrayList of PVector objects
ArrayList<PVector> history = new ArrayList<PVector>();

void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  // New mouse position
  PVector mouse = new PVector(mouseX, mouseY);
  history.add(mouse);

  // Remove old ones
  if (history.size() > 50) {
    history.remove(0);
  }

  // Draw everything
  for (int i = 0; i < history.size (); i++ ) {
    // Draw an ellipse for each element in the ArrayList. 
    // Color and size are tied to the loop's counter: i.
    noStroke();
    fill(255-i*5);
    // Grab the current PVector
    PVector position = history.get(i);
    // Look at the x and y of each PVector
    ellipse(position.x, position.y, i, i);
  }
}

