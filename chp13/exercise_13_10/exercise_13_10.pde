// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 13-10: Develop the beginnings of a Tic-Tac-Toe game. Create a Cell object that 
// can exist in one of two states: "O" or nothing. When you click on the cell, its state changes from 
// nothing to  "O". Here is a framework to get you started.

Cell[][] board;  
int cols = 3;  
int rows = 3;  
void setup()  {   
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

void draw()  {   
  background(255);  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();  
    }   
  }   
}   

void mousePressed()  {   
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].click(mouseX,mouseY);  
    }   
  }    
}   





