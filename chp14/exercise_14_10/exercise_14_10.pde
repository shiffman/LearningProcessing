// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 14-10: How would you add moons to the planets? Hint: Write a Moon class that 
// is virtually identical to the Planet. Then, incorporate a Moon variable into the Planet class. 
// (In Chapter 22, we will see how this could be made more efficient with advanced OOP techniques.)  

// An array of 4 planet objects
Planet[] planets = new Planet[3];

void setup() {
  size(200,200);
  smooth();
  
  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++ ) {
    planets[i] = new Planet(30 + i*25,12);
  }
}

void draw() {
  background(255);
  
  // Drawing the Sun
  pushMatrix();
  translate(width/2,height/2);
  stroke(0);
  fill(255);
  ellipse(0,0,20,20);
  
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
