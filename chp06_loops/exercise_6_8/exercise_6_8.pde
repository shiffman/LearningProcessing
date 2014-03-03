// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-8: Create a grid of squares (each colored randomly) using a for loop. 
// (Hint: You will need two for loops!) Recode the same pattern using a "while" loop instead of "for."

size(200,200);

// With a for loops
for (int x = 0; x < width; x+=10) {
  for (int y = 0; y < height; y+=10) {
    noStroke();
    fill(random(255));
    rect(x,y,10,10);
  }
} 

// With a while loop
/*int x = 0;
while (x < width) {
  int y = 0;
  while (y < height) {
    noStroke();
    fill(random(255));
    rect(x,y,10,10);
    y += 10;
  }
  x += 10;
}*/

