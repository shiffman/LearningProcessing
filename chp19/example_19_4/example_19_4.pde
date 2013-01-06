// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-4: Client reading values as background color

// Import the net libraries
import processing.net.*;
// Declare a client
Client client;
// The data we will read from the server
int data;

void setup() {
  size(200,200);
  // Create the Client
  client = new Client(this,"127.0.0.1", 5204);
}

void draw() {
  
  // Read data
  if (client.available() > 0) {
    data = client.read(); 
  }
  
  // The incoming data is used to color the background.
  background(data); 
}
