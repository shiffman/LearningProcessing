// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 8-5: Rewrite the gravity example from 
// Chapter 5 using objects with a Ball class. 
// Include two instances of a Ball object.

// Two ball objects
Ball ball1;
Ball ball2;

// Global gravity variable
float gravity = 0.1;  

void setup() { 
  size(200,200); 
  smooth();
  
  // Create ball objects
  ball1 = new Ball(50,0,16);
  ball2 = new Ball(100,50,32);
} 

void draw() { 
  background(255); 
  
  // Display ball objects
  ball1.display();
  ball2.display();

  // Move ball objects
  ball1.update();
  ball2.update();

} 
