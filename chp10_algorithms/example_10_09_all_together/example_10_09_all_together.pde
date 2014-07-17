// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-9: Using all the objects in one sketch

Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

void setup() {
  size(640, 360);
  catcher = new Catcher(32); // Create the catcher with a radius of 32
  drops = new Drop[1000];    // Create 1000 spots in the array
  timer = new Timer(2000);   // Create a timer that goes off every 2 seconds
  timer.start();             // Starting the timer
}

void draw() {
  background(255);

  // From Part 1. The Catcher!
  catcher.setLocation(mouseX, mouseY); // Set catcher location
  catcher.display(); // Display the catcher

  // From Part 3. The Timer!
  // Check the timer
  if (timer.isFinished()) {
    println("2 seconds have passed!");
    timer.start();
  }

  // From Part 4. The Raindrops!
  // Initialize one drop
  drops[totalDrops] = new Drop();
  // Increment totalDrops
  totalDrops++ ;

  // If we hit the end of the array
  if (totalDrops >= drops.length) {
    totalDrops = 0; // Start over
  }

  // Move and display all drops
  for (int i = 0; i < totalDrops; i ++ ) {
    drops[i].move();
    drops[i].display();
  }
}

