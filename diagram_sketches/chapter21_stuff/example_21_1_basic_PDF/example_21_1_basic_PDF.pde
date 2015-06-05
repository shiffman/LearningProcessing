// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 21-1: Basic PDF

// Import the library
import processing.pdf.*;

// Using " PDF " mode, 4th argument is the name of the file
size(400, 400, PDF, "filename.pdf" );

// Draw some stuff!
background(255);
fill(175);
stroke(0);
ellipse(width/2,height/2,160,160);

// Very important, required for the PDF to render properly
exit();
