// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 15-6: Complete the code to match the 
// corresponding screenshots.

/*
size(255,255);
__________________;
for (int x = 0; x < width; x ++ ) {
  for (int y = 0; y < height; y ++ ) {
    int loc = __________________;
    float distance = __________________);
    pixels[loc] = __________________;
  }
}
__________________;
size(255,255);
__________________;
for (int x = 0; x < width; x ++ ) {
  for (int y = 0; y < height; y ++ ) {
    __________________;
    if (___________________) {
      ___________________;
      } else {
        ___________________;
      }
    }
  }
  __________________;
  */
  
// Solution #1
size(255, 255);
loadPixels();
for (int x = 0; x < width; x ++ ) {
  for (int y = 0; y < height; y ++ ) {
    int loc = x + y * width;
    float distance = dist(width/2, height/2, x, y);
    pixels[loc] = color(distance);
  }
}
updatePixels();

// Solution #2
loadPixels();
for (int x = 0; x < width; x ++ ) {
  for (int y = 0; y < height; y ++ ) {
    int loc = x + y * width;
    if (x > width/2) {
      pixels[loc] = color(y);
    } else {
      pixels[loc] = color(255 - y);
    }
  }
}
updatePixels();
