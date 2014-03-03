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

public class exercise_17_10 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-10: Create a sketch that starts with characters randomly 
// scattered (and rotated). Have them slowly move back toward their "home" 
// location. Use an object-oriented approach as seen in Example 17-6.

PFont f;
String message = "random characters flying home!";
// An array of Letter objects
Letter[] letters;

public void setup() {
  size(400, 200);
  // Load the font
  f = createFont("Georgia",20,true);
  textFont(f);
  
  // Create the array the same size as the String
  letters = new Letter[message.length()];
  // Initialize Letters at the correct x location
  int x = 50;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x,height/2,message.charAt(i)); 
    x += textWidth(message.charAt(i));
  }
}

public void draw() { 
  background(255);
  for (int i = 0; i < letters.length; i++) {
    // Display all letters
    letters[i].display();
    
    // If the mouse is pressed the letters shake
    // If not, they return to their original location
    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }

}
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// A class to describe a single Letter
class Letter {
  char letter;
  // The object knows its original "home" location
  float homex,homey;
  // As well as its current location
  float x,y;
  // And an angle of rotation
  float theta;

  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    x = random(width);
    y = random(height);
    theta = random(TWO_PI);
    letter = letter_; 
  }

  // Display the letter
  public void display() {
    fill(0);
    textAlign(LEFT);
    // User translate and rotate to draw the letter
    pushMatrix();
    translate(x,y);
    rotate(theta);
    text(letter,0,0);
    popMatrix();
  }

  // Move the letter randomly
  public void shake() {
    x += random(-2,2);
    y += random(-2,2);
    theta += random(-0.5f,0.5f);
  }

  // Return the letter home using lerp!
  public void home() {
    x = lerp(x,homex,0.05f);
    y = lerp(y,homey,0.05f);
    theta = lerp(theta,0,0.05f);
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exercise_17_10" });
  }
}
