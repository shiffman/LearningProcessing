// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 9-11: Resizing an array using append()

Ball[] balls = new Ball[1]; // We start with an array with just one element.
float gravity = 0.1;

void setup() {
  size(200,200);
  smooth();
  
  // Initialize ball index 0
  balls[0] = new Ball(50,0,16);
}

void draw() {
  background(255);
  
  // Update and display all balls
  for (int i = 0; i < balls.length; i ++ ) { // Whatever the length of that array, update and display all of the objects.
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
}

void mousePressed() {
  // A new ball object
  Ball b = new Ball(mouseX,mouseY,16); // Make a new object at the mouse location.
  balls = (Ball[]) append(balls,b);

  // Here, the function, append() adds an element to the end of the array. 
  // append() takes two arguments. The first is the array you want to append to, and the second is the thing you want to append. 
  // You have to reassign the result of the append() function to the original array. 
  // In addition, the append() function requires that you explicitly state the type of data in the array again by putting the 
  // array data type in parentheses: (Ball[]) This is known as casting.
}
