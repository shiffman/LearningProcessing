// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-2: Doorbell with Sonia

// Import the Sonia library
import pitaru.sonia_v2_9.*;

// A sample object (for a sound)
Sample dingdong;

// A doorbell object (that will trigger the sound)
Doorbell doorbell;

void setup() {
  size(200,200);
  // Start Sonia engine.
  Sonia.start(this); 
  
  // Create a new sample object.
  dingdong = new Sample( "dingdong.wav" );
  
  // Create a new doorbell
  doorbell = new Doorbell(150,100,32);
  smooth();
}

void draw() {
  background(255);
  // Show the doorbell
  doorbell.display(mouseX,mouseY);
}

void mousePressed() {
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX,mouseY)) {
    dingdong.play();
  }
}

// Close the sound engine
public void stop() {
  Sonia.stop();
  super.stop();
}
