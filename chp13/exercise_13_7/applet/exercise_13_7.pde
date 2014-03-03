// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-7:  Use the sine function to create a  "breathing" shape, that is, one whose size oscillates.  

// An array of objects
Breather[] breathers = new Breather[20];

void setup()  {   
  size(200,200);  
  smooth();  
  // Initialize all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i] = new Breather();
  }
}   

void draw() {   
  background(255);  
  // Run all objects
  for (int i = 0; i < breathers.length; i++) {
    breathers[i].breath();
    breathers[i].display();
  }
}   



