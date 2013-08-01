// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 1-4: Alpha Transparency
size(640,240);
background(0);
noStroke();

// No fourth argument means 100% opacity.
fill(0,0,255);
rect(0,0,320,200);

// 255 means 100% opacity.
fill(255,0,0,255);
rect(0,0,640,40);

// 75% opacity.
fill(255,0,0,191);
rect(0,50,640,40);

// 55% opacity.
fill(255,0,0,127);
rect(0,100,640,40);

// 25% opacity.
fill(255,0,0,63);
rect(0,150,640,40);
