// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-1: Simple displaying text

// Step 2: Declare PFont variable
PFont f;  

void setup() {
  size(200,200);
  
  // Step 3: Load Font
  f = loadFont( "ArialMT-16.vlw" ); 
} 

void draw() {
  background(255);
  textFont(f,16); // Step 4: Specify font to be used
  fill(0);        // Step 5: Specify font color
  
  // Step 6: Display Text
  text ( "Mmmmm ... Strings ..." ,10,100); 
  
}
