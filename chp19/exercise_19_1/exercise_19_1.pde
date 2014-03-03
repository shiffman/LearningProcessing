// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 19-1: Using String manipulation techniques from Chapter 15, fix Example 19-1 so that if the client sends newline characters, the server removes them before replying back to the client. You will want to alter the "incomingMessage" variable.

/*
// Example 19-1: Simple therapy server

// Import the net libraries
import processing.net.*;
// Declare a server
Server server;
// Used to indicate a new message has arrived
float newMessageColor = 255;
PFont f;
String incomingMessage = "";

void setup() {
  size(400,200);
  // Create the Server on port 5204
  server = new Server(this, 5204); // This sketch runs a Server on port 5204.
  f = createFont("Arial",16,true);
}

void draw() {
  background(newMessageColor);
  // newMessageColor fades to white over time
  newMessageColor = constrain(newMessageColor + 0.3,0,255);
  textFont(f);
  textAlign(CENTER);
  fill(255);
  text(incomingMessage,width/2,height/2); // The most recent incoming message is displayed in the window.
  // If a client is available, we will find out
  // If there is no client, it will be"null"
  Client client = server.available();
  // We should only proceed if the client is not null
  if (client!= null) {
    // Receive the message
    incomingMessage = client.readString(); // The message is read using readString(). The trim() function is used to remove the extra line break that comes in with the message.
    incomingMessage = incomingMessage.trim();
    // Print to Processing message window
    println( "Client says:" + incomingMessage);
    // Write message back out (note this goes to ALL clients)
    server.write( "How does " + incomingMessage + " make you feel?\n" ); // A reply is sent using write().
    // Reset newMessageColor to black
    newMessageColor = 0;
  }
}

// The serverEvent function is called whenever a new client connects.
void serverEvent(Server server, Client client) {
  incomingMessage = "A new client has connected: " + client.ip();
  println(incomingMessage);
  // Reset newMessageColor to black
  newMessageColor = 0;
}

*/