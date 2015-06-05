// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-3: Server broadcasting a number (0-255)

// Import the net libraries
import processing.net.*;

// Declare a server
Server server;
int data = 0;

void setup() {
  size(200, 200, JAVA2D_2X);
  // Create the Server on port 5204
  server = new Server(this, 5204);
}

void draw() {
  background(255);

  // Display data
  textAlign(CENTER);
  textSize(64);
  fill(0);
  text(data, width/2, height/2);

  // Broadcast data (the number is continuously sent to all clients because write() is called every cycle through draw())
  server.write(data);

  // Arbitrarily changing the value of data randomly
  data = 112;//(data + int(random(-2, 4))) % 256;
}

// The serverEvent function is called whenever a new client connects.
void serverEvent(Server server, Client client) {
  println(" A new client has connected: "+ client.ip());
}