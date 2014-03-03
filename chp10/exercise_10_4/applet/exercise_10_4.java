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

public class exercise_10_4 extends PApplet {

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4: The raindrop catching game

Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

// A boolean to let us know if the game is over
boolean gameOver = false;

// Variables to keep track of score, level, lives left
int score = 0;      // User's score
int level = 1;      // What level are we on
int lives = 10;     // 10 lives per level (10 raindrops can hit the bottom)
int levelCounter = 0;

PFont f;

public void setup() {
  size(400,400);
  smooth();
  catcher = new Catcher(32); // Create the catcher with a radius of 32
  drops = new Drop[50];    // Create 50 spots in the array (each level now just has 25 drops)
  timer = new Timer(300);   // Create a timer that goes off every 2 seconds
  timer.start();             // Starting the timer

  f = createFont("Arial",12,true); // A font to write text on the screen
}

public void draw() {
  background(255);

  // If the game is over
  if (gameOver) {
    textFont(f,48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER",width/2,height/2);
  } 
  else {

    // Set catcher location
    catcher.setLocation(mouseX,mouseY); 
    // Display the catcher
    catcher.display(); 

    // Check the timer
    if (timer.isFinished()) {
      // Deal with raindrops
      // Initialize one drop
      if (totalDrops < drops.length) {
        drops[totalDrops] = new Drop();
        // Increment totalDrops
        totalDrops++;
      }
      timer.start();
    }

    // Move and display all drops
    for (int i = 0; i < totalDrops; i++ ) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();
        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished(); 
          // If the drop reaches the bottom a live is lost
          lives--;
          // If lives reach 0 the game is over
          if (lives <= 0) {
            gameOver = true; 
          }
        } 

        // Everytime you catch a drop, the score goes up
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }


    // If all the drops are done, that leve is over!
    if (levelCounter >= drops.length) {
      // Go up a level
      level++;
      // Reset all game elements
      levelCounter = 0;
      lives = 10;
      timer.setTime(constrain(300-level*25,0,300));
      totalDrops = 0; 
    }





    // Display number of lives left
    textFont(f,14);
    fill(0);
    text("Lives left: " + lives,10,20);
    rect(10,24,lives*10,10);

    text("Level: " + level,300,20);
    text("Score: " + score,300,40);
  }


}






// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4: The raindrop catching game

class Catcher {
  float r;   // radius
  int col; // color
  float x,y; // location
  
  Catcher(float tempR) {
    r = tempR;
    col = color(50,10,10,150);
    x = 0;
    y = 0;
  }
  
  public void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  public void display() {
    stroke(0);
    fill(col);
    ellipse(x,y,r*2,r*2);
  }
  
  // A function that returns true or false based on
  // if the catcher intersects a raindrop
  public boolean intersect(Drop d) {
    // Calculate distance
    float distance = dist(x,y,d.x,d.y); 
    
    // Compare distance to sum of radii
    if (distance < r + d.r) { 
      return true;
    } else {
      return false;
    }
  }
}
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4: The raindrop catching game

class Drop {
  float x,y;   // Variables for location of raindrop
  float speed; // Speed of raindrop
  int c;
  float r;     // Radius of raindrop

  // New variable to keep track of whether drop is still being used
  boolean finished = false;

  Drop() {
    r = 8;                 // All raindrops are the same size
    x = random(width);     // Start with a random x location
    y = -r*4;              // Start a little above the window
    speed = random(2,5);   // Pick a random speed
    c = color(50,100,150); // Color
  }

  // Move the raindrop down
  public void move() {
    // Increment by speed
    y += speed; 
  }

  // Check if it hits the bottom
  public boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) { 
      return true;
    } 
    else {
      return false;
    }
  }

  // Display the raindrop
  public void display() {
    // Display the drop
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x,y + i*4,i*2,i*2);
    }
  }

  // If the drop is caught
  public void finished() {
    finished = true;
  }
}



// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4: The raindrop catching game

class Timer {
 
  int savedTime; // When Timer started
  int totalTime; // How long Timer should last
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  public void setTime(int t) {
    totalTime = t;
  }
  
  // Starting the timer
  public void start() {
    // When the timer starts it stores the current time in milliseconds.
    savedTime = millis(); 
  }
  
  // The function isFinished() returns true if 5,000 ms have passed. 
  // The work of the timer is farmed out to this method.
  public boolean isFinished() { 
    // Check how much time has passed
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "exercise_10_4" });
  }
}
