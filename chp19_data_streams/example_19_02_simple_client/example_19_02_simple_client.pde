// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-2: Simple therapy client

// Import the net libraries
import processing.net.*;
// Declare a client
Client client;

// Used to indicate a new message
float newMessageColor = 0;
// A String to hold whatever the server says
String messageFromServer = "";
// A String to hold what the user types
String typing ="";

void setup() {
  size(400, 200);
  // Create the Client, connect to server at 127.0.0.1 (localhost), port 5204
  client = new Client(this, "127.0.0.1", 5204);
}

void draw() {
  background(255);

  // Display message from server
  fill(newMessageColor);
  textAlign(CENTER);
  text(messageFromServer, width/2, 140);

  // Fade message from server to white
  newMessageColor = constrain(newMessageColor+1, 0, 255); 

  // Display Instructions
  fill(0);
  text("Type text and hit return to send to server.", width/2, 60);
  // Display text typed by user
  fill(0);
  text(typing, width/2, 80);
}

// If there is information available to read
// this event will be triggered
void clientEvent(Client client) {
  String msg = client.readStringUntil('\n');
  // The value of msg will be null until the 
  // end of the String is reached
  if (msg != null) {
    // Store in global variable to display on screen
    messageFromServer = msg;
    // Set brightness to 0
    newMessageColor = 0;
  }
}

// Simple user keyboard input
void keyPressed() {  
  // If the return key is pressed, save the String and clear it
  if (key == '\n') {
    // When the user hits enter, write the sentence out to the Server
    client.write(typing); // When the user hits enter, the String typed is sent to the Server.
    typing = "";
  } else {
    typing = typing + key;
  }
}