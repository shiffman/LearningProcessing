import processing.sound.*;

SoundFile soundFile;

void setup() {
  size(200, 200); 
  soundFile = new SoundFile(this, "dragon.wav");
  soundFile.loop();
}

void draw() {
  background(255);
  // Map the ball's x location to a panning value (between -1.0 and 1.0)
  float panning = map(mouseX, 0., width, -1.0, 1.0);
  soundFile.pan(panning);
  
  // Draw a circle
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
}
