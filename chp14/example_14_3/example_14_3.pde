// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-3: A rectangle moving along the z-axis

// A variable for the Z (depth) coordinate
float z = 0;

void setup() {
  // When using (x,y,z) coordinates, we must tell Processing we want a 3D sketch. 
  // This is done by adding a third argument, P3D (or OPENGL), to the size() function. 
  size(200,200,P3D); 
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  // Translate to a point before displaying a shape there
  translate(width/2,height/2,z);
  rectMode(CENTER);
  rect(0,0,8,8); 
  
  // Increment z (i.e. move the shape toward the viewer)
  z++ ;
  
  // Restart rectangle
  if (z > 200) {
    z = 0;
  }
  
  
  
}
