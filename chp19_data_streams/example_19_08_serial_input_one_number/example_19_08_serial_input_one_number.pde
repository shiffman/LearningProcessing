// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-8: Reading from serial port

import processing.serial.*;

int val = 0; // To store data from serial port, used to color background
Serial port; // The serial port object

void setup() {
  size(200, 200);

  // In case you want to see the list of available ports
  // println(Serial.list());

  // Using the first available port (might be different on your computer)
  port = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
  // The serial data is used to color the background.   
  background(val);
}

// Called whenever there is something available to read
void serialEvent(Serial port) {
  // Data from the Serial port is read in serialEvent() using the read() function and assigned to the global variable: val
  val = port.read();
  // For debugging
  // println("Raw Input: " + input);
}
