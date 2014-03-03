// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 3-7: The formula for calculating the speed of the mouse's horizontal motion is the absolute value 
// of the difference between mouseX and pmouseX. The absolute value of a number is defined as that number without its sign:

/*
- The absolute value of –2 is 2.
- The absolute value of 2 is 2.

In Processing, we can get the absolute value of the number by placing it inside the abs( ) function, that is,
- abs(-5) → 5

The speed at which the mouse is moving is therefore:
- abs( mouseX - pmouseX )

Update Exercise 3-7 so that the faster the user moves the mouse, the wider the drawn line. Hint: look up strokeWeight( ) in the Processing reference.
*/

void setup() {
  size(200, 200);
  background(255);
  smooth();
}

void draw() {
  stroke(0);
  strokeWeight(abs(pmouseX - mouseX));
  line(pmouseX, pmouseY, mouseX, mouseY);
}
