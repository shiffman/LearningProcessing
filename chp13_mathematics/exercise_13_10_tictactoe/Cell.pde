// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-10: Develop the beginnings of a Tic-Tac-Toe game. Create a Cell object that 
// can exist in one of two states: "O" or nothing. When you click on the cell, its state changes from 
// nothing to  "O". Here is a framework to get you started.

// A Cell object  
class Cell  {   
  float x,y;  
  float w,h;  
  int state;  

  // Cell Constructor  
  Cell(float tempX, float tempY, float tempW, float tempH)  {   
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = int(random(3)); 
  }   

  void click(int mx, int my)  {   
    if (mx > x && mx < x + w && my > y && my < y + h) {
      state = (state + 1) % 3; 
    }
    
  }   

  void display()  {   
    stroke(0);
    noFill();
    rect(x,y,w,h);
    
    int b = 8;
    
    if (state == 0) {
      // nothing
    } else if (state == 1) {
      // Draw an O
      ellipse(x+w/2,y+h/2,w-b,h-b);
    } else if (state == 2) {
      // Draw an X
      line(x+b,y+b,x+w-b,y+h-b);
      line(x+w-b,y+b,x+b,y+h-b); 
    }
  }

}   

