// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-8: Fancier looking raindrop

background(255);
smooth();

for (int i = 2; i < 8; i++ ) {
  noStroke();
  fill(0);
  ellipse(width/2,height/2 + i*4,i*2,i*2);
}
