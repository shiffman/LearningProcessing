// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-4: Super fancy ArrayList and rectangle particle system

// Declaring a global variable of type ArrayList
ArrayList particles;

// A "Rectangle" will suck up particles
Rectangle blackhole;

void setup() {
  size(200,200);
  blackhole = new Rectangle(50,150,100,25);
  particles = new ArrayList();
  smooth();
}

void draw() {
  background(255);
  
  // Displaying the Rectangle
  stroke(0);
  fill(175);
  rect(blackhole.x, blackhole.y, blackhole.width,blackhole.height);
  
  // Add a new particle at mouse location
  particles.add(new Particle(mouseX,mouseY));
  
  // Loop through all Particles
  for (int i = particles.size() - 1; i >= 0; i-- ) {
    Particle p = (Particle) particles.get(i);
    p.run();
    p.gravity();
    p.display();
    
    // If the Rectangle contains the location of the Particle, stop the Particle from moving.
    if (blackhole.contains(p.x,p.y)) { 
      p.stop();
    }
    
    // If the particle is no longer needed, it is deleted from the list
    if (p.finished()) {
      particles.remove(i);
    }
  }
}
