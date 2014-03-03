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

public class exercise_17_6 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-6: Stock Ticker 

// An array of stock objects
Stock[] stocks = new Stock[6];
float totalW = 0;

PFont f; // Global font variable

public void setup() {
  size(400,200);
  f = createFont( "Arial" ,16,true);
  
  // Giving the stocks names and values to display
  stocks[0] = new Stock("ZOOG",903);
  stocks[1] = new Stock("FOR",55);
  stocks[2] = new Stock("ELSE",100);
  stocks[3] = new Stock("BLAH",100);
  stocks[4] = new Stock("OF",100);
  stocks[5] = new Stock("PROC",92);  
  
  // We space the stock quotes out according to textWidth()
  float x = 0;
  for (int i = 0; i < stocks.length; i++) {
    stocks[i].setX(x);
    x = x + (stocks[i].textW()); 
  }
  totalW = x;
  

}

public void draw() {
  background(255);
  fill(0);
  
   
  
  // Move and display all quotes
  for (int i = 0; i < stocks.length; i++) {
    stocks[i].move();
    stocks[i].display();
  }
}
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
  public void setX(float x_) {
    x = x_;
  }
  
  // Scroll the quote and reset it when it gets far enough offscreen
  public void move() {
    x = x - 1;
    if (x < width-totalW) {
      x = width;
    } 
  }

  // Display the quote
  public void display() {
    textFont(f);
    textAlign(LEFT);
    fill(0);
    text(display,x,height-10); 
  }
  
  // Return the width of the quote
  public float textW() {
    textFont(f);
    return textWidth(display); 
  }
}


  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_17_6" });
  }
}
