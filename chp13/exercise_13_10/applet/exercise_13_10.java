import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class exercise_13_10 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-10: Develop the beginnings of a Tic-Tac-Toe game. Create a Cell object that 
// can exist in one of two states: "O" or nothing. When you click on the cell, its state changes from 
// nothing to  "O". Here is a framework to get you started.

Cell[][] board;  
int cols = 3;  
int rows = 3;  
public void setup()  {   
  size(300,300);
  smooth();

  int w = width/cols;
  int h = height/rows;

  board = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i*w,j*h,w,h);
    }   
  }   
}   

public void draw()  {   
  background(255);  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();  
    }   
  }   
}   

public void mousePressed()  {   
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].click(mouseX,mouseY);  
    }   
  }    
}   





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
    state = PApplet.parseInt(random(3)); 
  }   

  public void click(int mx, int my)  {   
    if (mx > x && mx < x + w && my > y && my < y + h) {
      state = (state + 1) % 3; 
    }
    
  }   

  public void display()  {   
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


  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "exercise_13_10" });
  }
}
