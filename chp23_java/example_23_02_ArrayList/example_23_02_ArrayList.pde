// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 23-2: Simple particle system with ArrayList

ArrayList<Particle> particles;

void setup() {
  size(480, 240);
  particles = new ArrayList<Particle>();
}

void draw() {
  // A new Particle object is added to the ArrayList every cycle through draw().
  particles.add(new Particle()); 

  background(255);
  // Iterate through our ArrayList and get each Particle
  // The ArrayList keeps track of the total number of particles.
  for (Particle p : particles) { 
    p.run();
    p.gravity();
    p.display();
  }

  // If the ArrayList has more than 100 elements in it, we delete the first element, using remove().
  if (particles.size() > 100) {
    particles.remove(0);
  }
}
