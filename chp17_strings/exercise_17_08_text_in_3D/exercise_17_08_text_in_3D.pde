// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// http://www.learningprocessing.com

// Exercise 17-8: Display text that is centered and rotated to appear flat. Have the text scroll off into the distance.

// \n means new line. In Java, invisible characters can be incorporated into a String with an “escape sequence”-a backward slash “\” followed by a character.
// Here are a few more.
// \n-new line
// \r-carriage return
// \t-tab
// \'-single quote
// \”-double quote
// \-backward slash

String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float y = 0;

void setup() {
  size(400, 200, P3D);
  f = createFont( "Arial", 12);
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  rotateX(PI/4);
  textFont(f);
  textAlign(CENTER);
  text(info, 0, y);
  y--;
}
