// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 15-6: Setting pixels according to their 2D location

size(200,200);
loadPixels();

 // Two loops allow us to visit every column (x) and every row (y).
 
// Loop through every pixel column
for (int x = 0; x < width; x++ ) {
  // Loop through every pixel row
  for (int y = 0; y < height; y++ ) {
    
    // Use the formula to find the 1D location
    int loc = x + y * width; // The location in the pixel array is calculated via our formula: 1D pixel location = x + y * width
    
    if (x % 2 == 0) { // If we are an even column
      pixels[loc] = color(255);
    } else { // If we are an odd column
      pixels[loc] = color(0); //   We use the column number (x) to determine whether the color should be black or white.
    }
  
  }
}

updatePixels();
