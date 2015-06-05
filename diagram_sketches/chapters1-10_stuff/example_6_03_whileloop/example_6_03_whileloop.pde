import processing.pdf.*;

// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 6-3: While loop

size(200, 200);
beginRecord(PDF,"fig_06_04_morearms.pdf");
background(255);

int y = 80;       // Vertical location of each line
int x = 50;       // Initial horizontal location for first line
int spacing = 4; // How far apart is each line
int len = 20;     // Length of each line

// A variable to mark where the legs end.
int endLegs = 150; 
stroke(0);

// Draw each leg inside a while loop.
while (x <= endLegs) { 
  line (x, y, x, y + len);
  x = x + spacing;
}
endRecord();