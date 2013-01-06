// A Cell object

class Cell {

  // A cell object knows about its location in the grid as well as its size with the variables x, y, w, h.
  float x,y;   // x,y location
  float w,h;   // width and height
  float angle; // angle for oscillating brightness
  
  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  }
  
  // Oscillation means increase angle
  void oscillate() {
    angle += 0.02;
  }
  
  void display() {
    stroke(255);
    // Color calculated using sine wave
    fill(127 + 127*sin(angle));
    rect(x,y,w,h);
  }
}
