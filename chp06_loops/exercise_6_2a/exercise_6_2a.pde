// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-2a: Rewrite Exercise 6-1a using a for loop.

size(200,200);
background(255);
for (int y = 0; y < height; y += 10) {
  stroke(0);
  line(0,y,width,y);
}

