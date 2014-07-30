import processing.sound.*;

float x,y;

SoundFile soundFile;

void setup() {
  size(400, 400); 
  background(0);
  soundFile = new SoundFile(this, "dragon.wav");
  soundFile.loop();
  // create the ball
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  float x = mouseX;
  // map the ball's x location to a panning degree (float between -1.0 and 1.0)
  float panning = map(x, 0., width, -1.0, 1.0);
  soundFile.pan(panning);
  ellipse(x, y, 100, 100);
}
