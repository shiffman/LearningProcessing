// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 23-2: Rewrite Example 23-2 so that particles are removed from the list whenever they leave the window (i.e., their y location is greater than height).

/*
Hint: Add a function that returns a boolean in the Particle class.
______ finished() {
  if (_______) {
    return _______;
  } else {
    return false;
  }
}

Hint: In order for this to work properly, you must iterate through elements of the ArrayList backward! Why? Because when an element is removed, all subsequent elements are shifted to the left (see Figure 23.4 ).

for (int i = ______; i _______; i_______) {
  Particle p = (Particle) particles.get(i);
  p.run();
  p.gravity();
  p.render();
  if (_______) {
    ______;
  }
}


// Example 23-2: Simple particle system with ArrayList

ArrayList particles;

void setup() {
  size(200,200);
  particles = new ArrayList();
  smooth();
}

void draw() {
  particles.add(new Particle()); //   A new Particle object is added to the ArrayList every cycle through draw().
  background(255);
  // Iterate through our ArrayList and get each Particle
  for (int i = 0; i < particles.size(); i++ ) { // The ArrayList keeps track of how many elements it is storing and we iterate through them all.
    Particle p = (Particle) particles.get(i);
    p.run();
    p.gravity();
    p.display();
  }
  // Remove the first particle when the list gets over 100.
  if (particles.size() > 100) {
    particles.remove(0); //   If the ArrayList has more than 100 elements in it, we delete the first element, using remove().
  }
}

// A simple Particle class
class Particle {
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  Particle() {
    x = mouseX;
    y = mouseY;
    xspeed = random(-1,1);
    yspeed = random(-2,0);
  }
  
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  void gravity() {
    yspeed += 0.1;
  }
  
  void display() {
    stroke(0);
    fill(0,75);
    ellipse(x,y,10,10);
  }
}

*/