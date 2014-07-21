// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-6: Stock Ticker 

// A class to describe a stock quote
class Stock {
  String name; // Name
  int val;     // Value
  float x;     // x position
  
  String display;  // What we see onscreen

  Stock(String n, int v) {
    name = n;
    val = v;
    // Concatenate the name, value and some spaces
    display = name + " " + val + "   ";
  }
  
  // A function to set x position
  void setX(float x_) {
    x = x_;
  }
  
  // Scroll the quote and reset it when it gets far enough offscreen
  void move() {
    x = x - 1;
    if (x < width-totalW) {
      x = width;
    } 
  }

  // Display the quote
  void display() {
    textFont(f);
    textAlign(LEFT);
    fill(0);
    text(display,x,height-10); 
  }
  
  // Return the width of the quote
  float textW() {
    textFont(f);
    return textWidth(display); 
  }
}

