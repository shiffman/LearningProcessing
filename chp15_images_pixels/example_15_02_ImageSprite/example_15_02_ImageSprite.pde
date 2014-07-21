// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-2: Image "sprite"

PImage head; // A variable for the image file
float x,y;   // Variables for image location
float rot;   // A variable for image rotation

void setup() {
  size(200,200);
  
  // Load image, initialize variables
  head = loadImage("face.jpg");
  x = 0.0;
  y = width/2.0;
  rot = 0.0;
}

void draw() {
  background(255);
  
  // Translate and rotate
  translate(x,y);
  rotate(rot);
  
  // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
  imageMode(CENTER);
  image(head,0,0); 
  
  // Adjust variables for animation
  x += 1.0;
  rot += 0.02;
  if (x > width+head.width) {
    x = -head.width;
  }
}
