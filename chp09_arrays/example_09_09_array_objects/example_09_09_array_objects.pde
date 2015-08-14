// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-9: An array of Car objects

Car[] cars = new Car[180]; // An array of 100 Car objects!

void setup() {
  size(480, 270);
  for (int i = 0; i < cars.length; i ++ ) { // Initialize each Car using a for loop.
    cars[i] = new Car(color(i*2),0,i*2,i/20.0); 
  }
}

void draw() {
  background(255);
  for (int i = 0; i < cars.length; i ++ ) { // Run each Car using a for loop.
    cars[i].move();
    cars[i].display();
  }
}
