// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-7: Client for multi-user whiteboard

// Import the net libraries
import processing.net.*;
// Declare a client
Client client;
// Store mouse X/Y in this array
int[] vals = new int[2];

void setup() {
  size(200, 200);
  // Create the Client
  client = new Client(this, "127.0.0.1", 5204);
  background(255);
}

void draw() {
  // Render an ellipse based on the current values
  fill(0, 100);
  noStroke();
  ellipse(vals[0], vals[1], 16, 16);
}

// If there is information available to read from the Server
void clientEvent(Client client) {
  // Read message as a String, all messages end with a newline character
  String in = client.readStringUntil('\n');
  if (in != null) {
    // Print message received
    println( "Receiving:" + in);
    // The client reads messages from the Server and parses them with splitTokens() according to our protocol.    
    vals = int(splitTokens(in, ",\n"));
  }
}

// Send data whenever the user drags the mouse
void mouseDragged() {
  // Put the String together with our protocol: mouseX comma mouseY newline
  String out = mouseX + "," + mouseY + "\n" ;
  // A message is sent whenever the mouse is dragged. Note that a client will receive its own messages! Nothing is drawn here!  
  client.write(out); 
  // Print a message indicating we have sent data
  println("Sending: " + out);
}