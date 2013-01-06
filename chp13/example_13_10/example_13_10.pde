// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 13-10: Two-dimensional array of objects

// 2D Array of objects
Cell[][] grid; 

// Number of columns and rows in the grid
int cols = 10;
int rows = 10;

void setup() {
  size(200,200);
  grid = new Cell[cols][rows];
  
  // The counter variables i and j are also the column and row numbers
  // In this example, they are used as arguments to the constructor for each object in the grid.
  for (int i = 0; i < cols; i ++ ) {
    for (int j = 0; j < rows; j ++ ) {
      // Initialize each object
      grid[i][j] = new Cell(i*20,j*20,20,20,i + j);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i ++ ) {     
    for (int j = 0; j < rows; j ++ ) {
      // Oscillate and display each object
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
