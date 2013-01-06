import processing.core.*; import java.applet.*; import java.awt.*; import java.awt.image.*; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.*; import java.util.*; import java.util.zip.*; public class example_1_5 extends PApplet {public void setup() {// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-5: Zoog
size(200,200);
background(255);
smooth();
ellipseMode(CENTER);
rectMode(CENTER); 

// Body
stroke(0);
fill(150);
rect(100,100,20,100);

// Head
fill(255);
ellipse(100,70,60,60); 

// Eyes
fill(0); 
ellipse(81,70,16,32); 
ellipse(119,70,16,32);

// Legs
stroke(0);
line(90,150,80,160);
line(110,150,120,160);	

noLoop(); }   static public void main(String args[]) {     PApplet.main(new String[] { "example_1_5" });  }}