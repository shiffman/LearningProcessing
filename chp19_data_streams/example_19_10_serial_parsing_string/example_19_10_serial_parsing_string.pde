// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-10: Serial communication with Strings

import processing.serial.*;

int r, g, b;    // Used to color background
Serial port;  // The serial port object

void setup() {
  size(200, 200);

  // In case you want to see the list of available ports
  // println(Serial.list());

  // Using the first available port (might be different on your computer)
  port = new Serial(this, Serial.list()[0], 9600);
  port.bufferUntil('\n');

}

void draw() {
  // Set the background
  background(r, g, b);
}

// Called whenever there is something available to read
void serialEvent(Serial port) {
  // Data from the Serial port is read in serialEvent()
  // using readString()
  String input = port.readString(); 

  if (input != null) {
    // Print message received
    println( "Receiving:" + input);

    // The data is split into an array of Strings with a comma or asterisk as a delimiter and converted into an array of integers.
    int[] vals = int(split(input, ",")); 

    // Fill r,g,b variables
    r = vals[0];
    g = vals[1];
    b = vals[2];
  }

  // When finished ask for values again
  port.write(65);
}