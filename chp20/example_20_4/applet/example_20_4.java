import processing.core.*; import pitaru.sonia_v2_9.*; import java.applet.*; import java.awt.*; import java.awt.image.*; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.*; import java.util.*; import java.util.zip.*; public class example_20_4 extends PApplet {// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

// Import the Sonia library


// A Sample object (for a sound)
Sample tone;

public void setup() {
  size(200,200);
  // Start Sonia engine.
  Sonia.start(this); 
  
  // Create a new sample object.
  tone = new Sample( "tone.wav" );
  
  // Loop the sound forever
  // (well, at least until stop() is called)
  tone.repeat();
  smooth();
}

public void draw() {
  if (tone.isPlaying()) {
    background(255);
  } else {
    background(100);
  }
  
  // Set the volume to a range between 0 and 1.0
  float ratio = (float) mouseX / width;
  tone.setVolume(ratio);
  
  // Set the rate to a range between 0 and 88,200
  // Changing the rate alters the pitch
  ratio = (float) mouseY / height;
  
   // The rate is set according to the mouseY position.
  tone.setRate(ratio*88200);
  
  // Draw some rectangles to show what is going on
  stroke(0);
  fill(175);
  rect(0,160,mouseX,20);
  stroke(0);
  fill(175);
  rect(160,0,20,mouseY);
}

// Pressing the mouse stops and starts the sound
public void mousePressed() {
  if (tone.isPlaying()) {
    tone.stop(); //   The sound can be stopped with the function stop().
  } else {
    tone.repeat();
  }
}

// Close the sound engine
public void stop() {
  Sonia.stop();
  super.stop();
}
  static public void main(String args[]) {     PApplet.main(new String[] { "example_20_4" });  }}