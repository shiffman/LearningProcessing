// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-9:  Complete the code which generates the following pattern (Note: the solution 
// uses lines, although it would also be possible to create the image using rotated rectangles, 
// which is covered in Chapter 14).         

void setup()  {   
  size(400,200);  
  smooth();
}   

void draw()  {   
  background(255);  
  stroke(0);  
  branch(width/2,height,100);  
}   

void branch(float x, float y, float h)  {   
  line(x,y,x-h,y-h);
  line(x,y,x+h,y-h);
  if (h > 2) {
    branch(x-h,y-h,h/2);
    branch(x+h,y-h,h/2);
  }   
}
