// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 20-1: Using the bouncing ball sketch from Example 5–6, play a sound effect every time the ball bounces off a window's edge.

/*
// Example 5-6: Bouncing Ball
int x = 0;
int speed = 1;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x = x + speed;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x,100,32,32);
}
*/