// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-5: Zoog
size(480, 270);
background(255);
ellipseMode(CENTER);
rectMode(CENTER); 

// Body
stroke(0);
fill(150);
rect(240, 145, 20, 100);

// Head
fill(255);
ellipse(240, 115, 60, 60); 

// Eyes
fill(0); 
ellipse(221, 115, 16, 32); 
ellipse(259, 115, 16, 32);

// Legs
stroke(0);
line(230, 195, 220, 205);
line(250, 195, 260, 205);	