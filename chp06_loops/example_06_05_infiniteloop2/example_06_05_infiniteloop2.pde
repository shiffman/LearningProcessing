// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 6-5: Another infinite loop. Don't do this!

int y = 80;        // Vertical location of each line
int x = 0;         // Horizontal location of first line
int spacing = 10;  // How far apart is each line
int len = 20;      // Length of each line
int endLegs = 150; // Where should the lines stop?

void setup() {
  size(480, 240);
}

void draw() {
  background(0);
  stroke(255);
  x = 0;
  
  // The spacing variable, which sets the distance in between each line, is assigned a value equal to mouseX divided by two.
  // THIS LINE IS COMMENTED OUT SO THAT THE SKETCH DOES NOT CRASH
  // IF YOU PUT IT BACK IN THIS SKETCH WILL CRASH!
  // spacing = mouseX / 2; 
  
  // Exit Condition: when x is greater than endlegs.
  while (x <= endLegs) { 
    line(x,y,x,y + len);
    // Incrementation of x. 
    // x always increases by the value of spacing.
    //  What is the range of possible values for spacing?
    x = x + spacing; 
  }
}
