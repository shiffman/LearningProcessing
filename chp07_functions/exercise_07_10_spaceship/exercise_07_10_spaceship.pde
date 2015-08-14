// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 7-10: Spaceships

import processing.pdf.*;


void setup() {
  size(480, 240);
}

void mousePressed() {
  redraw();
}
void draw() {
  beginRecord(PDF, "7_zoog_spaceship_exercise.pdf"); 

  background(255);  // Draw a white background 
  spaceShip(482, 159, 223);
  spaceShip(126, 89, 93);
  spaceShip(422, 286, 84);
  spaceShip(294, 49, 48);
  spaceShip(162, 220, 151);
  
  save("7_zoog_spaceship_exercise.jpg");
  endRecord();

  //int r = int(random(0, 100));
  //randomSeed(r);
  //println(r);

  //for (int i = 0; i < 5; i++) {
  //  float w = random(20, 300);
  //  float x = random(w, width-w);
  //  float y = random(w/2, height-w/2);
  //  spaceShip(x, y, w);
  //  println("spaceShip("+int(x) + "," + int(y) + "," + int(w) + ");");
  //}
  //noLoop();
}

void spaceShip(float x, float y, float w) {
  fill(50);
  noStroke();
  ellipse(x, y, w, w/3);
  ellipse(x, y-w/8, w/3, w/3);

  float diam = w * 0.125;
  for (float windowX = x-diam*2; windowX <= x+diam*2; windowX += diam*2) {
    fill(255);
    ellipse(windowX, y, diam, diam);
  }
}