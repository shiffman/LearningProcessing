// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 6-6: Legs with a for loop

size(480, 270);
background(255);

int y = 80;       // Vertical location of each line
int spacing = 10; // How far apart is each line
int len = 20;     // Length of each line

// Translation of the legs while loop to a for loop.
for (int x = 50; x <= 150; x += spacing) { 
  line(x,y,x,y + len);
}
