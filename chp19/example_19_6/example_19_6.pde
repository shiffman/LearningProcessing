// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-6: Multi-user server

// Import the net libraries
import processing.net.*;

// Declare a server
Server server;

PFont f;
String incomingMessage = "";

void setup() {
  size(400,200);
  
  // Create the Server on port 5204
  server = new Server(this, 5204);
  f = createFont("Arial",20,true);
}

void draw() {
  background(255);
  
  // Display rectangle with new message color
  fill(0);
  textFont(f);
  textAlign(CENTER);
  text(incomingMessage,width/2,height/2);
  
  // If a client is available, we will find out
  // If there is no client, it will be"null"
  Client client = server.available();
  
  // We should only proceed if the client is not null
  if (client != null) {
    // Receive the message
    incomingMessage = client.readStringUntil('*'); 
    // Print to Processing message window
    println( "Client says:" + incomingMessage);
    // Write message back out (note this goes to ALL clients)
    server.write(incomingMessage);
  }
}

// The serverEvent function is called whenever a new client connects.
void serverEvent(Server server, Client client) {
  incomingMessage = "A new client has connected:" + client.ip();
  println(incomingMessage);
}
