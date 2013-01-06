// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-3: Doorbell with Minim

class Doorbell {
  
  // Location and size
  float x;
  float y;
  float r;
  
  // An AudioPlayer object is used to store the sound.
  AudioSnippet dingdong; 
  
  // Create the doorbell
  Doorbell (float x_, float y_, float r_, String filename) {
    x = x_;
    y = y_;
    r = r_;
    
    // load "dingdong.wav" into a new AudioPlayer
    dingdong = minim.loadSnippet(filename);
  }
  
  // If the "doorbell" is ringing, the shape jiggles
  void jiggle() {
    // The doorbell only jiggles if the sound is playing.
    if (dingdong.isPlaying()) { 
      x += random(-1,1);
      y += random(-1,1);
      r = constrain(r + random(-2,2),10,100);
    }
  }
  // The doorbell rings!
  void ring() {
    if (!dingdong.isPlaying()) {
      // The ring() function plays the sound, as long as it is not already playing. 
      // rewind() ensures the sound starts from the beginning.
      dingdong.rewind(); 
      dingdong.play();
    }
  }

  // Is a point inside the doorbell (used for mouse rollover, etc.)
  boolean contains(float mx, float my) {
    if (dist(mx,my,x,y) < r) {
      return true;
    } else {
      return false;
    }
  }
  // Show the doorbell (hardcoded colors, could be improved)
  void display(float mx, float my) {
    if (contains(mx,my)) {
      fill( 126,114,100);
    } else {
      fill(119,152,202);
    }
    stroke(202,175,142);
    ellipse(x,y,r,r);
  }
  void close() {
    // The doorbell has a close() function to close the AudioPlayer object.
    dingdong.close(); 
  }
}
