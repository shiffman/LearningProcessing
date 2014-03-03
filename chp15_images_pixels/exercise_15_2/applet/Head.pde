// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-2: Rewrite Example 15-2 in an object-oriented fashion where the data for the 
// image, location, size, rotation, and so on is contained in a class. Can you have the class swap 
// images when it hits the edge of the screen? 

class Head  {   
  PImage head; // A variable for the image file
  float x,y;   // Variables for image location
  float rot;   // A variable for image rotation

  Head(String filename, float x_, float y_) { 
    // Load image, initialize variables 
    head = loadImage(filename);
    x = x_;
    y = y_;
    rot = 0.0;
  }   

  void display()  {   
    // Translate and rotate
    translate(x,y);
    rotate(rot);

    // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
    image(head,0,0); 

  }   

  void move()  {   
    // Adjust variables for animation
    x += 1.0;
    rot += 0.02;
    if (x > width+head.width) {
      x = -head.width;
    }

  }   
}    




