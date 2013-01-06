// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-5: Client reading values as rotation value

// Import the net libraries
import processing.net.*;
// Declare a client
Client client;
// The data we will read from the server
int data;

void setup() {
  size(200,200);
  smooth();
  // Create the Client
  client = new Client(this,"127.0.0.1", 5204);
}

void draw() {
   // Read data
  if (client.available() > 0) {
    data = client.read();
  }
  
  background(255);
  stroke(0);
  fill(175);
  translate(width/2,height/2);
  
  // The incoming data is used to rotate a square.
  float theta = (data/255.0) * TWO_PI;
  rotate(theta); 
  
  rectMode(CENTER);
  rect(0,0,64,64);
}
