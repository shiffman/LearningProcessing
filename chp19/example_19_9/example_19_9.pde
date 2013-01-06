// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 19-9: Handshaking

import processing.serial.*;

int val = 0; // To store data from serial port, used to color background  
Serial port; // The serial port object  


void setup() {
  size(200,200);

  // In case you want to see the list of available ports
  // println(Serial.list());

  // Using the first available port (might be different on your computer)  
  port = new Serial(this, Serial.list()[0], 9600);

  // Request values from the hardware device
  // The byte 65 tells the serial device that we want to receive data.
  port.write(65); 

}

void draw() {
  // The serial data is used to color the background.   
  background(val); 
}

// Called whenever there is something available to read   
void serialEvent(Serial port)  {   
  // Read the data   
  val = port.read();   
  // For debugging   
  // println( "Raw Input:  " + input);   

  // After we receive a byte, we reply asking for the next one. 
  port.write(65);      
}      

