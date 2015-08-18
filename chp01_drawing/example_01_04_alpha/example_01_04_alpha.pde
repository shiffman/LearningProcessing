// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-4: Alpha Transparency
size(480, 270);
background(0);
noStroke();

// No fourth argument means 100% opacity.
fill(0, 0, 255);
rect(0, 0, 240, 200);

// 255 means 100% opacity.
fill(255, 0, 0, 255);
rect(0, 0, 480, 40);

// 75% opacity.
fill(255, 0, 0, 191);
rect(0, 50, 480, 40);

// 55% opacity.
fill(255, 0, 0, 127);
rect(0, 100, 480, 40);

// 25% opacity.
fill(255, 0, 0, 63);
rect(0, 150, 480, 40);