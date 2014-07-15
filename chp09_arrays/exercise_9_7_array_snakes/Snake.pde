// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 9-7: Snake Class

class Snake {
  // x and y positions
  int[] xpos;
  int[] ypos;

  // The constructor determines the length of the snake
  Snake(int n) {
    xpos = new int[n];
    ypos = new int[n];
  }

  void update(int newX, int newY) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    for (int i = 0; i < xpos.length-1; i ++ ) {
      xpos[i] = xpos[i+1]; 
      ypos[i] = ypos[i+1];
    }

    // Update the last spot in the array with the mouse location.
    xpos[xpos.length-1] = newX; 
    ypos[ypos.length-1] = newY;
  }

  void display() {
    // Draw everything
    for (int i = 0; i < xpos.length; i ++ ) {
      // Draw an ellipse for each element in the arrays. 
      // Color and size are tied to the loop's counter: i.
      stroke(0);
      fill(255-i*5);
      ellipse(xpos[i],ypos[i],i,i); 
    }

  }

}
